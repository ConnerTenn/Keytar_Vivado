// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jul 21 19:59:05 2020
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clock, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input Clock;
  output [4:0]Red;
  output [5:0]Green;
  output [4:0]Blue;
  output HSync;
  output VSync;
  output PClk;
  output De;

  wire [4:0]Blue;
  wire Clock;
  wire De;
  wire [5:0]Green;
  wire HSync;
  wire [4:0]Red;
  wire VSync;

  assign PClk = Clock;
  system_HDMIController_0_0_HDMIController inst
       (.Blue(Blue),
        .Clock(Clock),
        .De(De),
        .Green(Green),
        .HSync(HSync),
        .Red(Red),
        .VSync(VSync));
endmodule

(* ORIG_REF_NAME = "HDMIController" *) 
module system_HDMIController_0_0_HDMIController
   (Red,
    Green,
    Blue,
    VSync,
    HSync,
    De,
    Clock);
  output [4:0]Red;
  output [5:0]Green;
  output [4:0]Blue;
  output VSync;
  output HSync;
  output De;
  input Clock;

  wire [4:0]Blue;
  wire Clock;
  wire De;
  wire [5:0]Green;
  wire HSync;
  wire HSync_i_1_n_0;
  wire HSync_i_2_n_0;
  wire HSync_i_3_n_0;
  wire HSync_i_4_n_0;
  wire HSync_i_5_n_0;
  wire \Hcounter[0]_i_1_n_0 ;
  wire \Hcounter[0]_i_3_n_0 ;
  wire \Hcounter[0]_i_4_n_0 ;
  wire \Hcounter[0]_i_5_n_0 ;
  wire [11:6]Hcounter_reg;
  wire \Hcounter_reg[0]_i_2_n_0 ;
  wire \Hcounter_reg[0]_i_2_n_1 ;
  wire \Hcounter_reg[0]_i_2_n_2 ;
  wire \Hcounter_reg[0]_i_2_n_3 ;
  wire \Hcounter_reg[0]_i_2_n_4 ;
  wire \Hcounter_reg[0]_i_2_n_5 ;
  wire \Hcounter_reg[0]_i_2_n_6 ;
  wire \Hcounter_reg[0]_i_2_n_7 ;
  wire \Hcounter_reg[4]_i_1_n_0 ;
  wire \Hcounter_reg[4]_i_1_n_1 ;
  wire \Hcounter_reg[4]_i_1_n_2 ;
  wire \Hcounter_reg[4]_i_1_n_3 ;
  wire \Hcounter_reg[4]_i_1_n_4 ;
  wire \Hcounter_reg[4]_i_1_n_5 ;
  wire \Hcounter_reg[4]_i_1_n_6 ;
  wire \Hcounter_reg[4]_i_1_n_7 ;
  wire \Hcounter_reg[8]_i_1_n_1 ;
  wire \Hcounter_reg[8]_i_1_n_2 ;
  wire \Hcounter_reg[8]_i_1_n_3 ;
  wire \Hcounter_reg[8]_i_1_n_4 ;
  wire \Hcounter_reg[8]_i_1_n_5 ;
  wire \Hcounter_reg[8]_i_1_n_6 ;
  wire \Hcounter_reg[8]_i_1_n_7 ;
  wire [5:0]Hcounter_reg__0;
  wire [4:0]Red;
  wire VSync;
  wire VSync_i_1_n_0;
  wire VSync_i_2_n_0;
  wire VSync_i_3_n_0;
  wire VSync_i_4_n_0;
  wire VSync_i_5_n_0;
  wire VSync_i_6_n_0;
  wire VSync_i_7_n_0;
  wire Vcounter;
  wire \Vcounter[0]_i_1_n_0 ;
  wire \Vcounter[10]_i_3_n_0 ;
  wire \Vcounter[10]_i_4_n_0 ;
  wire [10:0]Vcounter_reg;
  wire [4:0]blue;
  wire \blue[4]_i_1_n_0 ;
  wire \blue[4]_i_2_n_0 ;
  wire de_i_1_n_0;
  wire de_reg_n_0;
  wire [5:0]green;
  wire hblank;
  wire hblank_i_1_n_0;
  wire hblank_i_2_n_0;
  wire hblank_i_3_n_0;
  wire hblank_i_4_n_0;
  wire hblank_i_5_n_0;
  wire hblank_i_6_n_0;
  wire hblank_i_7_n_0;
  wire hblank_i_8_n_0;
  wire [4:1]p_0_in;
  wire [10:1]p_0_in__0;
  wire [0:0]p_0_in__1;
  wire [4:4]p_1_in;
  wire [4:0]red;
  wire \red[0]_i_1_n_0 ;
  wire \red[1]_i_1_n_0 ;
  wire \red[1]_i_2_n_0 ;
  wire \red[2]_i_1_n_0 ;
  wire \red[3]_i_1_n_0 ;
  wire \red[4]_i_1_n_0 ;
  wire \red[4]_i_2_n_0 ;
  wire \red[4]_i_3_n_0 ;
  wire \red[4]_i_4_n_0 ;
  wire \red[4]_i_5_n_0 ;
  wire vblank__9;
  wire vblank_i_1_n_0;
  wire vblank_i_2_n_0;
  wire vblank_i_4_n_0;
  wire vblank_i_5_n_0;
  wire vblank_reg_n_0;
  wire [3:3]\NLW_Hcounter_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[0]_INST_0 
       (.I0(blue[0]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Blue[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[1]_INST_0 
       (.I0(blue[1]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Blue[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[2]_INST_0 
       (.I0(blue[2]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Blue[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[3]_INST_0 
       (.I0(blue[3]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Blue[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[4]_INST_0 
       (.I0(blue[4]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Blue[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    De_INST_0
       (.I0(de_reg_n_0),
        .I1(vblank_reg_n_0),
        .O(De));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[0]_INST_0 
       (.I0(green[0]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Green[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[1]_INST_0 
       (.I0(green[1]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Green[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[2]_INST_0 
       (.I0(green[2]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Green[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[3]_INST_0 
       (.I0(green[3]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Green[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[4]_INST_0 
       (.I0(green[4]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Green[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[5]_INST_0 
       (.I0(green[5]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Green[5]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCFC4CCC4)) 
    HSync_i_1
       (.I0(HSync_i_2_n_0),
        .I1(HSync),
        .I2(Hcounter_reg[10]),
        .I3(Hcounter_reg[11]),
        .I4(HSync_i_3_n_0),
        .I5(Hcounter_reg[9]),
        .O(HSync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    HSync_i_2
       (.I0(Hcounter_reg[6]),
        .I1(HSync_i_4_n_0),
        .I2(Hcounter_reg[8]),
        .I3(Hcounter_reg[7]),
        .O(HSync_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    HSync_i_3
       (.I0(Hcounter_reg[6]),
        .I1(HSync_i_5_n_0),
        .I2(Hcounter_reg[7]),
        .I3(Hcounter_reg[8]),
        .O(HSync_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    HSync_i_4
       (.I0(Hcounter_reg__0[0]),
        .I1(Hcounter_reg__0[1]),
        .I2(Hcounter_reg__0[2]),
        .I3(Hcounter_reg__0[3]),
        .I4(Hcounter_reg__0[5]),
        .I5(Hcounter_reg__0[4]),
        .O(HSync_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    HSync_i_5
       (.I0(Hcounter_reg__0[3]),
        .I1(Hcounter_reg__0[0]),
        .I2(Hcounter_reg__0[2]),
        .I3(Hcounter_reg__0[1]),
        .I4(Hcounter_reg__0[4]),
        .I5(Hcounter_reg__0[5]),
        .O(HSync_i_5_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    HSync_reg
       (.C(Clock),
        .CE(1'b1),
        .D(HSync_i_1_n_0),
        .Q(HSync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAA8AAAA88888888)) 
    \Hcounter[0]_i_1 
       (.I0(Hcounter_reg[11]),
        .I1(\Hcounter[0]_i_3_n_0 ),
        .I2(Hcounter_reg__0[5]),
        .I3(Hcounter_reg[6]),
        .I4(\Hcounter[0]_i_4_n_0 ),
        .I5(Hcounter_reg[7]),
        .O(\Hcounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Hcounter[0]_i_3 
       (.I0(Hcounter_reg[8]),
        .I1(Hcounter_reg[10]),
        .I2(Hcounter_reg[9]),
        .O(\Hcounter[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1555FFFF)) 
    \Hcounter[0]_i_4 
       (.I0(Hcounter_reg__0[3]),
        .I1(Hcounter_reg__0[2]),
        .I2(Hcounter_reg__0[1]),
        .I3(Hcounter_reg__0[0]),
        .I4(Hcounter_reg__0[4]),
        .O(\Hcounter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Hcounter[0]_i_5 
       (.I0(Hcounter_reg__0[0]),
        .O(\Hcounter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[0]_i_2_n_7 ),
        .Q(Hcounter_reg__0[0]),
        .R(\Hcounter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Hcounter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Hcounter_reg[0]_i_2_n_0 ,\Hcounter_reg[0]_i_2_n_1 ,\Hcounter_reg[0]_i_2_n_2 ,\Hcounter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Hcounter_reg[0]_i_2_n_4 ,\Hcounter_reg[0]_i_2_n_5 ,\Hcounter_reg[0]_i_2_n_6 ,\Hcounter_reg[0]_i_2_n_7 }),
        .S({Hcounter_reg__0[3:1],\Hcounter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[10] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[8]_i_1_n_5 ),
        .Q(Hcounter_reg[10]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[11] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[8]_i_1_n_4 ),
        .Q(Hcounter_reg[11]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[0]_i_2_n_6 ),
        .Q(Hcounter_reg__0[1]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[0]_i_2_n_5 ),
        .Q(Hcounter_reg__0[2]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[0]_i_2_n_4 ),
        .Q(Hcounter_reg__0[3]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[4]_i_1_n_7 ),
        .Q(Hcounter_reg__0[4]),
        .R(\Hcounter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Hcounter_reg[4]_i_1 
       (.CI(\Hcounter_reg[0]_i_2_n_0 ),
        .CO({\Hcounter_reg[4]_i_1_n_0 ,\Hcounter_reg[4]_i_1_n_1 ,\Hcounter_reg[4]_i_1_n_2 ,\Hcounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Hcounter_reg[4]_i_1_n_4 ,\Hcounter_reg[4]_i_1_n_5 ,\Hcounter_reg[4]_i_1_n_6 ,\Hcounter_reg[4]_i_1_n_7 }),
        .S({Hcounter_reg[7:6],Hcounter_reg__0[5:4]}));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[5] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[4]_i_1_n_6 ),
        .Q(Hcounter_reg__0[5]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[6] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[4]_i_1_n_5 ),
        .Q(Hcounter_reg[6]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[7] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[4]_i_1_n_4 ),
        .Q(Hcounter_reg[7]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[8] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[8]_i_1_n_7 ),
        .Q(Hcounter_reg[8]),
        .R(\Hcounter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Hcounter_reg[8]_i_1 
       (.CI(\Hcounter_reg[4]_i_1_n_0 ),
        .CO({\NLW_Hcounter_reg[8]_i_1_CO_UNCONNECTED [3],\Hcounter_reg[8]_i_1_n_1 ,\Hcounter_reg[8]_i_1_n_2 ,\Hcounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Hcounter_reg[8]_i_1_n_4 ,\Hcounter_reg[8]_i_1_n_5 ,\Hcounter_reg[8]_i_1_n_6 ,\Hcounter_reg[8]_i_1_n_7 }),
        .S(Hcounter_reg[11:8]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[9] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[8]_i_1_n_6 ),
        .Q(Hcounter_reg[9]),
        .R(\Hcounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Red[0]_INST_0 
       (.I0(red[0]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Red[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Red[1]_INST_0 
       (.I0(red[1]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Red[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Red[2]_INST_0 
       (.I0(red[2]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Red[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Red[3]_INST_0 
       (.I0(red[3]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Red[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Red[4]_INST_0 
       (.I0(red[4]),
        .I1(hblank),
        .I2(vblank_reg_n_0),
        .O(Red[4]));
  LUT5 #(
    .INIT(32'hFFE0F0F0)) 
    VSync_i_1
       (.I0(VSync_i_2_n_0),
        .I1(VSync_i_3_n_0),
        .I2(VSync),
        .I3(VSync_i_4_n_0),
        .I4(\Hcounter[0]_i_1_n_0 ),
        .O(VSync_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    VSync_i_2
       (.I0(Vcounter_reg[6]),
        .I1(Vcounter_reg[5]),
        .I2(VSync_i_5_n_0),
        .I3(VSync_i_6_n_0),
        .I4(Vcounter_reg[0]),
        .I5(Vcounter_reg[1]),
        .O(VSync_i_2_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    VSync_i_3
       (.I0(Vcounter_reg[2]),
        .I1(Vcounter_reg[10]),
        .I2(Vcounter_reg[9]),
        .O(VSync_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    VSync_i_4
       (.I0(Vcounter_reg[9]),
        .I1(Vcounter_reg[10]),
        .I2(VSync_i_7_n_0),
        .I3(Vcounter_reg[6]),
        .I4(Vcounter_reg[8]),
        .I5(Vcounter_reg[7]),
        .O(VSync_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    VSync_i_5
       (.I0(Vcounter_reg[7]),
        .I1(Vcounter_reg[8]),
        .O(VSync_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    VSync_i_6
       (.I0(Vcounter_reg[4]),
        .I1(Vcounter_reg[3]),
        .O(VSync_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    VSync_i_7
       (.I0(Vcounter_reg[3]),
        .I1(Vcounter_reg[2]),
        .I2(Vcounter_reg[0]),
        .I3(Vcounter_reg[1]),
        .I4(Vcounter_reg[5]),
        .I5(Vcounter_reg[4]),
        .O(VSync_i_7_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    VSync_reg
       (.C(Clock),
        .CE(1'b1),
        .D(VSync_i_1_n_0),
        .Q(VSync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000005555555D)) 
    \Vcounter[0]_i_1 
       (.I0(Vcounter_reg[10]),
        .I1(\Vcounter[10]_i_3_n_0 ),
        .I2(Vcounter_reg[8]),
        .I3(Vcounter_reg[9]),
        .I4(Vcounter_reg[7]),
        .I5(Vcounter_reg[0]),
        .O(\Vcounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888808)) 
    \Vcounter[10]_i_1 
       (.I0(\Hcounter[0]_i_1_n_0 ),
        .I1(Vcounter_reg[10]),
        .I2(\Vcounter[10]_i_3_n_0 ),
        .I3(Vcounter_reg[8]),
        .I4(Vcounter_reg[9]),
        .I5(Vcounter_reg[7]),
        .O(Vcounter));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Vcounter[10]_i_2 
       (.I0(Vcounter_reg[8]),
        .I1(Vcounter_reg[6]),
        .I2(\Vcounter[10]_i_4_n_0 ),
        .I3(Vcounter_reg[7]),
        .I4(Vcounter_reg[9]),
        .I5(Vcounter_reg[10]),
        .O(p_0_in__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \Vcounter[10]_i_3 
       (.I0(Vcounter_reg[2]),
        .I1(Vcounter_reg[4]),
        .I2(Vcounter_reg[3]),
        .I3(Vcounter_reg[6]),
        .I4(Vcounter_reg[5]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \Vcounter[1]_i_1 
       (.I0(Vcounter_reg[0]),
        .I1(Vcounter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Vcounter[2]_i_1 
       (.I0(Vcounter_reg[0]),
        .I1(Vcounter_reg[1]),
        .I2(Vcounter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Vcounter[3]_i_1 
       (.I0(Vcounter_reg[1]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[2]),
        .I3(Vcounter_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Vcounter[4]_i_1 
       (.I0(Vcounter_reg[2]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[1]),
        .I3(Vcounter_reg[3]),
        .I4(Vcounter_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Vcounter[5]_i_1 
       (.I0(Vcounter_reg[3]),
        .I1(Vcounter_reg[1]),
        .I2(Vcounter_reg[0]),
        .I3(Vcounter_reg[2]),
        .I4(Vcounter_reg[4]),
        .I5(Vcounter_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Vcounter[6]_i_1 
       (.I0(\Vcounter[10]_i_4_n_0 ),
        .I1(Vcounter_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Vcounter[7]_i_1 
       (.I0(\Vcounter[10]_i_4_n_0 ),
        .I1(Vcounter_reg[6]),
        .I2(Vcounter_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Vcounter[8]_i_1 
       (.I0(Vcounter_reg[6]),
        .I1(\Vcounter[10]_i_4_n_0 ),
        .I2(Vcounter_reg[7]),
        .I3(Vcounter_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Vcounter[9]_i_1 
       (.I0(Vcounter_reg[7]),
        .I1(\Vcounter[10]_i_4_n_0 ),
        .I2(Vcounter_reg[6]),
        .I3(Vcounter_reg[8]),
        .I4(Vcounter_reg[9]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[0] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(\Vcounter[0]_i_1_n_0 ),
        .Q(Vcounter_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[10] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[10]),
        .Q(Vcounter_reg[10]),
        .R(Vcounter));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[1] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(Vcounter_reg[1]),
        .R(Vcounter));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[2] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(Vcounter_reg[2]),
        .R(Vcounter));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[3] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(Vcounter_reg[3]),
        .R(Vcounter));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[4] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(Vcounter_reg[4]),
        .R(Vcounter));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[5] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(Vcounter_reg[5]),
        .R(Vcounter));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[6] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(Vcounter_reg[6]),
        .R(Vcounter));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[7] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(Vcounter_reg[7]),
        .R(Vcounter));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[8] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(Vcounter_reg[8]),
        .R(Vcounter));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[9] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[9]),
        .Q(Vcounter_reg[9]),
        .R(Vcounter));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \blue[0]_i_1 
       (.I0(\blue[4]_i_2_n_0 ),
        .I1(Vcounter_reg[6]),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \blue[1]_i_1 
       (.I0(\red[4]_i_2_n_0 ),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \blue[2]_i_1 
       (.I0(\red[4]_i_4_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \blue[3]_i_1 
       (.I0(Vcounter_reg[9]),
        .I1(Vcounter_reg[7]),
        .I2(\blue[4]_i_2_n_0 ),
        .I3(Vcounter_reg[6]),
        .I4(Vcounter_reg[8]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \blue[4]_i_1 
       (.I0(Vcounter_reg[9]),
        .I1(Vcounter_reg[7]),
        .I2(\blue[4]_i_2_n_0 ),
        .I3(Vcounter_reg[6]),
        .I4(Vcounter_reg[8]),
        .I5(Vcounter_reg[10]),
        .O(\blue[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \blue[4]_i_2 
       (.I0(Vcounter_reg[5]),
        .I1(Vcounter_reg[4]),
        .I2(Vcounter_reg[3]),
        .I3(Vcounter_reg[2]),
        .I4(Vcounter_reg[0]),
        .I5(Vcounter_reg[1]),
        .O(\blue[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blue_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(blue[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blue_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(blue[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blue_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blue_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[4]),
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    de_i_1
       (.I0(de_reg_n_0),
        .I1(hblank_i_2_n_0),
        .I2(hblank_i_3_n_0),
        .O(de_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    de_reg
       (.C(Clock),
        .CE(1'b1),
        .D(de_i_1_n_0),
        .Q(de_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \green_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(Hcounter_reg__0[0]),
        .Q(green[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \green_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(Hcounter_reg__0[1]),
        .Q(green[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \green_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(Hcounter_reg__0[2]),
        .Q(green[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \green_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(Hcounter_reg__0[3]),
        .Q(green[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \green_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(Hcounter_reg__0[4]),
        .Q(green[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \green_reg[5] 
       (.C(Clock),
        .CE(1'b1),
        .D(Hcounter_reg__0[5]),
        .Q(green[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    hblank_i_1
       (.I0(hblank),
        .I1(hblank_i_2_n_0),
        .I2(hblank_i_3_n_0),
        .O(hblank_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    hblank_i_2
       (.I0(hblank_i_4_n_0),
        .I1(Hcounter_reg[6]),
        .I2(hblank_i_5_n_0),
        .I3(Hcounter_reg[7]),
        .I4(Hcounter_reg[8]),
        .I5(hblank_i_6_n_0),
        .O(hblank_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    hblank_i_3
       (.I0(hblank_i_7_n_0),
        .I1(Hcounter_reg[6]),
        .I2(hblank_i_5_n_0),
        .I3(Hcounter_reg[8]),
        .I4(Hcounter_reg[7]),
        .I5(hblank_i_8_n_0),
        .O(hblank_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    hblank_i_4
       (.I0(Hcounter_reg[11]),
        .I1(Hcounter_reg[9]),
        .I2(Hcounter_reg[10]),
        .O(hblank_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    hblank_i_5
       (.I0(Hcounter_reg__0[0]),
        .I1(Hcounter_reg__0[2]),
        .I2(Hcounter_reg__0[1]),
        .I3(Hcounter_reg__0[3]),
        .I4(Hcounter_reg__0[5]),
        .I5(Hcounter_reg__0[4]),
        .O(hblank_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    hblank_i_6
       (.I0(Hcounter_reg[10]),
        .I1(Hcounter_reg[11]),
        .O(hblank_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    hblank_i_7
       (.I0(Hcounter_reg[11]),
        .I1(Hcounter_reg[9]),
        .I2(Hcounter_reg[10]),
        .O(hblank_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    hblank_i_8
       (.I0(Hcounter_reg[10]),
        .I1(Hcounter_reg[11]),
        .O(hblank_i_8_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    hblank_reg
       (.C(Clock),
        .CE(1'b1),
        .D(hblank_i_1_n_0),
        .Q(hblank),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \red[0]_i_1 
       (.I0(Hcounter_reg__0[3]),
        .I1(p_0_in__1),
        .O(\red[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11111115EEEEEEEA)) 
    \red[0]_i_2 
       (.I0(Vcounter_reg[4]),
        .I1(Vcounter_reg[3]),
        .I2(Vcounter_reg[2]),
        .I3(Vcounter_reg[0]),
        .I4(Vcounter_reg[1]),
        .I5(Vcounter_reg[5]),
        .O(p_0_in__1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \red[1]_i_1 
       (.I0(Hcounter_reg__0[3]),
        .I1(\red[1]_i_2_n_0 ),
        .I2(Vcounter_reg[5]),
        .I3(Vcounter_reg[6]),
        .I4(Hcounter_reg__0[4]),
        .O(\red[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \red[1]_i_2 
       (.I0(Vcounter_reg[1]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[2]),
        .I3(Vcounter_reg[3]),
        .I4(Vcounter_reg[4]),
        .O(\red[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \red[2]_i_1 
       (.I0(\red[4]_i_3_n_0 ),
        .I1(\red[4]_i_2_n_0 ),
        .I2(Hcounter_reg__0[5]),
        .O(\red[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \red[3]_i_1 
       (.I0(\red[4]_i_3_n_0 ),
        .I1(Hcounter_reg__0[5]),
        .I2(\red[4]_i_2_n_0 ),
        .I3(\red[4]_i_4_n_0 ),
        .I4(Hcounter_reg[6]),
        .O(\red[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF2B2B0000D4D4FF)) 
    \red[4]_i_1 
       (.I0(\red[4]_i_2_n_0 ),
        .I1(Hcounter_reg__0[5]),
        .I2(\red[4]_i_3_n_0 ),
        .I3(Hcounter_reg[6]),
        .I4(\red[4]_i_4_n_0 ),
        .I5(\red[4]_i_5_n_0 ),
        .O(\red[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \red[4]_i_2 
       (.I0(Vcounter_reg[6]),
        .I1(\blue[4]_i_2_n_0 ),
        .I2(Vcounter_reg[7]),
        .O(\red[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBD149500)) 
    \red[4]_i_3 
       (.I0(Vcounter_reg[6]),
        .I1(Vcounter_reg[5]),
        .I2(\red[1]_i_2_n_0 ),
        .I3(Hcounter_reg__0[4]),
        .I4(Hcounter_reg__0[3]),
        .O(\red[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \red[4]_i_4 
       (.I0(Vcounter_reg[7]),
        .I1(\blue[4]_i_2_n_0 ),
        .I2(Vcounter_reg[6]),
        .I3(Vcounter_reg[8]),
        .O(\red[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666669)) 
    \red[4]_i_5 
       (.I0(p_1_in),
        .I1(Vcounter_reg[9]),
        .I2(Vcounter_reg[7]),
        .I3(\blue[4]_i_2_n_0 ),
        .I4(Vcounter_reg[6]),
        .I5(Vcounter_reg[8]),
        .O(\red[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \red[4]_i_6 
       (.I0(Hcounter_reg[6]),
        .I1(Hcounter_reg[7]),
        .O(p_1_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\red[0]_i_1_n_0 ),
        .Q(red[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(\red[1]_i_1_n_0 ),
        .Q(red[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(\red[2]_i_1_n_0 ),
        .Q(red[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(\red[3]_i_1_n_0 ),
        .Q(red[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(\red[4]_i_1_n_0 ),
        .Q(red[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF4CC)) 
    vblank_i_1
       (.I0(vblank_i_2_n_0),
        .I1(vblank_reg_n_0),
        .I2(vblank__9),
        .I3(\Hcounter[0]_i_1_n_0 ),
        .O(vblank_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    vblank_i_2
       (.I0(Vcounter_reg[9]),
        .I1(Vcounter_reg[6]),
        .I2(vblank_i_4_n_0),
        .I3(Vcounter_reg[8]),
        .I4(Vcounter_reg[7]),
        .I5(Vcounter_reg[10]),
        .O(vblank_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    vblank_i_3
       (.I0(Vcounter_reg[9]),
        .I1(Vcounter_reg[10]),
        .I2(vblank_i_5_n_0),
        .I3(Vcounter_reg[6]),
        .I4(Vcounter_reg[8]),
        .I5(Vcounter_reg[7]),
        .O(vblank__9));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    vblank_i_4
       (.I0(Vcounter_reg[0]),
        .I1(Vcounter_reg[1]),
        .I2(Vcounter_reg[2]),
        .I3(Vcounter_reg[3]),
        .I4(Vcounter_reg[5]),
        .I5(Vcounter_reg[4]),
        .O(vblank_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    vblank_i_5
       (.I0(Vcounter_reg[3]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[1]),
        .I3(Vcounter_reg[2]),
        .I4(Vcounter_reg[5]),
        .I5(Vcounter_reg[4]),
        .O(vblank_i_5_n_0));
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
