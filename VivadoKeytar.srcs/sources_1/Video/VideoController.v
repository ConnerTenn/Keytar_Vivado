
module VideoController (
    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError,
    FramePTR,
    VidOutLocked
);
    parameter ADDRESS = 32'h4101_0000;

    input BusClock;
    input [31:0] BusPAddr, BusPWriteData;
    output reg [31:0] BusPReadData = 0;
    input BusPWrite;
    output reg BusPReady = 0;
    input BusPEnable, BusPSel;
    output BusPError;

    output reg [5:0] FramePTR = 0;
    input VidOutLocked;


    always @(posedge BusClock)
    begin

        if (BusPSel && !BusPReady)
        begin
            BusPReady <= 1;
            if (!BusPWrite)
            begin
                //Read
                case (BusPAddr)
                    ADDRESS+4*0: BusPReadData <= {26'h0, FramePTR};
                    ADDRESS+4*1: BusPReadData <= {31'h0, VidOutLocked};
                endcase
            end
        end

        if (BusPSel && BusPReady && BusPEnable)
        begin
            if (BusPWrite)
            begin
                //Write
                case (BusPAddr)
                    ADDRESS+4*0: FramePTR <= BusPWriteData[5:0];
                    // ADDRESS+4*1:
                endcase
            end

            BusPReady <= 0;
        end
    end

endmodule