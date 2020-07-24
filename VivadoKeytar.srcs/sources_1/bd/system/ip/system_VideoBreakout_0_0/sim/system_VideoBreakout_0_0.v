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


// IP VLNV: Independant:user:VideoBreakout:1.1
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_VideoBreakout_0_0 (
  PClock,
  vid_active_video,
  vid_data,
  vid_field_id,
  vid_hblank,
  vid_hsync,
  vid_vblank,
  vid_vsync,
  Red,
  Green,
  Blue,
  HSync,
  VSync,
  PClk,
  De,
  FramePTR,
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

input wire PClock;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io ACTIVE_VIDEO" *)
input wire vid_active_video;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io DATA" *)
input wire [31 : 0] vid_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io FIELD" *)
input wire vid_field_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io HBLANK" *)
input wire vid_hblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io HSYNC" *)
input wire vid_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io VBLANK" *)
input wire vid_vblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io VSYNC" *)
input wire vid_vsync;
output wire [4 : 0] Red;
output wire [5 : 0] Green;
output wire [4 : 0] Blue;
output wire HSync;
output wire VSync;
output wire PClk;
output wire De;
output wire [5 : 0] FramePTR;
input wire BusClock;
input wire [31 : 0] BusPAddr;
input wire [31 : 0] BusPWriteData;
output wire [31 : 0] BusPReadData;
input wire BusPWrite;
output wire BusPReady;
input wire BusPEnable;
input wire BusPSel;
output wire BusPError;

  VideoBreakout #(
    .ADDRESS(32'H41010000)
  ) inst (
    .PClock(PClock),
    .vid_active_video(vid_active_video),
    .vid_data(vid_data),
    .vid_field_id(vid_field_id),
    .vid_hblank(vid_hblank),
    .vid_hsync(vid_hsync),
    .vid_vblank(vid_vblank),
    .vid_vsync(vid_vsync),
    .Red(Red),
    .Green(Green),
    .Blue(Blue),
    .HSync(HSync),
    .VSync(VSync),
    .PClk(PClk),
    .De(De),
    .FramePTR(FramePTR),
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
