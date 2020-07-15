// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Jul 15 04:25:30 2020
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
   (Clock,
    Buzzer);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clock, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input Clock;
  output Buzzer;

  wire Buzzer;
  wire [18:15]\banks[3].wavesum ;
  wire [17:17]\channels[2].wavesum ;
  wire [18:17]\channels[3].wavesum ;
  wire [3:0]\NLW_channels[15].wavesum__121_carry__3_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__121_carry__3_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__121_carry__3_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__121_carry__3_i_3_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFFFE)) 
    Buzzer_INST_0
       (.I0(\banks[3].wavesum [15]),
        .I1(\banks[3].wavesum [18]),
        .I2(\banks[3].wavesum [16]),
        .I3(\banks[3].wavesum [17]),
        .O(Buzzer));
  CARRY4 \channels[15].wavesum__121_carry__3_i_2 
       (.CI(1'b0),
        .CO({\NLW_channels[15].wavesum__121_carry__3_i_2_CO_UNCONNECTED [3:2],\channels[3].wavesum [18],\NLW_channels[15].wavesum__121_carry__3_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_channels[15].wavesum__121_carry__3_i_2_O_UNCONNECTED [3:1],\channels[3].wavesum [17]}),
        .S({1'b0,1'b0,1'b1,\channels[2].wavesum }));
  CARRY4 \channels[15].wavesum__121_carry__3_i_3 
       (.CI(1'b0),
        .CO({\NLW_channels[15].wavesum__121_carry__3_i_3_CO_UNCONNECTED [3:1],\channels[2].wavesum }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_channels[15].wavesum__121_carry__3_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  system_Synth_0_0_Synth inst
       (.S(\channels[3].wavesum ),
        .\banks[3].wavesum (\banks[3].wavesum ));
endmodule

(* ORIG_REF_NAME = "Bank" *) 
module system_Synth_0_0_Bank
   (\banks[3].waveform ,
    Buzzer_INST_0_i_17,
    \banks[3].wavesum ,
    S,
    Buzzer_INST_0_i_30,
    Buzzer_INST_0_i_22,
    Buzzer_INST_0_i_13,
    Buzzer_INST_0_i_7,
    Buzzer_INST_0_i_9_0,
    Buzzer_INST_0_i_3_0,
    Buzzer_INST_0_i_1_0,
    Buzzer);
  output [15:0]\banks[3].waveform ;
  output [13:0]Buzzer_INST_0_i_17;
  output [3:0]\banks[3].wavesum ;
  input [1:0]S;
  input [3:0]Buzzer_INST_0_i_30;
  input [3:0]Buzzer_INST_0_i_22;
  input [3:0]Buzzer_INST_0_i_13;
  input [2:0]Buzzer_INST_0_i_7;
  input [3:0]Buzzer_INST_0_i_9_0;
  input [3:0]Buzzer_INST_0_i_3_0;
  input [3:0]Buzzer_INST_0_i_1_0;
  input [2:0]Buzzer;

  wire [2:0]Buzzer;
  wire [3:0]Buzzer_INST_0_i_13;
  wire Buzzer_INST_0_i_14_n_0;
  wire Buzzer_INST_0_i_14_n_1;
  wire Buzzer_INST_0_i_14_n_2;
  wire Buzzer_INST_0_i_14_n_3;
  wire [13:0]Buzzer_INST_0_i_17;
  wire Buzzer_INST_0_i_18_n_0;
  wire Buzzer_INST_0_i_18_n_1;
  wire Buzzer_INST_0_i_18_n_2;
  wire Buzzer_INST_0_i_18_n_3;
  wire [3:0]Buzzer_INST_0_i_1_0;
  wire Buzzer_INST_0_i_1_n_0;
  wire Buzzer_INST_0_i_1_n_1;
  wire Buzzer_INST_0_i_1_n_2;
  wire Buzzer_INST_0_i_1_n_3;
  wire [3:0]Buzzer_INST_0_i_22;
  wire Buzzer_INST_0_i_23_n_0;
  wire Buzzer_INST_0_i_23_n_1;
  wire Buzzer_INST_0_i_23_n_2;
  wire Buzzer_INST_0_i_23_n_3;
  wire [3:0]Buzzer_INST_0_i_30;
  wire Buzzer_INST_0_i_32_n_0;
  wire Buzzer_INST_0_i_32_n_1;
  wire Buzzer_INST_0_i_32_n_2;
  wire Buzzer_INST_0_i_32_n_3;
  wire [3:0]Buzzer_INST_0_i_3_0;
  wire Buzzer_INST_0_i_3_n_0;
  wire Buzzer_INST_0_i_3_n_1;
  wire Buzzer_INST_0_i_3_n_2;
  wire Buzzer_INST_0_i_3_n_3;
  wire Buzzer_INST_0_i_4_n_0;
  wire Buzzer_INST_0_i_4_n_1;
  wire Buzzer_INST_0_i_4_n_2;
  wire Buzzer_INST_0_i_4_n_3;
  wire [2:0]Buzzer_INST_0_i_7;
  wire [3:0]Buzzer_INST_0_i_9_0;
  wire Buzzer_INST_0_i_9_n_0;
  wire Buzzer_INST_0_i_9_n_1;
  wire Buzzer_INST_0_i_9_n_2;
  wire Buzzer_INST_0_i_9_n_3;
  wire [1:0]S;
  wire [17:16]\banks[2].wavesum ;
  wire [15:0]\banks[3].waveform ;
  wire [3:0]\banks[3].wavesum ;
  wire \channels[15].wavesum__121_carry__3_i_1_n_3 ;
  wire \channels[15].wavesum__121_carry__3_n_0 ;
  wire \channels[15].wavesum__121_carry__3_n_1 ;
  wire \channels[15].wavesum__121_carry__3_n_2 ;
  wire \channels[15].wavesum__121_carry__3_n_3 ;
  wire \channels[15].wavesum__121_carry__3_n_4 ;
  wire \channels[15].wavesum__121_carry__3_n_5 ;
  wire \channels[15].wavesum__121_carry__3_n_6 ;
  wire \channels[15].wavesum__121_carry__3_n_7 ;
  wire \channels[15].wavesum__180_carry__0_n_0 ;
  wire \channels[15].wavesum__180_carry__0_n_1 ;
  wire \channels[15].wavesum__180_carry__0_n_2 ;
  wire \channels[15].wavesum__180_carry__0_n_3 ;
  wire \channels[15].wavesum__180_carry__1_n_0 ;
  wire \channels[15].wavesum__180_carry__1_n_1 ;
  wire \channels[15].wavesum__180_carry__1_n_2 ;
  wire \channels[15].wavesum__180_carry__1_n_3 ;
  wire \channels[15].wavesum__180_carry__2_n_0 ;
  wire \channels[15].wavesum__180_carry__2_n_1 ;
  wire \channels[15].wavesum__180_carry__2_n_2 ;
  wire \channels[15].wavesum__180_carry__2_n_3 ;
  wire \channels[15].wavesum__180_carry__3_n_0 ;
  wire \channels[15].wavesum__180_carry__3_n_1 ;
  wire \channels[15].wavesum__180_carry__3_n_2 ;
  wire \channels[15].wavesum__180_carry__3_n_3 ;
  wire \channels[15].wavesum__180_carry_i_10_n_0 ;
  wire \channels[15].wavesum__180_carry_i_11_n_0 ;
  wire \channels[15].wavesum__180_carry_i_1__0_n_0 ;
  wire \channels[15].wavesum__180_carry_i_1__1_n_0 ;
  wire \channels[15].wavesum__180_carry_i_1__2_n_0 ;
  wire \channels[15].wavesum__180_carry_i_1__3_n_0 ;
  wire \channels[15].wavesum__180_carry_i_1__4_n_0 ;
  wire \channels[15].wavesum__180_carry_i_1_n_0 ;
  wire \channels[15].wavesum__180_carry_i_2__0_n_3 ;
  wire \channels[15].wavesum__180_carry_i_2__1_n_0 ;
  wire \channels[15].wavesum__180_carry_i_2__2_n_0 ;
  wire \channels[15].wavesum__180_carry_i_2__3_n_0 ;
  wire \channels[15].wavesum__180_carry_i_2__4_n_0 ;
  wire \channels[15].wavesum__180_carry_i_2_n_0 ;
  wire \channels[15].wavesum__180_carry_i_3__0_n_0 ;
  wire \channels[15].wavesum__180_carry_i_3__1_n_0 ;
  wire \channels[15].wavesum__180_carry_i_3__2_n_0 ;
  wire \channels[15].wavesum__180_carry_i_3__3_n_0 ;
  wire \channels[15].wavesum__180_carry_i_3_n_0 ;
  wire \channels[15].wavesum__180_carry_i_4__0_n_0 ;
  wire \channels[15].wavesum__180_carry_i_4__1_n_0 ;
  wire \channels[15].wavesum__180_carry_i_4__2_n_0 ;
  wire \channels[15].wavesum__180_carry_i_4__3_n_0 ;
  wire \channels[15].wavesum__180_carry_i_4_n_0 ;
  wire \channels[15].wavesum__180_carry_i_5__0_n_0 ;
  wire \channels[15].wavesum__180_carry_i_5__1_n_0 ;
  wire \channels[15].wavesum__180_carry_i_5__2_n_0 ;
  wire \channels[15].wavesum__180_carry_i_5__3_n_0 ;
  wire \channels[15].wavesum__180_carry_i_5_n_0 ;
  wire \channels[15].wavesum__180_carry_i_6__0_n_0 ;
  wire \channels[15].wavesum__180_carry_i_6__1_n_0 ;
  wire \channels[15].wavesum__180_carry_i_6__2_n_0 ;
  wire \channels[15].wavesum__180_carry_i_6__3_n_0 ;
  wire \channels[15].wavesum__180_carry_i_6_n_0 ;
  wire \channels[15].wavesum__180_carry_i_7__0_n_0 ;
  wire \channels[15].wavesum__180_carry_i_7__1_n_0 ;
  wire \channels[15].wavesum__180_carry_i_7__2_n_0 ;
  wire \channels[15].wavesum__180_carry_i_7__3_n_0 ;
  wire \channels[15].wavesum__180_carry_i_7_n_0 ;
  wire \channels[15].wavesum__180_carry_i_8__0_n_0 ;
  wire \channels[15].wavesum__180_carry_i_8__1_n_0 ;
  wire \channels[15].wavesum__180_carry_i_8__2_n_0 ;
  wire \channels[15].wavesum__180_carry_i_8_n_0 ;
  wire \channels[15].wavesum__180_carry_i_9_n_0 ;
  wire \channels[15].wavesum__180_carry_n_0 ;
  wire \channels[15].wavesum__180_carry_n_1 ;
  wire \channels[15].wavesum__180_carry_n_2 ;
  wire \channels[15].wavesum__180_carry_n_3 ;
  wire \channels[15].wavesum__49_carry__0_n_0 ;
  wire \channels[15].wavesum__49_carry__0_n_1 ;
  wire \channels[15].wavesum__49_carry__0_n_2 ;
  wire \channels[15].wavesum__49_carry__0_n_3 ;
  wire \channels[15].wavesum__49_carry__0_n_4 ;
  wire \channels[15].wavesum__49_carry__0_n_5 ;
  wire \channels[15].wavesum__49_carry__0_n_6 ;
  wire \channels[15].wavesum__49_carry__0_n_7 ;
  wire \channels[15].wavesum__49_carry__1_n_0 ;
  wire \channels[15].wavesum__49_carry__1_n_1 ;
  wire \channels[15].wavesum__49_carry__1_n_2 ;
  wire \channels[15].wavesum__49_carry__1_n_3 ;
  wire \channels[15].wavesum__49_carry__1_n_4 ;
  wire \channels[15].wavesum__49_carry__1_n_5 ;
  wire \channels[15].wavesum__49_carry__1_n_6 ;
  wire \channels[15].wavesum__49_carry__1_n_7 ;
  wire \channels[15].wavesum__49_carry__2_n_0 ;
  wire \channels[15].wavesum__49_carry__2_n_1 ;
  wire \channels[15].wavesum__49_carry__2_n_2 ;
  wire \channels[15].wavesum__49_carry__2_n_3 ;
  wire \channels[15].wavesum__49_carry__2_n_4 ;
  wire \channels[15].wavesum__49_carry__2_n_5 ;
  wire \channels[15].wavesum__49_carry__2_n_6 ;
  wire \channels[15].wavesum__49_carry__2_n_7 ;
  wire \channels[15].wavesum__49_carry__3_n_1 ;
  wire \channels[15].wavesum__49_carry__3_n_3 ;
  wire \channels[15].wavesum__49_carry__3_n_6 ;
  wire \channels[15].wavesum__49_carry__3_n_7 ;
  wire \channels[15].wavesum__49_carry_n_0 ;
  wire \channels[15].wavesum__49_carry_n_1 ;
  wire \channels[15].wavesum__49_carry_n_2 ;
  wire \channels[15].wavesum__49_carry_n_3 ;
  wire \channels[15].wavesum__49_carry_n_4 ;
  wire \channels[15].wavesum__49_carry_n_5 ;
  wire \channels[15].wavesum__49_carry_n_6 ;
  wire \channels[15].wavesum__85_carry__0_n_0 ;
  wire \channels[15].wavesum__85_carry__0_n_1 ;
  wire \channels[15].wavesum__85_carry__0_n_2 ;
  wire \channels[15].wavesum__85_carry__0_n_3 ;
  wire \channels[15].wavesum__85_carry__0_n_4 ;
  wire \channels[15].wavesum__85_carry__0_n_5 ;
  wire \channels[15].wavesum__85_carry__0_n_6 ;
  wire \channels[15].wavesum__85_carry__0_n_7 ;
  wire \channels[15].wavesum__85_carry__1_n_0 ;
  wire \channels[15].wavesum__85_carry__1_n_1 ;
  wire \channels[15].wavesum__85_carry__1_n_2 ;
  wire \channels[15].wavesum__85_carry__1_n_3 ;
  wire \channels[15].wavesum__85_carry__1_n_4 ;
  wire \channels[15].wavesum__85_carry__1_n_5 ;
  wire \channels[15].wavesum__85_carry__1_n_6 ;
  wire \channels[15].wavesum__85_carry__1_n_7 ;
  wire \channels[15].wavesum__85_carry__2_n_0 ;
  wire \channels[15].wavesum__85_carry__2_n_1 ;
  wire \channels[15].wavesum__85_carry__2_n_2 ;
  wire \channels[15].wavesum__85_carry__2_n_3 ;
  wire \channels[15].wavesum__85_carry__2_n_4 ;
  wire \channels[15].wavesum__85_carry__2_n_5 ;
  wire \channels[15].wavesum__85_carry__2_n_6 ;
  wire \channels[15].wavesum__85_carry__2_n_7 ;
  wire \channels[15].wavesum__85_carry__3_n_1 ;
  wire \channels[15].wavesum__85_carry__3_n_3 ;
  wire \channels[15].wavesum__85_carry__3_n_6 ;
  wire \channels[15].wavesum__85_carry__3_n_7 ;
  wire \channels[15].wavesum__85_carry_n_0 ;
  wire \channels[15].wavesum__85_carry_n_1 ;
  wire \channels[15].wavesum__85_carry_n_2 ;
  wire \channels[15].wavesum__85_carry_n_3 ;
  wire \channels[15].wavesum__85_carry_n_4 ;
  wire \channels[15].wavesum__85_carry_n_5 ;
  wire \channels[15].wavesum__85_carry_n_6 ;
  wire \channels[15].wavesum_carry__0_n_0 ;
  wire \channels[15].wavesum_carry__0_n_1 ;
  wire \channels[15].wavesum_carry__0_n_2 ;
  wire \channels[15].wavesum_carry__0_n_3 ;
  wire \channels[15].wavesum_carry__0_n_4 ;
  wire \channels[15].wavesum_carry__0_n_5 ;
  wire \channels[15].wavesum_carry__0_n_6 ;
  wire \channels[15].wavesum_carry__0_n_7 ;
  wire \channels[15].wavesum_carry__1_n_0 ;
  wire \channels[15].wavesum_carry__1_n_1 ;
  wire \channels[15].wavesum_carry__1_n_2 ;
  wire \channels[15].wavesum_carry__1_n_3 ;
  wire \channels[15].wavesum_carry__1_n_4 ;
  wire \channels[15].wavesum_carry__1_n_5 ;
  wire \channels[15].wavesum_carry__1_n_6 ;
  wire \channels[15].wavesum_carry__1_n_7 ;
  wire \channels[15].wavesum_carry__2_n_0 ;
  wire \channels[15].wavesum_carry__2_n_1 ;
  wire \channels[15].wavesum_carry__2_n_2 ;
  wire \channels[15].wavesum_carry__2_n_3 ;
  wire \channels[15].wavesum_carry__2_n_4 ;
  wire \channels[15].wavesum_carry__2_n_5 ;
  wire \channels[15].wavesum_carry__2_n_6 ;
  wire \channels[15].wavesum_carry__2_n_7 ;
  wire \channels[15].wavesum_carry__3_n_1 ;
  wire \channels[15].wavesum_carry__3_n_3 ;
  wire \channels[15].wavesum_carry__3_n_6 ;
  wire \channels[15].wavesum_carry__3_n_7 ;
  wire \channels[15].wavesum_carry_n_0 ;
  wire \channels[15].wavesum_carry_n_1 ;
  wire \channels[15].wavesum_carry_n_2 ;
  wire \channels[15].wavesum_carry_n_3 ;
  wire \channels[15].wavesum_carry_n_4 ;
  wire \channels[15].wavesum_carry_n_5 ;
  wire \channels[15].wavesum_carry_n_6 ;
  wire \channels[15].wavesum_carry_n_7 ;
  wire [19:17]\channels[4].wavesum ;
  wire [1:0]NLW_Buzzer_INST_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_Buzzer_INST_0_i_18_O_UNCONNECTED;
  wire [3:0]NLW_Buzzer_INST_0_i_2_CO_UNCONNECTED;
  wire [3:1]NLW_Buzzer_INST_0_i_2_O_UNCONNECTED;
  wire [3:0]NLW_Buzzer_INST_0_i_3_O_UNCONNECTED;
  wire [0:0]NLW_Buzzer_INST_0_i_32_O_UNCONNECTED;
  wire [3:1]NLW_Buzzer_INST_0_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_Buzzer_INST_0_i_8_O_UNCONNECTED;
  wire [3:0]NLW_Buzzer_INST_0_i_9_O_UNCONNECTED;
  wire [3:1]\NLW_channels[15].wavesum__121_carry__3_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_channels[15].wavesum__121_carry__3_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__180_carry_O_UNCONNECTED ;
  wire [0:0]\NLW_channels[15].wavesum__180_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__180_carry__4_CO_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__180_carry__4_O_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__180_carry_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__180_carry_i_2__0_O_UNCONNECTED ;
  wire [0:0]\NLW_channels[15].wavesum__49_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__49_carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_channels[15].wavesum__49_carry__3_O_UNCONNECTED ;
  wire [0:0]\NLW_channels[15].wavesum__85_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__85_carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_channels[15].wavesum__85_carry__3_O_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum_carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_channels[15].wavesum_carry__3_O_UNCONNECTED ;

  CARRY4 Buzzer_INST_0_i_1
       (.CI(Buzzer_INST_0_i_3_n_0),
        .CO({Buzzer_INST_0_i_1_n_0,Buzzer_INST_0_i_1_n_1,Buzzer_INST_0_i_1_n_2,Buzzer_INST_0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\banks[3].waveform [15:13]}),
        .O({\banks[3].wavesum [1:0],NLW_Buzzer_INST_0_i_1_O_UNCONNECTED[1:0]}),
        .S({\banks[2].wavesum [16],Buzzer}));
  CARRY4 Buzzer_INST_0_i_14
       (.CI(Buzzer_INST_0_i_23_n_0),
        .CO({Buzzer_INST_0_i_14_n_0,Buzzer_INST_0_i_14_n_1,Buzzer_INST_0_i_14_n_2,Buzzer_INST_0_i_14_n_3}),
        .CYINIT(1'b0),
        .DI(\banks[3].waveform [12:9]),
        .O(Buzzer_INST_0_i_17[10:7]),
        .S(Buzzer_INST_0_i_13));
  CARRY4 Buzzer_INST_0_i_18
       (.CI(1'b0),
        .CO({Buzzer_INST_0_i_18_n_0,Buzzer_INST_0_i_18_n_1,Buzzer_INST_0_i_18_n_2,Buzzer_INST_0_i_18_n_3}),
        .CYINIT(\banks[3].waveform [0]),
        .DI(\banks[3].waveform [4:1]),
        .O(NLW_Buzzer_INST_0_i_18_O_UNCONNECTED[3:0]),
        .S(Buzzer_INST_0_i_9_0));
  CARRY4 Buzzer_INST_0_i_2
       (.CI(Buzzer_INST_0_i_1_n_0),
        .CO({NLW_Buzzer_INST_0_i_2_CO_UNCONNECTED[3:2],\banks[3].wavesum [3],NLW_Buzzer_INST_0_i_2_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Buzzer_INST_0_i_2_O_UNCONNECTED[3:1],\banks[3].wavesum [2]}),
        .S({1'b0,1'b0,1'b1,\banks[2].wavesum [17]}));
  CARRY4 Buzzer_INST_0_i_23
       (.CI(Buzzer_INST_0_i_32_n_0),
        .CO({Buzzer_INST_0_i_23_n_0,Buzzer_INST_0_i_23_n_1,Buzzer_INST_0_i_23_n_2,Buzzer_INST_0_i_23_n_3}),
        .CYINIT(1'b0),
        .DI(\banks[3].waveform [8:5]),
        .O(Buzzer_INST_0_i_17[6:3]),
        .S(Buzzer_INST_0_i_22));
  CARRY4 Buzzer_INST_0_i_3
       (.CI(Buzzer_INST_0_i_9_n_0),
        .CO({Buzzer_INST_0_i_3_n_0,Buzzer_INST_0_i_3_n_1,Buzzer_INST_0_i_3_n_2,Buzzer_INST_0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(\banks[3].waveform [12:9]),
        .O(NLW_Buzzer_INST_0_i_3_O_UNCONNECTED[3:0]),
        .S(Buzzer_INST_0_i_1_0));
  CARRY4 Buzzer_INST_0_i_32
       (.CI(1'b0),
        .CO({Buzzer_INST_0_i_32_n_0,Buzzer_INST_0_i_32_n_1,Buzzer_INST_0_i_32_n_2,Buzzer_INST_0_i_32_n_3}),
        .CYINIT(1'b0),
        .DI(\banks[3].waveform [4:1]),
        .O({Buzzer_INST_0_i_17[2:0],NLW_Buzzer_INST_0_i_32_O_UNCONNECTED[0]}),
        .S(Buzzer_INST_0_i_30));
  CARRY4 Buzzer_INST_0_i_4
       (.CI(Buzzer_INST_0_i_14_n_0),
        .CO({Buzzer_INST_0_i_4_n_0,Buzzer_INST_0_i_4_n_1,Buzzer_INST_0_i_4_n_2,Buzzer_INST_0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\banks[3].waveform [15:13]}),
        .O({\banks[2].wavesum [16],Buzzer_INST_0_i_17[13:11]}),
        .S({\banks[3].waveform [15],Buzzer_INST_0_i_7}));
  CARRY4 Buzzer_INST_0_i_8
       (.CI(Buzzer_INST_0_i_4_n_0),
        .CO({NLW_Buzzer_INST_0_i_8_CO_UNCONNECTED[3:1],\banks[2].wavesum [17]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Buzzer_INST_0_i_8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 Buzzer_INST_0_i_9
       (.CI(Buzzer_INST_0_i_18_n_0),
        .CO({Buzzer_INST_0_i_9_n_0,Buzzer_INST_0_i_9_n_1,Buzzer_INST_0_i_9_n_2,Buzzer_INST_0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI(\banks[3].waveform [8:5]),
        .O(NLW_Buzzer_INST_0_i_9_O_UNCONNECTED[3:0]),
        .S(Buzzer_INST_0_i_3_0));
  CARRY4 \channels[15].wavesum__121_carry__3 
       (.CI(1'b0),
        .CO({\channels[15].wavesum__121_carry__3_n_0 ,\channels[15].wavesum__121_carry__3_n_1 ,\channels[15].wavesum__121_carry__3_n_2 ,\channels[15].wavesum__121_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__121_carry__3_n_4 ,\channels[15].wavesum__121_carry__3_n_5 ,\channels[15].wavesum__121_carry__3_n_6 ,\channels[15].wavesum__121_carry__3_n_7 }),
        .S({\channels[4].wavesum ,1'b0}));
  CARRY4 \channels[15].wavesum__121_carry__3_i_1 
       (.CI(1'b0),
        .CO({\NLW_channels[15].wavesum__121_carry__3_i_1_CO_UNCONNECTED [3],\channels[4].wavesum [19],\NLW_channels[15].wavesum__121_carry__3_i_1_CO_UNCONNECTED [1],\channels[15].wavesum__121_carry__3_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_channels[15].wavesum__121_carry__3_i_1_O_UNCONNECTED [3:2],\channels[4].wavesum [18:17]}),
        .S({1'b0,1'b1,S}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__180_carry 
       (.CI(1'b0),
        .CO({\channels[15].wavesum__180_carry_n_0 ,\channels[15].wavesum__180_carry_n_1 ,\channels[15].wavesum__180_carry_n_2 ,\channels[15].wavesum__180_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__180_carry_i_1__1_n_0 ,\channels[15].wavesum__180_carry_i_2__1_n_0 ,\channels[15].wavesum__180_carry_i_3_n_0 ,1'b0}),
        .O(\NLW_channels[15].wavesum__180_carry_O_UNCONNECTED [3:0]),
        .S({\channels[15].wavesum__180_carry_i_4_n_0 ,\channels[15].wavesum__180_carry_i_5__0_n_0 ,\channels[15].wavesum__180_carry_i_6__0_n_0 ,\channels[15].wavesum__180_carry_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__180_carry__0 
       (.CI(\channels[15].wavesum__180_carry_n_0 ),
        .CO({\channels[15].wavesum__180_carry__0_n_0 ,\channels[15].wavesum__180_carry__0_n_1 ,\channels[15].wavesum__180_carry__0_n_2 ,\channels[15].wavesum__180_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__180_carry_i_1__2_n_0 ,\channels[15].wavesum__180_carry_i_2__2_n_0 ,\channels[15].wavesum__180_carry_i_3__1_n_0 ,\channels[15].wavesum__180_carry_i_4__0_n_0 }),
        .O({\banks[3].waveform [2:0],\NLW_channels[15].wavesum__180_carry__0_O_UNCONNECTED [0]}),
        .S({\channels[15].wavesum__180_carry_i_5__1_n_0 ,\channels[15].wavesum__180_carry_i_6__1_n_0 ,\channels[15].wavesum__180_carry_i_7__1_n_0 ,\channels[15].wavesum__180_carry_i_8__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__180_carry__1 
       (.CI(\channels[15].wavesum__180_carry__0_n_0 ),
        .CO({\channels[15].wavesum__180_carry__1_n_0 ,\channels[15].wavesum__180_carry__1_n_1 ,\channels[15].wavesum__180_carry__1_n_2 ,\channels[15].wavesum__180_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__180_carry_i_1__3_n_0 ,\channels[15].wavesum__180_carry_i_2__3_n_0 ,\channels[15].wavesum__180_carry_i_3__2_n_0 ,\channels[15].wavesum__180_carry_i_4__1_n_0 }),
        .O(\banks[3].waveform [6:3]),
        .S({\channels[15].wavesum__180_carry_i_5__2_n_0 ,\channels[15].wavesum__180_carry_i_6__2_n_0 ,\channels[15].wavesum__180_carry_i_7__2_n_0 ,\channels[15].wavesum__180_carry_i_8__1_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__180_carry__2 
       (.CI(\channels[15].wavesum__180_carry__1_n_0 ),
        .CO({\channels[15].wavesum__180_carry__2_n_0 ,\channels[15].wavesum__180_carry__2_n_1 ,\channels[15].wavesum__180_carry__2_n_2 ,\channels[15].wavesum__180_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__180_carry_i_1__4_n_0 ,\channels[15].wavesum__180_carry_i_2__4_n_0 ,\channels[15].wavesum__180_carry_i_3__3_n_0 ,\channels[15].wavesum__180_carry_i_4__2_n_0 }),
        .O(\banks[3].waveform [10:7]),
        .S({\channels[15].wavesum__180_carry_i_5__3_n_0 ,\channels[15].wavesum__180_carry_i_6__3_n_0 ,\channels[15].wavesum__180_carry_i_7__3_n_0 ,\channels[15].wavesum__180_carry_i_8__2_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__180_carry__3 
       (.CI(\channels[15].wavesum__180_carry__2_n_0 ),
        .CO({\channels[15].wavesum__180_carry__3_n_0 ,\channels[15].wavesum__180_carry__3_n_1 ,\channels[15].wavesum__180_carry__3_n_2 ,\channels[15].wavesum__180_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__180_carry_i_1_n_0 ,\channels[15].wavesum__180_carry_i_2_n_0 ,\channels[15].wavesum__180_carry_i_3__0_n_0 ,\channels[15].wavesum__180_carry_i_4__3_n_0 }),
        .O(\banks[3].waveform [14:11]),
        .S({\channels[15].wavesum__180_carry_i_5_n_0 ,\channels[15].wavesum__180_carry_i_6_n_0 ,\channels[15].wavesum__180_carry_i_7__0_n_0 ,\channels[15].wavesum__180_carry_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__180_carry__4 
       (.CI(\channels[15].wavesum__180_carry__3_n_0 ),
        .CO(\NLW_channels[15].wavesum__180_carry__4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_channels[15].wavesum__180_carry__4_O_UNCONNECTED [3:1],\banks[3].waveform [15]}),
        .S({1'b0,1'b0,1'b0,\channels[15].wavesum__180_carry_i_1__0_n_0 }));
  LUT5 #(
    .INIT(32'h00E8E8FF)) 
    \channels[15].wavesum__180_carry_i_1 
       (.I0(\channels[15].wavesum__121_carry__3_n_6 ),
        .I1(\channels[15].wavesum__49_carry__3_n_6 ),
        .I2(\channels[15].wavesum__85_carry__3_n_6 ),
        .I3(\channels[15].wavesum_carry__3_n_1 ),
        .I4(\channels[15].wavesum__180_carry_i_9_n_0 ),
        .O(\channels[15].wavesum__180_carry_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__180_carry_i_10 
       (.I0(\channels[15].wavesum__85_carry__3_n_6 ),
        .I1(\channels[15].wavesum__49_carry__3_n_6 ),
        .I2(\channels[15].wavesum__121_carry__3_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__180_carry_i_11 
       (.I0(\channels[15].wavesum__85_carry__3_n_7 ),
        .I1(\channels[15].wavesum__49_carry__3_n_7 ),
        .I2(\channels[15].wavesum__121_carry__3_n_7 ),
        .O(\channels[15].wavesum__180_carry_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCCC9C9C3C3939333)) 
    \channels[15].wavesum__180_carry_i_1__0 
       (.I0(\channels[15].wavesum__121_carry__3_n_5 ),
        .I1(\channels[15].wavesum__180_carry_i_2__0_n_3 ),
        .I2(\channels[15].wavesum_carry__3_n_1 ),
        .I3(\channels[15].wavesum__85_carry__3_n_1 ),
        .I4(\channels[15].wavesum__49_carry__3_n_1 ),
        .I5(\channels[15].wavesum__121_carry__3_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF6606060)) 
    \channels[15].wavesum__180_carry_i_1__1 
       (.I0(\channels[15].wavesum__85_carry_n_5 ),
        .I1(\channels[15].wavesum__49_carry_n_5 ),
        .I2(\channels[15].wavesum_carry_n_5 ),
        .I3(\channels[15].wavesum__49_carry_n_6 ),
        .I4(\channels[15].wavesum__85_carry_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_1__2 
       (.I0(\channels[15].wavesum__85_carry__0_n_5 ),
        .I1(\channels[15].wavesum__49_carry__0_n_5 ),
        .I2(\channels[15].wavesum__85_carry__0_n_6 ),
        .I3(\channels[15].wavesum__49_carry__0_n_6 ),
        .I4(\channels[15].wavesum_carry__0_n_5 ),
        .O(\channels[15].wavesum__180_carry_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_1__3 
       (.I0(\channels[15].wavesum__85_carry__1_n_5 ),
        .I1(\channels[15].wavesum__49_carry__1_n_5 ),
        .I2(\channels[15].wavesum__49_carry__1_n_6 ),
        .I3(\channels[15].wavesum__85_carry__1_n_6 ),
        .I4(\channels[15].wavesum_carry__1_n_5 ),
        .O(\channels[15].wavesum__180_carry_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_1__4 
       (.I0(\channels[15].wavesum__85_carry__2_n_5 ),
        .I1(\channels[15].wavesum__49_carry__2_n_5 ),
        .I2(\channels[15].wavesum__49_carry__2_n_6 ),
        .I3(\channels[15].wavesum__85_carry__2_n_6 ),
        .I4(\channels[15].wavesum_carry__2_n_5 ),
        .O(\channels[15].wavesum__180_carry_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \channels[15].wavesum__180_carry_i_2 
       (.I0(\channels[15].wavesum__85_carry__3_n_7 ),
        .I1(\channels[15].wavesum__49_carry__3_n_7 ),
        .I2(\channels[15].wavesum__121_carry__3_n_7 ),
        .I3(\channels[15].wavesum_carry__3_n_6 ),
        .I4(\channels[15].wavesum__180_carry_i_10_n_0 ),
        .O(\channels[15].wavesum__180_carry_i_2_n_0 ));
  CARRY4 \channels[15].wavesum__180_carry_i_2__0 
       (.CI(\channels[15].wavesum__121_carry__3_n_0 ),
        .CO({\NLW_channels[15].wavesum__180_carry_i_2__0_CO_UNCONNECTED [3:1],\channels[15].wavesum__180_carry_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_channels[15].wavesum__180_carry_i_2__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT5 #(
    .INIT(32'h69999666)) 
    \channels[15].wavesum__180_carry_i_2__1 
       (.I0(\channels[15].wavesum__85_carry_n_5 ),
        .I1(\channels[15].wavesum__49_carry_n_5 ),
        .I2(\channels[15].wavesum__85_carry_n_6 ),
        .I3(\channels[15].wavesum__49_carry_n_6 ),
        .I4(\channels[15].wavesum_carry_n_5 ),
        .O(\channels[15].wavesum__180_carry_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_2__2 
       (.I0(\channels[15].wavesum__85_carry__0_n_6 ),
        .I1(\channels[15].wavesum__49_carry__0_n_6 ),
        .I2(\channels[15].wavesum__85_carry__0_n_7 ),
        .I3(\channels[15].wavesum__49_carry__0_n_7 ),
        .I4(\channels[15].wavesum_carry__0_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_2__3 
       (.I0(\channels[15].wavesum__85_carry__1_n_6 ),
        .I1(\channels[15].wavesum__49_carry__1_n_6 ),
        .I2(\channels[15].wavesum__85_carry__1_n_7 ),
        .I3(\channels[15].wavesum__49_carry__1_n_7 ),
        .I4(\channels[15].wavesum_carry__1_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_2__4 
       (.I0(\channels[15].wavesum__85_carry__2_n_6 ),
        .I1(\channels[15].wavesum__49_carry__2_n_6 ),
        .I2(\channels[15].wavesum__85_carry__2_n_7 ),
        .I3(\channels[15].wavesum__49_carry__2_n_7 ),
        .I4(\channels[15].wavesum_carry__2_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_2__4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__180_carry_i_3 
       (.I0(\channels[15].wavesum__49_carry_n_6 ),
        .I1(\channels[15].wavesum__85_carry_n_6 ),
        .I2(\channels[15].wavesum_carry_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \channels[15].wavesum__180_carry_i_3__0 
       (.I0(\channels[15].wavesum__85_carry__2_n_4 ),
        .I1(\channels[15].wavesum__49_carry__2_n_4 ),
        .I2(\channels[15].wavesum_carry__3_n_7 ),
        .I3(\channels[15].wavesum__180_carry_i_11_n_0 ),
        .O(\channels[15].wavesum__180_carry_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_3__1 
       (.I0(\channels[15].wavesum__85_carry__0_n_7 ),
        .I1(\channels[15].wavesum__49_carry__0_n_7 ),
        .I2(\channels[15].wavesum__49_carry_n_4 ),
        .I3(\channels[15].wavesum__85_carry_n_4 ),
        .I4(\channels[15].wavesum_carry__0_n_7 ),
        .O(\channels[15].wavesum__180_carry_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_3__2 
       (.I0(\channels[15].wavesum__85_carry__1_n_7 ),
        .I1(\channels[15].wavesum__49_carry__1_n_7 ),
        .I2(\channels[15].wavesum__85_carry__0_n_4 ),
        .I3(\channels[15].wavesum__49_carry__0_n_4 ),
        .I4(\channels[15].wavesum_carry__1_n_7 ),
        .O(\channels[15].wavesum__180_carry_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_3__3 
       (.I0(\channels[15].wavesum__85_carry__2_n_7 ),
        .I1(\channels[15].wavesum__49_carry__2_n_7 ),
        .I2(\channels[15].wavesum__49_carry__1_n_4 ),
        .I3(\channels[15].wavesum__85_carry__1_n_4 ),
        .I4(\channels[15].wavesum_carry__2_n_7 ),
        .O(\channels[15].wavesum__180_carry_i_3__3_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \channels[15].wavesum__180_carry_i_4 
       (.I0(\channels[15].wavesum__85_carry_n_4 ),
        .I1(\channels[15].wavesum__49_carry_n_4 ),
        .I2(\channels[15].wavesum__180_carry_i_1__1_n_0 ),
        .I3(\channels[15].wavesum__85_carry_n_5 ),
        .I4(\channels[15].wavesum__49_carry_n_5 ),
        .I5(\channels[15].wavesum_carry_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_4__0 
       (.I0(\channels[15].wavesum__85_carry_n_4 ),
        .I1(\channels[15].wavesum__49_carry_n_4 ),
        .I2(\channels[15].wavesum__85_carry_n_5 ),
        .I3(\channels[15].wavesum__49_carry_n_5 ),
        .I4(\channels[15].wavesum_carry_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_4__1 
       (.I0(\channels[15].wavesum__85_carry__0_n_4 ),
        .I1(\channels[15].wavesum__49_carry__0_n_4 ),
        .I2(\channels[15].wavesum__85_carry__0_n_5 ),
        .I3(\channels[15].wavesum__49_carry__0_n_5 ),
        .I4(\channels[15].wavesum_carry__0_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_4__2 
       (.I0(\channels[15].wavesum__85_carry__1_n_4 ),
        .I1(\channels[15].wavesum__49_carry__1_n_4 ),
        .I2(\channels[15].wavesum__85_carry__1_n_5 ),
        .I3(\channels[15].wavesum__49_carry__1_n_5 ),
        .I4(\channels[15].wavesum_carry__1_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_4__2_n_0 ));
  LUT5 #(
    .INIT(32'hF6666000)) 
    \channels[15].wavesum__180_carry_i_4__3 
       (.I0(\channels[15].wavesum__85_carry__2_n_4 ),
        .I1(\channels[15].wavesum__49_carry__2_n_4 ),
        .I2(\channels[15].wavesum__85_carry__2_n_5 ),
        .I3(\channels[15].wavesum__49_carry__2_n_5 ),
        .I4(\channels[15].wavesum_carry__2_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_4__3_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \channels[15].wavesum__180_carry_i_5 
       (.I0(\channels[15].wavesum__180_carry_i_1_n_0 ),
        .I1(\channels[15].wavesum_carry__3_n_1 ),
        .I2(\channels[15].wavesum__121_carry__3_n_4 ),
        .I3(\channels[15].wavesum__85_carry__3_n_1 ),
        .I4(\channels[15].wavesum__49_carry__3_n_1 ),
        .I5(\channels[15].wavesum__121_carry__3_n_5 ),
        .O(\channels[15].wavesum__180_carry_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \channels[15].wavesum__180_carry_i_5__0 
       (.I0(\channels[15].wavesum__85_carry_n_5 ),
        .I1(\channels[15].wavesum__49_carry_n_5 ),
        .I2(\channels[15].wavesum_carry_n_5 ),
        .I3(\channels[15].wavesum__85_carry_n_6 ),
        .I4(\channels[15].wavesum__49_carry_n_6 ),
        .I5(\channels[15].wavesum_carry_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \channels[15].wavesum__180_carry_i_5__1 
       (.I0(\channels[15].wavesum__85_carry__0_n_4 ),
        .I1(\channels[15].wavesum__49_carry__0_n_4 ),
        .I2(\channels[15].wavesum__180_carry_i_1__2_n_0 ),
        .I3(\channels[15].wavesum__85_carry__0_n_5 ),
        .I4(\channels[15].wavesum__49_carry__0_n_5 ),
        .I5(\channels[15].wavesum_carry__0_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \channels[15].wavesum__180_carry_i_5__2 
       (.I0(\channels[15].wavesum__85_carry__1_n_4 ),
        .I1(\channels[15].wavesum__49_carry__1_n_4 ),
        .I2(\channels[15].wavesum__180_carry_i_1__3_n_0 ),
        .I3(\channels[15].wavesum__85_carry__1_n_5 ),
        .I4(\channels[15].wavesum__49_carry__1_n_5 ),
        .I5(\channels[15].wavesum_carry__1_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \channels[15].wavesum__180_carry_i_5__3 
       (.I0(\channels[15].wavesum__85_carry__2_n_4 ),
        .I1(\channels[15].wavesum__49_carry__2_n_4 ),
        .I2(\channels[15].wavesum__180_carry_i_1__4_n_0 ),
        .I3(\channels[15].wavesum__85_carry__2_n_5 ),
        .I4(\channels[15].wavesum__49_carry__2_n_5 ),
        .I5(\channels[15].wavesum_carry__2_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_5__3_n_0 ));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    \channels[15].wavesum__180_carry_i_6 
       (.I0(\channels[15].wavesum__180_carry_i_2_n_0 ),
        .I1(\channels[15].wavesum__121_carry__3_n_6 ),
        .I2(\channels[15].wavesum__49_carry__3_n_6 ),
        .I3(\channels[15].wavesum__85_carry__3_n_6 ),
        .I4(\channels[15].wavesum_carry__3_n_1 ),
        .I5(\channels[15].wavesum__180_carry_i_9_n_0 ),
        .O(\channels[15].wavesum__180_carry_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__180_carry_i_6__0 
       (.I0(\channels[15].wavesum__49_carry_n_6 ),
        .I1(\channels[15].wavesum__85_carry_n_6 ),
        .I2(\channels[15].wavesum_carry_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \channels[15].wavesum__180_carry_i_6__1 
       (.I0(\channels[15].wavesum__85_carry__0_n_5 ),
        .I1(\channels[15].wavesum__49_carry__0_n_5 ),
        .I2(\channels[15].wavesum__180_carry_i_2__2_n_0 ),
        .I3(\channels[15].wavesum__85_carry__0_n_6 ),
        .I4(\channels[15].wavesum__49_carry__0_n_6 ),
        .I5(\channels[15].wavesum_carry__0_n_5 ),
        .O(\channels[15].wavesum__180_carry_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \channels[15].wavesum__180_carry_i_6__2 
       (.I0(\channels[15].wavesum__85_carry__1_n_5 ),
        .I1(\channels[15].wavesum__49_carry__1_n_5 ),
        .I2(\channels[15].wavesum__180_carry_i_2__3_n_0 ),
        .I3(\channels[15].wavesum_carry__1_n_5 ),
        .I4(\channels[15].wavesum__49_carry__1_n_6 ),
        .I5(\channels[15].wavesum__85_carry__1_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_6__2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \channels[15].wavesum__180_carry_i_6__3 
       (.I0(\channels[15].wavesum__85_carry__2_n_5 ),
        .I1(\channels[15].wavesum__49_carry__2_n_5 ),
        .I2(\channels[15].wavesum__180_carry_i_2__4_n_0 ),
        .I3(\channels[15].wavesum_carry__2_n_5 ),
        .I4(\channels[15].wavesum__49_carry__2_n_6 ),
        .I5(\channels[15].wavesum__85_carry__2_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_6__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \channels[15].wavesum__180_carry_i_7 
       (.I0(\channels[15].wavesum_carry_n_7 ),
        .I1(1'b0),
        .O(\channels[15].wavesum__180_carry_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    \channels[15].wavesum__180_carry_i_7__0 
       (.I0(\channels[15].wavesum__180_carry_i_3__0_n_0 ),
        .I1(\channels[15].wavesum__85_carry__3_n_7 ),
        .I2(\channels[15].wavesum__49_carry__3_n_7 ),
        .I3(\channels[15].wavesum__121_carry__3_n_7 ),
        .I4(\channels[15].wavesum_carry__3_n_6 ),
        .I5(\channels[15].wavesum__180_carry_i_10_n_0 ),
        .O(\channels[15].wavesum__180_carry_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \channels[15].wavesum__180_carry_i_7__1 
       (.I0(\channels[15].wavesum__85_carry__0_n_6 ),
        .I1(\channels[15].wavesum__49_carry__0_n_6 ),
        .I2(\channels[15].wavesum__180_carry_i_3__1_n_0 ),
        .I3(\channels[15].wavesum__85_carry__0_n_7 ),
        .I4(\channels[15].wavesum__49_carry__0_n_7 ),
        .I5(\channels[15].wavesum_carry__0_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \channels[15].wavesum__180_carry_i_7__2 
       (.I0(\channels[15].wavesum__85_carry__1_n_6 ),
        .I1(\channels[15].wavesum__49_carry__1_n_6 ),
        .I2(\channels[15].wavesum__180_carry_i_3__2_n_0 ),
        .I3(\channels[15].wavesum__85_carry__1_n_7 ),
        .I4(\channels[15].wavesum__49_carry__1_n_7 ),
        .I5(\channels[15].wavesum_carry__1_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_7__2_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \channels[15].wavesum__180_carry_i_7__3 
       (.I0(\channels[15].wavesum__85_carry__2_n_6 ),
        .I1(\channels[15].wavesum__49_carry__2_n_6 ),
        .I2(\channels[15].wavesum__180_carry_i_3__3_n_0 ),
        .I3(\channels[15].wavesum__85_carry__2_n_7 ),
        .I4(\channels[15].wavesum__49_carry__2_n_7 ),
        .I5(\channels[15].wavesum_carry__2_n_6 ),
        .O(\channels[15].wavesum__180_carry_i_7__3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \channels[15].wavesum__180_carry_i_8 
       (.I0(\channels[15].wavesum__85_carry__2_n_4 ),
        .I1(\channels[15].wavesum__49_carry__2_n_4 ),
        .I2(\channels[15].wavesum_carry__3_n_7 ),
        .I3(\channels[15].wavesum__180_carry_i_11_n_0 ),
        .I4(\channels[15].wavesum__180_carry_i_4__3_n_0 ),
        .O(\channels[15].wavesum__180_carry_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \channels[15].wavesum__180_carry_i_8__0 
       (.I0(\channels[15].wavesum__85_carry__0_n_7 ),
        .I1(\channels[15].wavesum__49_carry__0_n_7 ),
        .I2(\channels[15].wavesum__180_carry_i_4__0_n_0 ),
        .I3(\channels[15].wavesum_carry__0_n_7 ),
        .I4(\channels[15].wavesum__49_carry_n_4 ),
        .I5(\channels[15].wavesum__85_carry_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \channels[15].wavesum__180_carry_i_8__1 
       (.I0(\channels[15].wavesum__85_carry__1_n_7 ),
        .I1(\channels[15].wavesum__49_carry__1_n_7 ),
        .I2(\channels[15].wavesum__180_carry_i_4__1_n_0 ),
        .I3(\channels[15].wavesum__85_carry__0_n_4 ),
        .I4(\channels[15].wavesum__49_carry__0_n_4 ),
        .I5(\channels[15].wavesum_carry__1_n_7 ),
        .O(\channels[15].wavesum__180_carry_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \channels[15].wavesum__180_carry_i_8__2 
       (.I0(\channels[15].wavesum__85_carry__2_n_7 ),
        .I1(\channels[15].wavesum__49_carry__2_n_7 ),
        .I2(\channels[15].wavesum__180_carry_i_4__2_n_0 ),
        .I3(\channels[15].wavesum_carry__2_n_7 ),
        .I4(\channels[15].wavesum__49_carry__1_n_4 ),
        .I5(\channels[15].wavesum__85_carry__1_n_4 ),
        .O(\channels[15].wavesum__180_carry_i_8__2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \channels[15].wavesum__180_carry_i_9 
       (.I0(\channels[15].wavesum__49_carry__3_n_1 ),
        .I1(\channels[15].wavesum__85_carry__3_n_1 ),
        .I2(\channels[15].wavesum__121_carry__3_n_5 ),
        .O(\channels[15].wavesum__180_carry_i_9_n_0 ));
  CARRY4 \channels[15].wavesum__49_carry 
       (.CI(1'b0),
        .CO({\channels[15].wavesum__49_carry_n_0 ,\channels[15].wavesum__49_carry_n_1 ,\channels[15].wavesum__49_carry_n_2 ,\channels[15].wavesum__49_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\channels[15].wavesum__49_carry_n_4 ,\channels[15].wavesum__49_carry_n_5 ,\channels[15].wavesum__49_carry_n_6 ,\NLW_channels[15].wavesum__49_carry_O_UNCONNECTED [0]}),
        .S({1'b1,1'b1,1'b1,1'b0}));
  CARRY4 \channels[15].wavesum__49_carry__0 
       (.CI(\channels[15].wavesum__49_carry_n_0 ),
        .CO({\channels[15].wavesum__49_carry__0_n_0 ,\channels[15].wavesum__49_carry__0_n_1 ,\channels[15].wavesum__49_carry__0_n_2 ,\channels[15].wavesum__49_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__49_carry__0_n_4 ,\channels[15].wavesum__49_carry__0_n_5 ,\channels[15].wavesum__49_carry__0_n_6 ,\channels[15].wavesum__49_carry__0_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__49_carry__1 
       (.CI(\channels[15].wavesum__49_carry__0_n_0 ),
        .CO({\channels[15].wavesum__49_carry__1_n_0 ,\channels[15].wavesum__49_carry__1_n_1 ,\channels[15].wavesum__49_carry__1_n_2 ,\channels[15].wavesum__49_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__49_carry__1_n_4 ,\channels[15].wavesum__49_carry__1_n_5 ,\channels[15].wavesum__49_carry__1_n_6 ,\channels[15].wavesum__49_carry__1_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__49_carry__2 
       (.CI(\channels[15].wavesum__49_carry__1_n_0 ),
        .CO({\channels[15].wavesum__49_carry__2_n_0 ,\channels[15].wavesum__49_carry__2_n_1 ,\channels[15].wavesum__49_carry__2_n_2 ,\channels[15].wavesum__49_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__49_carry__2_n_4 ,\channels[15].wavesum__49_carry__2_n_5 ,\channels[15].wavesum__49_carry__2_n_6 ,\channels[15].wavesum__49_carry__2_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__49_carry__3 
       (.CI(\channels[15].wavesum__49_carry__2_n_0 ),
        .CO({\NLW_channels[15].wavesum__49_carry__3_CO_UNCONNECTED [3],\channels[15].wavesum__49_carry__3_n_1 ,\NLW_channels[15].wavesum__49_carry__3_CO_UNCONNECTED [1],\channels[15].wavesum__49_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_channels[15].wavesum__49_carry__3_O_UNCONNECTED [3:2],\channels[15].wavesum__49_carry__3_n_6 ,\channels[15].wavesum__49_carry__3_n_7 }),
        .S({1'b0,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__85_carry 
       (.CI(1'b0),
        .CO({\channels[15].wavesum__85_carry_n_0 ,\channels[15].wavesum__85_carry_n_1 ,\channels[15].wavesum__85_carry_n_2 ,\channels[15].wavesum__85_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\channels[15].wavesum__85_carry_n_4 ,\channels[15].wavesum__85_carry_n_5 ,\channels[15].wavesum__85_carry_n_6 ,\NLW_channels[15].wavesum__85_carry_O_UNCONNECTED [0]}),
        .S({1'b1,1'b1,1'b1,1'b0}));
  CARRY4 \channels[15].wavesum__85_carry__0 
       (.CI(\channels[15].wavesum__85_carry_n_0 ),
        .CO({\channels[15].wavesum__85_carry__0_n_0 ,\channels[15].wavesum__85_carry__0_n_1 ,\channels[15].wavesum__85_carry__0_n_2 ,\channels[15].wavesum__85_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__85_carry__0_n_4 ,\channels[15].wavesum__85_carry__0_n_5 ,\channels[15].wavesum__85_carry__0_n_6 ,\channels[15].wavesum__85_carry__0_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__85_carry__1 
       (.CI(\channels[15].wavesum__85_carry__0_n_0 ),
        .CO({\channels[15].wavesum__85_carry__1_n_0 ,\channels[15].wavesum__85_carry__1_n_1 ,\channels[15].wavesum__85_carry__1_n_2 ,\channels[15].wavesum__85_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__85_carry__1_n_4 ,\channels[15].wavesum__85_carry__1_n_5 ,\channels[15].wavesum__85_carry__1_n_6 ,\channels[15].wavesum__85_carry__1_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__85_carry__2 
       (.CI(\channels[15].wavesum__85_carry__1_n_0 ),
        .CO({\channels[15].wavesum__85_carry__2_n_0 ,\channels[15].wavesum__85_carry__2_n_1 ,\channels[15].wavesum__85_carry__2_n_2 ,\channels[15].wavesum__85_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__85_carry__2_n_4 ,\channels[15].wavesum__85_carry__2_n_5 ,\channels[15].wavesum__85_carry__2_n_6 ,\channels[15].wavesum__85_carry__2_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__85_carry__3 
       (.CI(\channels[15].wavesum__85_carry__2_n_0 ),
        .CO({\NLW_channels[15].wavesum__85_carry__3_CO_UNCONNECTED [3],\channels[15].wavesum__85_carry__3_n_1 ,\NLW_channels[15].wavesum__85_carry__3_CO_UNCONNECTED [1],\channels[15].wavesum__85_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_channels[15].wavesum__85_carry__3_O_UNCONNECTED [3:2],\channels[15].wavesum__85_carry__3_n_6 ,\channels[15].wavesum__85_carry__3_n_7 }),
        .S({1'b0,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum_carry 
       (.CI(1'b0),
        .CO({\channels[15].wavesum_carry_n_0 ,\channels[15].wavesum_carry_n_1 ,\channels[15].wavesum_carry_n_2 ,\channels[15].wavesum_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\channels[15].wavesum_carry_n_4 ,\channels[15].wavesum_carry_n_5 ,\channels[15].wavesum_carry_n_6 ,\channels[15].wavesum_carry_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b0}));
  CARRY4 \channels[15].wavesum_carry__0 
       (.CI(\channels[15].wavesum_carry_n_0 ),
        .CO({\channels[15].wavesum_carry__0_n_0 ,\channels[15].wavesum_carry__0_n_1 ,\channels[15].wavesum_carry__0_n_2 ,\channels[15].wavesum_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum_carry__0_n_4 ,\channels[15].wavesum_carry__0_n_5 ,\channels[15].wavesum_carry__0_n_6 ,\channels[15].wavesum_carry__0_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum_carry__1 
       (.CI(\channels[15].wavesum_carry__0_n_0 ),
        .CO({\channels[15].wavesum_carry__1_n_0 ,\channels[15].wavesum_carry__1_n_1 ,\channels[15].wavesum_carry__1_n_2 ,\channels[15].wavesum_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum_carry__1_n_4 ,\channels[15].wavesum_carry__1_n_5 ,\channels[15].wavesum_carry__1_n_6 ,\channels[15].wavesum_carry__1_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum_carry__2 
       (.CI(\channels[15].wavesum_carry__1_n_0 ),
        .CO({\channels[15].wavesum_carry__2_n_0 ,\channels[15].wavesum_carry__2_n_1 ,\channels[15].wavesum_carry__2_n_2 ,\channels[15].wavesum_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum_carry__2_n_4 ,\channels[15].wavesum_carry__2_n_5 ,\channels[15].wavesum_carry__2_n_6 ,\channels[15].wavesum_carry__2_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum_carry__3 
       (.CI(\channels[15].wavesum_carry__2_n_0 ),
        .CO({\NLW_channels[15].wavesum_carry__3_CO_UNCONNECTED [3],\channels[15].wavesum_carry__3_n_1 ,\NLW_channels[15].wavesum_carry__3_CO_UNCONNECTED [1],\channels[15].wavesum_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_channels[15].wavesum_carry__3_O_UNCONNECTED [3:2],\channels[15].wavesum_carry__3_n_6 ,\channels[15].wavesum_carry__3_n_7 }),
        .S({1'b0,1'b1,1'b1,1'b1}));
endmodule

(* ORIG_REF_NAME = "Synth" *) 
module system_Synth_0_0_Synth
   (\banks[3].wavesum ,
    S);
  output [3:0]\banks[3].wavesum ;
  input [1:0]S;

  wire Buzzer_INST_0_i_10_n_0;
  wire Buzzer_INST_0_i_11_n_0;
  wire Buzzer_INST_0_i_12_n_0;
  wire Buzzer_INST_0_i_13_n_0;
  wire Buzzer_INST_0_i_15_n_0;
  wire Buzzer_INST_0_i_16_n_0;
  wire Buzzer_INST_0_i_17_n_0;
  wire Buzzer_INST_0_i_19_n_0;
  wire Buzzer_INST_0_i_20_n_0;
  wire Buzzer_INST_0_i_21_n_0;
  wire Buzzer_INST_0_i_22_n_0;
  wire Buzzer_INST_0_i_24_n_0;
  wire Buzzer_INST_0_i_25_n_0;
  wire Buzzer_INST_0_i_26_n_0;
  wire Buzzer_INST_0_i_27_n_0;
  wire Buzzer_INST_0_i_28_n_0;
  wire Buzzer_INST_0_i_29_n_0;
  wire Buzzer_INST_0_i_30_n_0;
  wire Buzzer_INST_0_i_31_n_0;
  wire Buzzer_INST_0_i_33_n_0;
  wire Buzzer_INST_0_i_34_n_0;
  wire Buzzer_INST_0_i_35_n_0;
  wire Buzzer_INST_0_i_36_n_0;
  wire Buzzer_INST_0_i_37_n_0;
  wire Buzzer_INST_0_i_38_n_0;
  wire Buzzer_INST_0_i_39_n_0;
  wire Buzzer_INST_0_i_5_n_0;
  wire Buzzer_INST_0_i_6_n_0;
  wire Buzzer_INST_0_i_7_n_0;
  wire [1:0]S;
  wire [15:1]\banks[2].wavesum ;
  wire [15:0]\banks[3].waveform ;
  wire [3:0]\banks[3].wavesum ;

  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_10
       (.I0(\banks[3].waveform [12]),
        .I1(\banks[2].wavesum [12]),
        .O(Buzzer_INST_0_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_11
       (.I0(\banks[3].waveform [11]),
        .I1(\banks[2].wavesum [11]),
        .O(Buzzer_INST_0_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_12
       (.I0(\banks[3].waveform [10]),
        .I1(\banks[2].wavesum [10]),
        .O(Buzzer_INST_0_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_13
       (.I0(\banks[3].waveform [9]),
        .I1(\banks[2].wavesum [9]),
        .O(Buzzer_INST_0_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_15
       (.I0(\banks[3].waveform [15]),
        .I1(\banks[3].waveform [14]),
        .O(Buzzer_INST_0_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_16
       (.I0(\banks[3].waveform [14]),
        .I1(\banks[3].waveform [13]),
        .O(Buzzer_INST_0_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_17
       (.I0(\banks[3].waveform [13]),
        .I1(\banks[3].waveform [12]),
        .O(Buzzer_INST_0_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_19
       (.I0(\banks[3].waveform [8]),
        .I1(\banks[2].wavesum [8]),
        .O(Buzzer_INST_0_i_19_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_20
       (.I0(\banks[3].waveform [7]),
        .I1(\banks[2].wavesum [7]),
        .O(Buzzer_INST_0_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_21
       (.I0(\banks[3].waveform [6]),
        .I1(\banks[2].wavesum [6]),
        .O(Buzzer_INST_0_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_22
       (.I0(\banks[3].waveform [5]),
        .I1(\banks[2].wavesum [5]),
        .O(Buzzer_INST_0_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_24
       (.I0(\banks[3].waveform [12]),
        .I1(\banks[3].waveform [11]),
        .O(Buzzer_INST_0_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_25
       (.I0(\banks[3].waveform [11]),
        .I1(\banks[3].waveform [10]),
        .O(Buzzer_INST_0_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_26
       (.I0(\banks[3].waveform [10]),
        .I1(\banks[3].waveform [9]),
        .O(Buzzer_INST_0_i_26_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_27
       (.I0(\banks[3].waveform [9]),
        .I1(\banks[3].waveform [8]),
        .O(Buzzer_INST_0_i_27_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_28
       (.I0(\banks[3].waveform [4]),
        .I1(\banks[2].wavesum [4]),
        .O(Buzzer_INST_0_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_29
       (.I0(\banks[3].waveform [3]),
        .I1(\banks[2].wavesum [3]),
        .O(Buzzer_INST_0_i_29_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_30
       (.I0(\banks[3].waveform [2]),
        .I1(\banks[2].wavesum [2]),
        .O(Buzzer_INST_0_i_30_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    Buzzer_INST_0_i_31
       (.I0(\banks[3].waveform [0]),
        .O(Buzzer_INST_0_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_33
       (.I0(\banks[3].waveform [8]),
        .I1(\banks[3].waveform [7]),
        .O(Buzzer_INST_0_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_34
       (.I0(\banks[3].waveform [7]),
        .I1(\banks[3].waveform [6]),
        .O(Buzzer_INST_0_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_35
       (.I0(\banks[3].waveform [6]),
        .I1(\banks[3].waveform [5]),
        .O(Buzzer_INST_0_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_36
       (.I0(\banks[3].waveform [5]),
        .I1(\banks[3].waveform [4]),
        .O(Buzzer_INST_0_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_37
       (.I0(\banks[3].waveform [4]),
        .I1(\banks[3].waveform [3]),
        .O(Buzzer_INST_0_i_37_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_38
       (.I0(\banks[3].waveform [3]),
        .I1(\banks[3].waveform [2]),
        .O(Buzzer_INST_0_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_39
       (.I0(\banks[3].waveform [2]),
        .I1(\banks[3].waveform [1]),
        .O(Buzzer_INST_0_i_39_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_40
       (.I0(\banks[3].waveform [1]),
        .I1(\banks[3].waveform [0]),
        .O(\banks[2].wavesum [1]));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_5
       (.I0(\banks[3].waveform [15]),
        .I1(\banks[2].wavesum [15]),
        .O(Buzzer_INST_0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_6
       (.I0(\banks[3].waveform [14]),
        .I1(\banks[2].wavesum [14]),
        .O(Buzzer_INST_0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Buzzer_INST_0_i_7
       (.I0(\banks[3].waveform [13]),
        .I1(\banks[2].wavesum [13]),
        .O(Buzzer_INST_0_i_7_n_0));
  system_Synth_0_0_Bank \banks[0].bank 
       (.Buzzer({Buzzer_INST_0_i_5_n_0,Buzzer_INST_0_i_6_n_0,Buzzer_INST_0_i_7_n_0}),
        .Buzzer_INST_0_i_13({Buzzer_INST_0_i_24_n_0,Buzzer_INST_0_i_25_n_0,Buzzer_INST_0_i_26_n_0,Buzzer_INST_0_i_27_n_0}),
        .Buzzer_INST_0_i_17(\banks[2].wavesum [15:2]),
        .Buzzer_INST_0_i_1_0({Buzzer_INST_0_i_10_n_0,Buzzer_INST_0_i_11_n_0,Buzzer_INST_0_i_12_n_0,Buzzer_INST_0_i_13_n_0}),
        .Buzzer_INST_0_i_22({Buzzer_INST_0_i_33_n_0,Buzzer_INST_0_i_34_n_0,Buzzer_INST_0_i_35_n_0,Buzzer_INST_0_i_36_n_0}),
        .Buzzer_INST_0_i_30({Buzzer_INST_0_i_37_n_0,Buzzer_INST_0_i_38_n_0,Buzzer_INST_0_i_39_n_0,\banks[2].wavesum [1]}),
        .Buzzer_INST_0_i_3_0({Buzzer_INST_0_i_19_n_0,Buzzer_INST_0_i_20_n_0,Buzzer_INST_0_i_21_n_0,Buzzer_INST_0_i_22_n_0}),
        .Buzzer_INST_0_i_7({Buzzer_INST_0_i_15_n_0,Buzzer_INST_0_i_16_n_0,Buzzer_INST_0_i_17_n_0}),
        .Buzzer_INST_0_i_9_0({Buzzer_INST_0_i_28_n_0,Buzzer_INST_0_i_29_n_0,Buzzer_INST_0_i_30_n_0,Buzzer_INST_0_i_31_n_0}),
        .S(S),
        .\banks[3].waveform (\banks[3].waveform ),
        .\banks[3].wavesum (\banks[3].wavesum ));
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
