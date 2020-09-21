
`timescale 1 ns / 1 ps

module AXI_DataController
(
    output reg [31:0] ReadAddress,
    output reg [7:0] ReadBurstLen,
    inout [63:0] ReadData,
    output reg ReadTransfer,
    input ReadTransferComplete,

    output reg [31:0] WriteAddress,
    output reg [7:0] WriteBurstLen,
    output [63:0] WriteData,
    output reg WriteTransfer,
    input WriteTransferComplete, input WriteAcknowledge,
    output error
)


endmodule

