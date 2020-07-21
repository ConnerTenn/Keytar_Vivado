// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Jul 20 03:05:24 2020
// Host        : ConnerServer running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_HDMIController_0_0/system_HDMIController_0_0_sim_netlist.v
// Design      : system_HDMIController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_HDMIController_0_0,HDMIController,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "HDMIController,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_HDMIController_0_0
   (Clock,
    Red,
    Green,
    Blue,
    HSync,
    VSync,
    PClk,
    De);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clock, FREQ_HZ 133333344, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input Clock;
  output [4:0]Red;
  output [5:0]Green;
  output [4:0]Blue;
  output HSync;
  output VSync;
  output PClk;
  output De;

  wire \<const0> ;
  wire [4:0]Blue;
  wire Clock;
  wire [1:1]\^Green ;

  assign De = \<const0> ;
  assign Green[5] = \<const0> ;
  assign Green[4] = \<const0> ;
  assign Green[3] = \<const0> ;
  assign Green[2] = \<const0> ;
  assign Green[1] = \^Green [1];
  assign Green[0] = \^Green [1];
  assign HSync = \<const0> ;
  assign PClk = Clock;
  assign Red[4] = \^Green [1];
  assign Red[3] = \^Green [1];
  assign Red[2] = \^Green [1];
  assign Red[1] = \^Green [1];
  assign Red[0] = \<const0> ;
  assign VSync = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_HDMIController_0_0_HDMIController inst
       (.Blue(Blue),
        .Clock(Clock),
        .Green(\^Green ));
endmodule

