
`timescale 1 ns / 1 ps

module AXI_DataControllerTest
(
    input Clock,
    input ResetN,
    //Read
    output reg [31:0] ReadAddress,
    output reg [7:0] ReadBurstLen,
    input [63:0] ReadData,
    output reg ReadTransfer,
    input ReadTransferComplete,
    //Write
    output reg [31:0] WriteAddress = 32'h3000_0000,
    output reg [7:0] WriteBurstLen = 3,
    output reg [63:0] WriteData = 0,
    output reg WriteTransfer = 0,
    input WriteDataRequest
    // input WriteTransferComplete, input WriteAcknowledge,
    // output error
);

    reg [20:0] counter = 0;

    always @(posedge Clock)
    begin
        if (ResetN==1)
        begin
            counter <= counter + 1;

            if (counter == 0)
            begin
                WriteTransfer <= 1;
                // WriteAddress <= WriteAddress + 1;
            end
            else if (counter == 1)
            begin
                WriteTransfer <= 0;
            end

            if (WriteDataRequest)
            begin
                WriteData <= WriteData + 1;
            end
        end
    end

endmodule

