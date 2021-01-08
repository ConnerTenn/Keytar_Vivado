// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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


// IP VLNV: Independant:user:Synth:2.0
// IP Revision: 55

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_Synth_1_0 (
  Clock100MHz,
  Waveform,
  SAXI_aclk,
  SAXI_resetn,
  SAXI_arvalid,
  SAXI_arready,
  SAXI_araddr,
  SAXI_rvalid,
  SAXI_rready,
  SAXI_rdata,
  SAXI_rresp,
  SAXI_awvalid,
  SAXI_awready,
  SAXI_awaddr,
  SAXI_wvalid,
  SAXI_wready,
  SAXI_wdata,
  SAXI_wstrb,
  SAXI_bvalid,
  SAXI_bready,
  SAXI_bresp
);

input wire Clock100MHz;
output wire [23 : 0] Waveform;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_aclk, ASSOCIATED_RESET SAXI_resetn, ASSOCIATED_BUSIF SAXI_ControlInterface, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
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
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RVALID" *)
output wire SAXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RREADY" *)
input wire SAXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RDATA" *)
output wire [31 : 0] SAXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RRESP" *)
output wire [1 : 0] SAXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWVALID" *)
input wire SAXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWREADY" *)
output wire SAXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWADDR" *)
input wire [31 : 0] SAXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WVALID" *)
input wire SAXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WREADY" *)
output wire SAXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WDATA" *)
input wire [31 : 0] SAXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WSTRB" *)
input wire [7 : 0] SAXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface BVALID" *)
output wire SAXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface BREADY" *)
input wire SAXI_bready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_ControlInterface, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT\
S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface BRESP" *)
output wire [1 : 0] SAXI_bresp;

  Synth #(
    .SAXI_SLAVE_BASE_ADDR(32'H60000000)
  ) inst (
    .Clock100MHz(Clock100MHz),
    .Waveform(Waveform),
    .SAXI_aclk(SAXI_aclk),
    .SAXI_resetn(SAXI_resetn),
    .SAXI_arvalid(SAXI_arvalid),
    .SAXI_arready(SAXI_arready),
    .SAXI_araddr(SAXI_araddr),
    .SAXI_rvalid(SAXI_rvalid),
    .SAXI_rready(SAXI_rready),
    .SAXI_rdata(SAXI_rdata),
    .SAXI_rresp(SAXI_rresp),
    .SAXI_awvalid(SAXI_awvalid),
    .SAXI_awready(SAXI_awready),
    .SAXI_awaddr(SAXI_awaddr),
    .SAXI_wvalid(SAXI_wvalid),
    .SAXI_wready(SAXI_wready),
    .SAXI_wdata(SAXI_wdata),
    .SAXI_wstrb(SAXI_wstrb),
    .SAXI_bvalid(SAXI_bvalid),
    .SAXI_bready(SAXI_bready),
    .SAXI_bresp(SAXI_bresp)
  );
endmodule
