//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Sat Jun  5 21:48:20 2021
//Host        : ConnerServer running 64-bit Manjaro Linux
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1L1ROJI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_RQDJ73
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_KLI7Q5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1XE0TIN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_LJEUBV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_Y9JEWS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [0:0]auto_pc_to_s00_couplers_ARID;
  wire [3:0]auto_pc_to_s00_couplers_ARLEN;
  wire [1:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_s00_couplers_AWID;
  wire [3:0]auto_pc_to_s00_couplers_AWLEN;
  wire [1:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire [5:0]auto_pc_to_s00_couplers_BID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [63:0]auto_pc_to_s00_couplers_RDATA;
  wire [5:0]auto_pc_to_s00_couplers_RID;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [63:0]auto_pc_to_s00_couplers_WDATA;
  wire [0:0]auto_pc_to_s00_couplers_WID;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [7:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [0:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [63:0]s00_couplers_to_auto_pc_RDATA;
  wire [0:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [63:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [7:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_pc_to_s00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_s00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_s00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_s00_couplers_RID[0]),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_s00_couplers_WID),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=27,numReposBlks=18,numNonXlnxBlks=4,numHierBlks=9,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (Analog_CClk,
    Analog_CS_n,
    Analog_MoSi,
    Blue,
    Buzzer,
    Clk12MHz,
    DAC_MClk,
    DAC_Reset,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    De,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    Green,
    HSync,
    I2C_scl_i,
    I2C_scl_o,
    I2C_scl_t,
    I2C_sda_i,
    I2C_sda_o,
    I2C_sda_t,
    I2S_Clk,
    I2S_DIn,
    I2S_DOut,
    I2S_LR,
    KeyRibbonDrive,
    KeyRibbonSense,
    PClk,
    RGB,
    Red,
    VSync,
    Waveform);
  output Analog_CClk;
  output Analog_CS_n;
  output Analog_MoSi;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLUE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLUE, LAYERED_METADATA undef" *) output [4:0]Blue;
  output [0:0]Buzzer;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK12MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK12MHZ, CLK_DOMAIN system_Clk12MHz, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input Clk12MHz;
  output DAC_MClk;
  output DAC_Reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DE, LAYERED_METADATA undef" *) output [0:0]De;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GREEN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GREEN, LAYERED_METADATA undef" *) output [5:0]Green;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HSYNC DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HSYNC, LAYERED_METADATA undef" *) output [0:0]HSync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SCL_I" *) input I2C_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SCL_O" *) output I2C_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SCL_T" *) output I2C_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SDA_I" *) input I2C_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SDA_O" *) output I2C_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SDA_T" *) output I2C_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.I2S_CLK DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.I2S_CLK, LAYERED_METADATA undef" *) output I2S_Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.I2S_DIN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.I2S_DIN, LAYERED_METADATA undef" *) input I2S_DIn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.I2S_DOUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.I2S_DOUT, LAYERED_METADATA undef" *) output I2S_DOut;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.I2S_LR DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.I2S_LR, LAYERED_METADATA undef" *) output I2S_LR;
  output [7:0]KeyRibbonDrive;
  input [7:0]KeyRibbonSense;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output [0:0]PClk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RGB DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RGB, LAYERED_METADATA undef" *) output [2:0]RGB;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RED DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RED, LAYERED_METADATA undef" *) output [4:0]Red;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VSYNC DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VSYNC, LAYERED_METADATA undef" *) output [0:0]VSync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WAVEFORM DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WAVEFORM, LAYERED_METADATA undef" *) output [23:0]Waveform;

  wire APBSlave_Breakout_Keyboard_BusClock;
  wire [31:0]APBSlave_Breakout_Keyboard_BusPAddr;
  wire APBSlave_Breakout_Keyboard_BusPEnable;
  wire APBSlave_Breakout_Keyboard_BusPSel;
  wire APBSlave_Breakout_Keyboard_BusPWrite;
  wire [31:0]APBSlave_Breakout_Keyboard_BusPWriteData;
  wire [0:0]ARESETN_1;
  wire AnalogController_0_CClk;
  wire AnalogController_0_CS_n;
  wire AnalogController_0_CtrlPortRunning;
  wire AnalogController_0_DAC_MClk;
  wire AnalogController_0_DAC_Reset;
  wire AnalogController_0_I2SClk;
  wire AnalogController_0_I2SData;
  wire AnalogController_0_I2SLRSel;
  wire [23:0]AnalogController_0_LeftIn;
  wire AnalogController_0_MoSi;
  wire [23:0]AnalogController_0_RightIn;
  wire I2S_DIn_1;
  wire [3:0]IOController_1_CtrlPortAddr;
  wire [7:0]IOController_1_CtrlPortData;
  wire IOController_1_CtrlPortReset;
  wire IOController_1_CtrlPortTrigger;
  wire KeyboarController_0_BusPError;
  wire [31:0]KeyboarController_0_BusPReadData;
  wire KeyboarController_0_BusPReady;
  wire [7:0]KeyboarController_0_KeyRibbonDrive;
  wire [7:0]KeyboarRibbon_1;
  wire [2:0]RGBTest_0_RGB;
  wire [23:0]Synth_0_Waveform;
  wire [4:0]VideoController_0_Blue;
  wire VideoController_0_De;
  wire [5:0]VideoController_0_Green;
  wire VideoController_0_HSync;
  wire [31:0]VideoController_0_MAXI_FrameBufferReader_ARADDR;
  wire [1:0]VideoController_0_MAXI_FrameBufferReader_ARBURST;
  wire [3:0]VideoController_0_MAXI_FrameBufferReader_ARCACHE;
  wire [0:0]VideoController_0_MAXI_FrameBufferReader_ARID;
  wire [7:0]VideoController_0_MAXI_FrameBufferReader_ARLEN;
  wire VideoController_0_MAXI_FrameBufferReader_ARLOCK;
  wire [2:0]VideoController_0_MAXI_FrameBufferReader_ARPROT;
  wire [3:0]VideoController_0_MAXI_FrameBufferReader_ARQOS;
  wire VideoController_0_MAXI_FrameBufferReader_ARREADY;
  wire [2:0]VideoController_0_MAXI_FrameBufferReader_ARSIZE;
  wire VideoController_0_MAXI_FrameBufferReader_ARVALID;
  wire [31:0]VideoController_0_MAXI_FrameBufferReader_AWADDR;
  wire [1:0]VideoController_0_MAXI_FrameBufferReader_AWBURST;
  wire [3:0]VideoController_0_MAXI_FrameBufferReader_AWCACHE;
  wire [0:0]VideoController_0_MAXI_FrameBufferReader_AWID;
  wire [7:0]VideoController_0_MAXI_FrameBufferReader_AWLEN;
  wire VideoController_0_MAXI_FrameBufferReader_AWLOCK;
  wire [2:0]VideoController_0_MAXI_FrameBufferReader_AWPROT;
  wire [3:0]VideoController_0_MAXI_FrameBufferReader_AWQOS;
  wire VideoController_0_MAXI_FrameBufferReader_AWREADY;
  wire [2:0]VideoController_0_MAXI_FrameBufferReader_AWSIZE;
  wire VideoController_0_MAXI_FrameBufferReader_AWVALID;
  wire [0:0]VideoController_0_MAXI_FrameBufferReader_BID;
  wire VideoController_0_MAXI_FrameBufferReader_BREADY;
  wire [1:0]VideoController_0_MAXI_FrameBufferReader_BRESP;
  wire VideoController_0_MAXI_FrameBufferReader_BVALID;
  wire [63:0]VideoController_0_MAXI_FrameBufferReader_RDATA;
  wire [0:0]VideoController_0_MAXI_FrameBufferReader_RID;
  wire VideoController_0_MAXI_FrameBufferReader_RLAST;
  wire VideoController_0_MAXI_FrameBufferReader_RREADY;
  wire [1:0]VideoController_0_MAXI_FrameBufferReader_RRESP;
  wire VideoController_0_MAXI_FrameBufferReader_RVALID;
  wire [63:0]VideoController_0_MAXI_FrameBufferReader_WDATA;
  wire VideoController_0_MAXI_FrameBufferReader_WLAST;
  wire VideoController_0_MAXI_FrameBufferReader_WREADY;
  wire [7:0]VideoController_0_MAXI_FrameBufferReader_WSTRB;
  wire VideoController_0_MAXI_FrameBufferReader_WVALID;
  wire VideoController_0_PClk;
  wire [4:0]VideoController_0_Red;
  wire VideoController_0_VSync;
  wire [31:0]axi_apb_bridge_1_APB_M_PADDR;
  wire axi_apb_bridge_1_APB_M_PENABLE;
  wire [31:0]axi_apb_bridge_1_APB_M_PRDATA;
  wire axi_apb_bridge_1_APB_M_PREADY;
  wire [0:0]axi_apb_bridge_1_APB_M_PSEL;
  wire axi_apb_bridge_1_APB_M_PSLVERR;
  wire [31:0]axi_apb_bridge_1_APB_M_PWDATA;
  wire axi_apb_bridge_1_APB_M_PWRITE;
  wire [31:0]axi_interconnect_0_M00_AXI1_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARCACHE;
  wire [0:0]axi_interconnect_0_M00_AXI1_ARID;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARLEN;
  wire [1:0]axi_interconnect_0_M00_AXI1_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARQOS;
  wire axi_interconnect_0_M00_AXI1_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARSIZE;
  wire axi_interconnect_0_M00_AXI1_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI1_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWCACHE;
  wire [0:0]axi_interconnect_0_M00_AXI1_AWID;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWLEN;
  wire [1:0]axi_interconnect_0_M00_AXI1_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWQOS;
  wire axi_interconnect_0_M00_AXI1_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWSIZE;
  wire axi_interconnect_0_M00_AXI1_AWVALID;
  wire [5:0]axi_interconnect_0_M00_AXI1_BID;
  wire axi_interconnect_0_M00_AXI1_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_BRESP;
  wire axi_interconnect_0_M00_AXI1_BVALID;
  wire [63:0]axi_interconnect_0_M00_AXI1_RDATA;
  wire [5:0]axi_interconnect_0_M00_AXI1_RID;
  wire axi_interconnect_0_M00_AXI1_RLAST;
  wire axi_interconnect_0_M00_AXI1_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_RRESP;
  wire axi_interconnect_0_M00_AXI1_RVALID;
  wire [63:0]axi_interconnect_0_M00_AXI1_WDATA;
  wire [0:0]axi_interconnect_0_M00_AXI1_WID;
  wire axi_interconnect_0_M00_AXI1_WLAST;
  wire axi_interconnect_0_M00_AXI1_WREADY;
  wire [7:0]axi_interconnect_0_M00_AXI1_WSTRB;
  wire axi_interconnect_0_M00_AXI1_WVALID;
  wire [31:0]axi_interconnect_synth_M00_AXI_ARADDR;
  wire axi_interconnect_synth_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_synth_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_synth_M00_AXI_AWADDR;
  wire axi_interconnect_synth_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_synth_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_synth_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_synth_M00_AXI_BRESP;
  wire axi_interconnect_synth_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_synth_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_synth_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_synth_M00_AXI_RRESP;
  wire axi_interconnect_synth_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_synth_M00_AXI_WDATA;
  wire axi_interconnect_synth_M00_AXI_WREADY;
  wire [0:0]axi_interconnect_synth_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_synth_M01_AXI_ARADDR;
  wire axi_interconnect_synth_M01_AXI_ARREADY;
  wire axi_interconnect_synth_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_synth_M01_AXI_AWADDR;
  wire axi_interconnect_synth_M01_AXI_AWREADY;
  wire axi_interconnect_synth_M01_AXI_AWVALID;
  wire axi_interconnect_synth_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_synth_M01_AXI_BRESP;
  wire axi_interconnect_synth_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_synth_M01_AXI_RDATA;
  wire axi_interconnect_synth_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_synth_M01_AXI_RRESP;
  wire axi_interconnect_synth_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_synth_M01_AXI_WDATA;
  wire axi_interconnect_synth_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_synth_M01_AXI_WSTRB;
  wire axi_interconnect_synth_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_synth_M02_AXI_ARADDR;
  wire axi_interconnect_synth_M02_AXI_ARREADY;
  wire axi_interconnect_synth_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_synth_M02_AXI_AWADDR;
  wire axi_interconnect_synth_M02_AXI_AWREADY;
  wire axi_interconnect_synth_M02_AXI_AWVALID;
  wire axi_interconnect_synth_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_synth_M02_AXI_BRESP;
  wire axi_interconnect_synth_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_synth_M02_AXI_RDATA;
  wire axi_interconnect_synth_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_synth_M02_AXI_RRESP;
  wire axi_interconnect_synth_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_synth_M02_AXI_WDATA;
  wire axi_interconnect_synth_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_synth_M02_AXI_WSTRB;
  wire axi_interconnect_synth_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_video_ctl_M00_AXI_ARADDR;
  wire [2:0]axi_interconnect_video_ctl_M00_AXI_ARPROT;
  wire axi_interconnect_video_ctl_M00_AXI_ARREADY;
  wire axi_interconnect_video_ctl_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_video_ctl_M00_AXI_AWADDR;
  wire axi_interconnect_video_ctl_M00_AXI_AWREADY;
  wire axi_interconnect_video_ctl_M00_AXI_AWVALID;
  wire axi_interconnect_video_ctl_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_video_ctl_M00_AXI_BRESP;
  wire axi_interconnect_video_ctl_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_video_ctl_M00_AXI_RDATA;
  wire axi_interconnect_video_ctl_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_video_ctl_M00_AXI_RRESP;
  wire axi_interconnect_video_ctl_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_video_ctl_M00_AXI_WDATA;
  wire axi_interconnect_video_ctl_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_video_ctl_M00_AXI_WSTRB;
  wire axi_interconnect_video_ctl_M00_AXI_WVALID;
  wire [0:0]const_0_2_dout;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_reset;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FCLK_RESET1_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_IIC_0_SCL_I;
  wire processing_system7_0_IIC_0_SCL_O;
  wire processing_system7_0_IIC_0_SCL_T;
  wire processing_system7_0_IIC_0_SDA_I;
  wire processing_system7_0_IIC_0_SDA_O;
  wire processing_system7_0_IIC_0_SDA_T;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]processing_system7_0_M_AXI_GP1_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP1_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP1_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP1_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP1_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP1_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP1_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP1_ARQOS;
  wire processing_system7_0_M_AXI_GP1_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP1_ARSIZE;
  wire processing_system7_0_M_AXI_GP1_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP1_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP1_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP1_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP1_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP1_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP1_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP1_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP1_AWQOS;
  wire processing_system7_0_M_AXI_GP1_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP1_AWSIZE;
  wire processing_system7_0_M_AXI_GP1_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP1_BID;
  wire processing_system7_0_M_AXI_GP1_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP1_BRESP;
  wire processing_system7_0_M_AXI_GP1_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP1_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP1_RID;
  wire processing_system7_0_M_AXI_GP1_RLAST;
  wire processing_system7_0_M_AXI_GP1_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP1_RRESP;
  wire processing_system7_0_M_AXI_GP1_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP1_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP1_WID;
  wire processing_system7_0_M_AXI_GP1_WLAST;
  wire processing_system7_0_M_AXI_GP1_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP1_WSTRB;
  wire processing_system7_0_M_AXI_GP1_WVALID;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign Analog_CClk = AnalogController_0_CClk;
  assign Analog_CS_n = AnalogController_0_CS_n;
  assign Analog_MoSi = AnalogController_0_MoSi;
  assign Blue[4:0] = VideoController_0_Blue;
  assign Buzzer[0] = const_0_2_dout;
  assign DAC_MClk = AnalogController_0_DAC_MClk;
  assign DAC_Reset = AnalogController_0_DAC_Reset;
  assign De[0] = VideoController_0_De;
  assign Green[5:0] = VideoController_0_Green;
  assign HSync[0] = VideoController_0_HSync;
  assign I2C_scl_o = processing_system7_0_IIC_0_SCL_O;
  assign I2C_scl_t = processing_system7_0_IIC_0_SCL_T;
  assign I2C_sda_o = processing_system7_0_IIC_0_SDA_O;
  assign I2C_sda_t = processing_system7_0_IIC_0_SDA_T;
  assign I2S_Clk = AnalogController_0_I2SClk;
  assign I2S_DIn_1 = I2S_DIn;
  assign I2S_DOut = AnalogController_0_I2SData;
  assign I2S_LR = AnalogController_0_I2SLRSel;
  assign KeyRibbonDrive[7:0] = KeyboarController_0_KeyRibbonDrive;
  assign KeyboarRibbon_1 = KeyRibbonSense[7:0];
  assign PClk[0] = VideoController_0_PClk;
  assign RGB[2:0] = RGBTest_0_RGB;
  assign Red[4:0] = VideoController_0_Red;
  assign VSync[0] = VideoController_0_VSync;
  assign Waveform[23:0] = Synth_0_Waveform;
  assign processing_system7_0_IIC_0_SCL_I = I2C_scl_i;
  assign processing_system7_0_IIC_0_SDA_I = I2C_sda_i;
  system_APBSlave_Breakout_0_0 APBSlave_Breakout_Keyboard
       (.BusClock(APBSlave_Breakout_Keyboard_BusClock),
        .BusPAddr(APBSlave_Breakout_Keyboard_BusPAddr),
        .BusPEnable(APBSlave_Breakout_Keyboard_BusPEnable),
        .BusPError(KeyboarController_0_BusPError),
        .BusPReadData(KeyboarController_0_BusPReadData),
        .BusPReady(KeyboarController_0_BusPReady),
        .BusPSel(APBSlave_Breakout_Keyboard_BusPSel),
        .BusPWrite(APBSlave_Breakout_Keyboard_BusPWrite),
        .BusPWriteData(APBSlave_Breakout_Keyboard_BusPWriteData),
        .s_apb_paddr(axi_apb_bridge_1_APB_M_PADDR),
        .s_apb_pclock(processing_system7_0_FCLK_CLK0),
        .s_apb_penable(axi_apb_bridge_1_APB_M_PENABLE),
        .s_apb_prdata(axi_apb_bridge_1_APB_M_PRDATA),
        .s_apb_pready(axi_apb_bridge_1_APB_M_PREADY),
        .s_apb_psel(axi_apb_bridge_1_APB_M_PSEL),
        .s_apb_pslverr(axi_apb_bridge_1_APB_M_PSLVERR),
        .s_apb_pwdata(axi_apb_bridge_1_APB_M_PWDATA),
        .s_apb_pwrite(axi_apb_bridge_1_APB_M_PWRITE));
  system_AnalogController_0_0 AnalogController_0
       (.CClk(AnalogController_0_CClk),
        .CS_n(AnalogController_0_CS_n),
        .Clock(processing_system7_0_FCLK_CLK0),
        .CtrlPortAddr(IOController_1_CtrlPortAddr),
        .CtrlPortData(IOController_1_CtrlPortData),
        .CtrlPortReset(IOController_1_CtrlPortReset),
        .CtrlPortRunning(AnalogController_0_CtrlPortRunning),
        .CtrlPortTrigger(IOController_1_CtrlPortTrigger),
        .DAC_MClk(AnalogController_0_DAC_MClk),
        .DAC_Reset(AnalogController_0_DAC_Reset),
        .I2SClk(AnalogController_0_I2SClk),
        .I2SDin(I2S_DIn_1),
        .I2SDout(AnalogController_0_I2SData),
        .I2SLRSel(AnalogController_0_I2SLRSel),
        .LeftIn(AnalogController_0_LeftIn),
        .LeftOut(Synth_0_Waveform),
        .MoSi(AnalogController_0_MoSi),
        .RightIn(AnalogController_0_RightIn),
        .RightOut(Synth_0_Waveform));
  system_IOController_1_0 IOController_1
       (.CtrlPortAddr(IOController_1_CtrlPortAddr),
        .CtrlPortData(IOController_1_CtrlPortData),
        .CtrlPortReset(IOController_1_CtrlPortReset),
        .CtrlPortRunning(AnalogController_0_CtrlPortRunning),
        .CtrlPortTrigger(IOController_1_CtrlPortTrigger),
        .SAXI_aclk(processing_system7_0_FCLK_CLK0),
        .SAXI_araddr(axi_interconnect_synth_M02_AXI_ARADDR),
        .SAXI_arready(axi_interconnect_synth_M02_AXI_ARREADY),
        .SAXI_arvalid(axi_interconnect_synth_M02_AXI_ARVALID),
        .SAXI_awaddr(axi_interconnect_synth_M02_AXI_AWADDR),
        .SAXI_awready(axi_interconnect_synth_M02_AXI_AWREADY),
        .SAXI_awvalid(axi_interconnect_synth_M02_AXI_AWVALID),
        .SAXI_bready(axi_interconnect_synth_M02_AXI_BREADY),
        .SAXI_bresp(axi_interconnect_synth_M02_AXI_BRESP),
        .SAXI_bvalid(axi_interconnect_synth_M02_AXI_BVALID),
        .SAXI_rdata(axi_interconnect_synth_M02_AXI_RDATA),
        .SAXI_resetn(proc_sys_reset_0_peripheral_aresetn),
        .SAXI_rready(axi_interconnect_synth_M02_AXI_RREADY),
        .SAXI_rresp(axi_interconnect_synth_M02_AXI_RRESP),
        .SAXI_rvalid(axi_interconnect_synth_M02_AXI_RVALID),
        .SAXI_wdata(axi_interconnect_synth_M02_AXI_WDATA),
        .SAXI_wready(axi_interconnect_synth_M02_AXI_WREADY),
        .SAXI_wstrb({1'b1,1'b1,1'b1,1'b1,axi_interconnect_synth_M02_AXI_WSTRB}),
        .SAXI_wvalid(axi_interconnect_synth_M02_AXI_WVALID),
        .StripPosition(AnalogController_0_LeftIn),
        .StripPressure(AnalogController_0_RightIn));
  system_KeyboarController_0_0 KeyboarController_0
       (.BusClock(APBSlave_Breakout_Keyboard_BusClock),
        .BusPAddr(APBSlave_Breakout_Keyboard_BusPAddr),
        .BusPEnable(APBSlave_Breakout_Keyboard_BusPEnable),
        .BusPError(KeyboarController_0_BusPError),
        .BusPReadData(KeyboarController_0_BusPReadData),
        .BusPReady(KeyboarController_0_BusPReady),
        .BusPSel(APBSlave_Breakout_Keyboard_BusPSel),
        .BusPWrite(APBSlave_Breakout_Keyboard_BusPWrite),
        .BusPWriteData(APBSlave_Breakout_Keyboard_BusPWriteData),
        .KeyRibbonDrive(KeyboarController_0_KeyRibbonDrive),
        .KeyRibbonSense(KeyboarRibbon_1));
  system_RGBTest_0_0 RGBTest_0
       (.Clock(processing_system7_0_FCLK_CLK1),
        .RGB(RGBTest_0_RGB));
  system_Synth_1_0 Synth
       (.Clock100MHz(processing_system7_0_FCLK_CLK0),
        .SAXI_aclk(processing_system7_0_FCLK_CLK0),
        .SAXI_araddr(axi_interconnect_synth_M01_AXI_ARADDR),
        .SAXI_arready(axi_interconnect_synth_M01_AXI_ARREADY),
        .SAXI_arvalid(axi_interconnect_synth_M01_AXI_ARVALID),
        .SAXI_awaddr(axi_interconnect_synth_M01_AXI_AWADDR),
        .SAXI_awready(axi_interconnect_synth_M01_AXI_AWREADY),
        .SAXI_awvalid(axi_interconnect_synth_M01_AXI_AWVALID),
        .SAXI_bready(axi_interconnect_synth_M01_AXI_BREADY),
        .SAXI_bresp(axi_interconnect_synth_M01_AXI_BRESP),
        .SAXI_bvalid(axi_interconnect_synth_M01_AXI_BVALID),
        .SAXI_rdata(axi_interconnect_synth_M01_AXI_RDATA),
        .SAXI_resetn(proc_sys_reset_0_peripheral_aresetn),
        .SAXI_rready(axi_interconnect_synth_M01_AXI_RREADY),
        .SAXI_rresp(axi_interconnect_synth_M01_AXI_RRESP),
        .SAXI_rvalid(axi_interconnect_synth_M01_AXI_RVALID),
        .SAXI_wdata(axi_interconnect_synth_M01_AXI_WDATA),
        .SAXI_wready(axi_interconnect_synth_M01_AXI_WREADY),
        .SAXI_wstrb({1'b1,1'b1,1'b1,1'b1,axi_interconnect_synth_M01_AXI_WSTRB}),
        .SAXI_wvalid(axi_interconnect_synth_M01_AXI_WVALID),
        .Waveform(Synth_0_Waveform));
  system_VideoController_0_1 VideoController_0
       (.Blue(VideoController_0_Blue),
        .De(VideoController_0_De),
        .Green(VideoController_0_Green),
        .HSync(VideoController_0_HSync),
        .MAXI_aclk(processing_system7_0_FCLK_CLK1),
        .MAXI_araddr(VideoController_0_MAXI_FrameBufferReader_ARADDR),
        .MAXI_arburst(VideoController_0_MAXI_FrameBufferReader_ARBURST),
        .MAXI_arcache(VideoController_0_MAXI_FrameBufferReader_ARCACHE),
        .MAXI_arid(VideoController_0_MAXI_FrameBufferReader_ARID),
        .MAXI_arlen(VideoController_0_MAXI_FrameBufferReader_ARLEN),
        .MAXI_arlock(VideoController_0_MAXI_FrameBufferReader_ARLOCK),
        .MAXI_arprot(VideoController_0_MAXI_FrameBufferReader_ARPROT),
        .MAXI_arqos(VideoController_0_MAXI_FrameBufferReader_ARQOS),
        .MAXI_arready(VideoController_0_MAXI_FrameBufferReader_ARREADY),
        .MAXI_arsize(VideoController_0_MAXI_FrameBufferReader_ARSIZE),
        .MAXI_arvalid(VideoController_0_MAXI_FrameBufferReader_ARVALID),
        .MAXI_awaddr(VideoController_0_MAXI_FrameBufferReader_AWADDR),
        .MAXI_awburst(VideoController_0_MAXI_FrameBufferReader_AWBURST),
        .MAXI_awcache(VideoController_0_MAXI_FrameBufferReader_AWCACHE),
        .MAXI_awid(VideoController_0_MAXI_FrameBufferReader_AWID),
        .MAXI_awlen(VideoController_0_MAXI_FrameBufferReader_AWLEN),
        .MAXI_awlock(VideoController_0_MAXI_FrameBufferReader_AWLOCK),
        .MAXI_awprot(VideoController_0_MAXI_FrameBufferReader_AWPROT),
        .MAXI_awqos(VideoController_0_MAXI_FrameBufferReader_AWQOS),
        .MAXI_awready(VideoController_0_MAXI_FrameBufferReader_AWREADY),
        .MAXI_awsize(VideoController_0_MAXI_FrameBufferReader_AWSIZE),
        .MAXI_awvalid(VideoController_0_MAXI_FrameBufferReader_AWVALID),
        .MAXI_bid(VideoController_0_MAXI_FrameBufferReader_BID),
        .MAXI_bready(VideoController_0_MAXI_FrameBufferReader_BREADY),
        .MAXI_bresp(VideoController_0_MAXI_FrameBufferReader_BRESP),
        .MAXI_bvalid(VideoController_0_MAXI_FrameBufferReader_BVALID),
        .MAXI_rdata(VideoController_0_MAXI_FrameBufferReader_RDATA),
        .MAXI_resetn(proc_sys_reset_1_peripheral_aresetn),
        .MAXI_rid(VideoController_0_MAXI_FrameBufferReader_RID),
        .MAXI_rlast(VideoController_0_MAXI_FrameBufferReader_RLAST),
        .MAXI_rready(VideoController_0_MAXI_FrameBufferReader_RREADY),
        .MAXI_rresp(VideoController_0_MAXI_FrameBufferReader_RRESP),
        .MAXI_rvalid(VideoController_0_MAXI_FrameBufferReader_RVALID),
        .MAXI_wdata(VideoController_0_MAXI_FrameBufferReader_WDATA),
        .MAXI_wlast(VideoController_0_MAXI_FrameBufferReader_WLAST),
        .MAXI_wready(VideoController_0_MAXI_FrameBufferReader_WREADY),
        .MAXI_wstrb(VideoController_0_MAXI_FrameBufferReader_WSTRB),
        .MAXI_wvalid(VideoController_0_MAXI_FrameBufferReader_WVALID),
        .PClk(VideoController_0_PClk),
        .Red(VideoController_0_Red),
        .SAXI_aclk(processing_system7_0_FCLK_CLK1),
        .SAXI_araddr(axi_interconnect_video_ctl_M00_AXI_ARADDR),
        .SAXI_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXI_arprot(axi_interconnect_video_ctl_M00_AXI_ARPROT),
        .SAXI_arready(axi_interconnect_video_ctl_M00_AXI_ARREADY),
        .SAXI_arvalid(axi_interconnect_video_ctl_M00_AXI_ARVALID),
        .SAXI_awaddr(axi_interconnect_video_ctl_M00_AXI_AWADDR),
        .SAXI_awburst({1'b0,1'b1}),
        .SAXI_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXI_awready(axi_interconnect_video_ctl_M00_AXI_AWREADY),
        .SAXI_awsize({1'b0,1'b1,1'b0}),
        .SAXI_awvalid(axi_interconnect_video_ctl_M00_AXI_AWVALID),
        .SAXI_bready(axi_interconnect_video_ctl_M00_AXI_BREADY),
        .SAXI_bresp(axi_interconnect_video_ctl_M00_AXI_BRESP),
        .SAXI_bvalid(axi_interconnect_video_ctl_M00_AXI_BVALID),
        .SAXI_rdata(axi_interconnect_video_ctl_M00_AXI_RDATA),
        .SAXI_resetn(proc_sys_reset_1_peripheral_aresetn),
        .SAXI_rready(axi_interconnect_video_ctl_M00_AXI_RREADY),
        .SAXI_rresp(axi_interconnect_video_ctl_M00_AXI_RRESP),
        .SAXI_rvalid(axi_interconnect_video_ctl_M00_AXI_RVALID),
        .SAXI_wdata(axi_interconnect_video_ctl_M00_AXI_WDATA),
        .SAXI_wlast(1'b0),
        .SAXI_wready(axi_interconnect_video_ctl_M00_AXI_WREADY),
        .SAXI_wstrb({1'b1,1'b1,1'b1,1'b1,axi_interconnect_video_ctl_M00_AXI_WSTRB}),
        .SAXI_wvalid(axi_interconnect_video_ctl_M00_AXI_WVALID),
        .VSync(VideoController_0_VSync));
  system_axi_apb_bridge_0_3 axi_apb_bridge_1
       (.m_apb_paddr(axi_apb_bridge_1_APB_M_PADDR),
        .m_apb_penable(axi_apb_bridge_1_APB_M_PENABLE),
        .m_apb_prdata(axi_apb_bridge_1_APB_M_PRDATA),
        .m_apb_pready(axi_apb_bridge_1_APB_M_PREADY),
        .m_apb_psel(axi_apb_bridge_1_APB_M_PSEL),
        .m_apb_pslverr(axi_apb_bridge_1_APB_M_PSLVERR),
        .m_apb_pwdata(axi_apb_bridge_1_APB_M_PWDATA),
        .m_apb_pwrite(axi_apb_bridge_1_APB_M_PWRITE),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_interconnect_synth_M00_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_synth_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_synth_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_synth_M00_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_synth_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_synth_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_synth_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_synth_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_synth_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_synth_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_synth_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_synth_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_synth_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_synth_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_synth_M00_AXI_WREADY),
        .s_axi_wvalid(axi_interconnect_synth_M00_AXI_WVALID));
  system_axi_interconnect_0_2 axi_interconnect_0
       (.ACLK(processing_system7_0_FCLK_CLK1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(processing_system7_0_FCLK_CLK1),
        .M00_ARESETN(ARESETN_1),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI1_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI1_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI1_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI1_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI1_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI1_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI1_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI1_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI1_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI1_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI1_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI1_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI1_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI1_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI1_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI1_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI1_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI1_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI1_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI1_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI1_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI1_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI1_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI1_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI1_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI1_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI1_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI1_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI1_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI1_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI1_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI1_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI1_WDATA),
        .M00_AXI_wid(axi_interconnect_0_M00_AXI1_WID),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI1_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI1_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI1_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI1_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK1),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(VideoController_0_MAXI_FrameBufferReader_ARADDR),
        .S00_AXI_arburst(VideoController_0_MAXI_FrameBufferReader_ARBURST),
        .S00_AXI_arcache(VideoController_0_MAXI_FrameBufferReader_ARCACHE),
        .S00_AXI_arid(VideoController_0_MAXI_FrameBufferReader_ARID),
        .S00_AXI_arlen(VideoController_0_MAXI_FrameBufferReader_ARLEN),
        .S00_AXI_arlock(VideoController_0_MAXI_FrameBufferReader_ARLOCK),
        .S00_AXI_arprot(VideoController_0_MAXI_FrameBufferReader_ARPROT),
        .S00_AXI_arqos(VideoController_0_MAXI_FrameBufferReader_ARQOS),
        .S00_AXI_arready(VideoController_0_MAXI_FrameBufferReader_ARREADY),
        .S00_AXI_arsize(VideoController_0_MAXI_FrameBufferReader_ARSIZE),
        .S00_AXI_arvalid(VideoController_0_MAXI_FrameBufferReader_ARVALID),
        .S00_AXI_awaddr(VideoController_0_MAXI_FrameBufferReader_AWADDR),
        .S00_AXI_awburst(VideoController_0_MAXI_FrameBufferReader_AWBURST),
        .S00_AXI_awcache(VideoController_0_MAXI_FrameBufferReader_AWCACHE),
        .S00_AXI_awid(VideoController_0_MAXI_FrameBufferReader_AWID),
        .S00_AXI_awlen(VideoController_0_MAXI_FrameBufferReader_AWLEN),
        .S00_AXI_awlock(VideoController_0_MAXI_FrameBufferReader_AWLOCK),
        .S00_AXI_awprot(VideoController_0_MAXI_FrameBufferReader_AWPROT),
        .S00_AXI_awqos(VideoController_0_MAXI_FrameBufferReader_AWQOS),
        .S00_AXI_awready(VideoController_0_MAXI_FrameBufferReader_AWREADY),
        .S00_AXI_awsize(VideoController_0_MAXI_FrameBufferReader_AWSIZE),
        .S00_AXI_awvalid(VideoController_0_MAXI_FrameBufferReader_AWVALID),
        .S00_AXI_bid(VideoController_0_MAXI_FrameBufferReader_BID),
        .S00_AXI_bready(VideoController_0_MAXI_FrameBufferReader_BREADY),
        .S00_AXI_bresp(VideoController_0_MAXI_FrameBufferReader_BRESP),
        .S00_AXI_bvalid(VideoController_0_MAXI_FrameBufferReader_BVALID),
        .S00_AXI_rdata(VideoController_0_MAXI_FrameBufferReader_RDATA),
        .S00_AXI_rid(VideoController_0_MAXI_FrameBufferReader_RID),
        .S00_AXI_rlast(VideoController_0_MAXI_FrameBufferReader_RLAST),
        .S00_AXI_rready(VideoController_0_MAXI_FrameBufferReader_RREADY),
        .S00_AXI_rresp(VideoController_0_MAXI_FrameBufferReader_RRESP),
        .S00_AXI_rvalid(VideoController_0_MAXI_FrameBufferReader_RVALID),
        .S00_AXI_wdata(VideoController_0_MAXI_FrameBufferReader_WDATA),
        .S00_AXI_wlast(VideoController_0_MAXI_FrameBufferReader_WLAST),
        .S00_AXI_wready(VideoController_0_MAXI_FrameBufferReader_WREADY),
        .S00_AXI_wstrb(VideoController_0_MAXI_FrameBufferReader_WSTRB),
        .S00_AXI_wvalid(VideoController_0_MAXI_FrameBufferReader_WVALID));
  system_axi_interconnect_2_0 axi_interconnect_synth
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_synth_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_synth_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_synth_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_synth_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_synth_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_synth_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_synth_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_synth_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_synth_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_synth_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_synth_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_synth_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_synth_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_synth_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_synth_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_interconnect_synth_M00_AXI_WVALID),
        .M01_ACLK(processing_system7_0_FCLK_CLK0),
        .M01_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_synth_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_synth_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_synth_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_synth_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_synth_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_synth_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_synth_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_synth_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_synth_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_synth_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_synth_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_synth_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_synth_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_synth_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_synth_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_synth_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_synth_M01_AXI_WVALID),
        .M02_ACLK(processing_system7_0_FCLK_CLK0),
        .M02_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M02_AXI_araddr(axi_interconnect_synth_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_synth_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_synth_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_synth_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_synth_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_synth_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_synth_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_synth_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_synth_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_synth_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_synth_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_synth_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_synth_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_synth_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_synth_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_synth_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_synth_M02_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  system_axi_interconnect_0_0 axi_interconnect_video_ctl
       (.ACLK(processing_system7_0_FCLK_CLK1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(processing_system7_0_FCLK_CLK1),
        .M00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_video_ctl_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_interconnect_video_ctl_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_video_ctl_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_video_ctl_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_video_ctl_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_video_ctl_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_video_ctl_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_video_ctl_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_video_ctl_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_video_ctl_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_video_ctl_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_video_ctl_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_video_ctl_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_video_ctl_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_video_ctl_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_video_ctl_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_video_ctl_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_video_ctl_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK1),
        .S00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP1_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP1_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP1_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP1_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP1_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP1_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP1_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP1_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP1_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP1_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP1_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP1_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP1_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP1_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP1_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP1_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP1_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP1_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP1_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP1_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP1_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP1_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP1_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP1_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP1_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP1_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP1_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP1_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP1_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP1_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP1_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP1_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP1_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP1_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP1_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP1_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP1_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP1_WVALID));
  system_xlconstant_0_1 const_0_2
       (.dout(const_0_2_dout));
  system_const_HIGH_1_3 const_HIGH_4
       (.dout(xlconstant_1_dout));
  system_xlconstant_0_0 const_LOW_0
       (.dout(xlconstant_0_dout));
  system_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(xlconstant_1_dout),
        .dcm_locked(xlconstant_1_dout),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(xlconstant_0_dout),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  system_proc_sys_reset_0_1 proc_sys_reset_1
       (.aux_reset_in(xlconstant_1_dout),
        .dcm_locked(xlconstant_1_dout),
        .ext_reset_in(processing_system7_0_FCLK_RESET1_N),
        .interconnect_aresetn(ARESETN_1),
        .mb_debug_sys_rst(xlconstant_0_dout),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_1_peripheral_reset),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK1));
  system_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .FCLK_RESET1_N(processing_system7_0_FCLK_RESET1_N),
        .GPIO_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I2C0_SCL_I(processing_system7_0_IIC_0_SCL_I),
        .I2C0_SCL_O(processing_system7_0_IIC_0_SCL_O),
        .I2C0_SCL_T(processing_system7_0_IIC_0_SCL_T),
        .I2C0_SDA_I(processing_system7_0_IIC_0_SDA_I),
        .I2C0_SDA_O(processing_system7_0_IIC_0_SDA_O),
        .I2C0_SDA_T(processing_system7_0_IIC_0_SDA_T),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .M_AXI_GP1_ACLK(processing_system7_0_FCLK_CLK1),
        .M_AXI_GP1_ARADDR(processing_system7_0_M_AXI_GP1_ARADDR),
        .M_AXI_GP1_ARBURST(processing_system7_0_M_AXI_GP1_ARBURST),
        .M_AXI_GP1_ARCACHE(processing_system7_0_M_AXI_GP1_ARCACHE),
        .M_AXI_GP1_ARID(processing_system7_0_M_AXI_GP1_ARID),
        .M_AXI_GP1_ARLEN(processing_system7_0_M_AXI_GP1_ARLEN),
        .M_AXI_GP1_ARLOCK(processing_system7_0_M_AXI_GP1_ARLOCK),
        .M_AXI_GP1_ARPROT(processing_system7_0_M_AXI_GP1_ARPROT),
        .M_AXI_GP1_ARQOS(processing_system7_0_M_AXI_GP1_ARQOS),
        .M_AXI_GP1_ARREADY(processing_system7_0_M_AXI_GP1_ARREADY),
        .M_AXI_GP1_ARSIZE(processing_system7_0_M_AXI_GP1_ARSIZE),
        .M_AXI_GP1_ARVALID(processing_system7_0_M_AXI_GP1_ARVALID),
        .M_AXI_GP1_AWADDR(processing_system7_0_M_AXI_GP1_AWADDR),
        .M_AXI_GP1_AWBURST(processing_system7_0_M_AXI_GP1_AWBURST),
        .M_AXI_GP1_AWCACHE(processing_system7_0_M_AXI_GP1_AWCACHE),
        .M_AXI_GP1_AWID(processing_system7_0_M_AXI_GP1_AWID),
        .M_AXI_GP1_AWLEN(processing_system7_0_M_AXI_GP1_AWLEN),
        .M_AXI_GP1_AWLOCK(processing_system7_0_M_AXI_GP1_AWLOCK),
        .M_AXI_GP1_AWPROT(processing_system7_0_M_AXI_GP1_AWPROT),
        .M_AXI_GP1_AWQOS(processing_system7_0_M_AXI_GP1_AWQOS),
        .M_AXI_GP1_AWREADY(processing_system7_0_M_AXI_GP1_AWREADY),
        .M_AXI_GP1_AWSIZE(processing_system7_0_M_AXI_GP1_AWSIZE),
        .M_AXI_GP1_AWVALID(processing_system7_0_M_AXI_GP1_AWVALID),
        .M_AXI_GP1_BID(processing_system7_0_M_AXI_GP1_BID),
        .M_AXI_GP1_BREADY(processing_system7_0_M_AXI_GP1_BREADY),
        .M_AXI_GP1_BRESP(processing_system7_0_M_AXI_GP1_BRESP),
        .M_AXI_GP1_BVALID(processing_system7_0_M_AXI_GP1_BVALID),
        .M_AXI_GP1_RDATA(processing_system7_0_M_AXI_GP1_RDATA),
        .M_AXI_GP1_RID(processing_system7_0_M_AXI_GP1_RID),
        .M_AXI_GP1_RLAST(processing_system7_0_M_AXI_GP1_RLAST),
        .M_AXI_GP1_RREADY(processing_system7_0_M_AXI_GP1_RREADY),
        .M_AXI_GP1_RRESP(processing_system7_0_M_AXI_GP1_RRESP),
        .M_AXI_GP1_RVALID(processing_system7_0_M_AXI_GP1_RVALID),
        .M_AXI_GP1_WDATA(processing_system7_0_M_AXI_GP1_WDATA),
        .M_AXI_GP1_WID(processing_system7_0_M_AXI_GP1_WID),
        .M_AXI_GP1_WLAST(processing_system7_0_M_AXI_GP1_WLAST),
        .M_AXI_GP1_WREADY(processing_system7_0_M_AXI_GP1_WREADY),
        .M_AXI_GP1_WSTRB(processing_system7_0_M_AXI_GP1_WSTRB),
        .M_AXI_GP1_WVALID(processing_system7_0_M_AXI_GP1_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK1),
        .S_AXI_HP0_ARADDR(axi_interconnect_0_M00_AXI1_ARADDR),
        .S_AXI_HP0_ARBURST(axi_interconnect_0_M00_AXI1_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_interconnect_0_M00_AXI1_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI1_ARID}),
        .S_AXI_HP0_ARLEN(axi_interconnect_0_M00_AXI1_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_interconnect_0_M00_AXI1_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_interconnect_0_M00_AXI1_ARPROT),
        .S_AXI_HP0_ARQOS(axi_interconnect_0_M00_AXI1_ARQOS),
        .S_AXI_HP0_ARREADY(axi_interconnect_0_M00_AXI1_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_interconnect_0_M00_AXI1_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_interconnect_0_M00_AXI1_ARVALID),
        .S_AXI_HP0_AWADDR(axi_interconnect_0_M00_AXI1_AWADDR),
        .S_AXI_HP0_AWBURST(axi_interconnect_0_M00_AXI1_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_interconnect_0_M00_AXI1_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI1_AWID}),
        .S_AXI_HP0_AWLEN(axi_interconnect_0_M00_AXI1_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_interconnect_0_M00_AXI1_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_interconnect_0_M00_AXI1_AWPROT),
        .S_AXI_HP0_AWQOS(axi_interconnect_0_M00_AXI1_AWQOS),
        .S_AXI_HP0_AWREADY(axi_interconnect_0_M00_AXI1_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_interconnect_0_M00_AXI1_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_interconnect_0_M00_AXI1_AWVALID),
        .S_AXI_HP0_BID(axi_interconnect_0_M00_AXI1_BID),
        .S_AXI_HP0_BREADY(axi_interconnect_0_M00_AXI1_BREADY),
        .S_AXI_HP0_BRESP(axi_interconnect_0_M00_AXI1_BRESP),
        .S_AXI_HP0_BVALID(axi_interconnect_0_M00_AXI1_BVALID),
        .S_AXI_HP0_RDATA(axi_interconnect_0_M00_AXI1_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(axi_interconnect_0_M00_AXI1_RID),
        .S_AXI_HP0_RLAST(axi_interconnect_0_M00_AXI1_RLAST),
        .S_AXI_HP0_RREADY(axi_interconnect_0_M00_AXI1_RREADY),
        .S_AXI_HP0_RRESP(axi_interconnect_0_M00_AXI1_RRESP),
        .S_AXI_HP0_RVALID(axi_interconnect_0_M00_AXI1_RVALID),
        .S_AXI_HP0_WDATA(axi_interconnect_0_M00_AXI1_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI1_WID}),
        .S_AXI_HP0_WLAST(axi_interconnect_0_M00_AXI1_WLAST),
        .S_AXI_HP0_WREADY(axi_interconnect_0_M00_AXI1_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_interconnect_0_M00_AXI1_WSTRB),
        .S_AXI_HP0_WVALID(axi_interconnect_0_M00_AXI1_WVALID));