(* ORIG_REF_NAME = "HDMIController" *) 
module system_HDMIController_0_0_HDMIController
   (Green,
    Blue,
    Clock);
  output [0:0]Green;
  output [4:0]Blue;
  input Clock;

  wire [4:0]Blue;
  wire Clock;
  wire [0:0]Green;
  wire \Vcounter[10]_i_3_n_0 ;
  wire \Vcounter[10]_i_4_n_0 ;
  wire [10:0]Vcounter_reg;
  wire [4:0]blue;
  wire \blue[0]_i_1_n_0 ;
  wire \blue[1]_i_1_n_0 ;
  wire \blue[2]_i_1_n_0 ;
  wire \blue[3]_i_1_n_0 ;
  wire \blue[4]_i_1_n_0 ;
  wire \blue[4]_i_2_n_0 ;
  wire hblank_reg_n_0;
  wire in1;
  wire [10:0]p_0_in;
  wire [4:4]red;
  wire vblank_i_1_n_0;
  wire vblank_i_2_n_0;
  wire vblank_i_3_n_0;
  wire vblank_i_4_n_0;
  wire vblank_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[0]_INST_0 
       (.I0(blue[0]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[1]_INST_0 
       (.I0(blue[1]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[2]_INST_0 
       (.I0(blue[2]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[3]_INST_0 
       (.I0(blue[3]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[4]_INST_0 
       (.I0(blue[4]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[0]_INST_0 
       (.I0(red),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Green));
  LUT1 #(
    .INIT(2'h1)) 
    \Vcounter[0]_i_1 
       (.I0(Vcounter_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \Vcounter[10]_i_1 
       (.I0(Vcounter_reg[10]),
        .I1(Vcounter_reg[7]),
        .I2(Vcounter_reg[9]),
        .I3(Vcounter_reg[8]),
        .I4(\Vcounter[10]_i_3_n_0 ),
        .I5(Vcounter_reg[6]),
        .O(in1));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Vcounter[10]_i_2 
       (.I0(Vcounter_reg[8]),
        .I1(Vcounter_reg[6]),
        .I2(\Vcounter[10]_i_4_n_0 ),
        .I3(Vcounter_reg[7]),
        .I4(Vcounter_reg[9]),
        .I5(Vcounter_reg[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h0000000055557FFF)) 
    \Vcounter[10]_i_3 
       (.I0(Vcounter_reg[4]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[1]),
        .I3(Vcounter_reg[2]),
        .I4(Vcounter_reg[3]),
        .I5(Vcounter_reg[5]),
        .O(\Vcounter[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Vcounter[10]_i_4 
       (.I0(Vcounter_reg[5]),
        .I1(Vcounter_reg[3]),
        .I2(Vcounter_reg[1]),
        .I3(Vcounter_reg[0]),
        .I4(Vcounter_reg[2]),
        .I5(Vcounter_reg[4]),
        .O(\Vcounter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Vcounter[1]_i_1 
       (.I0(Vcounter_reg[0]),
        .I1(Vcounter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Vcounter[2]_i_1 
       (.I0(Vcounter_reg[0]),
        .I1(Vcounter_reg[1]),
        .I2(Vcounter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Vcounter[3]_i_1 
       (.I0(Vcounter_reg[1]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[2]),
        .I3(Vcounter_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Vcounter[4]_i_1 
       (.I0(Vcounter_reg[2]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[1]),
        .I3(Vcounter_reg[3]),
        .I4(Vcounter_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Vcounter[5]_i_1 
       (.I0(Vcounter_reg[3]),
        .I1(Vcounter_reg[1]),
        .I2(Vcounter_reg[0]),
        .I3(Vcounter_reg[2]),
        .I4(Vcounter_reg[4]),
        .I5(Vcounter_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Vcounter[6]_i_1 
       (.I0(\Vcounter[10]_i_4_n_0 ),
        .I1(Vcounter_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Vcounter[7]_i_1 
       (.I0(\Vcounter[10]_i_4_n_0 ),
        .I1(Vcounter_reg[6]),
        .I2(Vcounter_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Vcounter[8]_i_1 
       (.I0(Vcounter_reg[6]),
        .I1(\Vcounter[10]_i_4_n_0 ),
        .I2(Vcounter_reg[7]),
        .I3(Vcounter_reg[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Vcounter[9]_i_1 
       (.I0(Vcounter_reg[7]),
        .I1(\Vcounter[10]_i_4_n_0 ),
        .I2(Vcounter_reg[6]),
        .I3(Vcounter_reg[8]),
        .I4(Vcounter_reg[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(Vcounter_reg[0]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[10] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(Vcounter_reg[10]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(Vcounter_reg[1]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(Vcounter_reg[2]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(Vcounter_reg[3]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(Vcounter_reg[4]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[5] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(Vcounter_reg[5]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[6] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(Vcounter_reg[6]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[7] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(Vcounter_reg[7]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[8] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(Vcounter_reg[8]),
        .R(in1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[9] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(Vcounter_reg[9]),
        .R(in1));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000111)) 
    \blue[0]_i_1 
       (.I0(Vcounter_reg[5]),
        .I1(Vcounter_reg[3]),
        .I2(Vcounter_reg[2]),
        .I3(Vcounter_reg[1]),
        .I4(Vcounter_reg[4]),
        .I5(Vcounter_reg[6]),
        .O(\blue[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \blue[1]_i_1 
       (.I0(\blue[4]_i_2_n_0 ),
        .I1(Vcounter_reg[7]),
        .O(\blue[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \blue[2]_i_1 
       (.I0(Vcounter_reg[7]),
        .I1(\blue[4]_i_2_n_0 ),
        .I2(Vcounter_reg[8]),
        .O(\blue[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \blue[3]_i_1 
       (.I0(Vcounter_reg[8]),
        .I1(\blue[4]_i_2_n_0 ),
        .I2(Vcounter_reg[7]),
        .I3(Vcounter_reg[9]),
        .O(\blue[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \blue[4]_i_1 
       (.I0(Vcounter_reg[9]),
        .I1(Vcounter_reg[7]),
        .I2(\blue[4]_i_2_n_0 ),
        .I3(Vcounter_reg[8]),
        .I4(Vcounter_reg[10]),
        .O(\blue[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \blue[4]_i_2 
       (.I0(Vcounter_reg[5]),
        .I1(Vcounter_reg[3]),
        .I2(Vcounter_reg[2]),
        .I3(Vcounter_reg[1]),
        .I4(Vcounter_reg[4]),
        .I5(Vcounter_reg[6]),
        .O(\blue[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blue_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\blue[0]_i_1_n_0 ),
        .Q(blue[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blue_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(\blue[1]_i_1_n_0 ),
        .Q(blue[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blue_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(\blue[2]_i_1_n_0 ),
        .Q(blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blue_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(\blue[3]_i_1_n_0 ),
        .Q(blue[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blue_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(\blue[4]_i_1_n_0 ),
        .Q(blue[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    hblank_reg
       (.C(Clock),
        .CE(1'b1),
        .D(hblank_reg_n_0),
        .Q(hblank_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(1'b1),
        .Q(red),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    vblank_i_1
       (.I0(vblank_reg_n_0),
        .I1(Vcounter_reg[10]),
        .I2(vblank_i_2_n_0),
        .I3(vblank_i_3_n_0),
        .I4(vblank_i_4_n_0),
        .I5(Vcounter_reg[9]),
        .O(vblank_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    vblank_i_2
       (.I0(Vcounter_reg[7]),
        .I1(Vcounter_reg[8]),
        .O(vblank_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    vblank_i_3
       (.I0(Vcounter_reg[3]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[2]),
        .I3(Vcounter_reg[1]),
        .I4(Vcounter_reg[5]),
        .I5(Vcounter_reg[4]),
        .O(vblank_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    vblank_i_4
       (.I0(Vcounter_reg[8]),
        .I1(Vcounter_reg[7]),
        .I2(Vcounter_reg[6]),
        .O(vblank_i_4_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    vblank_reg
       (.C(Clock),
        .CE(1'b1),
        .D(vblank_i_1_n_0),
        .Q(vblank_reg_n_0),
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
