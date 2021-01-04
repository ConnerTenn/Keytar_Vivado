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


endmodule