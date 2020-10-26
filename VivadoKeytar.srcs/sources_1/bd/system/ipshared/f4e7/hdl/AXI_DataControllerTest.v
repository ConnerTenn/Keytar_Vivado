
`timescale 1 ns / 1 ps

module AXI_DataControllerTest
(
    input Clock,
    input ResetN,
    //Read
    output reg [31:0] ReadAddress = 32'h3000_0000,
    output reg [7:0] ReadBurstLen = 1,
    input [63:0] ReadData,
    output reg ReadTransfer,
    input ReadValid,
    //Write
    output reg [31:0] WriteAddress = 32'h3000_0010,
    output reg [7:0] WriteBurstLen = 0,
    output reg [63:0] WriteData = 0,
    output reg WriteTransfer = 0,
    input WriteDataRequest,
    // input WriteTransferComplete, input WriteAcknowledge,
    // output error

    //== Analytics & Debugging ==
    output [15:0] Val1,
    output [15:0] Val2
);

    reg [20:0] counter = 0;

    reg [31:0] val [1:0];
    initial begin val[0]=0; val[1]=0; end
    reg readPos = 0;
    // reg readwriteFlip = 0;

    assign Val1 = val[0][15:0];
    assign Val2 = val[1][15:0];

    always @(posedge Clock)
    begin
        if (ResetN==0)
        begin
            counter <= 0;
            readPos <= 0;
        end
        else
        begin
            counter <= counter + 1;


            if (counter == 0) // && readwriteFlip == 0) 
            begin 
                ReadTransfer<=1; 
                //readwriteFlip<=1; 
            end
            if (ReadTransfer == 1) begin ReadTransfer<=0; end

            if (ReadValid)
            begin
                val[readPos] <= ReadData[31:0];
                readPos <= !readPos;
            end

            if (counter == 0) // && readwriteFlip == 1) 
            begin 
                WriteTransfer<=1; 
                //readwriteFlip<=0; 
            end
            if (WriteTransfer == 1) begin WriteTransfer<=0; end

            if (WriteDataRequest)
            begin
                WriteData <= val[0] + val[1];
            end
        end
    end

endmodule

