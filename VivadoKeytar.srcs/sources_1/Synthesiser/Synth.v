`timescale 1ns / 1ps

module Synth(
    Clock,
    Buzzer
);
    function integer clog2;
        input integer value;
        begin
            value = value-1;
            for (clog2=0; value>0; clog2=clog2+1)
            begin
                value = value>>1;
            end
        end
    endfunction

    input Clock;
    output Buzzer;

    parameter NUM_BANKS=4;

    wire [15:0] waveformout;
    

    genvar gi;
    for (gi=0; gi<NUM_BANKS; gi=gi+1)
    begin:banks
        wire [15:0] waveform;
        wire [clog2(16'hFFFF*NUM_BANKS)-1:0] wavesum;
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
