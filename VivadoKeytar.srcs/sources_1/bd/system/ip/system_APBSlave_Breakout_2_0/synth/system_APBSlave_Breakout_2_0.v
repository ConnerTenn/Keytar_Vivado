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


// IP VLNV: Independant:user:APBSlave_Breakout:1.0
// IP Revision: 2

(* X_CORE_INFO = "Breakout,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "system_APBSlave_Breakout_2_0,Breakout,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_APBSlave_Breakout_2_0 (
  s_apb_pclock,
  s_apb_paddr,
  s_apb_pwdata,
  s_apb_prdata,
  s_apb_pwrite,
  s_apb_pready,
  s_apb_penable,
  s_apb_psel,
  s_apb_pslverr,
  BusClock,
  BusPAddr,
  BusPWriteData,
  BusPReadData,
  BusPWrite,
  BusPReady,
  BusPEnable,
  BusPSel,
  BusPError
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_apb_aclk, ASSOCIATED_BUSIF APB_S, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_apb_aclk CLK" *)
input wire s_apb_pclock;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PADDR" *)
input wire [31 : 0] s_apb_paddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PWDATA" *)
input wire [31 : 0] s_apb_pwdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PRDATA" *)
output wire [31 : 0] s_apb_prdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PWRITE" *)
input wire s_apb_pwrite;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PREADY" *)
output wire s_apb_pready;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PENABLE" *)
input wire s_apb_penable;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PSEL" *)
input wire s_apb_psel;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PSLVERR" *)
output wire s_apb_pslverr;
output wire BusClock;
output wire [31 : 0] BusPAddr;
output wire [31 : 0] BusPWriteData;
input wire [31 : 0] BusPReadData;
output wire BusPWrite;
input wire BusPReady;
output wire BusPEnable;
output wire BusPSel;
input wire BusPError;

  Breakout inst (
    .s_apb_pclock(s_apb_pclock),
    .s_apb_paddr(s_apb_paddr),
    .s_apb_pwdata(s_apb_pwdata),
    .s_apb_prdata(s_apb_prdata),
    .s_apb_pwrite(s_apb_pwrite),
    .s_apb_pready(s_apb_pready),
    .s_apb_penable(s_apb_penable),
    .s_apb_psel(s_apb_psel),
    .s_apb_pslverr(s_apb_pslverr),
    .BusClock(BusClock),
    .BusPAddr(BusPAddr),
    .BusPWriteData(BusPWriteData),
    .BusPReadData(BusPReadData),
    .BusPWrite(BusPWrite),
    .BusPReady(BusPReady),
    .BusPEnable(BusPEnable),
    .BusPSel(BusPSel),
    .BusPError(BusPError)
  );
endmodule
