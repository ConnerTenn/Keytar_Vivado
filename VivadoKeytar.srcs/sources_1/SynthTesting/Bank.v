`timescale 1ns / 1ps

`include "Math.v"


module Bank(
    Clock,
    Waveform
);
    input Clock;
    output [15:0] Waveform;

    parameter NUM_CHANNELS=16;

    genvar gi;
    for (gi=0; gi<NUM_CHANNELS; gi=gi+1)
    begin:channels
        wire [15:0] waveform;
        wire [clog2(16'hFFFF*NUM_CHANNELS):0] wavesum;
        Channel channel (
            .Clock(clock),
            .Waveform(waveform)
        );

        if (gi == 0)
        begin
            //First wavegen sum is equal to itself; no previous channels
            assign wavesum = waveform;
        end
        else if (gi > 0)
        begin
            //All other channels must add the previous wavegen to itself
            assign wavesum = waveform + channels[gi-1].wavesum;
        end
    end

    //Rescale output
    assign Waveform = (channels[NUM_CHANNELS-1].wavesum >> clog2(16'hFFFF*NUM_CHANNELS)-15);
    

    // always @(posedge Clock)
    // begin
    // end

endmodule
