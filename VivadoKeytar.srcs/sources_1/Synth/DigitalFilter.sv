
module DigitalFilter #
(
    parameter ADDRESS=0,
    parameter DEPTH = 980//2**8
)
(
    input Clock100MHz,
    // input Clock50MHz,
    input Clock100KHz,
    input signed [23:0] InWaveform,
    output reg signed [23:0] OutWaveform = 24'h000000,

    //== AXI Read ==
    input [31:0] ReadAddress,
    output logic [31:0] ReadData,
    input ReadEN,
    //== AXI Write ==
    input [31:0] WriteAddress,
    input [31:0] WriteData,
    input WriteEN
);
    `include "Math.v"

    //== Delay stages ==
    reg signed [23:0] delayMem [DEPTH];
    initial
    begin
        for (int i=0; i<DEPTH; i=i+1)
        begin
            delayMem[i] <= 0;
        end
    end

    //== State Signals ==
    reg signed [23:0] accum = 0;
    reg [9:0] incr = 0;
    localparam [1:0] IDLE=0, RUN=1, WAIT=2;
    reg [1:0] state = IDLE;
    reg queueSwap = 0;
    reg swapState = 0;



    //== Coeff memory ==
    module CoeffRam #
    (
        parameter DEPTH
    )
    (
        input Clk,

        //Port A
        input [31:0] RaddrA,
        output reg [23:0] RdataA,
        input RenA,
        input [31:0] WaddrA,
        input [23:0] WdataA,
        input WenA,

        //Port B
        input [31:0] RaddrB,
        output reg [23:0] RdataB,
        input RenB,
        input [31:0] WaddrB,
        input [23:0] WdataB,
        input WenB
    );
        (* ram_style = "block" *)
        reg signed [23:0] ram1 [DEPTH];
        (* ram_style = "block" *)
        reg signed [23:0] ram2 [DEPTH];

        initial
        begin
            for (int i=0; i<DEPTH; i=i+1)
            begin
                ram1[i] <= 'h0;
                ram2[i] <= 'h0;
            end
        end

        always @(posedge Clk)
        begin
            if (RenA) begin RdataA <= ram1[RaddrA]; end
            else begin RdataA <= 'h0; end

            if (WenA) begin ram1[WaddrA] <= WdataA; end


            if (RenB) begin RdataB <= ram2[RaddrB]; end
            else begin RdataB <= 'h0; end

            if (WenB) begin ram2[WaddrB] <= WdataB; end
        end
    endmodule


    wire [31:0] readAddr = (ReadAddress-ADDRESS)>>2;
    wire [31:0] writeAddr = (WriteAddress-ADDRESS)>>2;

    logic [31:0] coeffRaddrA, coeffRaddrB;
    wire [23:0] coeffRdataA, coeffRdataB;
    logic coeffRenA, coeffRenB;

    logic [31:0] coeffWaddrA, coeffWaddrB;
    // wire [23:0] coeffWdataA, coeffWdataB;
    logic coeffWenA, coeffWenB;

    logic [23:0] coeffAtIncr;

    CoeffRam #(.DEPTH(DEPTH)) coeff
    (
        .Clk(Clock100MHz),

        //Port A
        .RaddrA(coeffRaddrA),
        .RdataA(coeffRdataA),
        .RenA(coeffRenA),
        .WaddrA(writeAddr),
        .WdataA(WriteData),
        .WenA(coeffWenA),

        //Port B
        .RaddrB(coeffRaddrB),
        .RdataB(coeffRdataB),
        .RenB(coeffRenB),
        .WaddrB(writeAddr),
        .WdataB(WriteData),
        .WenB(coeffWenB)
    );

    wire readcoeff = (ADDRESS<=ReadAddress) && (ReadAddress<(ADDRESS+DEPTH*4));

    always_comb
    begin
        if (swapState=='b0)
        begin
            coeffRaddrA = incr;
            coeffRaddrB = readAddr;

            coeffAtIncr = coeffRdataA;
            ReadData = {8'h0, coeffRdataB};

            coeffRenA = '1;

            if (ReadEN && readcoeff)
            begin
                coeffRenB = '1;
            end
            else
            begin
                coeffRenB = '0;
            end

            coeffWenA = 1'b0;
            coeffWenB = WriteEN;
        end
        else
        begin
            coeffRaddrA = readAddr;
            coeffRaddrB = incr;

            ReadData = {8'h0, coeffRdataA};
            coeffAtIncr = coeffRdataB;

            coeffRenB = '1;

            if (ReadEN && readcoeff)
            begin
                coeffRenA = '1;
            end
            else
            begin
                coeffRenA = '0;
            end

            coeffWenA = WriteEN;
            coeffWenB = 1'b0;
        end
    end



    //== Shift Process ==
    for (genvar gi=0; gi<DEPTH-1; gi=gi+1)
    begin:shifts
        always @(posedge Clock100KHz)
        begin
            delayMem[gi+1] <= delayMem[gi];
        end
    end

    //== Sample Process ==
    always @(posedge Clock100KHz)
    begin
        delayMem[0] <= InWaveform;
        OutWaveform <= accum;
    end



    //== Sequence ==
    // wire signed [23:0] mul = delayMem[incr];//(delayMem[incr] * coeff[incr]);//>>>24;
    (* keep = "true" *)
    reg signed [23:0] delaySampleReg = 0;
    //No Keep for coeffSampleReg because it gets merged into the BRAM (since it has a synchronous output).
    // reg signed [23:0] coeffSampleReg = 0;
    (* keep = "true" *)
    reg signed [23:0] mulReg = 0;
    // reg signed [23:0] sum = 0;

    wire signed [47:0] delaySample = { {24{delaySampleReg[23]}}, delaySampleReg }; //Sign extend to 48 bits
    wire signed [47:0] coeffSample = { {24{coeffAtIncr[23]}}, coeffAtIncr }; //Sign extend to 48 bits
    wire signed [47:0] mul = (delaySample * coeffSample); //48 bit multiply

    always @(posedge Clock100MHz)
    begin
        delaySampleReg <= delayMem[incr];
        mulReg <= (mul >>> 20); //Rescale output

        //Initalize Sequence
        case (state)
        IDLE:
            begin
                if (Clock100KHz)
                begin
                    accum <= 0;
                    incr <= 0;
                    state <= RUN;
                end
            end

        RUN:
            begin
                if (incr >= 2)
                begin
                    accum <= mulReg + accum;
                end

                if (incr == DEPTH-1 + 2)
                begin
                    state <= WAIT;
                end
                else
                begin
                    incr <= incr + 1;
                end
            end

        WAIT:
            begin
                incr <= 0;
                if (!Clock100KHz)
                begin
                    state <= IDLE;
                    if (queueSwap)
                    begin
                        swapState <= !swapState;
                        queueSwap <= 1'b0;
                    end
                end
            end
        endcase


        //== Bus Interface ==
        if (WriteEN)
        begin
            if (WriteAddress==ADDRESS+32'h0FF0)
            begin
                queueSwap <= 1'b1;
            end
        end
    end

endmodule





`timescale 1ns/1ns

