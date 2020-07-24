
module VideoController (
    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError,
    FramePTR,
    VidOverflow, VidUnderflow, VidOutLocked,
    VidStatus, VidFifoRead,
    VDMAFramePtr
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
    input VidOverflow;
    input VidUnderflow;
    input VidOutLocked;
    input [31:0] VidStatus;
    input [10:0] VidFifoRead;
    input [5:0] VDMAFramePtr;
    


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
                    ADDRESS+4*1: BusPReadData <= {29'h0, VidOverflow, VidUnderflow, VidOutLocked};
                    ADDRESS+4*2: BusPReadData <= VidStatus;
                    ADDRESS+4*3: BusPReadData <= {21'h0, VidFifoRead};
                    ADDRESS+4*4: BusPReadData <= {26'h0, VDMAFramePtr};
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
                    // ADDRESS+4*2:
                    // ADDRESS+4*3:
                    // ADDRESS+4*4:
                endcase
            end

            BusPReady <= 0;
        end
    end

endmodule