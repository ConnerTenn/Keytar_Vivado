`timescale 1ns / 1ps

module KeyboarController
(
    KeyRibbonDrive,
    KeyRibbonSense,
    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError
);
    output reg [7:0] KeyRibbonDrive;
    input [7:0] KeyRibbonSense;

    input BusClock;
    input [31:0] BusPAddr, BusPWriteData;
    output reg [31:0] BusPReadData = 0;
    input BusPWrite;
    output reg BusPReady = 0;
    input BusPEnable, BusPSel;
    output BusPError;

    parameter ADDRESS = 32'h4010_0000;

    always @(posedge BusClock)
    begin

        if (BusPSel && !BusPReady)
        begin
            BusPReady <= 1;
            
            if (!BusPWrite)
            begin
                //Read
                case (BusPAddr)
                    ADDRESS+4*0: BusPReadData <= {24'h0, KeyRibbonDrive};
                    ADDRESS+4*1: BusPReadData <= {24'h0, KeyRibbonSense};
                endcase
            end
        end

        if (BusPSel && BusPReady && BusPEnable)
        begin
            if (BusPWrite)
            begin
                //Write
                case (BusPAddr)
                    ADDRESS+4*0: KeyRibbonDrive <= BusPWriteData[7:0];
                endcase
            end

            BusPReady <= 0;
        end
    end

endmodule

