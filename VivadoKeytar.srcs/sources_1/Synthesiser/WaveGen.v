`timescale 1ns / 1ps

module WaveGen(
    Clock,
    Waveform
);
    input Clock;
    output [15:0] Waveform;

    reg [15:0] counter = 0;
    
    assign Waveform = counter;

    always @(posedge Clock)
    begin
        counter <= counter + 1;
    end

endmodule
