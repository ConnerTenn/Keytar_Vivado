`timescale 1ns / 1ps

module WaveGen(
    Clock,
    Increment,
    WaveType,
    Waveform
);
    input Clock;
    input signed [23:0] Increment;
    input [1:0] WaveType;
    output signed [23:0] Waveform;

    reg signed [23:0] counter = 0;

    //Raw
    assign Waveform = WaveType==2'b00 ? counter : 24'hZZZZZZ;
    //Square
    assign Waveform = WaveType==2'b01 ? (counter>=0:24'h7FFFFF:24'h800000) : 24'hZZZZZZ;
    //Catch All
    assign Waveform = WaveType>=2'b10 ? 24'h000000 : 24'hZZZZZZ;

    always @(posedge Clock)
    begin
        counter <= counter + Increment;
    end

endmodule
