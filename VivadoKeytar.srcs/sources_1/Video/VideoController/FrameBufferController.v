
module FrameBufferController 
(
    input Clock,

    //== AXI Read ==
    output reg [31:0] ReadAddress = 32'h3000_0000, output reg [7:0] ReadBurstLen = 1,
    input [63:0] ReadData,
    output reg ReadTransfer, input ReadValid,
    //== AXI Write ==
    output reg [31:0] WriteAddress = 32'h3000_0010, output reg [7:0] WriteBurstLen = 0,
    output reg [63:0] WriteData = 0,
    output reg WriteTransfer = 0, input WriteDataRequest,

    //== FIFO ==
    // output FifoRead,
    output FifoWrite,
    input FifoFull,
    input FifoEmpty,
    output [15:0] FifoData,

    //== Timing Controller ==
    input StartFrame
    // input ColourDataRequest,
);


    always @(posedge Clock)
    begin
        if (StartFrame)
        begin
            ReadAddress <= 32'h3000_0000;
        end
    end


endmodule
