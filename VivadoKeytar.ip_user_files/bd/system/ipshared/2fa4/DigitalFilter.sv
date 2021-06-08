
module DigitalFilter #
(
    parameter DEPTH = 2**8
)
(
    input Clock,
    input signed [23:0] InWaveform,
    output reg signed [23:0] OutWaveform
);
    `include "Math.v"

    reg signed [23:0] delayMem [DEPTH];


    //== Shift Process ==
    for (genvar gi=0; gi<DEPTH-1; gi=gi+1)
    begin:shifts
        always @(posedge Clock)
        begin
            delayMem[gi+1] <= delayMem[gi];
        end
    end

    //== Cascade Calculate ==
    for (genvar gi=0; gi<DEPTH; gi=gi+1)
    begin:stages
        wire signed [23*2+1:0] mul;
        wire signed [clog2(24'hFFFFFF*DEPTH):0] sum;

        assign mul = (gi * delayMem[gi])>>>25;
        if (gi==0)
        begin
            assign sum = mul;
        end
        else if (gi > 0)
        begin
            assign sum = stages[gi-1].sum + mul;
        end
    end


    //== IO ==
    always @(posedge Clock)
    begin
        delayMem[0] <= InWaveform;

        OutWaveform <= stages[DEPTH-1].sum;
    end

endmodule