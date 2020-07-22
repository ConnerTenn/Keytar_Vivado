// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Jul 22 02:55:26 2020
// Host        : ConnerServer running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_VideoBreakout_0_0/system_VideoBreakout_0_0_sim_netlist.v
// Design      : system_VideoBreakout_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_VideoBreakout_0_0,VideoBreakout,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "VideoBreakout,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_VideoBreakout_0_0
   (PClock,
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
    BusPError);
  input PClock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io ACTIVE_VIDEO" *) input vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io DATA" *) input [31:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io FIELD" *) input vid_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io HBLANK" *) input vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io HSYNC" *) input vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io VBLANK" *) input vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io VSYNC" *) input vid_vsync;
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

  wire \<const0> ;
  wire BusClock;
  wire [31:0]BusPAddr;
  wire BusPEnable;
  wire [5:0]\^BusPReadData ;
  wire BusPReady;
  wire BusPSel;
  wire BusPWrite;
  wire [31:0]BusPWriteData;
  wire [5:0]FramePTR;
  wire PClock;
  wire vid_active_video;
  wire [31:0]vid_data;
  wire vid_hsync;
  wire vid_vsync;

  assign Blue[4:0] = vid_data[12:8];
  assign BusPError = \<const0> ;
  assign BusPReadData[31] = \<const0> ;
  assign BusPReadData[30] = \<const0> ;
  assign BusPReadData[29] = \<const0> ;
  assign BusPReadData[28] = \<const0> ;
  assign BusPReadData[27] = \<const0> ;
  assign BusPReadData[26] = \<const0> ;
  assign BusPReadData[25] = \<const0> ;
  assign BusPReadData[24] = \<const0> ;
  assign BusPReadData[23] = \<const0> ;
  assign BusPReadData[22] = \<const0> ;
  assign BusPReadData[21] = \<const0> ;
  assign BusPReadData[20] = \<const0> ;
  assign BusPReadData[19] = \<const0> ;
  assign BusPReadData[18] = \<const0> ;
  assign BusPReadData[17] = \<const0> ;
  assign BusPReadData[16] = \<const0> ;
  assign BusPReadData[15] = \<const0> ;
  assign BusPReadData[14] = \<const0> ;
  assign BusPReadData[13] = \<const0> ;
  assign BusPReadData[12] = \<const0> ;
  assign BusPReadData[11] = \<const0> ;
  assign BusPReadData[10] = \<const0> ;
  assign BusPReadData[9] = \<const0> ;
  assign BusPReadData[8] = \<const0> ;
  assign BusPReadData[7] = \<const0> ;
  assign BusPReadData[6] = \<const0> ;
  assign BusPReadData[5:0] = \^BusPReadData [5:0];
  assign De = vid_active_video;
  assign Green[5:0] = vid_data[21:16];
  assign HSync = vid_hsync;
  assign PClk = PClock;
  assign Red[4:0] = vid_data[28:24];
  assign VSync = vid_vsync;
  GND GND
       (.G(\<const0> ));
  system_VideoBreakout_0_0_VideoBreakout inst
       (.BusClock(BusClock),
        .BusPAddr(BusPAddr),
        .BusPEnable(BusPEnable),
        .BusPReadData(\^BusPReadData ),
        .BusPReady(BusPReady),
        .BusPSel(BusPSel),
        .BusPWrite(BusPWrite),
        .BusPWriteData(BusPWriteData[5:0]),
        .FramePTR(FramePTR));
endmodule

