`timescale 1ns / 1ps

`include "Math.v"


module Synth(
    Clock,
    Buzzer
);
    input Clock;
    output Buzzer;

    parameter NUM_BANKS=4;

    wire [15:0] waveformout;
    

    genvar gi;
    for (gi=0; gi<NUM_BANKS; gi=gi+1)
    begin:banks
        wire [15:0] waveform;
        wire [clog2(16'hFFFF*NUM_BANKS):0] wavesum;
        Bank bank (
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
            assign wavesum = waveform + banks[gi-1].wavesum;
        end
    end

    //Rescale output
    assign waveformout = (banks[NUM_BANKS-1].wavesum >> clog2(16'hFFFF*NUM_BANKS)-15);

    assign Buzzer = waveformout < 16'h1000 ? 1'b0 : 1'b1;

    // always @(posedge Clock)
    // begin
    // end

endmodule
