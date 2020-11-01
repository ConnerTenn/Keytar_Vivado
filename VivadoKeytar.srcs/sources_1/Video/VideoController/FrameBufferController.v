
module FrameBufferController 
(
    input Clock,
    input [31:0] FB1Addr, input [31:0] FB2Addr,
    input [31:0] FrameBuffSize,
    input FBSelect,
    input Run,

    //== AXI Read ==
    output reg [31:0] ReadAddress = 0, output reg [7:0] ReadBurstLen = 1,
    input [63:0] ReadData,
    output reg ReadTransfer, input ReadValid,
    //== AXI Write ==
    output reg [31:0] WriteAddress = 0, output reg [7:0] WriteBurstLen = 0,
    output reg [63:0] WriteData = 0,
    output reg WriteTransfer = 0, input WriteDataRequest,

    //== FIFO ==
    output FifoReset,
    output FifoRead, input [63:0] FifoDataIn,
    output reg FifoWrite, output reg [63:0] FifoDataOut,
    input [4:0] FifoFillLevel, input FifoFull, input FifoEmpty,

    //== Timing Controller ==
    input StartFrame,
    input ColourDataRequest,
    output [15:0] ColourData
);

    reg readInProgress = 0;

    assign FifoReset = StartFrame;

    always @(posedge Clock)
    begin
        //Start of frame
        if (StartFrame)
        begin
            ReadAddress <= FBSelect==0 ? FB1Addr : FB2Addr;
        end
        else
        begin
            //Start Read Operation
            if (!readInProgress && ReadAddress<FrameBuffSize)
            begin
                ReadTransfer <= 1;
                ReadBurstLen <= 32-FifoFillLevel-10;
            end
            if (ReadTransfer)
            begin
                ReadTransfer <= 0;
            end

            //Read in progress. Handle Keep track of number of transfers
            if (readInProgress && ReadValid)
            begin
                if (ReadBurstLen>0)
                begin
                    ReadBurstLen <= ReadBurstLen-1;
                    ReadAddress <= ReadAddress+8;
                end
                else
                begin
                    readInProgress <= 0;
                end
            end
        end

        //Read data in handler
        if (ReadValid)
        begin
            FifoDataOut <= ReadData;
            FifoWrite <= 1;
        end
        else
        begin
            FifoWrite <= 0;
        end
    end


    reg [1:0] colourBufferFill = 0;
    assign FifoRead = ColourDataRequest && (colourBufferFill==0);

    wire [15:0] colourDataTmp [3:0];
    assign colourDataTmp[0] = FifoDataIn[15:0];
    assign colourDataTmp[1] = FifoDataIn[31:16];
    assign colourDataTmp[2] = FifoDataIn[47:32];
    assign colourDataTmp[3] = FifoDataIn[63:48];

    assign ColourData = colourDataTmp[colourBufferFill];

    always @(posedge Clock)
    begin
        colourBufferFill <= colourBufferFill+1;
    end


endmodule