module DigitalFilterTestbench;

    reg clock100MHz = 0;
    reg Clock100KHz = 0;
    reg [23:0] waveIn = 0;

    reg [31:0] writeAddress = 0;
    reg [31:0] writeData = 0;
    reg writeEN = 0;

    `define CLK_PERIOD 10

    always #(`CLK_PERIOD/2) clock100MHz <= ~clock100MHz;

    reg [8:0] clkdiv = 0;

    always @(posedge clock100MHz)
    begin
        if (clkdiv < 1000/2-1)
        begin
            clkdiv <= clkdiv + 1;
        end
        else
        begin
            clkdiv <= 0;
            Clock100KHz <= !Clock100KHz;
        end
    end


    DigitalFilter filter
    (
        .Clock100MHz(clock100MHz),
        .Clock100KHz(Clock100KHz),
        .InWaveform(waveIn),
        .OutWaveform(),

        //== AXI Clock ==
        .BusClock(clock100MHz),
        //== AXI Read ==
        .ReadAddress(0),
        .ReadData(),
        .ReadEN(1'b0),
        //== AXI Write ==
        .WriteAddress(writeAddress),
        .WriteData(writeData),
        .WriteEN(writeEN)
    );


    integer seed = 10;

    initial
    begin
        $dumpfile("DigitalFilter.lxt2");
        $dumpvars(0, DigitalFilterTestbench);

        $urandom(seed);

        $display("== Begin Testbench ==");


        @(posedge clock100MHz);
        writeData <= 24'hFFFFFF;
        writeAddress <= 0;
        writeEN <= 1;
        @(posedge clock100MHz);
        writeEN <= 0;
        @(posedge clock100MHz);
        // for (int i=0; i<DEPTH; i++)
        // begin
        //     writeAddress <= i;
        //     writeData <= 0;
        //     @(posedge clock100MHz);
        // end

        $display("== Memory Initalized ==");


        repeat(5)
        begin
            @(negedge Clock100KHz);
            waveIn <= $urandom; //24'h001000;
            @(posedge Clock100KHz);
        end

        $display("== Done Testbench ==");

        $finish();
    end

endmodule


