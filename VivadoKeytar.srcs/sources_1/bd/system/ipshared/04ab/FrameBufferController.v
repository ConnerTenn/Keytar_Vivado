
module FrameBufferController 
(
    input Clock,
    input [31:0] FB1Addr, input [31:0] FB2Addr,
    input [31:0] FrameBuffSize,
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
    // output FifoRead,
    output FifoWrite,
    output [15:0] FifoData,
    input [4:0] FifoFillLevel,
    input FifoFull,
    input FifoEmpty,

    //== Timing Controller ==
    input StartFrame
    // input ColourDataRequest,
);

    reg [31:0] nextReadAddress = 0;

    reg readInProgress = 0;

    always @(posedge Clock)
    begin
        if (StartFrame)
        begin
            nextReadAddress <= 32'h3000_0000;
        end

        // if (!readInProgress && ReadAddress<FrameBuffSize)
        // begin
        //     //ReadAddress
        // end

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

        // if (ReadValid)
        // begin
        //     // FifoData <= ReadData;
            
        // end
    end


endmodule