endmodule

module system_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_video_ctl_ACLK_net;
  wire axi_interconnect_video_ctl_ARESETN_net;
  wire [31:0]axi_interconnect_video_ctl_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_video_ctl_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_video_ctl_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_video_ctl_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_video_ctl_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_video_ctl_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_video_ctl_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_video_ctl_to_s00_couplers_ARQOS;
  wire axi_interconnect_video_ctl_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_video_ctl_to_s00_couplers_ARSIZE;
  wire axi_interconnect_video_ctl_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_video_ctl_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_video_ctl_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_video_ctl_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_video_ctl_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_video_ctl_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_video_ctl_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_video_ctl_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_video_ctl_to_s00_couplers_AWQOS;
  wire axi_interconnect_video_ctl_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_video_ctl_to_s00_couplers_AWSIZE;
  wire axi_interconnect_video_ctl_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_video_ctl_to_s00_couplers_BID;
  wire axi_interconnect_video_ctl_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_video_ctl_to_s00_couplers_BRESP;
  wire axi_interconnect_video_ctl_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_video_ctl_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_video_ctl_to_s00_couplers_RID;
  wire axi_interconnect_video_ctl_to_s00_couplers_RLAST;
  wire axi_interconnect_video_ctl_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_video_ctl_to_s00_couplers_RRESP;
  wire axi_interconnect_video_ctl_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_video_ctl_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_video_ctl_to_s00_couplers_WID;
  wire axi_interconnect_video_ctl_to_s00_couplers_WLAST;
  wire axi_interconnect_video_ctl_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_video_ctl_to_s00_couplers_WSTRB;
  wire axi_interconnect_video_ctl_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_video_ctl_ARADDR;
  wire [2:0]s00_couplers_to_axi_interconnect_video_ctl_ARPROT;
  wire s00_couplers_to_axi_interconnect_video_ctl_ARREADY;
  wire s00_couplers_to_axi_interconnect_video_ctl_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_video_ctl_AWADDR;
  wire s00_couplers_to_axi_interconnect_video_ctl_AWREADY;
  wire s00_couplers_to_axi_interconnect_video_ctl_AWVALID;
  wire s00_couplers_to_axi_interconnect_video_ctl_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_video_ctl_BRESP;
  wire s00_couplers_to_axi_interconnect_video_ctl_BVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_video_ctl_RDATA;
  wire s00_couplers_to_axi_interconnect_video_ctl_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_video_ctl_RRESP;
  wire s00_couplers_to_axi_interconnect_video_ctl_RVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_video_ctl_WDATA;
  wire s00_couplers_to_axi_interconnect_video_ctl_WREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_video_ctl_WSTRB;
  wire s00_couplers_to_axi_interconnect_video_ctl_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_video_ctl_ARADDR;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_video_ctl_ARPROT;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_video_ctl_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_video_ctl_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_video_ctl_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_video_ctl_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_video_ctl_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_interconnect_video_ctl_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_interconnect_video_ctl_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_video_ctl_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_video_ctl_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_video_ctl_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_video_ctl_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_video_ctl_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_video_ctl_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_video_ctl_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_video_ctl_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_video_ctl_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_video_ctl_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_video_ctl_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_video_ctl_to_s00_couplers_WREADY;
  assign axi_interconnect_video_ctl_ACLK_net = M00_ACLK;
  assign axi_interconnect_video_ctl_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_video_ctl_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_video_ctl_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_video_ctl_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_video_ctl_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_video_ctl_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_video_ctl_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_video_ctl_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_video_ctl_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_video_ctl_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_video_ctl_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_video_ctl_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_video_ctl_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_interconnect_video_ctl_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_video_ctl_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_video_ctl_WREADY = M00_AXI_wready;
  s00_couplers_imp_LJEUBV s00_couplers
       (.M_ACLK(axi_interconnect_video_ctl_ACLK_net),
        .M_ARESETN(axi_interconnect_video_ctl_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_video_ctl_ARADDR),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_video_ctl_ARPROT),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_video_ctl_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_video_ctl_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_video_ctl_AWADDR),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_video_ctl_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_video_ctl_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_video_ctl_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_video_ctl_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_video_ctl_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_video_ctl_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_video_ctl_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_video_ctl_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_video_ctl_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_video_ctl_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_video_ctl_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_video_ctl_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_video_ctl_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_video_ctl_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_video_ctl_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_video_ctl_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_video_ctl_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_video_ctl_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_video_ctl_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_video_ctl_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_video_ctl_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_video_ctl_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_video_ctl_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_video_ctl_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_video_ctl_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_video_ctl_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_video_ctl_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_video_ctl_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_video_ctl_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_video_ctl_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_video_ctl_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_video_ctl_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_video_ctl_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_video_ctl_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_video_ctl_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_video_ctl_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_video_ctl_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_video_ctl_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_video_ctl_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_video_ctl_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_video_ctl_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_video_ctl_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_video_ctl_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_video_ctl_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_video_ctl_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_video_ctl_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_video_ctl_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_video_ctl_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_video_ctl_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_video_ctl_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_video_ctl_to_s00_couplers_WVALID));
