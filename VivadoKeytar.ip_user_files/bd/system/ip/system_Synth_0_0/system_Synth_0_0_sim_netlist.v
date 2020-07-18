// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jul 17 21:37:44 2020
// Host        : ConnerServer running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_Synth_0_0/system_Synth_0_0_sim_netlist.v
// Design      : system_Synth_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_Synth_0_0,Synth,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Synth,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_Synth_0_0
   (Clock100MHz,
    Waveform,
    BusClock,
    BusPAddr,
    BusPWriteData,
    BusPReadData,
    BusPWrite,
    BusPReady,
    BusPEnable,
    BusPSel,
    BusPError);
  input Clock100MHz;
  output [23:0]Waveform;
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
  wire [30:8]\^BusPReadData ;
  wire BusPReady;
  wire BusPSel;

  assign BusPError = \<const0> ;
  assign BusPReadData[31] = \<const0> ;
  assign BusPReadData[30] = \^BusPReadData [30];
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
  assign BusPReadData[13] = \^BusPReadData [30];
  assign BusPReadData[12] = \^BusPReadData [30];
  assign BusPReadData[11] = \^BusPReadData [30];
  assign BusPReadData[10] = \^BusPReadData [30];
  assign BusPReadData[9] = \^BusPReadData [30];
  assign BusPReadData[8] = \^BusPReadData [8];
  assign BusPReadData[7] = \<const0> ;
  assign BusPReadData[6] = \<const0> ;
  assign BusPReadData[5] = \<const0> ;
  assign BusPReadData[4] = \<const0> ;
  assign BusPReadData[3] = \<const0> ;
  assign BusPReadData[2] = \<const0> ;
  assign BusPReadData[1] = \<const0> ;
  assign BusPReadData[0] = \<const0> ;
  assign Waveform[23] = \<const0> ;
  assign Waveform[22] = \<const0> ;
  assign Waveform[21] = \<const0> ;
  assign Waveform[20] = \<const0> ;
  assign Waveform[19] = \<const0> ;
  assign Waveform[18] = \<const0> ;
  assign Waveform[17] = \<const0> ;
  assign Waveform[16] = \<const0> ;
  assign Waveform[15] = \<const0> ;
  assign Waveform[14] = \<const0> ;
  assign Waveform[13] = \<const0> ;
  assign Waveform[12] = \<const0> ;
  assign Waveform[11] = \<const0> ;
  assign Waveform[10] = \<const0> ;
  assign Waveform[9] = \<const0> ;
  assign Waveform[8] = \<const0> ;
  assign Waveform[7] = \<const0> ;
  assign Waveform[6] = \<const0> ;
  assign Waveform[5] = \<const0> ;
  assign Waveform[4] = \<const0> ;
  assign Waveform[3] = \<const0> ;
  assign Waveform[2] = \<const0> ;
  assign Waveform[1] = \<const0> ;
  assign Waveform[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_Synth_0_0_Synth inst
       (.BusClock(BusClock),
        .BusPAddr(BusPAddr),
        .BusPEnable(BusPEnable),
        .BusPReadData({\^BusPReadData [30],\^BusPReadData [8]}),
        .BusPReady(BusPReady),
        .BusPSel(BusPSel));
endmodule

(* ORIG_REF_NAME = "Channel" *) 
module system_Synth_0_0_Channel__parameterized61
   (BusPReady_reg_0,
    \BusPReadData_reg[30]_0 ,
    BusPAddr_4_sp_1,
    BusClock,
    \BusPReadData_reg[30]_1 ,
    \BusPReadData_reg[30]_2 ,
    \BusPReadData_reg[30]_3 ,
    BusPEnable,
    BusPSel,
    BusPAddr);
  output BusPReady_reg_0;
  output \BusPReadData_reg[30]_0 ;
  output BusPAddr_4_sp_1;
  input BusClock;
  input \BusPReadData_reg[30]_1 ;
  input \BusPReadData_reg[30]_2 ;
  input \BusPReadData_reg[30]_3 ;
  input BusPEnable;
  input BusPSel;
  input [13:0]BusPAddr;

  wire BusClock;
  wire [13:0]BusPAddr;
  wire BusPAddr_4_sn_1;
  wire BusPEnable;
  wire \BusPReadData[30]_i_1_n_0 ;
  wire \BusPReadData[30]_i_2_n_0 ;
  wire \BusPReadData[30]_i_3_n_0 ;
  wire \BusPReadData_reg[30]_0 ;
  wire \BusPReadData_reg[30]_1 ;
  wire \BusPReadData_reg[30]_2 ;
  wire \BusPReadData_reg[30]_3 ;
  wire BusPReady_i_1__0_n_0;
  wire BusPReady_reg_0;
  wire BusPSel;

  assign BusPAddr_4_sp_1 = BusPAddr_4_sn_1;
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \BusPReadData[30]_i_1 
       (.I0(\BusPReadData_reg[30]_1 ),
        .I1(\BusPReadData_reg[30]_2 ),
        .I2(\BusPReadData[30]_i_2_n_0 ),
        .I3(\BusPReadData_reg[30]_3 ),
        .I4(\BusPReadData[30]_i_3_n_0 ),
        .I5(\BusPReadData_reg[30]_0 ),
        .O(\BusPReadData[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \BusPReadData[30]_i_2 
       (.I0(BusPAddr[10]),
        .I1(BusPAddr[11]),
        .I2(BusPAddr[9]),
        .I3(BusPAddr[8]),
        .I4(BusPAddr[13]),
        .I5(BusPAddr[12]),
        .O(\BusPReadData[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \BusPReadData[30]_i_3 
       (.I0(BusPEnable),
        .I1(BusPSel),
        .I2(BusPReady_reg_0),
        .I3(BusPAddr[0]),
        .I4(BusPAddr[1]),
        .I5(BusPAddr_4_sn_1),
        .O(\BusPReadData[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \BusPReadData[30]_i_7 
       (.I0(BusPAddr[4]),
        .I1(BusPAddr[5]),
        .I2(BusPAddr[2]),
        .I3(BusPAddr[3]),
        .I4(BusPAddr[7]),
        .I5(BusPAddr[6]),
        .O(BusPAddr_4_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    \BusPReadData_reg[30] 
       (.C(BusClock),
        .CE(1'b1),
        .D(\BusPReadData[30]_i_1_n_0 ),
        .Q(\BusPReadData_reg[30]_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h7C)) 
    BusPReady_i_1__0
       (.I0(BusPEnable),
        .I1(BusPReady_reg_0),
        .I2(BusPSel),
        .O(BusPReady_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    BusPReady_reg
       (.C(BusClock),
        .CE(1'b1),
        .D(BusPReady_i_1__0_n_0),
        .Q(BusPReady_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Channel" *) 
module system_Synth_0_0_Channel__parameterized62
   (BusPReadData,
    \BusPAddr[28] ,
    BusPAddr_22_sp_1,
    BusPAddr_16_sp_1,
    BusPReady,
    BusClock,
    BusPEnable,
    BusPSel,
    BusPAddr,
    \BusPReadData_reg[30]_0 ,
    BusPReady_0,
    \BusPReadData[30] );
  output [1:0]BusPReadData;
  output \BusPAddr[28] ;
  output BusPAddr_22_sp_1;
  output BusPAddr_16_sp_1;
  output BusPReady;
  input BusClock;
  input BusPEnable;
  input BusPSel;
  input [25:0]BusPAddr;
  input \BusPReadData_reg[30]_0 ;
  input BusPReady_0;
  input \BusPReadData[30] ;

  wire BusClock;
  wire [25:0]BusPAddr;
  wire \BusPAddr[28] ;
  wire BusPAddr_16_sn_1;
  wire BusPAddr_22_sn_1;
  wire BusPEnable;
  wire [1:0]BusPReadData;
  wire \BusPReadData[30] ;
  wire \BusPReadData[30]_i_1__0_n_0 ;
  wire \BusPReadData[30]_i_4_n_0 ;
  wire \BusPReadData[30]_i_6_n_0 ;
  wire \BusPReadData_reg[30]_0 ;
  wire BusPReady;
  wire BusPReady_0;
  wire BusPReady_i_1_n_0;
  wire BusPReady_reg_n_0;
  wire BusPSel;

  assign BusPAddr_16_sp_1 = BusPAddr_16_sn_1;
  assign BusPAddr_22_sp_1 = BusPAddr_22_sn_1;
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \BusPReadData[30]_i_1__0 
       (.I0(\BusPAddr[28] ),
        .I1(BusPAddr_22_sn_1),
        .I2(\BusPReadData[30]_i_4_n_0 ),
        .I3(BusPAddr_16_sn_1),
        .I4(\BusPReadData[30]_i_6_n_0 ),
        .I5(BusPReadData[0]),
        .O(\BusPReadData[30]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \BusPReadData[30]_i_2__0 
       (.I0(BusPAddr[22]),
        .I1(BusPAddr[23]),
        .I2(BusPAddr[20]),
        .I3(BusPAddr[21]),
        .I4(BusPAddr[25]),
        .I5(BusPAddr[24]),
        .O(\BusPAddr[28] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \BusPReadData[30]_i_3__0 
       (.I0(BusPAddr[16]),
        .I1(BusPAddr[17]),
        .I2(BusPAddr[14]),
        .I3(BusPAddr[15]),
        .I4(BusPAddr[19]),
        .I5(BusPAddr[18]),
        .O(BusPAddr_22_sn_1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \BusPReadData[30]_i_4 
       (.I0(BusPAddr[4]),
        .I1(BusPAddr[5]),
        .I2(BusPAddr[2]),
        .I3(BusPAddr[3]),
        .I4(BusPAddr[7]),
        .I5(BusPAddr[6]),
        .O(\BusPReadData[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \BusPReadData[30]_i_5 
       (.I0(BusPAddr[10]),
        .I1(BusPAddr[11]),
        .I2(BusPAddr[8]),
        .I3(BusPAddr[9]),
        .I4(BusPAddr[13]),
        .I5(BusPAddr[12]),
        .O(BusPAddr_16_sn_1));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \BusPReadData[30]_i_6 
       (.I0(BusPEnable),
        .I1(BusPSel),
        .I2(BusPReady_reg_n_0),
        .I3(BusPAddr[0]),
        .I4(BusPAddr[1]),
        .I5(\BusPReadData_reg[30]_0 ),
        .O(\BusPReadData[30]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \BusPReadData[9]_INST_0 
       (.I0(BusPReadData[0]),
        .I1(\BusPReadData[30] ),
        .O(BusPReadData[1]));
  FDRE #(
    .INIT(1'b0)) 
    \BusPReadData_reg[30] 
       (.C(BusClock),
        .CE(1'b1),
        .D(\BusPReadData[30]_i_1__0_n_0 ),
        .Q(BusPReadData[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    BusPReady_INST_0
       (.I0(BusPReady_reg_n_0),
        .I1(BusPReady_0),
        .O(BusPReady));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    BusPReady_i_1
       (.I0(BusPEnable),
        .I1(BusPReady_reg_n_0),
        .I2(BusPSel),
        .O(BusPReady_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    BusPReady_reg
       (.C(BusClock),
        .CE(1'b1),
        .D(BusPReady_i_1_n_0),
        .Q(BusPReady_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Synth" *) 
module system_Synth_0_0_Synth
   (BusPReadData,
    BusPReady,
    BusPEnable,
    BusPSel,
    BusPAddr,
    BusClock);
  output [1:0]BusPReadData;
  output BusPReady;
  input BusPEnable;
  input BusPSel;
  input [31:0]BusPAddr;
  input BusClock;

  wire BusClock;
  wire [31:0]BusPAddr;
  wire BusPEnable;
  wire [1:0]BusPReadData;
  wire BusPReady;
  wire BusPSel;
  wire \channels[62].channel0_n_0 ;
  wire \channels[62].channel0_n_1 ;
  wire \channels[62].channel0_n_2 ;
  wire \channels[63].channel0_n_2 ;
  wire \channels[63].channel0_n_3 ;
  wire \channels[63].channel0_n_4 ;

  system_Synth_0_0_Channel__parameterized61 \channels[62].channel0 
       (.BusClock(BusClock),
        .BusPAddr(BusPAddr[13:0]),
        .BusPAddr_4_sp_1(\channels[62].channel0_n_2 ),
        .BusPEnable(BusPEnable),
        .\BusPReadData_reg[30]_0 (\channels[62].channel0_n_1 ),
        .\BusPReadData_reg[30]_1 (\channels[63].channel0_n_2 ),
        .\BusPReadData_reg[30]_2 (\channels[63].channel0_n_3 ),
        .\BusPReadData_reg[30]_3 (\channels[63].channel0_n_4 ),
        .BusPReady_reg_0(\channels[62].channel0_n_0 ),
        .BusPSel(BusPSel));
  system_Synth_0_0_Channel__parameterized62 \channels[63].channel0 
       (.BusClock(BusClock),
        .BusPAddr({BusPAddr[31:8],BusPAddr[1:0]}),
        .\BusPAddr[28] (\channels[63].channel0_n_2 ),
        .BusPAddr_16_sp_1(\channels[63].channel0_n_4 ),
        .BusPAddr_22_sp_1(\channels[63].channel0_n_3 ),
        .BusPEnable(BusPEnable),
        .BusPReadData(BusPReadData),
        .\BusPReadData[30] (\channels[62].channel0_n_1 ),
        .\BusPReadData_reg[30]_0 (\channels[62].channel0_n_2 ),
        .BusPReady(BusPReady),
        .BusPReady_0(\channels[62].channel0_n_0 ),
        .BusPSel(BusPSel));
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
