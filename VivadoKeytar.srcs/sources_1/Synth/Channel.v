`timescale 1ns / 1ps

module Channel 
#(
    parameter ADDRESS=0
)
(
    Clock1MHz,
    Waveform,
    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError
);
    input Clock1MHz;
    output signed [23:0] Waveform;

    input BusClock;
    input [31:0] BusPAddr, BusPWriteData;
    output reg [31:0] BusPReadData = 0;
    input BusPWrite;
    output reg BusPReady = 0;
    input BusPEnable, BusPSel;
    output BusPError;


    reg [23:0] increment = 219;

    WaveGen wavegen(
        .Clock(Clock1MHz),
        .Increment(increment),
        .Waveform(Waveform)
    );

    always @(posedge Clock1MHz)
    begin
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
                ADDRESS+32'h00: increment <= BusPWriteData[23:0];
                ADDRESS+32'h04: BusPReadData <= ADDRESS;
            endcase

            BusPReady <= 0;
        end
    end

endmodule


