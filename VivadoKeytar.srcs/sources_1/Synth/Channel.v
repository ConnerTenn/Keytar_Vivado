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
    reg [1:0] wavetype = 0;

    WaveGen wavegen(
        .Clock(Clock1MHz),
        .Increment(increment),
        .WaveType(wavetype),
        .Waveform(Waveform)
    );

    always @(posedge Clock1MHz)
    begin
    end


    always @(posedge BusClock)
    begin

        if (BusPSel)
        begin
            if (ADDRESS <= BusPAddr && BusPAddr <= ADDRESS+32'hFF)
            begin
                BusPReady <= 1;
            end
        end

        if (BusPSel && BusPReady && BusPEnable)
        begin
            if (!BusPWrite)
            begin
                //Read
                case (BusPAddr)
                    ADDRESS+32'h00: BusPReadData[23:0] <= {8'h0, increment};
                    ADDRESS+32'h04: BusPReadData <= {30'h0, wavetype};
                endcase
            end
            else
            begin
                //Write
                case (BusPAddr)
                    ADDRESS+32'h00: increment <= BusPWriteData[23:0];
                    ADDRESS+32'h04: wavetype <= BusPWriteData[1:0];
                endcase
            end

            BusPReady <= 0;
        end
    end

endmodule


