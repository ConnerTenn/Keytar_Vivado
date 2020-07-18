// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jul 17 20:35:54 2020
// Host        : ConnerServer running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_BuzzerTest_0_0/system_BuzzerTest_0_0_sim_netlist.v
// Design      : system_BuzzerTest_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_BuzzerTest_0_0,BuzzerTest,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "BuzzerTest,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_BuzzerTest_0_0
   (Clock,
    Buzzer,
    BusClock,
    BusPAddr,
    BusPWriteData,
    BusPReadData,
    BusPWrite,
    BusPReady,
    BusPEnable,
    BusPSel,
    BusPError);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input Clock;
  output Buzzer;
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
  wire BusPReady;
  wire BusPSel;
  wire [31:0]BusPWriteData;
  wire Buzzer;
  wire Clock;

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
  assign BusPReadData[5] = \<const0> ;
  assign BusPReadData[4] = \<const0> ;
  assign BusPReadData[3] = \<const0> ;
  assign BusPReadData[2] = \<const0> ;
  assign BusPReadData[1] = \<const0> ;
  assign BusPReadData[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_BuzzerTest_0_0_BuzzerTest inst
       (.BusClock(BusClock),
        .BusPAddr(BusPAddr),
        .BusPEnable(BusPEnable),
        .BusPReady(BusPReady),
        .BusPSel(BusPSel),
        .BusPWriteData(BusPWriteData[15:0]),
        .Buzzer(Buzzer),
        .Clock(Clock));
endmodule

(* ORIG_REF_NAME = "BuzzerTest" *) 
module system_BuzzerTest_0_0_BuzzerTest
   (BusPReady,
    Buzzer,
    BusPWriteData,
    BusClock,
    BusPAddr,
    BusPEnable,
    BusPSel,
    Clock);
  output BusPReady;
  output Buzzer;
  input [15:0]BusPWriteData;
  input BusClock;
  input [31:0]BusPAddr;
  input BusPEnable;
  input BusPSel;
  input Clock;

  wire BusClock;
  wire [31:0]BusPAddr;
  wire BusPEnable;
  wire BusPReady;
  wire BusPReady_i_1_n_0;
  wire BusPSel;
  wire [15:0]BusPWriteData;
  wire Buzzer;
  wire Clock;
  wire [15:0]in;
  wire \increment[15]_i_1_n_0 ;
  wire \increment[15]_i_2_n_0 ;
  wire \increment[15]_i_3_n_0 ;
  wire \increment[15]_i_4_n_0 ;
  wire \increment[15]_i_5_n_0 ;
  wire \increment[15]_i_6_n_0 ;
  wire \increment[15]_i_7_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    BusPReady_i_1
       (.I0(BusPEnable),
        .I1(BusPReady),
        .I2(BusPSel),
        .O(BusPReady_i_1_n_0));
  FDRE BusPReady_reg
       (.C(BusClock),
        .CE(1'b1),
        .D(BusPReady_i_1_n_0),
        .Q(BusPReady),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \increment[15]_i_1 
       (.I0(\increment[15]_i_2_n_0 ),
        .I1(\increment[15]_i_3_n_0 ),
        .I2(\increment[15]_i_4_n_0 ),
        .I3(\increment[15]_i_5_n_0 ),
        .I4(\increment[15]_i_6_n_0 ),
        .I5(\increment[15]_i_7_n_0 ),
        .O(\increment[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \increment[15]_i_2 
       (.I0(BusPAddr[22]),
        .I1(BusPAddr[23]),
        .I2(BusPAddr[20]),
        .I3(BusPAddr[21]),
        .I4(BusPAddr[25]),
        .I5(BusPAddr[24]),
        .O(\increment[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \increment[15]_i_3 
       (.I0(BusPAddr[28]),
        .I1(BusPAddr[29]),
        .I2(BusPAddr[26]),
        .I3(BusPAddr[27]),
        .I4(BusPAddr[31]),
        .I5(BusPAddr[30]),
        .O(\increment[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \increment[15]_i_4 
       (.I0(BusPAddr[1]),
        .I1(BusPAddr[0]),
        .I2(BusPSel),
        .I3(BusPEnable),
        .I4(BusPReady),
        .O(\increment[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \increment[15]_i_5 
       (.I0(BusPAddr[4]),
        .I1(BusPAddr[5]),
        .I2(BusPAddr[2]),
        .I3(BusPAddr[3]),
        .I4(BusPAddr[7]),
        .I5(BusPAddr[6]),
        .O(\increment[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \increment[15]_i_6 
       (.I0(BusPAddr[16]),
        .I1(BusPAddr[17]),
        .I2(BusPAddr[14]),
        .I3(BusPAddr[15]),
        .I4(BusPAddr[19]),
        .I5(BusPAddr[18]),
        .O(\increment[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \increment[15]_i_7 
       (.I0(BusPAddr[10]),
        .I1(BusPAddr[11]),
        .I2(BusPAddr[8]),
        .I3(BusPAddr[9]),
        .I4(BusPAddr[13]),
        .I5(BusPAddr[12]),
        .O(\increment[15]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[0] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[0]),
        .Q(in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[10] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[10]),
        .Q(in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[11] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[11]),
        .Q(in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[12] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[12]),
        .Q(in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[13] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[13]),
        .Q(in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[14] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[14]),
        .Q(in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[15] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[15]),
        .Q(in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \increment_reg[1] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[1]),
        .Q(in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \increment_reg[2] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[2]),
        .Q(in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[3] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[3]),
        .Q(in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \increment_reg[4] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[4]),
        .Q(in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[5] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[5]),
        .Q(in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \increment_reg[6] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[6]),
        .Q(in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[7] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[7]),
        .Q(in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[8] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[8]),
        .Q(in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \increment_reg[9] 
       (.C(BusClock),
        .CE(\increment[15]_i_1_n_0 ),
        .D(BusPWriteData[9]),
        .Q(in[9]),
        .R(1'b0));
  system_BuzzerTest_0_0_WaveGen16 wavegen
       (.Buzzer(Buzzer),
        .Clock(Clock),
        .Q(in));
endmodule

(* ORIG_REF_NAME = "WaveGen16" *) 
module system_BuzzerTest_0_0_WaveGen16
   (Buzzer,
    Clock,
    Q);
  output Buzzer;
  input Clock;
  input [15:0]Q;

  wire Buzzer;
  wire Buzzer_INST_0_i_1_n_0;
  wire Buzzer_INST_0_i_2_n_0;
  wire Clock;
  wire [15:0]Q;
  wire clear;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_i_1_n_0;
  wire counter0_carry__2_i_2_n_0;
  wire counter0_carry__2_i_3_n_0;
  wire counter0_carry__2_i_4_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [15:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [15:0]p_0_in;
  wire [3:3]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    Buzzer_INST_0
       (.I0(Buzzer_INST_0_i_1_n_0),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .I4(Buzzer_INST_0_i_2_n_0),
        .I5(counter_reg[15]),
        .O(Buzzer));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Buzzer_INST_0_i_1
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(counter_reg[8]),
        .I5(counter_reg[7]),
        .O(Buzzer_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Buzzer_INST_0_i_2
       (.I0(counter_reg[11]),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[10]),
        .I4(counter_reg[14]),
        .I5(counter_reg[13]),
        .O(Buzzer_INST_0_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(counter_reg[3:0]),
        .O(p_0_in[3:0]),
        .S({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_reg[7:4]),
        .O(p_0_in[7:4]),
        .S({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__0_i_1
       (.I0(counter_reg[7]),
        .I1(Q[7]),
        .O(counter0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__0_i_2
       (.I0(counter_reg[6]),
        .I1(Q[6]),
        .O(counter0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__0_i_3
       (.I0(counter_reg[5]),
        .I1(Q[5]),
        .O(counter0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__0_i_4
       (.I0(counter_reg[4]),
        .I1(Q[4]),
        .O(counter0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(counter_reg[11:8]),
        .O(p_0_in[11:8]),
        .S({counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__1_i_1
       (.I0(counter_reg[11]),
        .I1(Q[11]),
        .O(counter0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__1_i_2
       (.I0(counter_reg[10]),
        .I1(Q[10]),
        .O(counter0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__1_i_3
       (.I0(counter_reg[9]),
        .I1(Q[9]),
        .O(counter0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__1_i_4
       (.I0(counter_reg[8]),
        .I1(Q[8]),
        .O(counter0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter_reg[14:12]}),
        .O(p_0_in[15:12]),
        .S({counter0_carry__2_i_1_n_0,counter0_carry__2_i_2_n_0,counter0_carry__2_i_3_n_0,counter0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__2_i_1
       (.I0(counter_reg[15]),
        .I1(Q[15]),
        .O(counter0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__2_i_2
       (.I0(counter_reg[14]),
        .I1(Q[14]),
        .O(counter0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__2_i_3
       (.I0(counter_reg[13]),
        .I1(Q[13]),
        .O(counter0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry__2_i_4
       (.I0(counter_reg[12]),
        .I1(Q[12]),
        .O(counter0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry_i_1
       (.I0(counter_reg[3]),
        .I1(Q[3]),
        .O(counter0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry_i_2
       (.I0(counter_reg[2]),
        .I1(Q[2]),
        .O(counter0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry_i_3
       (.I0(counter_reg[1]),
        .I1(Q[1]),
        .O(counter0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry_i_4
       (.I0(counter_reg[0]),
        .I1(Q[0]),
        .O(counter0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(\counter[0]_i_4_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[0]_i_3 
       (.I0(p_0_in[12]),
        .I1(p_0_in[13]),
        .I2(p_0_in[10]),
        .I3(p_0_in[11]),
        .I4(p_0_in[15]),
        .I5(p_0_in[14]),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[0]_i_4 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(p_0_in[9]),
        .I5(p_0_in[8]),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_5 
       (.I0(Q[3]),
        .I1(counter_reg[3]),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_6 
       (.I0(Q[2]),
        .I1(counter_reg[2]),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_7 
       (.I0(Q[1]),
        .I1(counter_reg[1]),
        .O(\counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_8 
       (.I0(Q[0]),
        .I1(counter_reg[0]),
        .O(\counter[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(Q[15]),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[12]_i_3 
       (.I0(Q[14]),
        .I1(counter_reg[14]),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[12]_i_4 
       (.I0(Q[13]),
        .I1(counter_reg[13]),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[12]_i_5 
       (.I0(Q[12]),
        .I1(counter_reg[12]),
        .O(\counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[4]_i_2 
       (.I0(Q[7]),
        .I1(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[4]_i_3 
       (.I0(Q[6]),
        .I1(counter_reg[6]),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[4]_i_4 
       (.I0(Q[5]),
        .I1(counter_reg[5]),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[4]_i_5 
       (.I0(Q[4]),
        .I1(counter_reg[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[8]_i_2 
       (.I0(Q[11]),
        .I1(counter_reg[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[8]_i_3 
       (.I0(Q[10]),
        .I1(counter_reg[10]),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[8]_i_4 
       (.I0(Q[9]),
        .I1(counter_reg[9]),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[8]_i_5 
       (.I0(Q[8]),
        .I1(counter_reg[8]),
        .O(\counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 ,\counter[0]_i_7_n_0 ,\counter[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3],\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(Clock),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(clear));
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
