// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: Independant:user:VideoController:1.0
// IP Revision: 26

(* X_CORE_INFO = "VideoController,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "system_VideoController_0_1,VideoController,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_VideoController_0_1 (
  MAXI_aclk,
  MAXI_resetn,
  MAXI_arvalid,
  MAXI_arready,
  MAXI_araddr,
  MAXI_arlen,
  MAXI_arid,
  MAXI_arlock,
  MAXI_arcache,
  MAXI_arprot,
  MAXI_arqos,
  MAXI_arsize,
  MAXI_arburst,
  MAXI_rvalid,
  MAXI_rready,
  MAXI_rlast,
  MAXI_rdata,
  MAXI_rid,
  MAXI_rresp,
  MAXI_awvalid,
  MAXI_awready,
  MAXI_awaddr,
  MAXI_awlen,
  MAXI_awid,
  MAXI_awlock,
  MAXI_awcache,
  MAXI_awprot,
  MAXI_awqos,
  MAXI_awsize,
  MAXI_awburst,
  MAXI_wvalid,
  MAXI_wready,
  MAXI_wlast,
  MAXI_wdata,
  MAXI_wstrb,
  MAXI_bvalid,
  MAXI_bready,
  MAXI_bid,
  MAXI_bresp,
  SAXI_aclk,
  SAXI_resetn,
  SAXI_arvalid,
  SAXI_arready,
  SAXI_araddr,
  SAXI_arlen,
  SAXI_arid,
  SAXI_arlock,
  SAXI_arcache,
  SAXI_arprot,
  SAXI_arqos,
  SAXI_arsize,
  SAXI_arburst,
  SAXI_rvalid,
  SAXI_rready,
  SAXI_rlast,
  SAXI_rdata,
  SAXI_rid,
  SAXI_rresp,
  SAXI_awvalid,
  SAXI_awready,
  SAXI_awaddr,
  SAXI_awlen,
  SAXI_awid,
  SAXI_awlock,
  SAXI_awcache,
  SAXI_awprot,
  SAXI_awqos,
  SAXI_awsize,
  SAXI_awburst,
  SAXI_wvalid,
  SAXI_wready,
  SAXI_wlast,
  SAXI_wdata,
  SAXI_wstrb,
  SAXI_bvalid,
  SAXI_bready,
  SAXI_bid,
  SAXI_bresp,
  Red,
  Green,
  Blue,
  HSync,
  VSync,
  PClk,
  De
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAXI_aclk, ASSOCIATED_BUSIF MAXI_FrameBufferReader, ASSOCIATED_RESET MAXI_resetn, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MAXI_aclk CLK" *)
input wire MAXI_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAXI_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 MAXI_resetn RST" *)
input wire MAXI_resetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARVALID" *)
output wire MAXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARREADY" *)
input wire MAXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARADDR" *)
output wire [31 : 0] MAXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARLEN" *)
output wire [7 : 0] MAXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARID" *)
output wire [0 : 0] MAXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARLOCK" *)
output wire MAXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARCACHE" *)
output wire [3 : 0] MAXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARPROT" *)
output wire [2 : 0] MAXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARQOS" *)
output wire [3 : 0] MAXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARSIZE" *)
output wire [2 : 0] MAXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader ARBURST" *)
output wire [1 : 0] MAXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader RVALID" *)
input wire MAXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader RREADY" *)
output wire MAXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader RLAST" *)
input wire MAXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader RDATA" *)
input wire [63 : 0] MAXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader RID" *)
input wire [0 : 0] MAXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader RRESP" *)
input wire [1 : 0] MAXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWVALID" *)
output wire MAXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWREADY" *)
input wire MAXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWADDR" *)
output wire [31 : 0] MAXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWLEN" *)
output wire [7 : 0] MAXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWID" *)
output wire [0 : 0] MAXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWLOCK" *)
output wire MAXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWCACHE" *)
output wire [3 : 0] MAXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWPROT" *)
output wire [2 : 0] MAXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWQOS" *)
output wire [3 : 0] MAXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWSIZE" *)
output wire [2 : 0] MAXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader AWBURST" *)
output wire [1 : 0] MAXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader WVALID" *)
output wire MAXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader WREADY" *)
input wire MAXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader WLAST" *)
output wire MAXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader WDATA" *)
output wire [63 : 0] MAXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader WSTRB" *)
output wire [7 : 0] MAXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader BVALID" *)
input wire MAXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader BREADY" *)
output wire MAXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader BID" *)
input wire [0 : 0] MAXI_bid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAXI_FrameBufferReader, DATA_WIDTH 64, PROTOCOL AXI4, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BIT\
S_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI_FrameBufferReader BRESP" *)
input wire [1 : 0] MAXI_bresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_aclk, ASSOCIATED_BUSIF SAXI_ControlInterface, ASSOCIATED_RESET SAXI_resetn, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SAXI_aclk CLK" *)
input wire SAXI_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SAXI_resetn RST" *)
input wire SAXI_resetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARVALID" *)
input wire SAXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARREADY" *)
output wire SAXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARADDR" *)
input wire [31 : 0] SAXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARLEN" *)
input wire [7 : 0] SAXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARID" *)
input wire [11 : 0] SAXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARLOCK" *)
input wire SAXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARCACHE" *)
input wire [3 : 0] SAXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARPROT" *)
input wire [2 : 0] SAXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARQOS" *)
input wire [3 : 0] SAXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARSIZE" *)
input wire [2 : 0] SAXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARBURST" *)
input wire [1 : 0] SAXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RVALID" *)
output wire SAXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RREADY" *)
input wire SAXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RLAST" *)
output wire SAXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RDATA" *)
output wire [31 : 0] SAXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RID" *)
output wire [11 : 0] SAXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RRESP" *)
output wire [1 : 0] SAXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWVALID" *)
input wire SAXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWREADY" *)
output wire SAXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWADDR" *)
input wire [31 : 0] SAXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWLEN" *)
input wire [7 : 0] SAXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWID" *)
input wire [11 : 0] SAXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWLOCK" *)
input wire SAXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWCACHE" *)
input wire [3 : 0] SAXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWPROT" *)
input wire [2 : 0] SAXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWQOS" *)
input wire [3 : 0] SAXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWSIZE" *)
input wire [2 : 0] SAXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWBURST" *)
input wire [1 : 0] SAXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WVALID" *)
input wire SAXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WREADY" *)
output wire SAXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WLAST" *)
input wire SAXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WDATA" *)
input wire [31 : 0] SAXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WSTRB" *)
input wire [7 : 0] SAXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface BVALID" *)
output wire SAXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface BREADY" *)
input wire SAXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface BID" *)
output wire [11 : 0] SAXI_bid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_ControlInterface, DATA_WIDTH 32, PROTOCOL AXI4, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BIT\
S_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface BRESP" *)
output wire [1 : 0] SAXI_bresp;
output wire [4 : 0] Red;
output wire [5 : 0] Green;
output wire [4 : 0] Blue;
output wire HSync;
output wire VSync;
output wire PClk;
output wire De;

  VideoController #(
    .SAXI_SLAVE_BASE_ADDR(32'H00000000),
    .MAXI_ID_WIDTH(1),
    .SAXI_ID_WIDTH(12)
  ) inst (
    .MAXI_aclk(MAXI_aclk),
    .MAXI_resetn(MAXI_resetn),
    .MAXI_arvalid(MAXI_arvalid),
    .MAXI_arready(MAXI_arready),
    .MAXI_araddr(MAXI_araddr),
    .MAXI_arlen(MAXI_arlen),
    .MAXI_arid(MAXI_arid),
    .MAXI_arlock(MAXI_arlock),
    .MAXI_arcache(MAXI_arcache),
    .MAXI_arprot(MAXI_arprot),
    .MAXI_arqos(MAXI_arqos),
    .MAXI_arsize(MAXI_arsize),
    .MAXI_arburst(MAXI_arburst),
    .MAXI_rvalid(MAXI_rvalid),
    .MAXI_rready(MAXI_rready),
    .MAXI_rlast(MAXI_rlast),
    .MAXI_rdata(MAXI_rdata),
    .MAXI_rid(MAXI_rid),
    .MAXI_rresp(MAXI_rresp),
    .MAXI_awvalid(MAXI_awvalid),
    .MAXI_awready(MAXI_awready),
    .MAXI_awaddr(MAXI_awaddr),
    .MAXI_awlen(MAXI_awlen),
    .MAXI_awid(MAXI_awid),
    .MAXI_awlock(MAXI_awlock),
    .MAXI_awcache(MAXI_awcache),
    .MAXI_awprot(MAXI_awprot),
    .MAXI_awqos(MAXI_awqos),
    .MAXI_awsize(MAXI_awsize),
    .MAXI_awburst(MAXI_awburst),
    .MAXI_wvalid(MAXI_wvalid),
    .MAXI_wready(MAXI_wready),
    .MAXI_wlast(MAXI_wlast),
    .MAXI_wdata(MAXI_wdata),
    .MAXI_wstrb(MAXI_wstrb),
    .MAXI_bvalid(MAXI_bvalid),
    .MAXI_bready(MAXI_bready),
    .MAXI_bid(MAXI_bid),
    .MAXI_bresp(MAXI_bresp),
    .SAXI_aclk(SAXI_aclk),
    .SAXI_resetn(SAXI_resetn),
    .SAXI_arvalid(SAXI_arvalid),
    .SAXI_arready(SAXI_arready),
    .SAXI_araddr(SAXI_araddr),
    .SAXI_arlen(SAXI_arlen),
    .SAXI_arid(SAXI_arid),
    .SAXI_arlock(SAXI_arlock),
    .SAXI_arcache(SAXI_arcache),
    .SAXI_arprot(SAXI_arprot),
    .SAXI_arqos(SAXI_arqos),
    .SAXI_arsize(SAXI_arsize),
    .SAXI_arburst(SAXI_arburst),
    .SAXI_rvalid(SAXI_rvalid),
    .SAXI_rready(SAXI_rready),
    .SAXI_rlast(SAXI_rlast),
    .SAXI_rdata(SAXI_rdata),
    .SAXI_rid(SAXI_rid),
    .SAXI_rresp(SAXI_rresp),
    .SAXI_awvalid(SAXI_awvalid),
    .SAXI_awready(SAXI_awready),
    .SAXI_awaddr(SAXI_awaddr),
    .SAXI_awlen(SAXI_awlen),
    .SAXI_awid(SAXI_awid),
    .SAXI_awlock(SAXI_awlock),
    .SAXI_awcache(SAXI_awcache),
    .SAXI_awprot(SAXI_awprot),
    .SAXI_awqos(SAXI_awqos),
    .SAXI_awsize(SAXI_awsize),
    .SAXI_awburst(SAXI_awburst),
    .SAXI_wvalid(SAXI_wvalid),
    .SAXI_wready(SAXI_wready),
    .SAXI_wlast(SAXI_wlast),
    .SAXI_wdata(SAXI_wdata),
    .SAXI_wstrb(SAXI_wstrb),
    .SAXI_bvalid(SAXI_bvalid),
    .SAXI_bready(SAXI_bready),
    .SAXI_bid(SAXI_bid),
    .SAXI_bresp(SAXI_bresp),
    .Red(Red),
    .Green(Green),
    .Blue(Blue),
    .HSync(HSync),
    .VSync(VSync),
    .PClk(PClk),
    .De(De)
  );
endmodule
