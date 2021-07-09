
module DigitalFilter #
(
    parameter ADDRESS=0,
    parameter DEPTH = 50//2**8
)
(
    input Clock100MHz,
    input Clock1MHz,
    input signed [23:0] InWaveform,
    output reg signed [23:0] OutWaveform,

    //== AXI Clock ==
    input BusClock,
    //== AXI Read ==
    input [31:0] ReadAddress,
    output reg [31:0] ReadData,
    input ReadEN,
    //== AXI Write ==
    input [31:0] WriteAddress,
    input [31:0] WriteData,
    input WriteEN
);
    `include "Math.v"

    reg signed [23:0] delayMem [DEPTH];
    reg signed [23:0] coeff [DEPTH];

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
    reg signed [23:0] delaySample = 0;
    (* keep = "true" *)
    reg signed [23:0] coeffSample = 0;
    (* keep = "true" *)
    reg signed [23:0] mul = 0;
    // reg signed [23:0] sum = 0;

    always @(posedge Clock100MHz)
    begin
        delaySample <= delayMem[incr];
        coeffSample <= coeff[incr];
        mul <= (delaySample * coeffSample) >>> 24;
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
            if (ADDRESS<=ReadAddress && ReadAddress<ADDRESS+DEPTH)
            begin
                ReadData <= {8'h0, coeff[ReadAddress-ADDRESS]};
            end
            else
            begin
                ReadData <= 32'h00000000;
            end
        end
        if (WriteEN)
        begin
            if (ADDRESS<=ReadAddress && ReadAddress<ADDRESS+DEPTH)
            begin
                coeff[ReadAddress-ADDRESS] <= WriteData[23:0];
            end
        end
    end

endmodule

