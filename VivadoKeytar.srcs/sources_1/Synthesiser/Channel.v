`timescale 1ns / 1ps

module Channel(
    Clock,
    Waveform
);
    input Clock;
    output [15:0] Waveform;
    
    WaveGen wavegen(
        .Clock(Clock),
        .Waveform(Waveform)
    );

    // always @(posedge Clock)
    // begin
    // end

endmodule
