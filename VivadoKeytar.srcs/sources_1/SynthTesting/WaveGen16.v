`timescale 1ns / 1ps

module WaveGen16(
    Clock,
    Increment,
    Waveform
);
    input Clock;
    input [15:0] Increment;
    output [15:0] Waveform;

    reg [15:0] counter = 0;
    
    assign Waveform = counter;

    always @(posedge Clock)
    begin
        if (counter + Increment >= 16'hFFFF)
        begin
            //Reset counter back to bottom
            counter <= 16'h0000;
        end
        else
        begin
            counter <= counter + Increment;
        end
    end

endmodule