endmodule

module system_axi_interconnect_0_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [7:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [0:0]s00_couplers_to_axi_interconnect_0_ARID;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARLEN;
  wire [1:0]s00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARQOS;
  wire s00_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARSIZE;
  wire s00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [0:0]s00_couplers_to_axi_interconnect_0_AWID;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWLEN;
  wire [1:0]s00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWQOS;
  wire s00_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWSIZE;
  wire s00_couplers_to_axi_interconnect_0_AWVALID;
  wire [5:0]s00_couplers_to_axi_interconnect_0_BID;
  wire s00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_BRESP;
  wire s00_couplers_to_axi_interconnect_0_BVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_0_RDATA;
  wire [5:0]s00_couplers_to_axi_interconnect_0_RID;
  wire s00_couplers_to_axi_interconnect_0_RLAST;
  wire s00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_RRESP;
  wire s00_couplers_to_axi_interconnect_0_RVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]s00_couplers_to_axi_interconnect_0_WID;
  wire s00_couplers_to_axi_interconnect_0_WLAST;
  wire s00_couplers_to_axi_interconnect_0_WREADY;
  wire [7:0]s00_couplers_to_axi_interconnect_0_WSTRB;
  wire s00_couplers_to_axi_interconnect_0_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arid[0] = s00_couplers_to_axi_interconnect_0_ARID;
  assign M00_AXI_arlen[3:0] = s00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock[1:0] = s00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awid[0] = s00_couplers_to_axi_interconnect_0_AWID;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wid[0] = s00_couplers_to_axi_interconnect_0_WID;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = M00_ACLK;
  assign axi_interconnect_0_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_0_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_axi_interconnect_0_RID = M00_AXI_rid[5:0];
  assign s00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  s00_couplers_imp_Y9JEWS s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wid(s00_couplers_to_axi_interconnect_0_WID),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