(* ORIG_REF_NAME = "VideoBreakout" *) 
module system_VideoBreakout_0_0_VideoBreakout
   (FramePTR,
    BusPReadData,
    BusPReady,
    BusPWriteData,
    BusClock,
    BusPWrite,
    BusPSel,
    BusPEnable,
    BusPAddr);
  output [5:0]FramePTR;
  output [5:0]BusPReadData;
  output BusPReady;
  input [5:0]BusPWriteData;
  input BusClock;
  input BusPWrite;
  input BusPSel;
  input BusPEnable;
  input [31:0]BusPAddr;

  wire BusClock;
  wire [31:0]BusPAddr;
  wire BusPEnable;
  wire [5:0]BusPReadData;
  wire \BusPReadData[5]_i_1_n_0 ;
  wire BusPReady;
  wire BusPReady_i_1_n_0;
  wire BusPReady_i_2_n_0;
  wire BusPSel;
  wire BusPWrite;
  wire [5:0]BusPWriteData;
  wire [5:0]FramePTR;
  wire \FramePTR[5]_i_10_n_0 ;
  wire \FramePTR[5]_i_1_n_0 ;
  wire \FramePTR[5]_i_2_n_0 ;
  wire \FramePTR[5]_i_3_n_0 ;
  wire \FramePTR[5]_i_4_n_0 ;
  wire \FramePTR[5]_i_5_n_0 ;
  wire \FramePTR[5]_i_6_n_0 ;
  wire \FramePTR[5]_i_7_n_0 ;
  wire \FramePTR[5]_i_8_n_0 ;
  wire \FramePTR[5]_i_9_n_0 ;

  LUT5 #(
    .INIT(32'h00000010)) 
    \BusPReadData[5]_i_1 
       (.I0(\FramePTR[5]_i_2_n_0 ),
        .I1(\FramePTR[5]_i_3_n_0 ),
        .I2(\FramePTR[5]_i_4_n_0 ),
        .I3(\FramePTR[5]_i_5_n_0 ),
        .I4(BusPWrite),
        .O(\BusPReadData[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BusPReadData_reg[0] 
       (.C(BusClock),
        .CE(\BusPReadData[5]_i_1_n_0 ),
        .D(FramePTR[0]),
        .Q(BusPReadData[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BusPReadData_reg[1] 
       (.C(BusClock),
        .CE(\BusPReadData[5]_i_1_n_0 ),
        .D(FramePTR[1]),
        .Q(BusPReadData[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BusPReadData_reg[2] 
       (.C(BusClock),
        .CE(\BusPReadData[5]_i_1_n_0 ),
        .D(FramePTR[2]),
        .Q(BusPReadData[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BusPReadData_reg[3] 
       (.C(BusClock),
        .CE(\BusPReadData[5]_i_1_n_0 ),
        .D(FramePTR[3]),
        .Q(BusPReadData[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BusPReadData_reg[4] 
       (.C(BusClock),
        .CE(\BusPReadData[5]_i_1_n_0 ),
        .D(FramePTR[4]),
        .Q(BusPReadData[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BusPReadData_reg[5] 
       (.C(BusClock),
        .CE(\BusPReadData[5]_i_1_n_0 ),
        .D(FramePTR[5]),
        .Q(BusPReadData[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F22FF22)) 
    BusPReady_i_1
       (.I0(\FramePTR[5]_i_4_n_0 ),
        .I1(BusPReady_i_2_n_0),
        .I2(BusPSel),
        .I3(BusPReady),
        .I4(BusPEnable),
        .O(BusPReady_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    BusPReady_i_2
       (.I0(\FramePTR[5]_i_2_n_0 ),
        .I1(BusPSel),
        .I2(BusPAddr[15]),
        .I3(BusPAddr[17]),
        .I4(BusPAddr[26]),
        .I5(\FramePTR[5]_i_8_n_0 ),
        .O(BusPReady_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    BusPReady_reg
       (.C(BusClock),
        .CE(1'b1),
        .D(BusPReady_i_1_n_0),
        .Q(BusPReady),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00001000)) 
    \FramePTR[5]_i_1 
       (.I0(\FramePTR[5]_i_2_n_0 ),
        .I1(\FramePTR[5]_i_3_n_0 ),
        .I2(\FramePTR[5]_i_4_n_0 ),
        .I3(BusPWrite),
        .I4(\FramePTR[5]_i_5_n_0 ),
        .O(\FramePTR[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FramePTR[5]_i_10 
       (.I0(BusPAddr[31]),
        .I1(BusPAddr[24]),
        .I2(BusPAddr[13]),
        .I3(BusPAddr[10]),
        .O(\FramePTR[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FramePTR[5]_i_2 
       (.I0(BusPAddr[21]),
        .I1(BusPAddr[8]),
        .I2(BusPAddr[29]),
        .I3(BusPAddr[12]),
        .I4(BusPAddr[28]),
        .I5(BusPAddr[18]),
        .O(\FramePTR[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FramePTR[5]_i_3 
       (.I0(\FramePTR[5]_i_6_n_0 ),
        .I1(\FramePTR[5]_i_7_n_0 ),
        .I2(BusPAddr[17]),
        .I3(BusPAddr[4]),
        .I4(BusPAddr[2]),
        .I5(\FramePTR[5]_i_8_n_0 ),
        .O(\FramePTR[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FramePTR[5]_i_4 
       (.I0(BusPAddr[22]),
        .I1(BusPAddr[30]),
        .I2(BusPAddr[14]),
        .I3(\FramePTR[5]_i_9_n_0 ),
        .I4(\FramePTR[5]_i_10_n_0 ),
        .O(\FramePTR[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FramePTR[5]_i_5 
       (.I0(BusPEnable),
        .I1(BusPReady),
        .I2(BusPSel),
        .O(\FramePTR[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FramePTR[5]_i_6 
       (.I0(BusPAddr[6]),
        .I1(BusPAddr[7]),
        .I2(BusPAddr[3]),
        .I3(BusPAddr[1]),
        .O(\FramePTR[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FramePTR[5]_i_7 
       (.I0(BusPAddr[0]),
        .I1(BusPAddr[26]),
        .I2(BusPAddr[5]),
        .I3(BusPAddr[15]),
        .O(\FramePTR[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FramePTR[5]_i_8 
       (.I0(BusPAddr[16]),
        .I1(BusPAddr[27]),
        .I2(BusPAddr[19]),
        .I3(BusPAddr[20]),
        .O(\FramePTR[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FramePTR[5]_i_9 
       (.I0(BusPAddr[9]),
        .I1(BusPAddr[23]),
        .I2(BusPAddr[25]),
        .I3(BusPAddr[11]),
        .O(\FramePTR[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FramePTR_reg[0] 
       (.C(BusClock),
        .CE(\FramePTR[5]_i_1_n_0 ),
        .D(BusPWriteData[0]),
        .Q(FramePTR[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FramePTR_reg[1] 
       (.C(BusClock),
        .CE(\FramePTR[5]_i_1_n_0 ),
        .D(BusPWriteData[1]),
        .Q(FramePTR[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FramePTR_reg[2] 
       (.C(BusClock),
        .CE(\FramePTR[5]_i_1_n_0 ),
        .D(BusPWriteData[2]),
        .Q(FramePTR[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FramePTR_reg[3] 
       (.C(BusClock),
        .CE(\FramePTR[5]_i_1_n_0 ),
        .D(BusPWriteData[3]),
        .Q(FramePTR[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FramePTR_reg[4] 
       (.C(BusClock),
        .CE(\FramePTR[5]_i_1_n_0 ),
        .D(BusPWriteData[4]),
        .Q(FramePTR[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FramePTR_reg[5] 
       (.C(BusClock),
        .CE(\FramePTR[5]_i_1_n_0 ),
        .D(BusPWriteData[5]),
        .Q(FramePTR[5]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
