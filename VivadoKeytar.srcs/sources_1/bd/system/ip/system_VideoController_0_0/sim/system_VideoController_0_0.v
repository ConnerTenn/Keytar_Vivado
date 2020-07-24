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


// IP VLNV: xilinx.com:module_ref:VideoController:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_VideoController_0_0 (
  BusClock,
  BusPAddr,
  BusPWriteData,
  BusPReadData,
  BusPWrite,
  BusPReady,
  BusPEnable,
  BusPSel,
  BusPError,
  FramePTR,
  VidOverflow,
  VidUnderflow,
  VidOutLocked,
  VidStatus,
  VidFifoRead,
  VDMAFramePtr
);

input wire BusClock;
input wire [31 : 0] BusPAddr;
input wire [31 : 0] BusPWriteData;
output wire [31 : 0] BusPReadData;
input wire BusPWrite;
output wire BusPReady;
input wire BusPEnable;
input wire BusPSel;
output wire BusPError;
output wire [5 : 0] FramePTR;
input wire VidOverflow;
input wire VidUnderflow;
input wire VidOutLocked;
input wire [31 : 0] VidStatus;
input wire [10 : 0] VidFifoRead;
input wire [5 : 0] VDMAFramePtr;

  VideoController #(
    .ADDRESS(32'H41010000)
  ) inst (
    .BusClock(BusClock),
    .BusPAddr(BusPAddr),
    .BusPWriteData(BusPWriteData),
    .BusPReadData(BusPReadData),
    .BusPWrite(BusPWrite),
    .BusPReady(BusPReady),
    .BusPEnable(BusPEnable),
    .BusPSel(BusPSel),
    .BusPError(BusPError),
    .FramePTR(FramePTR),
    .VidOverflow(VidOverflow),
    .VidUnderflow(VidUnderflow),
    .VidOutLocked(VidOutLocked),
    .VidStatus(VidStatus),
    .VidFifoRead(VidFifoRead),
    .VDMAFramePtr(VDMAFramePtr)
  );
endmodule
