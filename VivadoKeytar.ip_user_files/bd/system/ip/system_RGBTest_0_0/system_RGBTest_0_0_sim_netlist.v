// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jul 17 18:38:14 2020
// Host        : ConnerServer running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_RGBTest_0_0/system_RGBTest_0_0_sim_netlist.v
// Design      : system_RGBTest_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_RGBTest_0_0,RGBTest,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "RGBTest,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_RGBTest_0_0
   (Clock,
    RGB);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input Clock;
  output [2:0]RGB;

  wire Clock;
  wire [2:0]RGB;

  system_RGBTest_0_0_RGBTest inst
       (.Clock(Clock),
        .RGB(RGB));
endmodule

(* ORIG_REF_NAME = "RGBTest" *) 
module system_RGBTest_0_0_RGBTest
   (RGB,
    Clock);
  output [2:0]RGB;
  input Clock;

  wire Clock;
  wire \FSM_onehot_RGB[0]_i_1_n_0 ;
  wire \FSM_onehot_RGB[1]_i_1_n_0 ;
  wire \FSM_onehot_RGB[2]_i_1_n_0 ;
  wire \FSM_onehot_RGB[2]_i_2_n_0 ;
  wire \FSM_onehot_RGB[2]_i_3_n_0 ;
  wire \FSM_onehot_RGB[2]_i_4_n_0 ;
  wire \FSM_onehot_RGB[2]_i_5_n_0 ;
  wire \FSM_onehot_RGB[2]_i_6_n_0 ;
  wire \FSM_onehot_RGB[2]_i_7_n_0 ;
  wire \FSM_onehot_RGB[2]_i_8_n_0 ;
  wire \FSM_onehot_RGB[2]_i_9_n_0 ;
  wire [2:0]RGB;
  wire [2:0]RGB__0;
  wire [32:0]clockdiv;
  wire clockdiv0_carry__0_n_0;
  wire clockdiv0_carry__0_n_1;
  wire clockdiv0_carry__0_n_2;
  wire clockdiv0_carry__0_n_3;
  wire clockdiv0_carry__1_n_0;
  wire clockdiv0_carry__1_n_1;
  wire clockdiv0_carry__1_n_2;
  wire clockdiv0_carry__1_n_3;
  wire clockdiv0_carry__2_n_0;
  wire clockdiv0_carry__2_n_1;
  wire clockdiv0_carry__2_n_2;
  wire clockdiv0_carry__2_n_3;
  wire clockdiv0_carry__3_n_0;
  wire clockdiv0_carry__3_n_1;
  wire clockdiv0_carry__3_n_2;
  wire clockdiv0_carry__3_n_3;
  wire clockdiv0_carry__4_n_0;
  wire clockdiv0_carry__4_n_1;
  wire clockdiv0_carry__4_n_2;
  wire clockdiv0_carry__4_n_3;
  wire clockdiv0_carry__5_n_0;
  wire clockdiv0_carry__5_n_1;
  wire clockdiv0_carry__5_n_2;
  wire clockdiv0_carry__5_n_3;
  wire clockdiv0_carry__6_n_1;
  wire clockdiv0_carry__6_n_2;
  wire clockdiv0_carry__6_n_3;
  wire clockdiv0_carry_n_0;
  wire clockdiv0_carry_n_1;
  wire clockdiv0_carry_n_2;
  wire clockdiv0_carry_n_3;
  wire \clockdiv[32]_i_1_n_0 ;
  wire [0:0]clockdiv_0;
  wire [32:1]data0;
  wire [3:3]NLW_clockdiv0_carry__6_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \FSM_onehot_RGB[0]_i_1 
       (.I0(RGB__0[2]),
        .I1(\FSM_onehot_RGB[2]_i_2_n_0 ),
        .I2(\FSM_onehot_RGB[2]_i_3_n_0 ),
        .I3(\FSM_onehot_RGB[2]_i_4_n_0 ),
        .I4(\FSM_onehot_RGB[2]_i_5_n_0 ),
        .I5(RGB__0[0]),
        .O(\FSM_onehot_RGB[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \FSM_onehot_RGB[1]_i_1 
       (.I0(RGB__0[0]),
        .I1(\FSM_onehot_RGB[2]_i_2_n_0 ),
        .I2(\FSM_onehot_RGB[2]_i_3_n_0 ),
        .I3(\FSM_onehot_RGB[2]_i_4_n_0 ),
        .I4(\FSM_onehot_RGB[2]_i_5_n_0 ),
        .I5(RGB__0[1]),
        .O(\FSM_onehot_RGB[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \FSM_onehot_RGB[2]_i_1 
       (.I0(RGB__0[1]),
        .I1(\FSM_onehot_RGB[2]_i_2_n_0 ),
        .I2(\FSM_onehot_RGB[2]_i_3_n_0 ),
        .I3(\FSM_onehot_RGB[2]_i_4_n_0 ),
        .I4(\FSM_onehot_RGB[2]_i_5_n_0 ),
        .I5(RGB__0[2]),
        .O(\FSM_onehot_RGB[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \FSM_onehot_RGB[2]_i_2 
       (.I0(clockdiv[9]),
        .I1(clockdiv[10]),
        .I2(clockdiv[8]),
        .I3(clockdiv[7]),
        .I4(\FSM_onehot_RGB[2]_i_6_n_0 ),
        .O(\FSM_onehot_RGB[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_onehot_RGB[2]_i_3 
       (.I0(\FSM_onehot_RGB[2]_i_7_n_0 ),
        .I1(clockdiv[5]),
        .I2(clockdiv[6]),
        .I3(clockdiv[3]),
        .I4(clockdiv[4]),
        .O(\FSM_onehot_RGB[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \FSM_onehot_RGB[2]_i_4 
       (.I0(clockdiv[25]),
        .I1(clockdiv[26]),
        .I2(clockdiv[23]),
        .I3(clockdiv[24]),
        .I4(\FSM_onehot_RGB[2]_i_8_n_0 ),
        .O(\FSM_onehot_RGB[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \FSM_onehot_RGB[2]_i_5 
       (.I0(clockdiv[17]),
        .I1(clockdiv[18]),
        .I2(clockdiv[15]),
        .I3(clockdiv[16]),
        .I4(\FSM_onehot_RGB[2]_i_9_n_0 ),
        .O(\FSM_onehot_RGB[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_RGB[2]_i_6 
       (.I0(clockdiv[12]),
        .I1(clockdiv[11]),
        .I2(clockdiv[14]),
        .I3(clockdiv[13]),
        .O(\FSM_onehot_RGB[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \FSM_onehot_RGB[2]_i_7 
       (.I0(clockdiv[0]),
        .I1(clockdiv[31]),
        .I2(clockdiv[32]),
        .I3(clockdiv[2]),
        .I4(clockdiv[1]),
        .O(\FSM_onehot_RGB[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_RGB[2]_i_8 
       (.I0(clockdiv[28]),
        .I1(clockdiv[27]),
        .I2(clockdiv[30]),
        .I3(clockdiv[29]),
        .O(\FSM_onehot_RGB[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_onehot_RGB[2]_i_9 
       (.I0(clockdiv[20]),
        .I1(clockdiv[19]),
        .I2(clockdiv[22]),
        .I3(clockdiv[21]),
        .O(\FSM_onehot_RGB[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_RGB_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\FSM_onehot_RGB[0]_i_1_n_0 ),
        .Q(RGB__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RGB_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(\FSM_onehot_RGB[1]_i_1_n_0 ),
        .Q(RGB__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RGB_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(\FSM_onehot_RGB[2]_i_1_n_0 ),
        .Q(RGB__0[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RGB[0]_INST_0 
       (.I0(RGB__0[0]),
        .I1(RGB__0[1]),
        .O(RGB[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RGB[1]_INST_0 
       (.I0(RGB__0[0]),
        .I1(RGB__0[2]),
        .O(RGB[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \RGB[2]_INST_0 
       (.I0(RGB__0[1]),
        .I1(RGB__0[2]),
        .O(RGB[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clockdiv0_carry
       (.CI(1'b0),
        .CO({clockdiv0_carry_n_0,clockdiv0_carry_n_1,clockdiv0_carry_n_2,clockdiv0_carry_n_3}),
        .CYINIT(clockdiv[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(clockdiv[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clockdiv0_carry__0
       (.CI(clockdiv0_carry_n_0),
        .CO({clockdiv0_carry__0_n_0,clockdiv0_carry__0_n_1,clockdiv0_carry__0_n_2,clockdiv0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(clockdiv[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clockdiv0_carry__1
       (.CI(clockdiv0_carry__0_n_0),
        .CO({clockdiv0_carry__1_n_0,clockdiv0_carry__1_n_1,clockdiv0_carry__1_n_2,clockdiv0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(clockdiv[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clockdiv0_carry__2
       (.CI(clockdiv0_carry__1_n_0),
        .CO({clockdiv0_carry__2_n_0,clockdiv0_carry__2_n_1,clockdiv0_carry__2_n_2,clockdiv0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(clockdiv[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clockdiv0_carry__3
       (.CI(clockdiv0_carry__2_n_0),
        .CO({clockdiv0_carry__3_n_0,clockdiv0_carry__3_n_1,clockdiv0_carry__3_n_2,clockdiv0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(clockdiv[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clockdiv0_carry__4
       (.CI(clockdiv0_carry__3_n_0),
        .CO({clockdiv0_carry__4_n_0,clockdiv0_carry__4_n_1,clockdiv0_carry__4_n_2,clockdiv0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(clockdiv[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clockdiv0_carry__5
       (.CI(clockdiv0_carry__4_n_0),
        .CO({clockdiv0_carry__5_n_0,clockdiv0_carry__5_n_1,clockdiv0_carry__5_n_2,clockdiv0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(clockdiv[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clockdiv0_carry__6
       (.CI(clockdiv0_carry__5_n_0),
        .CO({NLW_clockdiv0_carry__6_CO_UNCONNECTED[3],clockdiv0_carry__6_n_1,clockdiv0_carry__6_n_2,clockdiv0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[32:29]),
        .S(clockdiv[32:29]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clockdiv[0]_i_1 
       (.I0(clockdiv[0]),
        .O(clockdiv_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \clockdiv[32]_i_1 
       (.I0(\FSM_onehot_RGB[2]_i_2_n_0 ),
        .I1(\FSM_onehot_RGB[2]_i_3_n_0 ),
        .I2(\FSM_onehot_RGB[2]_i_4_n_0 ),
        .I3(\FSM_onehot_RGB[2]_i_5_n_0 ),
        .O(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(clockdiv_0),
        .Q(clockdiv[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[10] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[10]),
        .Q(clockdiv[10]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[11] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[11]),
        .Q(clockdiv[11]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[12] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[12]),
        .Q(clockdiv[12]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[13] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[13]),
        .Q(clockdiv[13]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[14] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[14]),
        .Q(clockdiv[14]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[15] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[15]),
        .Q(clockdiv[15]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[16] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[16]),
        .Q(clockdiv[16]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[17] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[17]),
        .Q(clockdiv[17]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[18] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[18]),
        .Q(clockdiv[18]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[19] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[19]),
        .Q(clockdiv[19]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[1]),
        .Q(clockdiv[1]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[20] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[20]),
        .Q(clockdiv[20]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[21] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[21]),
        .Q(clockdiv[21]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[22] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[22]),
        .Q(clockdiv[22]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[23] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[23]),
        .Q(clockdiv[23]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[24] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[24]),
        .Q(clockdiv[24]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[25] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[25]),
        .Q(clockdiv[25]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[26] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[26]),
        .Q(clockdiv[26]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[27] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[27]),
        .Q(clockdiv[27]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[28] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[28]),
        .Q(clockdiv[28]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[29] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[29]),
        .Q(clockdiv[29]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[2]),
        .Q(clockdiv[2]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[30] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[30]),
        .Q(clockdiv[30]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[31] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[31]),
        .Q(clockdiv[31]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[32] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[32]),
        .Q(clockdiv[32]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[3]),
        .Q(clockdiv[3]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[4]),
        .Q(clockdiv[4]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[5] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[5]),
        .Q(clockdiv[5]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[6] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[6]),
        .Q(clockdiv[6]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[7] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[7]),
        .Q(clockdiv[7]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[8] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[8]),
        .Q(clockdiv[8]),
        .R(\clockdiv[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockdiv_reg[9] 
       (.C(Clock),
        .CE(1'b1),
        .D(data0[9]),
        .Q(clockdiv[9]),
        .R(\clockdiv[32]_i_1_n_0 ));
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
