
module DigitalFilter #
(
    parameter ADDRESS=0,
    parameter DEPTH = 80//2**8
)
(
    input Clock100MHz,
    // input Clock50MHz,
    input Clock1MHz,
    input signed [23:0] InWaveform,
    output reg signed [23:0] OutWaveform = 24'h000000,

    //== AXI Clock ==
    input BusClock,
    //== AXI Read ==
    input [31:0] ReadAddress,
    output reg [31:0] ReadData = 32'h00000000,
    input ReadEN,
    //== AXI Write ==
    input [31:0] WriteAddress,
    input [31:0] WriteData,
    input WriteEN
);
    `include "Math.v"


    reg signed [23:0] delayMem [DEPTH];
    reg signed [23:0] coeff [DEPTH];

    initial
    begin
        for (int i=0; i<DEPTH; i=i+1)
        begin
            delayMem[i] <= 0;
            coeff[i] <= 0;
        end
    end

    reg signed [23:0] accum = 0;
    reg [7:0] incr = 0;
    localparam [1:0] IDLE=0, RUN=1, WAIT=2;
    reg [1:0] state = IDLE;


    //== Shift Process ==
    for (genvar gi=0; gi<DEPTH-1; gi=gi+1)
    begin:shifts
        always @(posedge Clock1MHz)
        begin
            delayMem[gi+1] <= delayMem[gi];
        end
    end

    //== Sample Process ==
    always @(posedge Clock1MHz)
    begin
        delayMem[0] <= InWaveform;
        OutWaveform <= accum;
    end

    //== Cascade Calculate ==
    // for (genvar gi=0; gi<DEPTH; gi=gi+1)
    // begin:stages
    //     wire signed [23*2+1:0] mul;
    //     wire signed [clog2(24'hFFFFFF*DEPTH):0] sum;

    //     assign mul = (gi * delayMem[gi])>>>25;

    //     if (gi==0)
    //     begin
    //         assign sum = mul;
    //     end
    //     else if (gi > 0)
    //     begin
    //         assign sum = stages[gi-1].sum + mul;
    //     end
    // end


    //== Sequence ==
    // wire signed [23:0] mul = delayMem[incr];//(delayMem[incr] * coeff[incr]);//>>>24;
    (* keep = "true" *)
    reg signed [47:0] delaySample = 0;
    // reg signed [23:0] delaySample = 0;
    (* keep = "true" *)
    reg signed [47:0] coeffSample = 0;
    // reg signed [23:0] coeffSample = 0;
    (* keep = "true" *)
    reg signed [23:0] mul = 0;
    // reg signed [23:0] sum = 0;

    always @(posedge Clock100MHz)
    begin
        delaySample <= { {24{delayMem[incr][23]}}, delayMem[incr] };
        coeffSample <= { {24{coeff[incr][23]}}, coeff[incr] };
        mul <= ((delaySample * coeffSample) >>> 20);
        // delaySample <= delayMem[incr];
        // coeffSample <= coeff[incr];
        // mul <= (delaySample & coeffSample);
        // sum <= mul + accum;

        //Initalize Sequence
        case (state)
        IDLE:
            begin
                if (Clock1MHz)
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
                    accum <= mul + accum;//sum;
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
                if (!Clock1MHz)
                begin
                    state = IDLE;
                end
            end
        endcase
    end




    always @(posedge BusClock)
    begin
        if (ReadEN)
        begin
            if ((ADDRESS<=ReadAddress) && (ReadAddress<(ADDRESS+DEPTH*4)))
            begin
                ReadData <= {8'h0, coeff[(ReadAddress-ADDRESS)>>2]};
            end
            else
            begin
                ReadData <= 32'h00000000;
            end
        end
        if (WriteEN)
        begin
            if ((ADDRESS<=WriteAddress) && (WriteAddress<(ADDRESS+DEPTH*4)))
            begin
                coeff[(WriteAddress-ADDRESS)>>2] <= WriteData[23:0];
            end
        end
    end

endmodule


`timescale 1ns/1ns

module DigitalFilterTestbench;

    reg clock100MHz = 0;
    reg clock1MHz = 0;
    reg [23:0] waveIn = 0;

    reg [31:0] writeAddress = 0;
    reg [31:0] writeData = 0;
    reg writeEN = 0;

    `define CLK_PERIOD 10

    always #(`CLK_PERIOD/2) clock100MHz <= ~clock100MHz;

    reg [7:0] clkdiv = 0;

    always @(posedge clock100MHz)
    begin
        if (clkdiv < 100/2-1)
        begin
            clkdiv <= clkdiv + 1;
        end
        else
        begin
            clkdiv <= 0;
            clock1MHz <= !clock1MHz;
        end
    end


    DigitalFilter filter
    (
        .Clock100MHz(clock100MHz),
        .Clock1MHz(clock1MHz),
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
            @(negedge clock1MHz);
            waveIn <= $urandom; //24'h001000;
            @(posedge clock1MHz);
        end

        $display("== Done Testbench ==");

        $finish();
    end

endmodule


