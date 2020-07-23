`timescale 1ns / 1ps

module BuzzerTest(
    Clock,
    Buzzer,
    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError
);
    input Clock;
    output Buzzer;

    input BusClock;
    input [31:0] BusPAddr, BusPWriteData;
    output [31:0] BusPReadData;
    input BusPWrite;
    output reg BusPReady;
    input BusPEnable, BusPSel;
    output BusPError;


    wire [15:0] waveform;

    reg [15:0] increment = 86;

    reg slowclk = 0;
    reg [11:0] clkdiv = 0;

    WaveGen16 wavegen(
        .Clock(slowclk),
        .Increment(increment),
        .Waveform(waveform)
    );

    assign Buzzer = (waveform >= 16'h7FFF ? 1 : 0);

    always @(posedge Clock)
    begin
        if (clkdiv < 100)
        begin
            clkdiv <= clkdiv + 1;
        end
        else
        begin
            clkdiv <= 0;
            slowclk <= !slowclk;
        end
    end


    always @(posedge BusClock)
    begin

        if (BusPSel)
        begin
            BusPReady <= 1;
        end

        if (BusPSel && BusPReady && BusPEnable)
        begin
            case (BusPAddr)
                32'h4000_0000: begin increment <= BusPWriteData[15:0]; BusPReady <= 1; end
            endcase

            BusPReady <= 0;
        end
    end

endmodule


