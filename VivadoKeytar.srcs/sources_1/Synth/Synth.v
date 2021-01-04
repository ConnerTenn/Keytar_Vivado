`timescale 1ns / 1ps


module Synth # 
(
    parameter SAXI_SLAVE_BASE_ADDR = 32'h00000000,
    parameter MAXI_ID_WIDTH = 1,
    parameter SAXI_ID_WIDTH = 1
)
(
    input Clock100MHz,
    output signed [23:0] Waveform,


    //== AXI Slave ==
    input SAXI_aclk, input SAXI_resetn,
    //Read Address Channel
    input SAXI_arvalid, output SAXI_arready,
    input [31:0] SAXI_araddr,
    //Read Data Channel
    output SAXI_rvalid, input SAXI_rready,
    output [31:0] SAXI_rdata,
    output [1:0] SAXI_rresp,
    //Write Address Channel
    input SAXI_awvalid, output SAXI_awready,
    input [31:0] SAXI_awaddr,
    //Write Data Channel
    input SAXI_wvalid, output SAXI_wready,
    input [31:0] SAXI_wdata,
    input [7:0] SAXI_wstrb,
    //Write Response Channel
    output SAXI_bvalid, input SAXI_bready,
    output [1:0] SAXI_bresp
);

    `include "Math.v"

    //== AXI Slave ==
    //Read Response Channel
    assign SAXI_rresp = 2'b00;
    //Write Response Channel
    assign SAXI_bresp = 2'b00;
    //Read Interface
    wire [31:0] saxiReadAddress;
    wire [31:0] saxiReadData;
    wire saxiReadEN;
    //Write Interface
    wire [31:0] saxiWriteAddress;
    wire [31:0] saxiWriteData;
    wire saxiWriteEN;

    localparam NUM_BANKS = 16;

    genvar gi;
    for (gi=0; gi<NUM_BANKS; gi=gi+1)
    begin:banks
        wire signed [23:0] waveform;

        Bank #(.ADDRESS(32'h6000_0000 + 32'h1000 * gi)) banki
        (
            .Clock1MHz(clock100MHz),
            .Waveform(waveform),
            //== AXI Read ==
            .ReadAddress(maxiReadAddress), .ReadBurstLen(maxiReadBurstLen),
            .ReadData(maxiReadData),
            .ReadTransfer(maxiReadTransfer), .ReadValid(maxiReadValid),
            //== AXI Write ==
            .WriteAddress(maxiWriteAddress), .WriteBurstLen(maxiWriteBurstLen),
            .WriteData(maxiWriteData),
            .WriteTransfer(maxiWriteTransfer), .WriteDataRequest(maxiWriteDataRequest)
        );
    end


    AxiSlaveController AxiSlave (
        //== Global Signals ==
        .AxiAClk(SAXI_aclk),
        .AxiAResetN(SAXI_resetn),

        //== External Control Signals ==
        .ReadAddress(saxiReadAddress),
        .ReadData(saxiReadData),
        .ReadEN(saxiReadEN),

        .WriteAddress(saxiWriteAddress),
        .WriteData(saxiWriteData),
        .WriteEN(saxiWriteEN),

        //== Read Address Channel ==
        .ARvalid(SAXI_arvalid), .ARready(SAXI_arready),
        .ARaddr(SAXI_araddr),

        //== Read Data Channel ==
        .Rvalid(SAXI_rvalid), .Rready(SAXI_rready),
        .Rdata(SAXI_rdata),


        //== Write Address Channel ==
        .AWvalid(SAXI_awvalid), .AWready(SAXI_awready),
        .AWaddr(SAXI_awaddr),

        //== Write Data Channel ==
        .Wvalid(SAXI_wvalid), .Wready(SAXI_wready),
        .Wdata(SAXI_wdata),

        //== Write Response Channel ==
        .Bvalid(SAXI_bvalid), .Bready(SAXI_bready)
    );

endmodule