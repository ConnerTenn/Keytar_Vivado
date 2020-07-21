// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jul 21 01:03:36 2020
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

  wire \<const0> ;
  wire [4:0]Blue;
  wire Clock;
  wire De;
  wire [2:0]\^Green ;
  wire HSync;
  wire [3:0]\^Red ;
  wire VSync;

  assign Green[5] = \<const0> ;
  assign Green[4] = \<const0> ;
  assign Green[3] = \<const0> ;
  assign Green[2:0] = \^Green [2:0];
  assign PClk = Clock;
  assign Red[4] = \^Green [0];
  assign Red[3:0] = \^Red [3:0];
  GND GND
       (.G(\<const0> ));
  system_HDMIController_0_0_HDMIController inst
       (.Blue(Blue),
        .Clock(Clock),
        .De(De),
        .Green(\^Green [2:1]),
        .HSync(HSync),
        .Red({\^Green [0],\^Red }),
        .VSync(VSync));
endmodule

(* ORIG_REF_NAME = "HDMIController" *) 
module system_HDMIController_0_0_HDMIController
   (Red,
    Green,
    Blue,
    HSync,
    De,
    VSync,
    Clock);
  output [4:0]Red;
  output [1:0]Green;
  output [4:0]Blue;
  output HSync;
  output De;
  output VSync;
  input Clock;

  wire [4:0]Blue;
  wire Clock;
  wire De;
  wire De_i_1_n_0;
  wire De_i_2_n_0;
  wire [1:0]Green;
  wire HSync;
  wire HSync_i_1_n_0;
  wire HSync_i_2_n_0;
  wire HSync_i_3_n_0;
  wire HSync_i_4_n_0;
  wire \Hcounter[0]_i_1_n_0 ;
  wire \Hcounter[0]_i_3_n_0 ;
  wire \Hcounter[0]_i_4_n_0 ;
  wire \Hcounter[0]_i_5_n_0 ;
  wire [11:0]Hcounter_reg;
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
  wire [4:0]Red;
  wire VSync;
  wire VSync_i_1_n_0;
  wire VSync_i_2_n_0;
  wire VSync_i_3_n_0;
  wire VSync_i_4_n_0;
  wire VSync_i_5_n_0;
  wire VSync_i_6_n_0;
  wire Vcounter;
  wire \Vcounter[10]_i_3_n_0 ;
  wire \Vcounter[10]_i_4_n_0 ;
  wire \Vcounter[6]_i_2_n_0 ;
  wire [10:0]Vcounter_reg;
  wire [4:0]blue;
  wire \blue[0]_i_1_n_0 ;
  wire \blue[1]_i_1_n_0 ;
  wire \blue[2]_i_1_n_0 ;
  wire \blue[3]_i_1_n_0 ;
  wire \blue[4]_i_1_n_0 ;
  wire \blue[4]_i_2_n_0 ;
  wire [2:1]green;
  wire \green[2]_i_2_n_0 ;
  wire \green[2]_i_3_n_0 ;
  wire \green[2]_i_4_n_0 ;
  wire \green_reg[2]_i_1_n_2 ;
  wire \green_reg[2]_i_1_n_3 ;
  wire \green_reg[2]_i_1_n_5 ;
  wire \green_reg[2]_i_1_n_6 ;
  wire hblank_i_1_n_0;
  wire hblank_reg_n_0;
  wire [4:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire [4:0]red;
  wire \red[3]_i_2_n_0 ;
  wire \red[3]_i_3_n_0 ;
  wire \red_reg[3]_i_1_n_0 ;
  wire \red_reg[3]_i_1_n_1 ;
  wire \red_reg[3]_i_1_n_2 ;
  wire \red_reg[3]_i_1_n_3 ;
  wire vblank_i_1_n_0;
  wire vblank_i_2_n_0;
  wire vblank_i_3_n_0;
  wire vblank_reg_n_0;
  wire [3:3]\NLW_Hcounter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_green_reg[2]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_green_reg[2]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[0]_INST_0 
       (.I0(blue[0]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[1]_INST_0 
       (.I0(blue[1]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[2]_INST_0 
       (.I0(blue[2]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[3]_INST_0 
       (.I0(blue[3]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Blue[4]_INST_0 
       (.I0(blue[4]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Blue[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEF04)) 
    De_i_1
       (.I0(De_i_2_n_0),
        .I1(Hcounter_reg[7]),
        .I2(Hcounter_reg[11]),
        .I3(De),
        .O(De_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    De_i_2
       (.I0(HSync_i_4_n_0),
        .I1(Hcounter_reg[3]),
        .I2(Hcounter_reg[5]),
        .I3(Hcounter_reg[4]),
        .I4(Hcounter_reg[2]),
        .O(De_i_2_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    De_reg
       (.C(Clock),
        .CE(1'b1),
        .D(De_i_1_n_0),
        .Q(De),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[0]_INST_0 
       (.I0(red[4]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Red[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[1]_INST_0 
       (.I0(green[1]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Green[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Green[2]_INST_0 
       (.I0(green[2]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Green[1]));
  LUT6 #(
    .INIT(64'hFBFFFFFF0A0A0A0A)) 
    HSync_i_1
       (.I0(HSync_i_2_n_0),
        .I1(HSync_i_3_n_0),
        .I2(HSync_i_4_n_0),
        .I3(Hcounter_reg[3]),
        .I4(Hcounter_reg[5]),
        .I5(HSync),
        .O(HSync_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    HSync_i_2
       (.I0(Hcounter_reg[7]),
        .I1(Hcounter_reg[11]),
        .I2(Hcounter_reg[3]),
        .I3(Hcounter_reg[5]),
        .I4(Hcounter_reg[4]),
        .I5(Hcounter_reg[2]),
        .O(HSync_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    HSync_i_3
       (.I0(Hcounter_reg[4]),
        .I1(Hcounter_reg[2]),
        .I2(Hcounter_reg[11]),
        .I3(Hcounter_reg[7]),
        .O(HSync_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    HSync_i_4
       (.I0(Hcounter_reg[0]),
        .I1(Hcounter_reg[6]),
        .I2(Hcounter_reg[1]),
        .I3(Hcounter_reg[10]),
        .I4(Hcounter_reg[8]),
        .I5(Hcounter_reg[9]),
        .O(HSync_i_4_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    HSync_reg
       (.C(Clock),
        .CE(1'b1),
        .D(HSync_i_1_n_0),
        .Q(HSync),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \Hcounter[0]_i_1 
       (.I0(\Hcounter[0]_i_3_n_0 ),
        .I1(Hcounter_reg[11]),
        .O(\Hcounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \Hcounter[0]_i_3 
       (.I0(Hcounter_reg[7]),
        .I1(\Hcounter[0]_i_5_n_0 ),
        .I2(Hcounter_reg[5]),
        .I3(Hcounter_reg[10]),
        .I4(Hcounter_reg[8]),
        .I5(Hcounter_reg[9]),
        .O(\Hcounter[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Hcounter[0]_i_4 
       (.I0(Hcounter_reg[0]),
        .O(\Hcounter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8000)) 
    \Hcounter[0]_i_5 
       (.I0(Hcounter_reg[4]),
        .I1(Hcounter_reg[0]),
        .I2(Hcounter_reg[1]),
        .I3(Hcounter_reg[2]),
        .I4(Hcounter_reg[3]),
        .I5(Hcounter_reg[6]),
        .O(\Hcounter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[0]_i_2_n_7 ),
        .Q(Hcounter_reg[0]),
        .R(\Hcounter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Hcounter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Hcounter_reg[0]_i_2_n_0 ,\Hcounter_reg[0]_i_2_n_1 ,\Hcounter_reg[0]_i_2_n_2 ,\Hcounter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Hcounter_reg[0]_i_2_n_4 ,\Hcounter_reg[0]_i_2_n_5 ,\Hcounter_reg[0]_i_2_n_6 ,\Hcounter_reg[0]_i_2_n_7 }),
        .S({Hcounter_reg[3:1],\Hcounter[0]_i_4_n_0 }));
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
        .Q(Hcounter_reg[1]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[0]_i_2_n_5 ),
        .Q(Hcounter_reg[2]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[0]_i_2_n_4 ),
        .Q(Hcounter_reg[3]),
        .R(\Hcounter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[4]_i_1_n_7 ),
        .Q(Hcounter_reg[4]),
        .R(\Hcounter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Hcounter_reg[4]_i_1 
       (.CI(\Hcounter_reg[0]_i_2_n_0 ),
        .CO({\Hcounter_reg[4]_i_1_n_0 ,\Hcounter_reg[4]_i_1_n_1 ,\Hcounter_reg[4]_i_1_n_2 ,\Hcounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Hcounter_reg[4]_i_1_n_4 ,\Hcounter_reg[4]_i_1_n_5 ,\Hcounter_reg[4]_i_1_n_6 ,\Hcounter_reg[4]_i_1_n_7 }),
        .S(Hcounter_reg[7:4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Hcounter_reg[5] 
       (.C(Clock),
        .CE(1'b1),
        .D(\Hcounter_reg[4]_i_1_n_6 ),
        .Q(Hcounter_reg[5]),
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Red[0]_INST_0 
       (.I0(red[0]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Red[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Red[1]_INST_0 
       (.I0(red[1]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Red[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Red[2]_INST_0 
       (.I0(red[2]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Red[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Red[3]_INST_0 
       (.I0(red[3]),
        .I1(hblank_reg_n_0),
        .I2(vblank_reg_n_0),
        .O(Red[3]));
  LUT6 #(
    .INIT(64'hFFF8FFFF88888888)) 
    VSync_i_1
       (.I0(VSync_i_2_n_0),
        .I1(VSync_i_3_n_0),
        .I2(VSync_i_4_n_0),
        .I3(VSync_i_5_n_0),
        .I4(VSync_i_6_n_0),
        .I5(VSync),
        .O(VSync_i_1_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    VSync_i_2
       (.I0(Hcounter_reg[5]),
        .I1(Hcounter_reg[4]),
        .I2(Hcounter_reg[2]),
        .I3(Hcounter_reg[3]),
        .I4(Hcounter_reg[10]),
        .I5(Hcounter_reg[6]),
        .O(VSync_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    VSync_i_3
       (.I0(Hcounter_reg[8]),
        .I1(Hcounter_reg[9]),
        .I2(Hcounter_reg[0]),
        .I3(Hcounter_reg[1]),
        .I4(Hcounter_reg[11]),
        .I5(Hcounter_reg[7]),
        .O(VSync_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    VSync_i_4
       (.I0(Vcounter_reg[0]),
        .I1(Vcounter_reg[1]),
        .O(VSync_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    VSync_i_5
       (.I0(Vcounter_reg[8]),
        .I1(Vcounter_reg[7]),
        .I2(Vcounter_reg[9]),
        .O(VSync_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    VSync_i_6
       (.I0(Vcounter_reg[4]),
        .I1(Vcounter_reg[5]),
        .I2(Vcounter_reg[2]),
        .I3(Vcounter_reg[3]),
        .I4(Vcounter_reg[10]),
        .I5(Vcounter_reg[6]),
        .O(VSync_i_6_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    VSync_reg
       (.C(Clock),
        .CE(1'b1),
        .D(VSync_i_1_n_0),
        .Q(VSync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Vcounter[0]_i_1 
       (.I0(Vcounter_reg[0]),
        .O(p_0_in__0[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Vcounter[10]_i_1 
       (.I0(\Hcounter[0]_i_3_n_0 ),
        .I1(Vcounter_reg[10]),
        .I2(Hcounter_reg[11]),
        .I3(\Vcounter[10]_i_3_n_0 ),
        .O(Vcounter));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Vcounter[10]_i_2 
       (.I0(\Vcounter[10]_i_4_n_0 ),
        .I1(Vcounter_reg[9]),
        .I2(Vcounter_reg[8]),
        .I3(Vcounter_reg[7]),
        .I4(Vcounter_reg[10]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00A800)) 
    \Vcounter[10]_i_3 
       (.I0(Vcounter_reg[6]),
        .I1(Vcounter_reg[2]),
        .I2(Vcounter_reg[4]),
        .I3(Vcounter_reg[5]),
        .I4(Vcounter_reg[3]),
        .I5(VSync_i_5_n_0),
        .O(\Vcounter[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Vcounter[10]_i_4 
       (.I0(\Vcounter[6]_i_2_n_0 ),
        .I1(Vcounter_reg[2]),
        .I2(Vcounter_reg[0]),
        .I3(Vcounter_reg[1]),
        .I4(Vcounter_reg[4]),
        .I5(Vcounter_reg[6]),
        .O(\Vcounter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Vcounter[1]_i_1 
       (.I0(Vcounter_reg[0]),
        .I1(Vcounter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Vcounter[2]_i_1 
       (.I0(Vcounter_reg[1]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Vcounter[3]_i_1 
       (.I0(Vcounter_reg[2]),
        .I1(Vcounter_reg[0]),
        .I2(Vcounter_reg[1]),
        .I3(Vcounter_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Vcounter[4]_i_1 
       (.I0(Vcounter_reg[3]),
        .I1(Vcounter_reg[1]),
        .I2(Vcounter_reg[0]),
        .I3(Vcounter_reg[2]),
        .I4(Vcounter_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Vcounter[5]_i_1 
       (.I0(Vcounter_reg[3]),
        .I1(Vcounter_reg[2]),
        .I2(Vcounter_reg[0]),
        .I3(Vcounter_reg[1]),
        .I4(Vcounter_reg[4]),
        .I5(Vcounter_reg[5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Vcounter[6]_i_1 
       (.I0(\Vcounter[6]_i_2_n_0 ),
        .I1(Vcounter_reg[2]),
        .I2(Vcounter_reg[0]),
        .I3(Vcounter_reg[1]),
        .I4(Vcounter_reg[4]),
        .I5(Vcounter_reg[6]),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \Vcounter[6]_i_2 
       (.I0(Vcounter_reg[3]),
        .I1(Vcounter_reg[5]),
        .O(\Vcounter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Vcounter[7]_i_1 
       (.I0(\Vcounter[10]_i_4_n_0 ),
        .I1(Vcounter_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Vcounter[8]_i_1 
       (.I0(Vcounter_reg[7]),
        .I1(\Vcounter[10]_i_4_n_0 ),
        .I2(Vcounter_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Vcounter[9]_i_1 
       (.I0(\Vcounter[10]_i_4_n_0 ),
        .I1(Vcounter_reg[7]),
        .I2(Vcounter_reg[8]),
        .I3(Vcounter_reg[9]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Vcounter_reg[0] 
       (.C(Clock),
        .CE(\Hcounter[0]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(Vcounter_reg[0]),
        .R(Vcounter));
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
  LUT6 #(
    .INIT(64'hF0C0F0800F3F0F7F)) 
    \blue[0]_i_1 
       (.I0(Vcounter_reg[2]),
        .I1(Vcounter_reg[3]),
        .I2(Vcounter_reg[5]),
        .I3(Vcounter_reg[4]),
        .I4(VSync_i_4_n_0),
        .I5(Vcounter_reg[6]),
        .O(\blue[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \blue[1]_i_1 
       (.I0(\blue[4]_i_2_n_0 ),
        .I1(Vcounter_reg[7]),
        .O(\blue[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
       (.I0(Vcounter_reg[7]),
        .I1(Vcounter_reg[8]),
        .I2(\blue[4]_i_2_n_0 ),
        .I3(Vcounter_reg[9]),
        .O(\blue[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \blue[4]_i_1 
       (.I0(Vcounter_reg[8]),
        .I1(Vcounter_reg[7]),
        .I2(Vcounter_reg[9]),
        .I3(\blue[4]_i_2_n_0 ),
        .I4(Vcounter_reg[10]),
        .O(\blue[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0C0F080)) 
    \blue[4]_i_2 
       (.I0(Vcounter_reg[2]),
        .I1(Vcounter_reg[3]),
        .I2(Vcounter_reg[5]),
        .I3(Vcounter_reg[4]),
        .I4(VSync_i_4_n_0),
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
  LUT1 #(
    .INIT(2'h1)) 
    \green[2]_i_2 
       (.I0(Hcounter_reg[11]),
        .O(\green[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \green[2]_i_3 
       (.I0(Hcounter_reg[10]),
        .O(\green[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \green[2]_i_4 
       (.I0(Hcounter_reg[9]),
        .O(\green[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \green_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(\green_reg[2]_i_1_n_6 ),
        .Q(green[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \green_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(\green_reg[2]_i_1_n_5 ),
        .Q(green[2]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \green_reg[2]_i_1 
       (.CI(\red_reg[3]_i_1_n_0 ),
        .CO({\NLW_green_reg[2]_i_1_CO_UNCONNECTED [3:2],\green_reg[2]_i_1_n_2 ,\green_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Hcounter_reg[10:9]}),
        .O({\NLW_green_reg[2]_i_1_O_UNCONNECTED [3],\green_reg[2]_i_1_n_5 ,\green_reg[2]_i_1_n_6 ,p_0_in[4]}),
        .S({1'b0,\green[2]_i_2_n_0 ,\green[2]_i_3_n_0 ,\green[2]_i_4_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF090)) 
    hblank_i_1
       (.I0(Hcounter_reg[11]),
        .I1(Hcounter_reg[7]),
        .I2(hblank_reg_n_0),
        .I3(De_i_2_n_0),
        .O(hblank_i_1_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    hblank_reg
       (.C(Clock),
        .CE(1'b1),
        .D(hblank_i_1_n_0),
        .Q(hblank_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \red[3]_i_2 
       (.I0(Hcounter_reg[8]),
        .O(\red[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \red[3]_i_3 
       (.I0(Hcounter_reg[6]),
        .O(\red[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(red[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(red[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(red[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(red[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \red_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\red_reg[3]_i_1_n_0 ,\red_reg[3]_i_1_n_1 ,\red_reg[3]_i_1_n_2 ,\red_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({Hcounter_reg[8],1'b0,Hcounter_reg[6],1'b0}),
        .O(p_0_in[3:0]),
        .S({\red[3]_i_2_n_0 ,Hcounter_reg[7],\red[3]_i_3_n_0 ,Hcounter_reg[5]}));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \red_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(red[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF8F8888)) 
    vblank_i_1
       (.I0(vblank_i_2_n_0),
        .I1(VSync_i_3_n_0),
        .I2(vblank_i_3_n_0),
        .I3(VSync_i_5_n_0),
        .I4(vblank_reg_n_0),
        .O(vblank_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    vblank_i_2
       (.I0(Hcounter_reg[5]),
        .I1(Hcounter_reg[4]),
        .I2(Hcounter_reg[2]),
        .I3(Hcounter_reg[3]),
        .I4(Hcounter_reg[10]),
        .I5(Hcounter_reg[6]),
        .O(vblank_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    vblank_i_3
       (.I0(Vcounter_reg[2]),
        .I1(Vcounter_reg[4]),
        .I2(VSync_i_4_n_0),
        .I3(\Vcounter[6]_i_2_n_0 ),
        .I4(Vcounter_reg[6]),
        .I5(Vcounter_reg[10]),
        .O(vblank_i_3_n_0));
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
