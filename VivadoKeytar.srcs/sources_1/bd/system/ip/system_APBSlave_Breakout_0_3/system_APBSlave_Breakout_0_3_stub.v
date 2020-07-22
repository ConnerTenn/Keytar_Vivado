// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jul 16 05:16:25 2020
// Host        : ConnerServer running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub -rename_top system_APBSlave_Breakout_0_3 -prefix
//               system_APBSlave_Breakout_0_3_ system_APBSlave_Breakout_0_2_stub.v
// Design      : system_APBSlave_Breakout_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Breakout,Vivado 2020.1" *)
module system_APBSlave_Breakout_0_3(s_apb_pclock, s_apb_paddr, s_apb_pwdata, 
  s_apb_prdata, s_apb_pwrite, s_apb_pready, s_apb_penable, s_apb_psel, s_apb_pslverr, BusClock, 
  BusPAddr, BusPWriteData, BusPReadData, BusPWrite, BusPReady, BusPEnable, BusPSel, BusPError)
/* synthesis syn_black_box black_box_pad_pin="s_apb_pclock,s_apb_paddr[31:0],s_apb_pwdata[31:0],s_apb_prdata[31:0],s_apb_pwrite,s_apb_pready,s_apb_penable,s_apb_psel,s_apb_pslverr,BusClock,BusPAddr[31:0],BusPWriteData[31:0],BusPReadData[31:0],BusPWrite,BusPReady,BusPEnable,BusPSel,BusPError" */;
  input s_apb_pclock;
  input [31:0]s_apb_paddr;
  input [31:0]s_apb_pwdata;
  output [31:0]s_apb_prdata;
  input s_apb_pwrite;
  output s_apb_pready;
  input s_apb_penable;
  input s_apb_psel;
  output s_apb_pslverr;
  output BusClock;
  output [31:0]BusPAddr;
  output [31:0]BusPWriteData;
  input [31:0]BusPReadData;
  output BusPWrite;
  input BusPReady;
  output BusPEnable;
  output BusPSel;
  input BusPError;
endmodule
