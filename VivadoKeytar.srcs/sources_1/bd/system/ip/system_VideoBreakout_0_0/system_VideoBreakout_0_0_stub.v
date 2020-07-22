// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Jul 22 02:55:26 2020
// Host        : ConnerServer running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_VideoBreakout_0_0/system_VideoBreakout_0_0_stub.v
// Design      : system_VideoBreakout_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "VideoBreakout,Vivado 2020.1" *)
module system_VideoBreakout_0_0(PClock, vid_active_video, vid_data, 
  vid_field_id, vid_hblank, vid_hsync, vid_vblank, vid_vsync, Red, Green, Blue, HSync, VSync, PClk, De, 
  FramePTR, BusClock, BusPAddr, BusPWriteData, BusPReadData, BusPWrite, BusPReady, BusPEnable, 
  BusPSel, BusPError)
/* synthesis syn_black_box black_box_pad_pin="PClock,vid_active_video,vid_data[31:0],vid_field_id,vid_hblank,vid_hsync,vid_vblank,vid_vsync,Red[4:0],Green[5:0],Blue[4:0],HSync,VSync,PClk,De,FramePTR[5:0],BusClock,BusPAddr[31:0],BusPWriteData[31:0],BusPReadData[31:0],BusPWrite,BusPReady,BusPEnable,BusPSel,BusPError" */;
  input PClock;
  input vid_active_video;
  input [31:0]vid_data;
  input vid_field_id;
  input vid_hblank;
  input vid_hsync;
  input vid_vblank;
  input vid_vsync;
  output [4:0]Red;
  output [5:0]Green;
  output [4:0]Blue;
  output HSync;
  output VSync;
  output PClk;
  output De;
  output [5:0]FramePTR;
  input BusClock;
  input [31:0]BusPAddr;
  input [31:0]BusPWriteData;
  output [31:0]BusPReadData;
  input BusPWrite;
  output BusPReady;
  input BusPEnable;
  input BusPSel;
  output BusPError;
endmodule