endmodule

module system_axi_interconnect_2_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_synth_ACLK_net;
  wire axi_interconnect_synth_ARESETN_net;
  wire [31:0]axi_interconnect_synth_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_synth_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_synth_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_synth_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_synth_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_synth_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_synth_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_synth_to_s00_couplers_ARQOS;
  wire axi_interconnect_synth_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_synth_to_s00_couplers_ARSIZE;
  wire axi_interconnect_synth_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_synth_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_synth_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_synth_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_synth_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_synth_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_synth_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_synth_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_synth_to_s00_couplers_AWQOS;
  wire axi_interconnect_synth_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_synth_to_s00_couplers_AWSIZE;
  wire axi_interconnect_synth_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_synth_to_s00_couplers_BID;
  wire axi_interconnect_synth_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_synth_to_s00_couplers_BRESP;
  wire axi_interconnect_synth_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_synth_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_synth_to_s00_couplers_RID;
  wire axi_interconnect_synth_to_s00_couplers_RLAST;
  wire axi_interconnect_synth_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_synth_to_s00_couplers_RRESP;
  wire axi_interconnect_synth_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_synth_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_synth_to_s00_couplers_WID;
  wire axi_interconnect_synth_to_s00_couplers_WLAST;
  wire axi_interconnect_synth_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_synth_to_s00_couplers_WSTRB;
  wire axi_interconnect_synth_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_synth_ARADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_ARREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_synth_AWADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_AWREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_AWVALID;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_synth_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_synth_RDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_synth_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_synth_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_WREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_synth_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_synth_ARADDR;
  wire m01_couplers_to_axi_interconnect_synth_ARREADY;
  wire m01_couplers_to_axi_interconnect_synth_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_synth_AWADDR;
  wire m01_couplers_to_axi_interconnect_synth_AWREADY;
  wire m01_couplers_to_axi_interconnect_synth_AWVALID;
  wire m01_couplers_to_axi_interconnect_synth_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_synth_BRESP;
  wire m01_couplers_to_axi_interconnect_synth_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_synth_RDATA;
  wire m01_couplers_to_axi_interconnect_synth_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_synth_RRESP;
  wire m01_couplers_to_axi_interconnect_synth_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_synth_WDATA;
  wire m01_couplers_to_axi_interconnect_synth_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_synth_WSTRB;
  wire m01_couplers_to_axi_interconnect_synth_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_synth_ARADDR;
  wire m02_couplers_to_axi_interconnect_synth_ARREADY;
  wire m02_couplers_to_axi_interconnect_synth_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_synth_AWADDR;
  wire m02_couplers_to_axi_interconnect_synth_AWREADY;
  wire m02_couplers_to_axi_interconnect_synth_AWVALID;
  wire m02_couplers_to_axi_interconnect_synth_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_synth_BRESP;
  wire m02_couplers_to_axi_interconnect_synth_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_synth_RDATA;
  wire m02_couplers_to_axi_interconnect_synth_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_synth_RRESP;
  wire m02_couplers_to_axi_interconnect_synth_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_synth_WDATA;
  wire m02_couplers_to_axi_interconnect_synth_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_synth_WSTRB;
  wire m02_couplers_to_axi_interconnect_synth_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [11:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_synth_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_synth_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_synth_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_synth_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_synth_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_synth_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_synth_WDATA;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_synth_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_synth_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_synth_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_synth_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_synth_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_synth_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_synth_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_synth_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_synth_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_synth_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_synth_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_synth_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_synth_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_synth_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_synth_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_synth_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_synth_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_synth_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_synth_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_synth_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_synth_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_synth_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_synth_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_synth_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_synth_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_synth_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_synth_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_synth_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_synth_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_synth_to_s00_couplers_WREADY;
  assign axi_interconnect_synth_ACLK_net = ACLK;
  assign axi_interconnect_synth_ARESETN_net = ARESETN;
  assign axi_interconnect_synth_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_synth_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_synth_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_synth_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_synth_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_synth_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_synth_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_synth_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_synth_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_synth_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_synth_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_synth_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_synth_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_synth_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_synth_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_synth_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_synth_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_synth_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_synth_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_synth_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_synth_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_synth_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_synth_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_synth_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_synth_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_synth_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_synth_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_synth_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_synth_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_synth_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_synth_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_synth_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_synth_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_synth_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_synth_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_interconnect_synth_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_synth_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_synth_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_synth_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_synth_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_synth_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_synth_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_synth_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_synth_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_synth_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_synth_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_synth_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_synth_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_synth_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_synth_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_synth_WREADY = M02_AXI_wready;
  m00_couplers_imp_1L1ROJI m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_synth_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_synth_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_synth_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_synth_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_synth_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_synth_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_synth_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_synth_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_synth_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_synth_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_synth_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_synth_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_synth_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_synth_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_synth_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_synth_WVALID),
        .S_ACLK(axi_interconnect_synth_ACLK_net),
        .S_ARESETN(axi_interconnect_synth_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_RQDJ73 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_synth_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_synth_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_synth_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_synth_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_synth_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_synth_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_synth_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_synth_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_synth_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_synth_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_synth_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_synth_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_synth_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_synth_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_synth_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_synth_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_synth_WVALID),
        .S_ACLK(axi_interconnect_synth_ACLK_net),
        .S_ARESETN(axi_interconnect_synth_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_KLI7Q5 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_synth_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_synth_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_synth_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_synth_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_synth_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_synth_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_synth_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_synth_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_synth_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_synth_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_synth_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_synth_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_synth_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_synth_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_synth_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_synth_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_synth_WVALID),
        .S_ACLK(axi_interconnect_synth_ACLK_net),
        .S_ARESETN(axi_interconnect_synth_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_1XE0TIN s00_couplers
       (.M_ACLK(axi_interconnect_synth_ACLK_net),
        .M_ARESETN(axi_interconnect_synth_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_synth_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_synth_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_synth_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_synth_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_synth_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_synth_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_synth_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_synth_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_synth_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_synth_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_synth_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_synth_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_synth_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_synth_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_synth_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_synth_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_synth_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_synth_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_synth_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_synth_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_synth_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_synth_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_synth_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_synth_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_synth_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_synth_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_synth_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_synth_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_synth_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_synth_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_synth_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_synth_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_synth_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_synth_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_synth_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_synth_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_synth_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_synth_to_s00_couplers_WVALID));
  system_xbar_0 xbar
       (.aclk(axi_interconnect_synth_ACLK_net),
        .aresetn(axi_interconnect_synth_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
