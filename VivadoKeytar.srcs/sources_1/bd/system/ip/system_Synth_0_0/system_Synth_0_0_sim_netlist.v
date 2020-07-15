// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Jul 15 03:45:52 2020
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
  wire [17:17]\channels[2].wavesum ;
  wire [3:1]\NLW_channels[15].wavesum__158_carry__3_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__158_carry__3_i_9_O_UNCONNECTED ;

  CARRY4 \channels[15].wavesum__158_carry__3_i_9 
       (.CI(1'b0),
        .CO({\NLW_channels[15].wavesum__158_carry__3_i_9_CO_UNCONNECTED [3:1],\channels[2].wavesum }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_channels[15].wavesum__158_carry__3_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  system_Synth_0_0_Synth inst
       (.Buzzer(Buzzer),
        .CO(\channels[2].wavesum ));
endmodule

(* ORIG_REF_NAME = "Bank" *) 
module system_Synth_0_0_Bank
   (Buzzer,
    CO);
  output Buzzer;
  input [0:0]CO;

  wire Buzzer;
  wire [0:0]CO;
  wire [15:13]\banks[3].waveform ;
  wire \channels[15].wavesum__121_carry__0_n_0 ;
  wire \channels[15].wavesum__121_carry__0_n_1 ;
  wire \channels[15].wavesum__121_carry__0_n_2 ;
  wire \channels[15].wavesum__121_carry__0_n_3 ;
  wire \channels[15].wavesum__121_carry__0_n_4 ;
  wire \channels[15].wavesum__121_carry__0_n_5 ;
  wire \channels[15].wavesum__121_carry__0_n_6 ;
  wire \channels[15].wavesum__121_carry__0_n_7 ;
  wire \channels[15].wavesum__121_carry__1_n_0 ;
  wire \channels[15].wavesum__121_carry__1_n_1 ;
  wire \channels[15].wavesum__121_carry__1_n_2 ;
  wire \channels[15].wavesum__121_carry__1_n_3 ;
  wire \channels[15].wavesum__121_carry__1_n_4 ;
  wire \channels[15].wavesum__121_carry__1_n_5 ;
  wire \channels[15].wavesum__121_carry__1_n_6 ;
  wire \channels[15].wavesum__121_carry__1_n_7 ;
  wire \channels[15].wavesum__121_carry__2_n_0 ;
  wire \channels[15].wavesum__121_carry__2_n_1 ;
  wire \channels[15].wavesum__121_carry__2_n_2 ;
  wire \channels[15].wavesum__121_carry__2_n_3 ;
  wire \channels[15].wavesum__121_carry__2_n_4 ;
  wire \channels[15].wavesum__121_carry__2_n_5 ;
  wire \channels[15].wavesum__121_carry__2_n_6 ;
  wire \channels[15].wavesum__121_carry__2_n_7 ;
  wire \channels[15].wavesum__121_carry__3_n_1 ;
  wire \channels[15].wavesum__121_carry__3_n_3 ;
  wire \channels[15].wavesum__121_carry__3_n_6 ;
  wire \channels[15].wavesum__121_carry__3_n_7 ;
  wire \channels[15].wavesum__121_carry_n_0 ;
  wire \channels[15].wavesum__121_carry_n_1 ;
  wire \channels[15].wavesum__121_carry_n_2 ;
  wire \channels[15].wavesum__121_carry_n_3 ;
  wire \channels[15].wavesum__121_carry_n_4 ;
  wire \channels[15].wavesum__121_carry_n_5 ;
  wire \channels[15].wavesum__121_carry_n_6 ;
  wire \channels[15].wavesum__158_carry__0_i_1_n_0 ;
  wire \channels[15].wavesum__158_carry__0_i_2_n_0 ;
  wire \channels[15].wavesum__158_carry__0_i_3_n_0 ;
  wire \channels[15].wavesum__158_carry__0_i_4_n_0 ;
  wire \channels[15].wavesum__158_carry__0_i_5_n_0 ;
  wire \channels[15].wavesum__158_carry__0_i_6_n_0 ;
  wire \channels[15].wavesum__158_carry__0_i_7_n_0 ;
  wire \channels[15].wavesum__158_carry__0_i_8_n_0 ;
  wire \channels[15].wavesum__158_carry__0_n_0 ;
  wire \channels[15].wavesum__158_carry__0_n_1 ;
  wire \channels[15].wavesum__158_carry__0_n_2 ;
  wire \channels[15].wavesum__158_carry__0_n_3 ;
  wire \channels[15].wavesum__158_carry__0_n_4 ;
  wire \channels[15].wavesum__158_carry__0_n_5 ;
  wire \channels[15].wavesum__158_carry__0_n_6 ;
  wire \channels[15].wavesum__158_carry__0_n_7 ;
  wire \channels[15].wavesum__158_carry__1_i_1_n_0 ;
  wire \channels[15].wavesum__158_carry__1_i_2_n_0 ;
  wire \channels[15].wavesum__158_carry__1_i_3_n_0 ;
  wire \channels[15].wavesum__158_carry__1_i_4_n_0 ;
  wire \channels[15].wavesum__158_carry__1_i_5_n_0 ;
  wire \channels[15].wavesum__158_carry__1_i_6_n_0 ;
  wire \channels[15].wavesum__158_carry__1_i_7_n_0 ;
  wire \channels[15].wavesum__158_carry__1_i_8_n_0 ;
  wire \channels[15].wavesum__158_carry__1_n_0 ;
  wire \channels[15].wavesum__158_carry__1_n_1 ;
  wire \channels[15].wavesum__158_carry__1_n_2 ;
  wire \channels[15].wavesum__158_carry__1_n_3 ;
  wire \channels[15].wavesum__158_carry__1_n_4 ;
  wire \channels[15].wavesum__158_carry__1_n_5 ;
  wire \channels[15].wavesum__158_carry__1_n_6 ;
  wire \channels[15].wavesum__158_carry__1_n_7 ;
  wire \channels[15].wavesum__158_carry__2_i_1_n_0 ;
  wire \channels[15].wavesum__158_carry__2_i_2_n_0 ;
  wire \channels[15].wavesum__158_carry__2_i_3_n_0 ;
  wire \channels[15].wavesum__158_carry__2_i_4_n_0 ;
  wire \channels[15].wavesum__158_carry__2_i_5_n_0 ;
  wire \channels[15].wavesum__158_carry__2_i_6_n_0 ;
  wire \channels[15].wavesum__158_carry__2_i_7_n_0 ;
  wire \channels[15].wavesum__158_carry__2_i_8_n_0 ;
  wire \channels[15].wavesum__158_carry__2_n_0 ;
  wire \channels[15].wavesum__158_carry__2_n_1 ;
  wire \channels[15].wavesum__158_carry__2_n_2 ;
  wire \channels[15].wavesum__158_carry__2_n_3 ;
  wire \channels[15].wavesum__158_carry__2_n_4 ;
  wire \channels[15].wavesum__158_carry__2_n_5 ;
  wire \channels[15].wavesum__158_carry__2_n_6 ;
  wire \channels[15].wavesum__158_carry__2_n_7 ;
  wire \channels[15].wavesum__158_carry__3_i_1_n_0 ;
  wire \channels[15].wavesum__158_carry__3_i_2_n_0 ;
  wire \channels[15].wavesum__158_carry__3_i_3_n_0 ;
  wire \channels[15].wavesum__158_carry__3_i_4_n_0 ;
  wire \channels[15].wavesum__158_carry__3_i_5_n_0 ;
  wire \channels[15].wavesum__158_carry__3_i_6_n_0 ;
  wire \channels[15].wavesum__158_carry__3_i_7_n_0 ;
  wire \channels[15].wavesum__158_carry__3_n_1 ;
  wire \channels[15].wavesum__158_carry__3_n_2 ;
  wire \channels[15].wavesum__158_carry__3_n_3 ;
  wire \channels[15].wavesum__158_carry__3_n_4 ;
  wire \channels[15].wavesum__158_carry__3_n_5 ;
  wire \channels[15].wavesum__158_carry__3_n_6 ;
  wire \channels[15].wavesum__158_carry__3_n_7 ;
  wire \channels[15].wavesum__158_carry_i_1_n_0 ;
  wire \channels[15].wavesum__158_carry_i_2_n_0 ;
  wire \channels[15].wavesum__158_carry_i_3_n_0 ;
  wire \channels[15].wavesum__158_carry_i_4_n_0 ;
  wire \channels[15].wavesum__158_carry_i_5_n_0 ;
  wire \channels[15].wavesum__158_carry_n_0 ;
  wire \channels[15].wavesum__158_carry_n_1 ;
  wire \channels[15].wavesum__158_carry_n_2 ;
  wire \channels[15].wavesum__158_carry_n_3 ;
  wire \channels[15].wavesum__158_carry_n_4 ;
  wire \channels[15].wavesum__158_carry_n_5 ;
  wire \channels[15].wavesum__158_carry_n_6 ;
  wire \channels[15].wavesum__158_carry_n_7 ;
  wire \channels[15].wavesum__216_carry__0_n_0 ;
  wire \channels[15].wavesum__216_carry__0_n_1 ;
  wire \channels[15].wavesum__216_carry__0_n_2 ;
  wire \channels[15].wavesum__216_carry__0_n_3 ;
  wire \channels[15].wavesum__216_carry__1_n_0 ;
  wire \channels[15].wavesum__216_carry__1_n_1 ;
  wire \channels[15].wavesum__216_carry__1_n_2 ;
  wire \channels[15].wavesum__216_carry__1_n_3 ;
  wire \channels[15].wavesum__216_carry__2_n_0 ;
  wire \channels[15].wavesum__216_carry__2_n_1 ;
  wire \channels[15].wavesum__216_carry__2_n_2 ;
  wire \channels[15].wavesum__216_carry__2_n_3 ;
  wire \channels[15].wavesum__216_carry__3_n_1 ;
  wire \channels[15].wavesum__216_carry__3_n_2 ;
  wire \channels[15].wavesum__216_carry__3_n_3 ;
  wire \channels[15].wavesum__216_carry_i_1__0_n_0 ;
  wire \channels[15].wavesum__216_carry_i_1__1_n_0 ;
  wire \channels[15].wavesum__216_carry_i_1__2_n_0 ;
  wire \channels[15].wavesum__216_carry_i_1__3_n_0 ;
  wire \channels[15].wavesum__216_carry_i_1_n_0 ;
  wire \channels[15].wavesum__216_carry_i_2__0_n_0 ;
  wire \channels[15].wavesum__216_carry_i_2__1_n_0 ;
  wire \channels[15].wavesum__216_carry_i_2__2_n_0 ;
  wire \channels[15].wavesum__216_carry_i_2__3_n_0 ;
  wire \channels[15].wavesum__216_carry_i_2_n_0 ;
  wire \channels[15].wavesum__216_carry_i_3__0_n_0 ;
  wire \channels[15].wavesum__216_carry_i_3__1_n_0 ;
  wire \channels[15].wavesum__216_carry_i_3__2_n_0 ;
  wire \channels[15].wavesum__216_carry_i_3__3_n_0 ;
  wire \channels[15].wavesum__216_carry_i_3_n_0 ;
  wire \channels[15].wavesum__216_carry_i_4__0_n_0 ;
  wire \channels[15].wavesum__216_carry_i_4__1_n_0 ;
  wire \channels[15].wavesum__216_carry_i_4__2_n_0 ;
  wire \channels[15].wavesum__216_carry_i_4__3_n_0 ;
  wire \channels[15].wavesum__216_carry_i_4_n_0 ;
  wire \channels[15].wavesum__216_carry_i_5__0_n_0 ;
  wire \channels[15].wavesum__216_carry_i_5__1_n_0 ;
  wire \channels[15].wavesum__216_carry_i_5__2_n_0 ;
  wire \channels[15].wavesum__216_carry_i_5__3_n_0 ;
  wire \channels[15].wavesum__216_carry_i_5_n_0 ;
  wire \channels[15].wavesum__216_carry_i_6__0_n_0 ;
  wire \channels[15].wavesum__216_carry_i_6__1_n_0 ;
  wire \channels[15].wavesum__216_carry_i_6__2_n_0 ;
  wire \channels[15].wavesum__216_carry_i_6__3_n_0 ;
  wire \channels[15].wavesum__216_carry_i_6_n_0 ;
  wire \channels[15].wavesum__216_carry_i_7__0_n_0 ;
  wire \channels[15].wavesum__216_carry_i_7__1_n_0 ;
  wire \channels[15].wavesum__216_carry_i_7__2_n_0 ;
  wire \channels[15].wavesum__216_carry_i_7__3_n_0 ;
  wire \channels[15].wavesum__216_carry_i_7_n_0 ;
  wire \channels[15].wavesum__216_carry_i_8__0_n_0 ;
  wire \channels[15].wavesum__216_carry_i_8__1_n_0 ;
  wire \channels[15].wavesum__216_carry_i_8_n_0 ;
  wire \channels[15].wavesum__216_carry_n_0 ;
  wire \channels[15].wavesum__216_carry_n_1 ;
  wire \channels[15].wavesum__216_carry_n_2 ;
  wire \channels[15].wavesum__216_carry_n_3 ;
  wire \channels[15].wavesum__35_carry__0_n_0 ;
  wire \channels[15].wavesum__35_carry__0_n_1 ;
  wire \channels[15].wavesum__35_carry__0_n_2 ;
  wire \channels[15].wavesum__35_carry__0_n_3 ;
  wire \channels[15].wavesum__35_carry__0_n_4 ;
  wire \channels[15].wavesum__35_carry__0_n_5 ;
  wire \channels[15].wavesum__35_carry__0_n_6 ;
  wire \channels[15].wavesum__35_carry__0_n_7 ;
  wire \channels[15].wavesum__35_carry__1_n_0 ;
  wire \channels[15].wavesum__35_carry__1_n_1 ;
  wire \channels[15].wavesum__35_carry__1_n_2 ;
  wire \channels[15].wavesum__35_carry__1_n_3 ;
  wire \channels[15].wavesum__35_carry__1_n_4 ;
  wire \channels[15].wavesum__35_carry__1_n_5 ;
  wire \channels[15].wavesum__35_carry__1_n_6 ;
  wire \channels[15].wavesum__35_carry__1_n_7 ;
  wire \channels[15].wavesum__35_carry__2_n_0 ;
  wire \channels[15].wavesum__35_carry__2_n_1 ;
  wire \channels[15].wavesum__35_carry__2_n_2 ;
  wire \channels[15].wavesum__35_carry__2_n_3 ;
  wire \channels[15].wavesum__35_carry__2_n_4 ;
  wire \channels[15].wavesum__35_carry__2_n_5 ;
  wire \channels[15].wavesum__35_carry__2_n_6 ;
  wire \channels[15].wavesum__35_carry__2_n_7 ;
  wire \channels[15].wavesum__35_carry__3_n_1 ;
  wire \channels[15].wavesum__35_carry__3_n_3 ;
  wire \channels[15].wavesum__35_carry__3_n_6 ;
  wire \channels[15].wavesum__35_carry__3_n_7 ;
  wire \channels[15].wavesum__35_carry_n_0 ;
  wire \channels[15].wavesum__35_carry_n_1 ;
  wire \channels[15].wavesum__35_carry_n_2 ;
  wire \channels[15].wavesum__35_carry_n_3 ;
  wire \channels[15].wavesum__35_carry_n_4 ;
  wire \channels[15].wavesum__35_carry_n_5 ;
  wire \channels[15].wavesum__35_carry_n_6 ;
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
  wire [18:17]\channels[3].wavesum ;
  wire [0:0]\NLW_channels[15].wavesum__121_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__121_carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_channels[15].wavesum__121_carry__3_O_UNCONNECTED ;
  wire [3:3]\NLW_channels[15].wavesum__158_carry__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__158_carry__3_i_8_CO_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__158_carry__3_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__216_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__216_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__216_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_channels[15].wavesum__216_carry__2_O_UNCONNECTED ;
  wire [3:3]\NLW_channels[15].wavesum__216_carry__3_CO_UNCONNECTED ;
  wire [0:0]\NLW_channels[15].wavesum__216_carry__3_O_UNCONNECTED ;
  wire [0:0]\NLW_channels[15].wavesum__35_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__35_carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_channels[15].wavesum__35_carry__3_O_UNCONNECTED ;
  wire [0:0]\NLW_channels[15].wavesum__85_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum__85_carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_channels[15].wavesum__85_carry__3_O_UNCONNECTED ;
  wire [3:1]\NLW_channels[15].wavesum_carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_channels[15].wavesum_carry__3_O_UNCONNECTED ;

  CARRY4 \channels[15].wavesum__121_carry 
       (.CI(1'b0),
        .CO({\channels[15].wavesum__121_carry_n_0 ,\channels[15].wavesum__121_carry_n_1 ,\channels[15].wavesum__121_carry_n_2 ,\channels[15].wavesum__121_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\channels[15].wavesum__121_carry_n_4 ,\channels[15].wavesum__121_carry_n_5 ,\channels[15].wavesum__121_carry_n_6 ,\NLW_channels[15].wavesum__121_carry_O_UNCONNECTED [0]}),
        .S({1'b1,1'b1,1'b1,1'b0}));
  CARRY4 \channels[15].wavesum__121_carry__0 
       (.CI(\channels[15].wavesum__121_carry_n_0 ),
        .CO({\channels[15].wavesum__121_carry__0_n_0 ,\channels[15].wavesum__121_carry__0_n_1 ,\channels[15].wavesum__121_carry__0_n_2 ,\channels[15].wavesum__121_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__121_carry__0_n_4 ,\channels[15].wavesum__121_carry__0_n_5 ,\channels[15].wavesum__121_carry__0_n_6 ,\channels[15].wavesum__121_carry__0_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__121_carry__1 
       (.CI(\channels[15].wavesum__121_carry__0_n_0 ),
        .CO({\channels[15].wavesum__121_carry__1_n_0 ,\channels[15].wavesum__121_carry__1_n_1 ,\channels[15].wavesum__121_carry__1_n_2 ,\channels[15].wavesum__121_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__121_carry__1_n_4 ,\channels[15].wavesum__121_carry__1_n_5 ,\channels[15].wavesum__121_carry__1_n_6 ,\channels[15].wavesum__121_carry__1_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__121_carry__2 
       (.CI(\channels[15].wavesum__121_carry__1_n_0 ),
        .CO({\channels[15].wavesum__121_carry__2_n_0 ,\channels[15].wavesum__121_carry__2_n_1 ,\channels[15].wavesum__121_carry__2_n_2 ,\channels[15].wavesum__121_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__121_carry__2_n_4 ,\channels[15].wavesum__121_carry__2_n_5 ,\channels[15].wavesum__121_carry__2_n_6 ,\channels[15].wavesum__121_carry__2_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__121_carry__3 
       (.CI(\channels[15].wavesum__121_carry__2_n_0 ),
        .CO({\NLW_channels[15].wavesum__121_carry__3_CO_UNCONNECTED [3],\channels[15].wavesum__121_carry__3_n_1 ,\NLW_channels[15].wavesum__121_carry__3_CO_UNCONNECTED [1],\channels[15].wavesum__121_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_channels[15].wavesum__121_carry__3_O_UNCONNECTED [3:2],\channels[15].wavesum__121_carry__3_n_6 ,\channels[15].wavesum__121_carry__3_n_7 }),
        .S({1'b0,1'b1,1'b1,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__158_carry 
       (.CI(1'b0),
        .CO({\channels[15].wavesum__158_carry_n_0 ,\channels[15].wavesum__158_carry_n_1 ,\channels[15].wavesum__158_carry_n_2 ,\channels[15].wavesum__158_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__158_carry_i_1_n_0 ,\channels[15].wavesum__158_carry_i_2_n_0 ,1'b0,1'b0}),
        .O({\channels[15].wavesum__158_carry_n_4 ,\channels[15].wavesum__158_carry_n_5 ,\channels[15].wavesum__158_carry_n_6 ,\channels[15].wavesum__158_carry_n_7 }),
        .S({\channels[15].wavesum__158_carry_i_3_n_0 ,\channels[15].wavesum__158_carry_i_4_n_0 ,\channels[15].wavesum__158_carry_i_5_n_0 ,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__158_carry__0 
       (.CI(\channels[15].wavesum__158_carry_n_0 ),
        .CO({\channels[15].wavesum__158_carry__0_n_0 ,\channels[15].wavesum__158_carry__0_n_1 ,\channels[15].wavesum__158_carry__0_n_2 ,\channels[15].wavesum__158_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__158_carry__0_i_1_n_0 ,\channels[15].wavesum__158_carry__0_i_2_n_0 ,\channels[15].wavesum__158_carry__0_i_3_n_0 ,\channels[15].wavesum__158_carry__0_i_4_n_0 }),
        .O({\channels[15].wavesum__158_carry__0_n_4 ,\channels[15].wavesum__158_carry__0_n_5 ,\channels[15].wavesum__158_carry__0_n_6 ,\channels[15].wavesum__158_carry__0_n_7 }),
        .S({\channels[15].wavesum__158_carry__0_i_5_n_0 ,\channels[15].wavesum__158_carry__0_i_6_n_0 ,\channels[15].wavesum__158_carry__0_i_7_n_0 ,\channels[15].wavesum__158_carry__0_i_8_n_0 }));
  (* HLUTNM = "lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__0_i_1 
       (.I0(\channels[15].wavesum__35_carry__0_n_5 ),
        .I1(\channels[15].wavesum_carry__0_n_5 ),
        .O(\channels[15].wavesum__158_carry__0_i_1_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__0_i_2 
       (.I0(\channels[15].wavesum__35_carry__0_n_6 ),
        .I1(\channels[15].wavesum_carry__0_n_6 ),
        .O(\channels[15].wavesum__158_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__0_i_3 
       (.I0(\channels[15].wavesum__35_carry__0_n_7 ),
        .I1(\channels[15].wavesum_carry__0_n_7 ),
        .O(\channels[15].wavesum__158_carry__0_i_3_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__0_i_4 
       (.I0(\channels[15].wavesum__35_carry_n_4 ),
        .I1(\channels[15].wavesum_carry_n_4 ),
        .O(\channels[15].wavesum__158_carry__0_i_4_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__0_i_5 
       (.I0(\channels[15].wavesum__35_carry__0_n_4 ),
        .I1(\channels[15].wavesum_carry__0_n_4 ),
        .I2(\channels[15].wavesum__158_carry__0_i_1_n_0 ),
        .O(\channels[15].wavesum__158_carry__0_i_5_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__0_i_6 
       (.I0(\channels[15].wavesum__35_carry__0_n_5 ),
        .I1(\channels[15].wavesum_carry__0_n_5 ),
        .I2(\channels[15].wavesum__158_carry__0_i_2_n_0 ),
        .O(\channels[15].wavesum__158_carry__0_i_6_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__0_i_7 
       (.I0(\channels[15].wavesum__35_carry__0_n_6 ),
        .I1(\channels[15].wavesum_carry__0_n_6 ),
        .I2(\channels[15].wavesum__158_carry__0_i_3_n_0 ),
        .O(\channels[15].wavesum__158_carry__0_i_7_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__0_i_8 
       (.I0(\channels[15].wavesum__35_carry__0_n_7 ),
        .I1(\channels[15].wavesum_carry__0_n_7 ),
        .I2(\channels[15].wavesum__158_carry__0_i_4_n_0 ),
        .O(\channels[15].wavesum__158_carry__0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__158_carry__1 
       (.CI(\channels[15].wavesum__158_carry__0_n_0 ),
        .CO({\channels[15].wavesum__158_carry__1_n_0 ,\channels[15].wavesum__158_carry__1_n_1 ,\channels[15].wavesum__158_carry__1_n_2 ,\channels[15].wavesum__158_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__158_carry__1_i_1_n_0 ,\channels[15].wavesum__158_carry__1_i_2_n_0 ,\channels[15].wavesum__158_carry__1_i_3_n_0 ,\channels[15].wavesum__158_carry__1_i_4_n_0 }),
        .O({\channels[15].wavesum__158_carry__1_n_4 ,\channels[15].wavesum__158_carry__1_n_5 ,\channels[15].wavesum__158_carry__1_n_6 ,\channels[15].wavesum__158_carry__1_n_7 }),
        .S({\channels[15].wavesum__158_carry__1_i_5_n_0 ,\channels[15].wavesum__158_carry__1_i_6_n_0 ,\channels[15].wavesum__158_carry__1_i_7_n_0 ,\channels[15].wavesum__158_carry__1_i_8_n_0 }));
  (* HLUTNM = "lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__1_i_1 
       (.I0(\channels[15].wavesum__35_carry__1_n_5 ),
        .I1(\channels[15].wavesum_carry__1_n_5 ),
        .O(\channels[15].wavesum__158_carry__1_i_1_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__1_i_2 
       (.I0(\channels[15].wavesum__35_carry__1_n_6 ),
        .I1(\channels[15].wavesum_carry__1_n_6 ),
        .O(\channels[15].wavesum__158_carry__1_i_2_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__1_i_3 
       (.I0(\channels[15].wavesum__35_carry__1_n_7 ),
        .I1(\channels[15].wavesum_carry__1_n_7 ),
        .O(\channels[15].wavesum__158_carry__1_i_3_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__1_i_4 
       (.I0(\channels[15].wavesum__35_carry__0_n_4 ),
        .I1(\channels[15].wavesum_carry__0_n_4 ),
        .O(\channels[15].wavesum__158_carry__1_i_4_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__1_i_5 
       (.I0(\channels[15].wavesum__35_carry__1_n_4 ),
        .I1(\channels[15].wavesum_carry__1_n_4 ),
        .I2(\channels[15].wavesum__158_carry__1_i_1_n_0 ),
        .O(\channels[15].wavesum__158_carry__1_i_5_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__1_i_6 
       (.I0(\channels[15].wavesum__35_carry__1_n_5 ),
        .I1(\channels[15].wavesum_carry__1_n_5 ),
        .I2(\channels[15].wavesum__158_carry__1_i_2_n_0 ),
        .O(\channels[15].wavesum__158_carry__1_i_6_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__1_i_7 
       (.I0(\channels[15].wavesum__35_carry__1_n_6 ),
        .I1(\channels[15].wavesum_carry__1_n_6 ),
        .I2(\channels[15].wavesum__158_carry__1_i_3_n_0 ),
        .O(\channels[15].wavesum__158_carry__1_i_7_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__1_i_8 
       (.I0(\channels[15].wavesum__35_carry__1_n_7 ),
        .I1(\channels[15].wavesum_carry__1_n_7 ),
        .I2(\channels[15].wavesum__158_carry__1_i_4_n_0 ),
        .O(\channels[15].wavesum__158_carry__1_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__158_carry__2 
       (.CI(\channels[15].wavesum__158_carry__1_n_0 ),
        .CO({\channels[15].wavesum__158_carry__2_n_0 ,\channels[15].wavesum__158_carry__2_n_1 ,\channels[15].wavesum__158_carry__2_n_2 ,\channels[15].wavesum__158_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__158_carry__2_i_1_n_0 ,\channels[15].wavesum__158_carry__2_i_2_n_0 ,\channels[15].wavesum__158_carry__2_i_3_n_0 ,\channels[15].wavesum__158_carry__2_i_4_n_0 }),
        .O({\channels[15].wavesum__158_carry__2_n_4 ,\channels[15].wavesum__158_carry__2_n_5 ,\channels[15].wavesum__158_carry__2_n_6 ,\channels[15].wavesum__158_carry__2_n_7 }),
        .S({\channels[15].wavesum__158_carry__2_i_5_n_0 ,\channels[15].wavesum__158_carry__2_i_6_n_0 ,\channels[15].wavesum__158_carry__2_i_7_n_0 ,\channels[15].wavesum__158_carry__2_i_8_n_0 }));
  (* HLUTNM = "lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__2_i_1 
       (.I0(\channels[15].wavesum__35_carry__2_n_5 ),
        .I1(\channels[15].wavesum_carry__2_n_5 ),
        .O(\channels[15].wavesum__158_carry__2_i_1_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__2_i_2 
       (.I0(\channels[15].wavesum__35_carry__2_n_6 ),
        .I1(\channels[15].wavesum_carry__2_n_6 ),
        .O(\channels[15].wavesum__158_carry__2_i_2_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__2_i_3 
       (.I0(\channels[15].wavesum__35_carry__2_n_7 ),
        .I1(\channels[15].wavesum_carry__2_n_7 ),
        .O(\channels[15].wavesum__158_carry__2_i_3_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__2_i_4 
       (.I0(\channels[15].wavesum__35_carry__1_n_4 ),
        .I1(\channels[15].wavesum_carry__1_n_4 ),
        .O(\channels[15].wavesum__158_carry__2_i_4_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__2_i_5 
       (.I0(\channels[15].wavesum__35_carry__2_n_4 ),
        .I1(\channels[15].wavesum_carry__2_n_4 ),
        .I2(\channels[15].wavesum__158_carry__2_i_1_n_0 ),
        .O(\channels[15].wavesum__158_carry__2_i_5_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__2_i_6 
       (.I0(\channels[15].wavesum__35_carry__2_n_5 ),
        .I1(\channels[15].wavesum_carry__2_n_5 ),
        .I2(\channels[15].wavesum__158_carry__2_i_2_n_0 ),
        .O(\channels[15].wavesum__158_carry__2_i_6_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__2_i_7 
       (.I0(\channels[15].wavesum__35_carry__2_n_6 ),
        .I1(\channels[15].wavesum_carry__2_n_6 ),
        .I2(\channels[15].wavesum__158_carry__2_i_3_n_0 ),
        .O(\channels[15].wavesum__158_carry__2_i_7_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__2_i_8 
       (.I0(\channels[15].wavesum__35_carry__2_n_7 ),
        .I1(\channels[15].wavesum_carry__2_n_7 ),
        .I2(\channels[15].wavesum__158_carry__2_i_4_n_0 ),
        .O(\channels[15].wavesum__158_carry__2_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__158_carry__3 
       (.CI(\channels[15].wavesum__158_carry__2_n_0 ),
        .CO({\NLW_channels[15].wavesum__158_carry__3_CO_UNCONNECTED [3],\channels[15].wavesum__158_carry__3_n_1 ,\channels[15].wavesum__158_carry__3_n_2 ,\channels[15].wavesum__158_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\channels[15].wavesum__158_carry__3_i_1_n_0 ,\channels[15].wavesum__158_carry__3_i_2_n_0 ,\channels[15].wavesum__158_carry__3_i_3_n_0 }),
        .O({\channels[15].wavesum__158_carry__3_n_4 ,\channels[15].wavesum__158_carry__3_n_5 ,\channels[15].wavesum__158_carry__3_n_6 ,\channels[15].wavesum__158_carry__3_n_7 }),
        .S({\channels[15].wavesum__158_carry__3_i_4_n_0 ,\channels[15].wavesum__158_carry__3_i_5_n_0 ,\channels[15].wavesum__158_carry__3_i_6_n_0 ,\channels[15].wavesum__158_carry__3_i_7_n_0 }));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__158_carry__3_i_1 
       (.I0(\channels[15].wavesum__35_carry__3_n_6 ),
        .I1(\channels[15].wavesum_carry__3_n_6 ),
        .I2(\channels[3].wavesum [17]),
        .O(\channels[15].wavesum__158_carry__3_i_1_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__3_i_2 
       (.I0(\channels[15].wavesum__35_carry__3_n_7 ),
        .I1(\channels[15].wavesum_carry__3_n_7 ),
        .O(\channels[15].wavesum__158_carry__3_i_2_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry__3_i_3 
       (.I0(\channels[15].wavesum__35_carry__2_n_4 ),
        .I1(\channels[15].wavesum_carry__2_n_4 ),
        .O(\channels[15].wavesum__158_carry__3_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \channels[15].wavesum__158_carry__3_i_4 
       (.I0(\channels[3].wavesum [18]),
        .I1(\channels[15].wavesum__35_carry__3_n_1 ),
        .I2(\channels[15].wavesum_carry__3_n_1 ),
        .O(\channels[15].wavesum__158_carry__3_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__158_carry__3_i_5 
       (.I0(\channels[15].wavesum__158_carry__3_i_1_n_0 ),
        .I1(\channels[15].wavesum_carry__3_n_1 ),
        .I2(\channels[15].wavesum__35_carry__3_n_1 ),
        .I3(\channels[3].wavesum [18]),
        .O(\channels[15].wavesum__158_carry__3_i_5_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__158_carry__3_i_6 
       (.I0(\channels[15].wavesum__35_carry__3_n_6 ),
        .I1(\channels[15].wavesum_carry__3_n_6 ),
        .I2(\channels[3].wavesum [17]),
        .I3(\channels[15].wavesum__158_carry__3_i_2_n_0 ),
        .O(\channels[15].wavesum__158_carry__3_i_6_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry__3_i_7 
       (.I0(\channels[15].wavesum__35_carry__3_n_7 ),
        .I1(\channels[15].wavesum_carry__3_n_7 ),
        .I2(\channels[15].wavesum__158_carry__3_i_3_n_0 ),
        .O(\channels[15].wavesum__158_carry__3_i_7_n_0 ));
  CARRY4 \channels[15].wavesum__158_carry__3_i_8 
       (.CI(1'b0),
        .CO({\NLW_channels[15].wavesum__158_carry__3_i_8_CO_UNCONNECTED [3:2],\channels[3].wavesum [18],\NLW_channels[15].wavesum__158_carry__3_i_8_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_channels[15].wavesum__158_carry__3_i_8_O_UNCONNECTED [3:1],\channels[3].wavesum [17]}),
        .S({1'b0,1'b0,1'b1,CO}));
  (* HLUTNM = "lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry_i_1 
       (.I0(\channels[15].wavesum__35_carry_n_5 ),
        .I1(\channels[15].wavesum_carry_n_5 ),
        .O(\channels[15].wavesum__158_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__158_carry_i_2 
       (.I0(\channels[15].wavesum__35_carry_n_6 ),
        .I1(\channels[15].wavesum_carry_n_6 ),
        .O(\channels[15].wavesum__158_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry_i_3 
       (.I0(\channels[15].wavesum__35_carry_n_4 ),
        .I1(\channels[15].wavesum_carry_n_4 ),
        .I2(\channels[15].wavesum__158_carry_i_1_n_0 ),
        .O(\channels[15].wavesum__158_carry_i_3_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \channels[15].wavesum__158_carry_i_4 
       (.I0(\channels[15].wavesum__35_carry_n_5 ),
        .I1(\channels[15].wavesum_carry_n_5 ),
        .I2(\channels[15].wavesum__158_carry_i_2_n_0 ),
        .O(\channels[15].wavesum__158_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \channels[15].wavesum__158_carry_i_5 
       (.I0(\channels[15].wavesum__35_carry_n_6 ),
        .I1(\channels[15].wavesum_carry_n_6 ),
        .O(\channels[15].wavesum__158_carry_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__216_carry 
       (.CI(1'b0),
        .CO({\channels[15].wavesum__216_carry_n_0 ,\channels[15].wavesum__216_carry_n_1 ,\channels[15].wavesum__216_carry_n_2 ,\channels[15].wavesum__216_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__216_carry_i_1_n_0 ,\channels[15].wavesum__216_carry_i_2_n_0 ,\channels[15].wavesum__216_carry_i_3_n_0 ,1'b0}),
        .O(\NLW_channels[15].wavesum__216_carry_O_UNCONNECTED [3:0]),
        .S({\channels[15].wavesum__216_carry_i_4__1_n_0 ,\channels[15].wavesum__216_carry_i_5__0_n_0 ,\channels[15].wavesum__216_carry_i_6_n_0 ,\channels[15].wavesum__216_carry_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__216_carry__0 
       (.CI(\channels[15].wavesum__216_carry_n_0 ),
        .CO({\channels[15].wavesum__216_carry__0_n_0 ,\channels[15].wavesum__216_carry__0_n_1 ,\channels[15].wavesum__216_carry__0_n_2 ,\channels[15].wavesum__216_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__216_carry_i_1__0_n_0 ,\channels[15].wavesum__216_carry_i_2__0_n_0 ,\channels[15].wavesum__216_carry_i_3__0_n_0 ,\channels[15].wavesum__216_carry_i_4__0_n_0 }),
        .O(\NLW_channels[15].wavesum__216_carry__0_O_UNCONNECTED [3:0]),
        .S({\channels[15].wavesum__216_carry_i_5__1_n_0 ,\channels[15].wavesum__216_carry_i_6__0_n_0 ,\channels[15].wavesum__216_carry_i_7__0_n_0 ,\channels[15].wavesum__216_carry_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__216_carry__1 
       (.CI(\channels[15].wavesum__216_carry__0_n_0 ),
        .CO({\channels[15].wavesum__216_carry__1_n_0 ,\channels[15].wavesum__216_carry__1_n_1 ,\channels[15].wavesum__216_carry__1_n_2 ,\channels[15].wavesum__216_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__216_carry_i_1__1_n_0 ,\channels[15].wavesum__216_carry_i_2__1_n_0 ,\channels[15].wavesum__216_carry_i_3__1_n_0 ,\channels[15].wavesum__216_carry_i_4__2_n_0 }),
        .O(\NLW_channels[15].wavesum__216_carry__1_O_UNCONNECTED [3:0]),
        .S({\channels[15].wavesum__216_carry_i_5__2_n_0 ,\channels[15].wavesum__216_carry_i_6__1_n_0 ,\channels[15].wavesum__216_carry_i_7__1_n_0 ,\channels[15].wavesum__216_carry_i_8__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__216_carry__2 
       (.CI(\channels[15].wavesum__216_carry__1_n_0 ),
        .CO({\channels[15].wavesum__216_carry__2_n_0 ,\channels[15].wavesum__216_carry__2_n_1 ,\channels[15].wavesum__216_carry__2_n_2 ,\channels[15].wavesum__216_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\channels[15].wavesum__216_carry_i_1__2_n_0 ,\channels[15].wavesum__216_carry_i_2__2_n_0 ,\channels[15].wavesum__216_carry_i_3__2_n_0 ,\channels[15].wavesum__216_carry_i_4__3_n_0 }),
        .O(\NLW_channels[15].wavesum__216_carry__2_O_UNCONNECTED [3:0]),
        .S({\channels[15].wavesum__216_carry_i_5__3_n_0 ,\channels[15].wavesum__216_carry_i_6__2_n_0 ,\channels[15].wavesum__216_carry_i_7__2_n_0 ,\channels[15].wavesum__216_carry_i_8__1_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \channels[15].wavesum__216_carry__3 
       (.CI(\channels[15].wavesum__216_carry__2_n_0 ),
        .CO({\NLW_channels[15].wavesum__216_carry__3_CO_UNCONNECTED [3],\channels[15].wavesum__216_carry__3_n_1 ,\channels[15].wavesum__216_carry__3_n_2 ,\channels[15].wavesum__216_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\channels[15].wavesum__216_carry_i_1__3_n_0 ,\channels[15].wavesum__216_carry_i_2__3_n_0 ,\channels[15].wavesum__216_carry_i_3__3_n_0 }),
        .O({\banks[3].waveform ,\NLW_channels[15].wavesum__216_carry__3_O_UNCONNECTED [0]}),
        .S({\channels[15].wavesum__216_carry_i_4_n_0 ,\channels[15].wavesum__216_carry_i_5_n_0 ,\channels[15].wavesum__216_carry_i_6__3_n_0 ,\channels[15].wavesum__216_carry_i_7__3_n_0 }));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_1 
       (.I0(\channels[15].wavesum__158_carry_n_5 ),
        .I1(\channels[15].wavesum__121_carry_n_5 ),
        .I2(\channels[15].wavesum__85_carry_n_5 ),
        .O(\channels[15].wavesum__216_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_1__0 
       (.I0(\channels[15].wavesum__158_carry__0_n_5 ),
        .I1(\channels[15].wavesum__121_carry__0_n_5 ),
        .I2(\channels[15].wavesum__85_carry__0_n_5 ),
        .O(\channels[15].wavesum__216_carry_i_1__0_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_1__1 
       (.I0(\channels[15].wavesum__158_carry__1_n_5 ),
        .I1(\channels[15].wavesum__121_carry__1_n_5 ),
        .I2(\channels[15].wavesum__85_carry__1_n_5 ),
        .O(\channels[15].wavesum__216_carry_i_1__1_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_1__2 
       (.I0(\channels[15].wavesum__158_carry__2_n_5 ),
        .I1(\channels[15].wavesum__121_carry__2_n_5 ),
        .I2(\channels[15].wavesum__85_carry__2_n_5 ),
        .O(\channels[15].wavesum__216_carry_i_1__2_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_1__3 
       (.I0(\channels[15].wavesum__158_carry__3_n_6 ),
        .I1(\channels[15].wavesum__121_carry__3_n_6 ),
        .I2(\channels[15].wavesum__85_carry__3_n_6 ),
        .O(\channels[15].wavesum__216_carry_i_1__3_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_2 
       (.I0(\channels[15].wavesum__158_carry_n_6 ),
        .I1(\channels[15].wavesum__121_carry_n_6 ),
        .I2(\channels[15].wavesum__85_carry_n_6 ),
        .O(\channels[15].wavesum__216_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_2__0 
       (.I0(\channels[15].wavesum__158_carry__0_n_6 ),
        .I1(\channels[15].wavesum__121_carry__0_n_6 ),
        .I2(\channels[15].wavesum__85_carry__0_n_6 ),
        .O(\channels[15].wavesum__216_carry_i_2__0_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_2__1 
       (.I0(\channels[15].wavesum__158_carry__1_n_6 ),
        .I1(\channels[15].wavesum__121_carry__1_n_6 ),
        .I2(\channels[15].wavesum__85_carry__1_n_6 ),
        .O(\channels[15].wavesum__216_carry_i_2__1_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_2__2 
       (.I0(\channels[15].wavesum__158_carry__2_n_6 ),
        .I1(\channels[15].wavesum__121_carry__2_n_6 ),
        .I2(\channels[15].wavesum__85_carry__2_n_6 ),
        .O(\channels[15].wavesum__216_carry_i_2__2_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_2__3 
       (.I0(\channels[15].wavesum__158_carry__3_n_7 ),
        .I1(\channels[15].wavesum__121_carry__3_n_7 ),
        .I2(\channels[15].wavesum__85_carry__3_n_7 ),
        .O(\channels[15].wavesum__216_carry_i_2__3_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \channels[15].wavesum__216_carry_i_3 
       (.I0(\channels[15].wavesum_carry_n_7 ),
        .I1(\channels[15].wavesum__158_carry_n_7 ),
        .O(\channels[15].wavesum__216_carry_i_3_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_3__0 
       (.I0(\channels[15].wavesum__158_carry__0_n_7 ),
        .I1(\channels[15].wavesum__121_carry__0_n_7 ),
        .I2(\channels[15].wavesum__85_carry__0_n_7 ),
        .O(\channels[15].wavesum__216_carry_i_3__0_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_3__1 
       (.I0(\channels[15].wavesum__158_carry__1_n_7 ),
        .I1(\channels[15].wavesum__121_carry__1_n_7 ),
        .I2(\channels[15].wavesum__85_carry__1_n_7 ),
        .O(\channels[15].wavesum__216_carry_i_3__1_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_3__2 
       (.I0(\channels[15].wavesum__158_carry__2_n_7 ),
        .I1(\channels[15].wavesum__121_carry__2_n_7 ),
        .I2(\channels[15].wavesum__85_carry__2_n_7 ),
        .O(\channels[15].wavesum__216_carry_i_3__2_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_3__3 
       (.I0(\channels[15].wavesum__158_carry__2_n_4 ),
        .I1(\channels[15].wavesum__121_carry__2_n_4 ),
        .I2(\channels[15].wavesum__85_carry__2_n_4 ),
        .O(\channels[15].wavesum__216_carry_i_3__3_n_0 ));
  LUT4 #(
    .INIT(16'hE187)) 
    \channels[15].wavesum__216_carry_i_4 
       (.I0(\channels[15].wavesum__158_carry__3_n_5 ),
        .I1(\channels[15].wavesum__121_carry__3_n_1 ),
        .I2(\channels[15].wavesum__158_carry__3_n_4 ),
        .I3(\channels[15].wavesum__85_carry__3_n_1 ),
        .O(\channels[15].wavesum__216_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_4__0 
       (.I0(\channels[15].wavesum__158_carry_n_4 ),
        .I1(\channels[15].wavesum__121_carry_n_4 ),
        .I2(\channels[15].wavesum__85_carry_n_4 ),
        .O(\channels[15].wavesum__216_carry_i_4__0_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_4__1 
       (.I0(\channels[15].wavesum__158_carry_n_4 ),
        .I1(\channels[15].wavesum__121_carry_n_4 ),
        .I2(\channels[15].wavesum__85_carry_n_4 ),
        .I3(\channels[15].wavesum__216_carry_i_1_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_4__1_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_4__2 
       (.I0(\channels[15].wavesum__158_carry__0_n_4 ),
        .I1(\channels[15].wavesum__121_carry__0_n_4 ),
        .I2(\channels[15].wavesum__85_carry__0_n_4 ),
        .O(\channels[15].wavesum__216_carry_i_4__2_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \channels[15].wavesum__216_carry_i_4__3 
       (.I0(\channels[15].wavesum__158_carry__1_n_4 ),
        .I1(\channels[15].wavesum__121_carry__1_n_4 ),
        .I2(\channels[15].wavesum__85_carry__1_n_4 ),
        .O(\channels[15].wavesum__216_carry_i_4__3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_5 
       (.I0(\channels[15].wavesum__216_carry_i_1__3_n_0 ),
        .I1(\channels[15].wavesum__121_carry__3_n_1 ),
        .I2(\channels[15].wavesum__158_carry__3_n_5 ),
        .I3(\channels[15].wavesum__85_carry__3_n_1 ),
        .O(\channels[15].wavesum__216_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_5__0 
       (.I0(\channels[15].wavesum__158_carry_n_5 ),
        .I1(\channels[15].wavesum__121_carry_n_5 ),
        .I2(\channels[15].wavesum__85_carry_n_5 ),
        .I3(\channels[15].wavesum__216_carry_i_2_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_5__0_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_5__1 
       (.I0(\channels[15].wavesum__158_carry__0_n_4 ),
        .I1(\channels[15].wavesum__121_carry__0_n_4 ),
        .I2(\channels[15].wavesum__85_carry__0_n_4 ),
        .I3(\channels[15].wavesum__216_carry_i_1__0_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_5__1_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_5__2 
       (.I0(\channels[15].wavesum__158_carry__1_n_4 ),
        .I1(\channels[15].wavesum__121_carry__1_n_4 ),
        .I2(\channels[15].wavesum__85_carry__1_n_4 ),
        .I3(\channels[15].wavesum__216_carry_i_1__1_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_5__2_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_5__3 
       (.I0(\channels[15].wavesum__158_carry__2_n_4 ),
        .I1(\channels[15].wavesum__121_carry__2_n_4 ),
        .I2(\channels[15].wavesum__85_carry__2_n_4 ),
        .I3(\channels[15].wavesum__216_carry_i_1__2_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_5__3_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_6 
       (.I0(\channels[15].wavesum__158_carry_n_6 ),
        .I1(\channels[15].wavesum__121_carry_n_6 ),
        .I2(\channels[15].wavesum__85_carry_n_6 ),
        .I3(\channels[15].wavesum__216_carry_i_3_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_6__0 
       (.I0(\channels[15].wavesum__158_carry__0_n_5 ),
        .I1(\channels[15].wavesum__121_carry__0_n_5 ),
        .I2(\channels[15].wavesum__85_carry__0_n_5 ),
        .I3(\channels[15].wavesum__216_carry_i_2__0_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_6__0_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_6__1 
       (.I0(\channels[15].wavesum__158_carry__1_n_5 ),
        .I1(\channels[15].wavesum__121_carry__1_n_5 ),
        .I2(\channels[15].wavesum__85_carry__1_n_5 ),
        .I3(\channels[15].wavesum__216_carry_i_2__1_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_6__1_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_6__2 
       (.I0(\channels[15].wavesum__158_carry__2_n_5 ),
        .I1(\channels[15].wavesum__121_carry__2_n_5 ),
        .I2(\channels[15].wavesum__85_carry__2_n_5 ),
        .I3(\channels[15].wavesum__216_carry_i_2__2_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_6__2_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_6__3 
       (.I0(\channels[15].wavesum__158_carry__3_n_6 ),
        .I1(\channels[15].wavesum__121_carry__3_n_6 ),
        .I2(\channels[15].wavesum__85_carry__3_n_6 ),
        .I3(\channels[15].wavesum__216_carry_i_2__3_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_6__3_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \channels[15].wavesum__216_carry_i_7 
       (.I0(\channels[15].wavesum_carry_n_7 ),
        .I1(\channels[15].wavesum__158_carry_n_7 ),
        .O(\channels[15].wavesum__216_carry_i_7_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_7__0 
       (.I0(\channels[15].wavesum__158_carry__0_n_6 ),
        .I1(\channels[15].wavesum__121_carry__0_n_6 ),
        .I2(\channels[15].wavesum__85_carry__0_n_6 ),
        .I3(\channels[15].wavesum__216_carry_i_3__0_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_7__0_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_7__1 
       (.I0(\channels[15].wavesum__158_carry__1_n_6 ),
        .I1(\channels[15].wavesum__121_carry__1_n_6 ),
        .I2(\channels[15].wavesum__85_carry__1_n_6 ),
        .I3(\channels[15].wavesum__216_carry_i_3__1_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_7__1_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_7__2 
       (.I0(\channels[15].wavesum__158_carry__2_n_6 ),
        .I1(\channels[15].wavesum__121_carry__2_n_6 ),
        .I2(\channels[15].wavesum__85_carry__2_n_6 ),
        .I3(\channels[15].wavesum__216_carry_i_3__2_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_7__2_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_7__3 
       (.I0(\channels[15].wavesum__158_carry__3_n_7 ),
        .I1(\channels[15].wavesum__121_carry__3_n_7 ),
        .I2(\channels[15].wavesum__85_carry__3_n_7 ),
        .I3(\channels[15].wavesum__216_carry_i_3__3_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_7__3_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_8 
       (.I0(\channels[15].wavesum__158_carry__0_n_7 ),
        .I1(\channels[15].wavesum__121_carry__0_n_7 ),
        .I2(\channels[15].wavesum__85_carry__0_n_7 ),
        .I3(\channels[15].wavesum__216_carry_i_4__0_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_8_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_8__0 
       (.I0(\channels[15].wavesum__158_carry__1_n_7 ),
        .I1(\channels[15].wavesum__121_carry__1_n_7 ),
        .I2(\channels[15].wavesum__85_carry__1_n_7 ),
        .I3(\channels[15].wavesum__216_carry_i_4__2_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_8__0_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \channels[15].wavesum__216_carry_i_8__1 
       (.I0(\channels[15].wavesum__158_carry__2_n_7 ),
        .I1(\channels[15].wavesum__121_carry__2_n_7 ),
        .I2(\channels[15].wavesum__85_carry__2_n_7 ),
        .I3(\channels[15].wavesum__216_carry_i_4__3_n_0 ),
        .O(\channels[15].wavesum__216_carry_i_8__1_n_0 ));
  CARRY4 \channels[15].wavesum__35_carry 
       (.CI(1'b0),
        .CO({\channels[15].wavesum__35_carry_n_0 ,\channels[15].wavesum__35_carry_n_1 ,\channels[15].wavesum__35_carry_n_2 ,\channels[15].wavesum__35_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\channels[15].wavesum__35_carry_n_4 ,\channels[15].wavesum__35_carry_n_5 ,\channels[15].wavesum__35_carry_n_6 ,\NLW_channels[15].wavesum__35_carry_O_UNCONNECTED [0]}),
        .S({1'b1,1'b1,1'b1,1'b0}));
  CARRY4 \channels[15].wavesum__35_carry__0 
       (.CI(\channels[15].wavesum__35_carry_n_0 ),
        .CO({\channels[15].wavesum__35_carry__0_n_0 ,\channels[15].wavesum__35_carry__0_n_1 ,\channels[15].wavesum__35_carry__0_n_2 ,\channels[15].wavesum__35_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__35_carry__0_n_4 ,\channels[15].wavesum__35_carry__0_n_5 ,\channels[15].wavesum__35_carry__0_n_6 ,\channels[15].wavesum__35_carry__0_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__35_carry__1 
       (.CI(\channels[15].wavesum__35_carry__0_n_0 ),
        .CO({\channels[15].wavesum__35_carry__1_n_0 ,\channels[15].wavesum__35_carry__1_n_1 ,\channels[15].wavesum__35_carry__1_n_2 ,\channels[15].wavesum__35_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__35_carry__1_n_4 ,\channels[15].wavesum__35_carry__1_n_5 ,\channels[15].wavesum__35_carry__1_n_6 ,\channels[15].wavesum__35_carry__1_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__35_carry__2 
       (.CI(\channels[15].wavesum__35_carry__1_n_0 ),
        .CO({\channels[15].wavesum__35_carry__2_n_0 ,\channels[15].wavesum__35_carry__2_n_1 ,\channels[15].wavesum__35_carry__2_n_2 ,\channels[15].wavesum__35_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\channels[15].wavesum__35_carry__2_n_4 ,\channels[15].wavesum__35_carry__2_n_5 ,\channels[15].wavesum__35_carry__2_n_6 ,\channels[15].wavesum__35_carry__2_n_7 }),
        .S({1'b1,1'b1,1'b1,1'b1}));
  CARRY4 \channels[15].wavesum__35_carry__3 
       (.CI(\channels[15].wavesum__35_carry__2_n_0 ),
        .CO({\NLW_channels[15].wavesum__35_carry__3_CO_UNCONNECTED [3],\channels[15].wavesum__35_carry__3_n_1 ,\NLW_channels[15].wavesum__35_carry__3_CO_UNCONNECTED [1],\channels[15].wavesum__35_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_channels[15].wavesum__35_carry__3_O_UNCONNECTED [3:2],\channels[15].wavesum__35_carry__3_n_6 ,\channels[15].wavesum__35_carry__3_n_7 }),
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
  LUT3 #(
    .INIT(8'hFE)) 
    \inst/ 
       (.I0(\banks[3].waveform [15]),
        .I1(\banks[3].waveform [14]),
        .I2(\banks[3].waveform [13]),
        .O(Buzzer));
endmodule

(* ORIG_REF_NAME = "Synth" *) 
module system_Synth_0_0_Synth
   (Buzzer,
    CO);
  output Buzzer;
  input [0:0]CO;

  wire Buzzer;
  wire [0:0]CO;

  system_Synth_0_0_Bank \banks[0].bank 
       (.Buzzer(Buzzer),
        .CO(CO));
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
