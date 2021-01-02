
module FrameBufferController 
(
    input Clock,
    input Run,

    //== Status and Control ==
    input [31:0] FB1Addr, input [31:0] FB2Addr,
    input [31:0] FBSize,
    input FBSelect, output reg CurrentFB = 0,

    //== AXI Read ==
    output reg [31:0] ReadAddress = 0, output reg [7:0] ReadBurstLen = 0,
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
    input [5:0] FifoFillLevel, input FifoFull, input FifoEmpty,

    //== Timing Controller ==
    input StartFrame,
    input ColourDataRequest,
    output [15:0] ColourData
);

    reg readInProgress = 0;

    assign FifoReset = StartFrame;

    wire [31:0] selectedFBAddr = FBSelect==0 ? FB1Addr : FB2Addr;
    reg [31:0] activeFBAddress = 0;

    wire [31:0] remainingBytes = FBSize - (ReadAddress-activeFBAddress);
    wire [31:0] nextReadlen = (remainingBytes>30 ? 30 : remainingBytes);

    reg [11:0] readCounter = 0;

    always @(posedge Clock)
    begin
        //Start of frame
        if (StartFrame)
        begin
            ReadAddress <= selectedFBAddr;
            activeFBAddress <= selectedFBAddr;
            CurrentFB <= FBSelect;
            ReadBurstLen <= 0;
            readInProgress <= 0;
            ReadTransfer <= 0;
            FifoWrite <= 0;
            readCounter <= 0;
        end
        else if (Run)
        begin
            //Start Read Operation
            if (!readInProgress && ReadAddress-activeFBAddress<FBSize && FifoFillLevel<30)
            begin
                ReadTransfer <= 1;
                ReadBurstLen <= nextReadlen[5:0];
                readInProgress <= 1;
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
                end
                else
                begin
                    readInProgress <= 0;
                end
            end

            //Read data in handler
            if (readInProgress && ReadValid)
            begin
                FifoDataOut <= ReadData;
                ReadAddress <= ReadAddress+8;
                if (readCounter > 30-1)
                begin
                    FifoWrite <= 1;
                end
                else
                begin
                    readCounter <= readCounter + 1;
                end
            end
            else
            begin
                FifoWrite <= 0;
            end
        end
    end



    reg [1:0] colourBufferFill = 3;
    assign FifoRead = ColourDataRequest && (colourBufferFill==3);

    wire [15:0] colourDataTmp [3:0];
    assign colourDataTmp[0] = FifoDataIn[15:0];
    assign colourDataTmp[1] = FifoDataIn[31:16];
    assign colourDataTmp[2] = FifoDataIn[47:32];
    assign colourDataTmp[3] = FifoDataIn[63:48];

    assign ColourData = colourDataTmp[colourBufferFill];

    reg firstRead = 0;

    always @(posedge Clock)
    begin

        //Start of frame
        if (StartFrame)
        begin
            firstRead <= 0;
        end
        else if (ColourDataRequest)
        begin
            firstRead <= 1;
        end

        //Start of Data
        if (!firstRead)
        begin
            colourBufferFill <= 3;
        end
        else
        begin
            colourBufferFill <= colourBufferFill+1;
        end
    end


endmodule
