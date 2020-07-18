`timescale 1ns / 1ps

module WaveGen(
    Clock,
    Increment,
    Waveform
);
    input Clock;
    input signed [23:0] Increment;
    output reg signed [23:0] Waveform = 0;

    always @(posedge Clock)
    begin
        Waveform <= Waveform + Increment;
    end

endmodule
