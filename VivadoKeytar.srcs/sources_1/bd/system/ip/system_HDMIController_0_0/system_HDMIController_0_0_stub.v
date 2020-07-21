// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jul 21 01:03:36 2020
// Host        : ConnerServer running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_HDMIController_0_0/system_HDMIController_0_0_stub.v
// Design      : system_HDMIController_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "HDMIController,Vivado 2020.1" *)
module system_HDMIController_0_0(Clock, Red, Green, Blue, HSync, VSync, PClk, De)
/* synthesis syn_black_box black_box_pad_pin="Clock,Red[4:0],Green[5:0],Blue[4:0],HSync,VSync,PClk,De" */;
  input Clock;
  output [4:0]Red;
  output [5:0]Green;
  output [4:0]Blue;
  output HSync;
  output VSync;
  output PClk;
  output De;
endmodule
