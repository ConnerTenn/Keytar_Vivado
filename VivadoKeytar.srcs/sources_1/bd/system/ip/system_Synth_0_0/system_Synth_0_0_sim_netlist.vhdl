-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Jul 15 03:45:52 2020
-- Host        : ConnerServer running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim
--               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_Synth_0_0/system_Synth_0_0_sim_netlist.vhdl
-- Design      : system_Synth_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Synth_0_0_Bank is
  port (
    Buzzer : out STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_Synth_0_0_Bank : entity is "Bank";
end system_Synth_0_0_Bank;

architecture STRUCTURE of system_Synth_0_0_Bank is
  signal \banks[3].waveform\ : STD_LOGIC_VECTOR ( 15 downto 13 );
  signal \channels[15].wavesum__121_carry__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__0_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__0_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__0_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__0_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__0_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__0_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__0_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__1_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__1_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__1_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__1_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__1_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__1_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__1_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__2_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__2_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__2_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__2_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__2_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__2_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__2_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__0_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__1_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__2_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry__3_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_i_1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_i_2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_i_3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_i_4_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_i_5_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__158_carry_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__0_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__0_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__0_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__1_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__1_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__1_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__2_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__2_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__2_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__3_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__3_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry__3_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_1__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_2__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_3__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_4__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_4_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_5__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_5__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_5_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_6__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_6__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_6_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_7__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_7__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_7_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_i_8_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__216_carry_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__0_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__0_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__0_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__0_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__0_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__0_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__0_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__1_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__1_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__1_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__1_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__1_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__1_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__1_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__2_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__2_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__2_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__2_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__2_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__2_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__2_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__3_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__3_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__3_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry__3_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__35_carry_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__0_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__0_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__0_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__0_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__0_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__0_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__0_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__1_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__1_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__1_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__1_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__1_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__1_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__1_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__2_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__2_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__2_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__2_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__2_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__2_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__2_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__3_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__3_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__3_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry__3_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__85_carry_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__0_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__0_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__0_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__0_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__0_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__0_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__0_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__1_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__1_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__1_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__1_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__1_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__1_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__1_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__2_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__2_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__2_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__2_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__2_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__2_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__2_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__3_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__3_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__3_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum_carry__3_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum_carry_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum_carry_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum_carry_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum_carry_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum_carry_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum_carry_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum_carry_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum_carry_n_7\ : STD_LOGIC;
  signal \channels[3].wavesum\ : STD_LOGIC_VECTOR ( 18 downto 17 );
  signal \NLW_channels[15].wavesum__121_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_channels[15].wavesum__121_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__121_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_channels[15].wavesum__158_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_channels[15].wavesum__158_carry__3_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__158_carry__3_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__216_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__216_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__216_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__216_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__216_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_channels[15].wavesum__216_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_channels[15].wavesum__35_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_channels[15].wavesum__35_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__35_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_channels[15].wavesum__85_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_channels[15].wavesum__85_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__85_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_channels[15].wavesum_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__158_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__158_carry__0\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \channels[15].wavesum__158_carry__0_i_1\ : label is "lutpair5";
  attribute HLUTNM of \channels[15].wavesum__158_carry__0_i_2\ : label is "lutpair4";
  attribute HLUTNM of \channels[15].wavesum__158_carry__0_i_3\ : label is "lutpair3";
  attribute HLUTNM of \channels[15].wavesum__158_carry__0_i_4\ : label is "lutpair2";
  attribute HLUTNM of \channels[15].wavesum__158_carry__0_i_5\ : label is "lutpair6";
  attribute HLUTNM of \channels[15].wavesum__158_carry__0_i_6\ : label is "lutpair5";
  attribute HLUTNM of \channels[15].wavesum__158_carry__0_i_7\ : label is "lutpair4";
  attribute HLUTNM of \channels[15].wavesum__158_carry__0_i_8\ : label is "lutpair3";
  attribute ADDER_THRESHOLD of \channels[15].wavesum__158_carry__1\ : label is 35;
  attribute HLUTNM of \channels[15].wavesum__158_carry__1_i_1\ : label is "lutpair9";
  attribute HLUTNM of \channels[15].wavesum__158_carry__1_i_2\ : label is "lutpair8";
  attribute HLUTNM of \channels[15].wavesum__158_carry__1_i_3\ : label is "lutpair7";
  attribute HLUTNM of \channels[15].wavesum__158_carry__1_i_4\ : label is "lutpair6";
  attribute HLUTNM of \channels[15].wavesum__158_carry__1_i_5\ : label is "lutpair10";
  attribute HLUTNM of \channels[15].wavesum__158_carry__1_i_6\ : label is "lutpair9";
  attribute HLUTNM of \channels[15].wavesum__158_carry__1_i_7\ : label is "lutpair8";
  attribute HLUTNM of \channels[15].wavesum__158_carry__1_i_8\ : label is "lutpair7";
  attribute ADDER_THRESHOLD of \channels[15].wavesum__158_carry__2\ : label is 35;
  attribute HLUTNM of \channels[15].wavesum__158_carry__2_i_1\ : label is "lutpair13";
  attribute HLUTNM of \channels[15].wavesum__158_carry__2_i_2\ : label is "lutpair12";
  attribute HLUTNM of \channels[15].wavesum__158_carry__2_i_3\ : label is "lutpair11";
  attribute HLUTNM of \channels[15].wavesum__158_carry__2_i_4\ : label is "lutpair10";
  attribute HLUTNM of \channels[15].wavesum__158_carry__2_i_5\ : label is "lutpair14";
  attribute HLUTNM of \channels[15].wavesum__158_carry__2_i_6\ : label is "lutpair13";
  attribute HLUTNM of \channels[15].wavesum__158_carry__2_i_7\ : label is "lutpair12";
  attribute HLUTNM of \channels[15].wavesum__158_carry__2_i_8\ : label is "lutpair11";
  attribute ADDER_THRESHOLD of \channels[15].wavesum__158_carry__3\ : label is 35;
  attribute HLUTNM of \channels[15].wavesum__158_carry__3_i_1\ : label is "lutpair16";
  attribute HLUTNM of \channels[15].wavesum__158_carry__3_i_2\ : label is "lutpair15";
  attribute HLUTNM of \channels[15].wavesum__158_carry__3_i_3\ : label is "lutpair14";
  attribute HLUTNM of \channels[15].wavesum__158_carry__3_i_6\ : label is "lutpair16";
  attribute HLUTNM of \channels[15].wavesum__158_carry__3_i_7\ : label is "lutpair15";
  attribute HLUTNM of \channels[15].wavesum__158_carry_i_1\ : label is "lutpair1";
  attribute HLUTNM of \channels[15].wavesum__158_carry_i_2\ : label is "lutpair0";
  attribute HLUTNM of \channels[15].wavesum__158_carry_i_3\ : label is "lutpair2";
  attribute HLUTNM of \channels[15].wavesum__158_carry_i_4\ : label is "lutpair1";
  attribute HLUTNM of \channels[15].wavesum__158_carry_i_5\ : label is "lutpair0";
  attribute ADDER_THRESHOLD of \channels[15].wavesum__216_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__216_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__216_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__216_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__216_carry__3\ : label is 35;
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_1\ : label is "lutpair19";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_1__0\ : label is "lutpair23";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_1__1\ : label is "lutpair27";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_1__2\ : label is "lutpair31";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_1__3\ : label is "lutpair34";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_2\ : label is "lutpair18";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_2__0\ : label is "lutpair22";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_2__1\ : label is "lutpair26";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_2__2\ : label is "lutpair30";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_2__3\ : label is "lutpair33";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_3\ : label is "lutpair17";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_3__0\ : label is "lutpair21";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_3__1\ : label is "lutpair25";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_3__2\ : label is "lutpair29";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_3__3\ : label is "lutpair32";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_4__0\ : label is "lutpair20";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_4__1\ : label is "lutpair20";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_4__2\ : label is "lutpair24";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_4__3\ : label is "lutpair28";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_5__0\ : label is "lutpair19";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_5__1\ : label is "lutpair24";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_5__2\ : label is "lutpair28";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_5__3\ : label is "lutpair32";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_6\ : label is "lutpair18";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_6__0\ : label is "lutpair23";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_6__1\ : label is "lutpair27";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_6__2\ : label is "lutpair31";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_6__3\ : label is "lutpair34";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_7\ : label is "lutpair17";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_7__0\ : label is "lutpair22";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_7__1\ : label is "lutpair26";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_7__2\ : label is "lutpair30";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_7__3\ : label is "lutpair33";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_8\ : label is "lutpair21";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_8__0\ : label is "lutpair25";
  attribute HLUTNM of \channels[15].wavesum__216_carry_i_8__1\ : label is "lutpair29";
begin
\channels[15].wavesum__121_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \channels[15].wavesum__121_carry_n_0\,
      CO(2) => \channels[15].wavesum__121_carry_n_1\,
      CO(1) => \channels[15].wavesum__121_carry_n_2\,
      CO(0) => \channels[15].wavesum__121_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \channels[15].wavesum__121_carry_n_4\,
      O(2) => \channels[15].wavesum__121_carry_n_5\,
      O(1) => \channels[15].wavesum__121_carry_n_6\,
      O(0) => \NLW_channels[15].wavesum__121_carry_O_UNCONNECTED\(0),
      S(3 downto 0) => B"1110"
    );
\channels[15].wavesum__121_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__121_carry_n_0\,
      CO(3) => \channels[15].wavesum__121_carry__0_n_0\,
      CO(2) => \channels[15].wavesum__121_carry__0_n_1\,
      CO(1) => \channels[15].wavesum__121_carry__0_n_2\,
      CO(0) => \channels[15].wavesum__121_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__121_carry__0_n_4\,
      O(2) => \channels[15].wavesum__121_carry__0_n_5\,
      O(1) => \channels[15].wavesum__121_carry__0_n_6\,
      O(0) => \channels[15].wavesum__121_carry__0_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__121_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__121_carry__0_n_0\,
      CO(3) => \channels[15].wavesum__121_carry__1_n_0\,
      CO(2) => \channels[15].wavesum__121_carry__1_n_1\,
      CO(1) => \channels[15].wavesum__121_carry__1_n_2\,
      CO(0) => \channels[15].wavesum__121_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__121_carry__1_n_4\,
      O(2) => \channels[15].wavesum__121_carry__1_n_5\,
      O(1) => \channels[15].wavesum__121_carry__1_n_6\,
      O(0) => \channels[15].wavesum__121_carry__1_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__121_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__121_carry__1_n_0\,
      CO(3) => \channels[15].wavesum__121_carry__2_n_0\,
      CO(2) => \channels[15].wavesum__121_carry__2_n_1\,
      CO(1) => \channels[15].wavesum__121_carry__2_n_2\,
      CO(0) => \channels[15].wavesum__121_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__121_carry__2_n_4\,
      O(2) => \channels[15].wavesum__121_carry__2_n_5\,
      O(1) => \channels[15].wavesum__121_carry__2_n_6\,
      O(0) => \channels[15].wavesum__121_carry__2_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__121_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__121_carry__2_n_0\,
      CO(3) => \NLW_channels[15].wavesum__121_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \channels[15].wavesum__121_carry__3_n_1\,
      CO(1) => \NLW_channels[15].wavesum__121_carry__3_CO_UNCONNECTED\(1),
      CO(0) => \channels[15].wavesum__121_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_channels[15].wavesum__121_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1) => \channels[15].wavesum__121_carry__3_n_6\,
      O(0) => \channels[15].wavesum__121_carry__3_n_7\,
      S(3 downto 0) => B"0111"
    );
\channels[15].wavesum__158_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \channels[15].wavesum__158_carry_n_0\,
      CO(2) => \channels[15].wavesum__158_carry_n_1\,
      CO(1) => \channels[15].wavesum__158_carry_n_2\,
      CO(0) => \channels[15].wavesum__158_carry_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__158_carry_i_1_n_0\,
      DI(2) => \channels[15].wavesum__158_carry_i_2_n_0\,
      DI(1 downto 0) => B"00",
      O(3) => \channels[15].wavesum__158_carry_n_4\,
      O(2) => \channels[15].wavesum__158_carry_n_5\,
      O(1) => \channels[15].wavesum__158_carry_n_6\,
      O(0) => \channels[15].wavesum__158_carry_n_7\,
      S(3) => \channels[15].wavesum__158_carry_i_3_n_0\,
      S(2) => \channels[15].wavesum__158_carry_i_4_n_0\,
      S(1) => \channels[15].wavesum__158_carry_i_5_n_0\,
      S(0) => '0'
    );
\channels[15].wavesum__158_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__158_carry_n_0\,
      CO(3) => \channels[15].wavesum__158_carry__0_n_0\,
      CO(2) => \channels[15].wavesum__158_carry__0_n_1\,
      CO(1) => \channels[15].wavesum__158_carry__0_n_2\,
      CO(0) => \channels[15].wavesum__158_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__158_carry__0_i_1_n_0\,
      DI(2) => \channels[15].wavesum__158_carry__0_i_2_n_0\,
      DI(1) => \channels[15].wavesum__158_carry__0_i_3_n_0\,
      DI(0) => \channels[15].wavesum__158_carry__0_i_4_n_0\,
      O(3) => \channels[15].wavesum__158_carry__0_n_4\,
      O(2) => \channels[15].wavesum__158_carry__0_n_5\,
      O(1) => \channels[15].wavesum__158_carry__0_n_6\,
      O(0) => \channels[15].wavesum__158_carry__0_n_7\,
      S(3) => \channels[15].wavesum__158_carry__0_i_5_n_0\,
      S(2) => \channels[15].wavesum__158_carry__0_i_6_n_0\,
      S(1) => \channels[15].wavesum__158_carry__0_i_7_n_0\,
      S(0) => \channels[15].wavesum__158_carry__0_i_8_n_0\
    );
\channels[15].wavesum__158_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__0_n_5\,
      I1 => \channels[15].wavesum_carry__0_n_5\,
      O => \channels[15].wavesum__158_carry__0_i_1_n_0\
    );
\channels[15].wavesum__158_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__0_n_6\,
      I1 => \channels[15].wavesum_carry__0_n_6\,
      O => \channels[15].wavesum__158_carry__0_i_2_n_0\
    );
\channels[15].wavesum__158_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__0_n_7\,
      I1 => \channels[15].wavesum_carry__0_n_7\,
      O => \channels[15].wavesum__158_carry__0_i_3_n_0\
    );
\channels[15].wavesum__158_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry_n_4\,
      I1 => \channels[15].wavesum_carry_n_4\,
      O => \channels[15].wavesum__158_carry__0_i_4_n_0\
    );
\channels[15].wavesum__158_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__0_n_4\,
      I1 => \channels[15].wavesum_carry__0_n_4\,
      I2 => \channels[15].wavesum__158_carry__0_i_1_n_0\,
      O => \channels[15].wavesum__158_carry__0_i_5_n_0\
    );
\channels[15].wavesum__158_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__0_n_5\,
      I1 => \channels[15].wavesum_carry__0_n_5\,
      I2 => \channels[15].wavesum__158_carry__0_i_2_n_0\,
      O => \channels[15].wavesum__158_carry__0_i_6_n_0\
    );
\channels[15].wavesum__158_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__0_n_6\,
      I1 => \channels[15].wavesum_carry__0_n_6\,
      I2 => \channels[15].wavesum__158_carry__0_i_3_n_0\,
      O => \channels[15].wavesum__158_carry__0_i_7_n_0\
    );
\channels[15].wavesum__158_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__0_n_7\,
      I1 => \channels[15].wavesum_carry__0_n_7\,
      I2 => \channels[15].wavesum__158_carry__0_i_4_n_0\,
      O => \channels[15].wavesum__158_carry__0_i_8_n_0\
    );
\channels[15].wavesum__158_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__158_carry__0_n_0\,
      CO(3) => \channels[15].wavesum__158_carry__1_n_0\,
      CO(2) => \channels[15].wavesum__158_carry__1_n_1\,
      CO(1) => \channels[15].wavesum__158_carry__1_n_2\,
      CO(0) => \channels[15].wavesum__158_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__158_carry__1_i_1_n_0\,
      DI(2) => \channels[15].wavesum__158_carry__1_i_2_n_0\,
      DI(1) => \channels[15].wavesum__158_carry__1_i_3_n_0\,
      DI(0) => \channels[15].wavesum__158_carry__1_i_4_n_0\,
      O(3) => \channels[15].wavesum__158_carry__1_n_4\,
      O(2) => \channels[15].wavesum__158_carry__1_n_5\,
      O(1) => \channels[15].wavesum__158_carry__1_n_6\,
      O(0) => \channels[15].wavesum__158_carry__1_n_7\,
      S(3) => \channels[15].wavesum__158_carry__1_i_5_n_0\,
      S(2) => \channels[15].wavesum__158_carry__1_i_6_n_0\,
      S(1) => \channels[15].wavesum__158_carry__1_i_7_n_0\,
      S(0) => \channels[15].wavesum__158_carry__1_i_8_n_0\
    );
\channels[15].wavesum__158_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__1_n_5\,
      I1 => \channels[15].wavesum_carry__1_n_5\,
      O => \channels[15].wavesum__158_carry__1_i_1_n_0\
    );
\channels[15].wavesum__158_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__1_n_6\,
      I1 => \channels[15].wavesum_carry__1_n_6\,
      O => \channels[15].wavesum__158_carry__1_i_2_n_0\
    );
\channels[15].wavesum__158_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__1_n_7\,
      I1 => \channels[15].wavesum_carry__1_n_7\,
      O => \channels[15].wavesum__158_carry__1_i_3_n_0\
    );
\channels[15].wavesum__158_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__0_n_4\,
      I1 => \channels[15].wavesum_carry__0_n_4\,
      O => \channels[15].wavesum__158_carry__1_i_4_n_0\
    );
\channels[15].wavesum__158_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__1_n_4\,
      I1 => \channels[15].wavesum_carry__1_n_4\,
      I2 => \channels[15].wavesum__158_carry__1_i_1_n_0\,
      O => \channels[15].wavesum__158_carry__1_i_5_n_0\
    );
\channels[15].wavesum__158_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__1_n_5\,
      I1 => \channels[15].wavesum_carry__1_n_5\,
      I2 => \channels[15].wavesum__158_carry__1_i_2_n_0\,
      O => \channels[15].wavesum__158_carry__1_i_6_n_0\
    );
\channels[15].wavesum__158_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__1_n_6\,
      I1 => \channels[15].wavesum_carry__1_n_6\,
      I2 => \channels[15].wavesum__158_carry__1_i_3_n_0\,
      O => \channels[15].wavesum__158_carry__1_i_7_n_0\
    );
\channels[15].wavesum__158_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__1_n_7\,
      I1 => \channels[15].wavesum_carry__1_n_7\,
      I2 => \channels[15].wavesum__158_carry__1_i_4_n_0\,
      O => \channels[15].wavesum__158_carry__1_i_8_n_0\
    );
\channels[15].wavesum__158_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__158_carry__1_n_0\,
      CO(3) => \channels[15].wavesum__158_carry__2_n_0\,
      CO(2) => \channels[15].wavesum__158_carry__2_n_1\,
      CO(1) => \channels[15].wavesum__158_carry__2_n_2\,
      CO(0) => \channels[15].wavesum__158_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__158_carry__2_i_1_n_0\,
      DI(2) => \channels[15].wavesum__158_carry__2_i_2_n_0\,
      DI(1) => \channels[15].wavesum__158_carry__2_i_3_n_0\,
      DI(0) => \channels[15].wavesum__158_carry__2_i_4_n_0\,
      O(3) => \channels[15].wavesum__158_carry__2_n_4\,
      O(2) => \channels[15].wavesum__158_carry__2_n_5\,
      O(1) => \channels[15].wavesum__158_carry__2_n_6\,
      O(0) => \channels[15].wavesum__158_carry__2_n_7\,
      S(3) => \channels[15].wavesum__158_carry__2_i_5_n_0\,
      S(2) => \channels[15].wavesum__158_carry__2_i_6_n_0\,
      S(1) => \channels[15].wavesum__158_carry__2_i_7_n_0\,
      S(0) => \channels[15].wavesum__158_carry__2_i_8_n_0\
    );
\channels[15].wavesum__158_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__2_n_5\,
      I1 => \channels[15].wavesum_carry__2_n_5\,
      O => \channels[15].wavesum__158_carry__2_i_1_n_0\
    );
\channels[15].wavesum__158_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__2_n_6\,
      I1 => \channels[15].wavesum_carry__2_n_6\,
      O => \channels[15].wavesum__158_carry__2_i_2_n_0\
    );
\channels[15].wavesum__158_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__2_n_7\,
      I1 => \channels[15].wavesum_carry__2_n_7\,
      O => \channels[15].wavesum__158_carry__2_i_3_n_0\
    );
\channels[15].wavesum__158_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__1_n_4\,
      I1 => \channels[15].wavesum_carry__1_n_4\,
      O => \channels[15].wavesum__158_carry__2_i_4_n_0\
    );
\channels[15].wavesum__158_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__2_n_4\,
      I1 => \channels[15].wavesum_carry__2_n_4\,
      I2 => \channels[15].wavesum__158_carry__2_i_1_n_0\,
      O => \channels[15].wavesum__158_carry__2_i_5_n_0\
    );
\channels[15].wavesum__158_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__2_n_5\,
      I1 => \channels[15].wavesum_carry__2_n_5\,
      I2 => \channels[15].wavesum__158_carry__2_i_2_n_0\,
      O => \channels[15].wavesum__158_carry__2_i_6_n_0\
    );
\channels[15].wavesum__158_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__2_n_6\,
      I1 => \channels[15].wavesum_carry__2_n_6\,
      I2 => \channels[15].wavesum__158_carry__2_i_3_n_0\,
      O => \channels[15].wavesum__158_carry__2_i_7_n_0\
    );
\channels[15].wavesum__158_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__2_n_7\,
      I1 => \channels[15].wavesum_carry__2_n_7\,
      I2 => \channels[15].wavesum__158_carry__2_i_4_n_0\,
      O => \channels[15].wavesum__158_carry__2_i_8_n_0\
    );
\channels[15].wavesum__158_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__158_carry__2_n_0\,
      CO(3) => \NLW_channels[15].wavesum__158_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \channels[15].wavesum__158_carry__3_n_1\,
      CO(1) => \channels[15].wavesum__158_carry__3_n_2\,
      CO(0) => \channels[15].wavesum__158_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \channels[15].wavesum__158_carry__3_i_1_n_0\,
      DI(1) => \channels[15].wavesum__158_carry__3_i_2_n_0\,
      DI(0) => \channels[15].wavesum__158_carry__3_i_3_n_0\,
      O(3) => \channels[15].wavesum__158_carry__3_n_4\,
      O(2) => \channels[15].wavesum__158_carry__3_n_5\,
      O(1) => \channels[15].wavesum__158_carry__3_n_6\,
      O(0) => \channels[15].wavesum__158_carry__3_n_7\,
      S(3) => \channels[15].wavesum__158_carry__3_i_4_n_0\,
      S(2) => \channels[15].wavesum__158_carry__3_i_5_n_0\,
      S(1) => \channels[15].wavesum__158_carry__3_i_6_n_0\,
      S(0) => \channels[15].wavesum__158_carry__3_i_7_n_0\
    );
\channels[15].wavesum__158_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__3_n_6\,
      I1 => \channels[15].wavesum_carry__3_n_6\,
      I2 => \channels[3].wavesum\(17),
      O => \channels[15].wavesum__158_carry__3_i_1_n_0\
    );
\channels[15].wavesum__158_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__3_n_7\,
      I1 => \channels[15].wavesum_carry__3_n_7\,
      O => \channels[15].wavesum__158_carry__3_i_2_n_0\
    );
\channels[15].wavesum__158_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__2_n_4\,
      I1 => \channels[15].wavesum_carry__2_n_4\,
      O => \channels[15].wavesum__158_carry__3_i_3_n_0\
    );
\channels[15].wavesum__158_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \channels[3].wavesum\(18),
      I1 => \channels[15].wavesum__35_carry__3_n_1\,
      I2 => \channels[15].wavesum_carry__3_n_1\,
      O => \channels[15].wavesum__158_carry__3_i_4_n_0\
    );
\channels[15].wavesum__158_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__3_i_1_n_0\,
      I1 => \channels[15].wavesum_carry__3_n_1\,
      I2 => \channels[15].wavesum__35_carry__3_n_1\,
      I3 => \channels[3].wavesum\(18),
      O => \channels[15].wavesum__158_carry__3_i_5_n_0\
    );
\channels[15].wavesum__158_carry__3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__3_n_6\,
      I1 => \channels[15].wavesum_carry__3_n_6\,
      I2 => \channels[3].wavesum\(17),
      I3 => \channels[15].wavesum__158_carry__3_i_2_n_0\,
      O => \channels[15].wavesum__158_carry__3_i_6_n_0\
    );
\channels[15].wavesum__158_carry__3_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry__3_n_7\,
      I1 => \channels[15].wavesum_carry__3_n_7\,
      I2 => \channels[15].wavesum__158_carry__3_i_3_n_0\,
      O => \channels[15].wavesum__158_carry__3_i_7_n_0\
    );
\channels[15].wavesum__158_carry__3_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_channels[15].wavesum__158_carry__3_i_8_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \channels[3].wavesum\(18),
      CO(0) => \NLW_channels[15].wavesum__158_carry__3_i_8_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_channels[15].wavesum__158_carry__3_i_8_O_UNCONNECTED\(3 downto 1),
      O(0) => \channels[3].wavesum\(17),
      S(3 downto 1) => B"001",
      S(0) => CO(0)
    );
\channels[15].wavesum__158_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry_n_5\,
      I1 => \channels[15].wavesum_carry_n_5\,
      O => \channels[15].wavesum__158_carry_i_1_n_0\
    );
\channels[15].wavesum__158_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry_n_6\,
      I1 => \channels[15].wavesum_carry_n_6\,
      O => \channels[15].wavesum__158_carry_i_2_n_0\
    );
\channels[15].wavesum__158_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry_n_4\,
      I1 => \channels[15].wavesum_carry_n_4\,
      I2 => \channels[15].wavesum__158_carry_i_1_n_0\,
      O => \channels[15].wavesum__158_carry_i_3_n_0\
    );
\channels[15].wavesum__158_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry_n_5\,
      I1 => \channels[15].wavesum_carry_n_5\,
      I2 => \channels[15].wavesum__158_carry_i_2_n_0\,
      O => \channels[15].wavesum__158_carry_i_4_n_0\
    );
\channels[15].wavesum__158_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \channels[15].wavesum__35_carry_n_6\,
      I1 => \channels[15].wavesum_carry_n_6\,
      O => \channels[15].wavesum__158_carry_i_5_n_0\
    );
\channels[15].wavesum__216_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \channels[15].wavesum__216_carry_n_0\,
      CO(2) => \channels[15].wavesum__216_carry_n_1\,
      CO(1) => \channels[15].wavesum__216_carry_n_2\,
      CO(0) => \channels[15].wavesum__216_carry_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__216_carry_i_1_n_0\,
      DI(2) => \channels[15].wavesum__216_carry_i_2_n_0\,
      DI(1) => \channels[15].wavesum__216_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_channels[15].wavesum__216_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \channels[15].wavesum__216_carry_i_4__1_n_0\,
      S(2) => \channels[15].wavesum__216_carry_i_5__0_n_0\,
      S(1) => \channels[15].wavesum__216_carry_i_6_n_0\,
      S(0) => \channels[15].wavesum__216_carry_i_7_n_0\
    );
\channels[15].wavesum__216_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__216_carry_n_0\,
      CO(3) => \channels[15].wavesum__216_carry__0_n_0\,
      CO(2) => \channels[15].wavesum__216_carry__0_n_1\,
      CO(1) => \channels[15].wavesum__216_carry__0_n_2\,
      CO(0) => \channels[15].wavesum__216_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__216_carry_i_1__0_n_0\,
      DI(2) => \channels[15].wavesum__216_carry_i_2__0_n_0\,
      DI(1) => \channels[15].wavesum__216_carry_i_3__0_n_0\,
      DI(0) => \channels[15].wavesum__216_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_channels[15].wavesum__216_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \channels[15].wavesum__216_carry_i_5__1_n_0\,
      S(2) => \channels[15].wavesum__216_carry_i_6__0_n_0\,
      S(1) => \channels[15].wavesum__216_carry_i_7__0_n_0\,
      S(0) => \channels[15].wavesum__216_carry_i_8_n_0\
    );
\channels[15].wavesum__216_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__216_carry__0_n_0\,
      CO(3) => \channels[15].wavesum__216_carry__1_n_0\,
      CO(2) => \channels[15].wavesum__216_carry__1_n_1\,
      CO(1) => \channels[15].wavesum__216_carry__1_n_2\,
      CO(0) => \channels[15].wavesum__216_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__216_carry_i_1__1_n_0\,
      DI(2) => \channels[15].wavesum__216_carry_i_2__1_n_0\,
      DI(1) => \channels[15].wavesum__216_carry_i_3__1_n_0\,
      DI(0) => \channels[15].wavesum__216_carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_channels[15].wavesum__216_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \channels[15].wavesum__216_carry_i_5__2_n_0\,
      S(2) => \channels[15].wavesum__216_carry_i_6__1_n_0\,
      S(1) => \channels[15].wavesum__216_carry_i_7__1_n_0\,
      S(0) => \channels[15].wavesum__216_carry_i_8__0_n_0\
    );
\channels[15].wavesum__216_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__216_carry__1_n_0\,
      CO(3) => \channels[15].wavesum__216_carry__2_n_0\,
      CO(2) => \channels[15].wavesum__216_carry__2_n_1\,
      CO(1) => \channels[15].wavesum__216_carry__2_n_2\,
      CO(0) => \channels[15].wavesum__216_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__216_carry_i_1__2_n_0\,
      DI(2) => \channels[15].wavesum__216_carry_i_2__2_n_0\,
      DI(1) => \channels[15].wavesum__216_carry_i_3__2_n_0\,
      DI(0) => \channels[15].wavesum__216_carry_i_4__3_n_0\,
      O(3 downto 0) => \NLW_channels[15].wavesum__216_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \channels[15].wavesum__216_carry_i_5__3_n_0\,
      S(2) => \channels[15].wavesum__216_carry_i_6__2_n_0\,
      S(1) => \channels[15].wavesum__216_carry_i_7__2_n_0\,
      S(0) => \channels[15].wavesum__216_carry_i_8__1_n_0\
    );
\channels[15].wavesum__216_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__216_carry__2_n_0\,
      CO(3) => \NLW_channels[15].wavesum__216_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \channels[15].wavesum__216_carry__3_n_1\,
      CO(1) => \channels[15].wavesum__216_carry__3_n_2\,
      CO(0) => \channels[15].wavesum__216_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \channels[15].wavesum__216_carry_i_1__3_n_0\,
      DI(1) => \channels[15].wavesum__216_carry_i_2__3_n_0\,
      DI(0) => \channels[15].wavesum__216_carry_i_3__3_n_0\,
      O(3 downto 1) => \banks[3].waveform\(15 downto 13),
      O(0) => \NLW_channels[15].wavesum__216_carry__3_O_UNCONNECTED\(0),
      S(3) => \channels[15].wavesum__216_carry_i_4_n_0\,
      S(2) => \channels[15].wavesum__216_carry_i_5_n_0\,
      S(1) => \channels[15].wavesum__216_carry_i_6__3_n_0\,
      S(0) => \channels[15].wavesum__216_carry_i_7__3_n_0\
    );
\channels[15].wavesum__216_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry_n_5\,
      I1 => \channels[15].wavesum__121_carry_n_5\,
      I2 => \channels[15].wavesum__85_carry_n_5\,
      O => \channels[15].wavesum__216_carry_i_1_n_0\
    );
\channels[15].wavesum__216_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__0_n_5\,
      I1 => \channels[15].wavesum__121_carry__0_n_5\,
      I2 => \channels[15].wavesum__85_carry__0_n_5\,
      O => \channels[15].wavesum__216_carry_i_1__0_n_0\
    );
\channels[15].wavesum__216_carry_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__1_n_5\,
      I1 => \channels[15].wavesum__121_carry__1_n_5\,
      I2 => \channels[15].wavesum__85_carry__1_n_5\,
      O => \channels[15].wavesum__216_carry_i_1__1_n_0\
    );
\channels[15].wavesum__216_carry_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__2_n_5\,
      I1 => \channels[15].wavesum__121_carry__2_n_5\,
      I2 => \channels[15].wavesum__85_carry__2_n_5\,
      O => \channels[15].wavesum__216_carry_i_1__2_n_0\
    );
\channels[15].wavesum__216_carry_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__3_n_6\,
      I1 => \channels[15].wavesum__121_carry__3_n_6\,
      I2 => \channels[15].wavesum__85_carry__3_n_6\,
      O => \channels[15].wavesum__216_carry_i_1__3_n_0\
    );
\channels[15].wavesum__216_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry_n_6\,
      I1 => \channels[15].wavesum__121_carry_n_6\,
      I2 => \channels[15].wavesum__85_carry_n_6\,
      O => \channels[15].wavesum__216_carry_i_2_n_0\
    );
\channels[15].wavesum__216_carry_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__0_n_6\,
      I1 => \channels[15].wavesum__121_carry__0_n_6\,
      I2 => \channels[15].wavesum__85_carry__0_n_6\,
      O => \channels[15].wavesum__216_carry_i_2__0_n_0\
    );
\channels[15].wavesum__216_carry_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__1_n_6\,
      I1 => \channels[15].wavesum__121_carry__1_n_6\,
      I2 => \channels[15].wavesum__85_carry__1_n_6\,
      O => \channels[15].wavesum__216_carry_i_2__1_n_0\
    );
\channels[15].wavesum__216_carry_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__2_n_6\,
      I1 => \channels[15].wavesum__121_carry__2_n_6\,
      I2 => \channels[15].wavesum__85_carry__2_n_6\,
      O => \channels[15].wavesum__216_carry_i_2__2_n_0\
    );
\channels[15].wavesum__216_carry_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__3_n_7\,
      I1 => \channels[15].wavesum__121_carry__3_n_7\,
      I2 => \channels[15].wavesum__85_carry__3_n_7\,
      O => \channels[15].wavesum__216_carry_i_2__3_n_0\
    );
\channels[15].wavesum__216_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \channels[15].wavesum_carry_n_7\,
      I1 => \channels[15].wavesum__158_carry_n_7\,
      O => \channels[15].wavesum__216_carry_i_3_n_0\
    );
\channels[15].wavesum__216_carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__0_n_7\,
      I1 => \channels[15].wavesum__121_carry__0_n_7\,
      I2 => \channels[15].wavesum__85_carry__0_n_7\,
      O => \channels[15].wavesum__216_carry_i_3__0_n_0\
    );
\channels[15].wavesum__216_carry_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__1_n_7\,
      I1 => \channels[15].wavesum__121_carry__1_n_7\,
      I2 => \channels[15].wavesum__85_carry__1_n_7\,
      O => \channels[15].wavesum__216_carry_i_3__1_n_0\
    );
\channels[15].wavesum__216_carry_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__2_n_7\,
      I1 => \channels[15].wavesum__121_carry__2_n_7\,
      I2 => \channels[15].wavesum__85_carry__2_n_7\,
      O => \channels[15].wavesum__216_carry_i_3__2_n_0\
    );
\channels[15].wavesum__216_carry_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__2_n_4\,
      I1 => \channels[15].wavesum__121_carry__2_n_4\,
      I2 => \channels[15].wavesum__85_carry__2_n_4\,
      O => \channels[15].wavesum__216_carry_i_3__3_n_0\
    );
\channels[15].wavesum__216_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E187"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__3_n_5\,
      I1 => \channels[15].wavesum__121_carry__3_n_1\,
      I2 => \channels[15].wavesum__158_carry__3_n_4\,
      I3 => \channels[15].wavesum__85_carry__3_n_1\,
      O => \channels[15].wavesum__216_carry_i_4_n_0\
    );
\channels[15].wavesum__216_carry_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry_n_4\,
      I1 => \channels[15].wavesum__121_carry_n_4\,
      I2 => \channels[15].wavesum__85_carry_n_4\,
      O => \channels[15].wavesum__216_carry_i_4__0_n_0\
    );
\channels[15].wavesum__216_carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry_n_4\,
      I1 => \channels[15].wavesum__121_carry_n_4\,
      I2 => \channels[15].wavesum__85_carry_n_4\,
      I3 => \channels[15].wavesum__216_carry_i_1_n_0\,
      O => \channels[15].wavesum__216_carry_i_4__1_n_0\
    );
\channels[15].wavesum__216_carry_i_4__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__0_n_4\,
      I1 => \channels[15].wavesum__121_carry__0_n_4\,
      I2 => \channels[15].wavesum__85_carry__0_n_4\,
      O => \channels[15].wavesum__216_carry_i_4__2_n_0\
    );
\channels[15].wavesum__216_carry_i_4__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__1_n_4\,
      I1 => \channels[15].wavesum__121_carry__1_n_4\,
      I2 => \channels[15].wavesum__85_carry__1_n_4\,
      O => \channels[15].wavesum__216_carry_i_4__3_n_0\
    );
\channels[15].wavesum__216_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__216_carry_i_1__3_n_0\,
      I1 => \channels[15].wavesum__121_carry__3_n_1\,
      I2 => \channels[15].wavesum__158_carry__3_n_5\,
      I3 => \channels[15].wavesum__85_carry__3_n_1\,
      O => \channels[15].wavesum__216_carry_i_5_n_0\
    );
\channels[15].wavesum__216_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry_n_5\,
      I1 => \channels[15].wavesum__121_carry_n_5\,
      I2 => \channels[15].wavesum__85_carry_n_5\,
      I3 => \channels[15].wavesum__216_carry_i_2_n_0\,
      O => \channels[15].wavesum__216_carry_i_5__0_n_0\
    );
\channels[15].wavesum__216_carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__0_n_4\,
      I1 => \channels[15].wavesum__121_carry__0_n_4\,
      I2 => \channels[15].wavesum__85_carry__0_n_4\,
      I3 => \channels[15].wavesum__216_carry_i_1__0_n_0\,
      O => \channels[15].wavesum__216_carry_i_5__1_n_0\
    );
\channels[15].wavesum__216_carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__1_n_4\,
      I1 => \channels[15].wavesum__121_carry__1_n_4\,
      I2 => \channels[15].wavesum__85_carry__1_n_4\,
      I3 => \channels[15].wavesum__216_carry_i_1__1_n_0\,
      O => \channels[15].wavesum__216_carry_i_5__2_n_0\
    );
\channels[15].wavesum__216_carry_i_5__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__2_n_4\,
      I1 => \channels[15].wavesum__121_carry__2_n_4\,
      I2 => \channels[15].wavesum__85_carry__2_n_4\,
      I3 => \channels[15].wavesum__216_carry_i_1__2_n_0\,
      O => \channels[15].wavesum__216_carry_i_5__3_n_0\
    );
\channels[15].wavesum__216_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry_n_6\,
      I1 => \channels[15].wavesum__121_carry_n_6\,
      I2 => \channels[15].wavesum__85_carry_n_6\,
      I3 => \channels[15].wavesum__216_carry_i_3_n_0\,
      O => \channels[15].wavesum__216_carry_i_6_n_0\
    );
\channels[15].wavesum__216_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__0_n_5\,
      I1 => \channels[15].wavesum__121_carry__0_n_5\,
      I2 => \channels[15].wavesum__85_carry__0_n_5\,
      I3 => \channels[15].wavesum__216_carry_i_2__0_n_0\,
      O => \channels[15].wavesum__216_carry_i_6__0_n_0\
    );
\channels[15].wavesum__216_carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__1_n_5\,
      I1 => \channels[15].wavesum__121_carry__1_n_5\,
      I2 => \channels[15].wavesum__85_carry__1_n_5\,
      I3 => \channels[15].wavesum__216_carry_i_2__1_n_0\,
      O => \channels[15].wavesum__216_carry_i_6__1_n_0\
    );
\channels[15].wavesum__216_carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__2_n_5\,
      I1 => \channels[15].wavesum__121_carry__2_n_5\,
      I2 => \channels[15].wavesum__85_carry__2_n_5\,
      I3 => \channels[15].wavesum__216_carry_i_2__2_n_0\,
      O => \channels[15].wavesum__216_carry_i_6__2_n_0\
    );
\channels[15].wavesum__216_carry_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__3_n_6\,
      I1 => \channels[15].wavesum__121_carry__3_n_6\,
      I2 => \channels[15].wavesum__85_carry__3_n_6\,
      I3 => \channels[15].wavesum__216_carry_i_2__3_n_0\,
      O => \channels[15].wavesum__216_carry_i_6__3_n_0\
    );
\channels[15].wavesum__216_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \channels[15].wavesum_carry_n_7\,
      I1 => \channels[15].wavesum__158_carry_n_7\,
      O => \channels[15].wavesum__216_carry_i_7_n_0\
    );
\channels[15].wavesum__216_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__0_n_6\,
      I1 => \channels[15].wavesum__121_carry__0_n_6\,
      I2 => \channels[15].wavesum__85_carry__0_n_6\,
      I3 => \channels[15].wavesum__216_carry_i_3__0_n_0\,
      O => \channels[15].wavesum__216_carry_i_7__0_n_0\
    );
\channels[15].wavesum__216_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__1_n_6\,
      I1 => \channels[15].wavesum__121_carry__1_n_6\,
      I2 => \channels[15].wavesum__85_carry__1_n_6\,
      I3 => \channels[15].wavesum__216_carry_i_3__1_n_0\,
      O => \channels[15].wavesum__216_carry_i_7__1_n_0\
    );
\channels[15].wavesum__216_carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__2_n_6\,
      I1 => \channels[15].wavesum__121_carry__2_n_6\,
      I2 => \channels[15].wavesum__85_carry__2_n_6\,
      I3 => \channels[15].wavesum__216_carry_i_3__2_n_0\,
      O => \channels[15].wavesum__216_carry_i_7__2_n_0\
    );
\channels[15].wavesum__216_carry_i_7__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__3_n_7\,
      I1 => \channels[15].wavesum__121_carry__3_n_7\,
      I2 => \channels[15].wavesum__85_carry__3_n_7\,
      I3 => \channels[15].wavesum__216_carry_i_3__3_n_0\,
      O => \channels[15].wavesum__216_carry_i_7__3_n_0\
    );
\channels[15].wavesum__216_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__0_n_7\,
      I1 => \channels[15].wavesum__121_carry__0_n_7\,
      I2 => \channels[15].wavesum__85_carry__0_n_7\,
      I3 => \channels[15].wavesum__216_carry_i_4__0_n_0\,
      O => \channels[15].wavesum__216_carry_i_8_n_0\
    );
\channels[15].wavesum__216_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__1_n_7\,
      I1 => \channels[15].wavesum__121_carry__1_n_7\,
      I2 => \channels[15].wavesum__85_carry__1_n_7\,
      I3 => \channels[15].wavesum__216_carry_i_4__2_n_0\,
      O => \channels[15].wavesum__216_carry_i_8__0_n_0\
    );
\channels[15].wavesum__216_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \channels[15].wavesum__158_carry__2_n_7\,
      I1 => \channels[15].wavesum__121_carry__2_n_7\,
      I2 => \channels[15].wavesum__85_carry__2_n_7\,
      I3 => \channels[15].wavesum__216_carry_i_4__3_n_0\,
      O => \channels[15].wavesum__216_carry_i_8__1_n_0\
    );
\channels[15].wavesum__35_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \channels[15].wavesum__35_carry_n_0\,
      CO(2) => \channels[15].wavesum__35_carry_n_1\,
      CO(1) => \channels[15].wavesum__35_carry_n_2\,
      CO(0) => \channels[15].wavesum__35_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \channels[15].wavesum__35_carry_n_4\,
      O(2) => \channels[15].wavesum__35_carry_n_5\,
      O(1) => \channels[15].wavesum__35_carry_n_6\,
      O(0) => \NLW_channels[15].wavesum__35_carry_O_UNCONNECTED\(0),
      S(3 downto 0) => B"1110"
    );
\channels[15].wavesum__35_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__35_carry_n_0\,
      CO(3) => \channels[15].wavesum__35_carry__0_n_0\,
      CO(2) => \channels[15].wavesum__35_carry__0_n_1\,
      CO(1) => \channels[15].wavesum__35_carry__0_n_2\,
      CO(0) => \channels[15].wavesum__35_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__35_carry__0_n_4\,
      O(2) => \channels[15].wavesum__35_carry__0_n_5\,
      O(1) => \channels[15].wavesum__35_carry__0_n_6\,
      O(0) => \channels[15].wavesum__35_carry__0_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__35_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__35_carry__0_n_0\,
      CO(3) => \channels[15].wavesum__35_carry__1_n_0\,
      CO(2) => \channels[15].wavesum__35_carry__1_n_1\,
      CO(1) => \channels[15].wavesum__35_carry__1_n_2\,
      CO(0) => \channels[15].wavesum__35_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__35_carry__1_n_4\,
      O(2) => \channels[15].wavesum__35_carry__1_n_5\,
      O(1) => \channels[15].wavesum__35_carry__1_n_6\,
      O(0) => \channels[15].wavesum__35_carry__1_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__35_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__35_carry__1_n_0\,
      CO(3) => \channels[15].wavesum__35_carry__2_n_0\,
      CO(2) => \channels[15].wavesum__35_carry__2_n_1\,
      CO(1) => \channels[15].wavesum__35_carry__2_n_2\,
      CO(0) => \channels[15].wavesum__35_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__35_carry__2_n_4\,
      O(2) => \channels[15].wavesum__35_carry__2_n_5\,
      O(1) => \channels[15].wavesum__35_carry__2_n_6\,
      O(0) => \channels[15].wavesum__35_carry__2_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__35_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__35_carry__2_n_0\,
      CO(3) => \NLW_channels[15].wavesum__35_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \channels[15].wavesum__35_carry__3_n_1\,
      CO(1) => \NLW_channels[15].wavesum__35_carry__3_CO_UNCONNECTED\(1),
      CO(0) => \channels[15].wavesum__35_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_channels[15].wavesum__35_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1) => \channels[15].wavesum__35_carry__3_n_6\,
      O(0) => \channels[15].wavesum__35_carry__3_n_7\,
      S(3 downto 0) => B"0111"
    );
\channels[15].wavesum__85_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \channels[15].wavesum__85_carry_n_0\,
      CO(2) => \channels[15].wavesum__85_carry_n_1\,
      CO(1) => \channels[15].wavesum__85_carry_n_2\,
      CO(0) => \channels[15].wavesum__85_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \channels[15].wavesum__85_carry_n_4\,
      O(2) => \channels[15].wavesum__85_carry_n_5\,
      O(1) => \channels[15].wavesum__85_carry_n_6\,
      O(0) => \NLW_channels[15].wavesum__85_carry_O_UNCONNECTED\(0),
      S(3 downto 0) => B"1110"
    );
\channels[15].wavesum__85_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__85_carry_n_0\,
      CO(3) => \channels[15].wavesum__85_carry__0_n_0\,
      CO(2) => \channels[15].wavesum__85_carry__0_n_1\,
      CO(1) => \channels[15].wavesum__85_carry__0_n_2\,
      CO(0) => \channels[15].wavesum__85_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__85_carry__0_n_4\,
      O(2) => \channels[15].wavesum__85_carry__0_n_5\,
      O(1) => \channels[15].wavesum__85_carry__0_n_6\,
      O(0) => \channels[15].wavesum__85_carry__0_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__85_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__85_carry__0_n_0\,
      CO(3) => \channels[15].wavesum__85_carry__1_n_0\,
      CO(2) => \channels[15].wavesum__85_carry__1_n_1\,
      CO(1) => \channels[15].wavesum__85_carry__1_n_2\,
      CO(0) => \channels[15].wavesum__85_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__85_carry__1_n_4\,
      O(2) => \channels[15].wavesum__85_carry__1_n_5\,
      O(1) => \channels[15].wavesum__85_carry__1_n_6\,
      O(0) => \channels[15].wavesum__85_carry__1_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__85_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__85_carry__1_n_0\,
      CO(3) => \channels[15].wavesum__85_carry__2_n_0\,
      CO(2) => \channels[15].wavesum__85_carry__2_n_1\,
      CO(1) => \channels[15].wavesum__85_carry__2_n_2\,
      CO(0) => \channels[15].wavesum__85_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__85_carry__2_n_4\,
      O(2) => \channels[15].wavesum__85_carry__2_n_5\,
      O(1) => \channels[15].wavesum__85_carry__2_n_6\,
      O(0) => \channels[15].wavesum__85_carry__2_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__85_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__85_carry__2_n_0\,
      CO(3) => \NLW_channels[15].wavesum__85_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \channels[15].wavesum__85_carry__3_n_1\,
      CO(1) => \NLW_channels[15].wavesum__85_carry__3_CO_UNCONNECTED\(1),
      CO(0) => \channels[15].wavesum__85_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_channels[15].wavesum__85_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1) => \channels[15].wavesum__85_carry__3_n_6\,
      O(0) => \channels[15].wavesum__85_carry__3_n_7\,
      S(3 downto 0) => B"0111"
    );
\channels[15].wavesum_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \channels[15].wavesum_carry_n_0\,
      CO(2) => \channels[15].wavesum_carry_n_1\,
      CO(1) => \channels[15].wavesum_carry_n_2\,
      CO(0) => \channels[15].wavesum_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \channels[15].wavesum_carry_n_4\,
      O(2) => \channels[15].wavesum_carry_n_5\,
      O(1) => \channels[15].wavesum_carry_n_6\,
      O(0) => \channels[15].wavesum_carry_n_7\,
      S(3 downto 0) => B"1110"
    );
\channels[15].wavesum_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum_carry_n_0\,
      CO(3) => \channels[15].wavesum_carry__0_n_0\,
      CO(2) => \channels[15].wavesum_carry__0_n_1\,
      CO(1) => \channels[15].wavesum_carry__0_n_2\,
      CO(0) => \channels[15].wavesum_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum_carry__0_n_4\,
      O(2) => \channels[15].wavesum_carry__0_n_5\,
      O(1) => \channels[15].wavesum_carry__0_n_6\,
      O(0) => \channels[15].wavesum_carry__0_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum_carry__0_n_0\,
      CO(3) => \channels[15].wavesum_carry__1_n_0\,
      CO(2) => \channels[15].wavesum_carry__1_n_1\,
      CO(1) => \channels[15].wavesum_carry__1_n_2\,
      CO(0) => \channels[15].wavesum_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum_carry__1_n_4\,
      O(2) => \channels[15].wavesum_carry__1_n_5\,
      O(1) => \channels[15].wavesum_carry__1_n_6\,
      O(0) => \channels[15].wavesum_carry__1_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum_carry__1_n_0\,
      CO(3) => \channels[15].wavesum_carry__2_n_0\,
      CO(2) => \channels[15].wavesum_carry__2_n_1\,
      CO(1) => \channels[15].wavesum_carry__2_n_2\,
      CO(0) => \channels[15].wavesum_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum_carry__2_n_4\,
      O(2) => \channels[15].wavesum_carry__2_n_5\,
      O(1) => \channels[15].wavesum_carry__2_n_6\,
      O(0) => \channels[15].wavesum_carry__2_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum_carry__2_n_0\,
      CO(3) => \NLW_channels[15].wavesum_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \channels[15].wavesum_carry__3_n_1\,
      CO(1) => \NLW_channels[15].wavesum_carry__3_CO_UNCONNECTED\(1),
      CO(0) => \channels[15].wavesum_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_channels[15].wavesum_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1) => \channels[15].wavesum_carry__3_n_6\,
      O(0) => \channels[15].wavesum_carry__3_n_7\,
      S(3 downto 0) => B"0111"
    );
\inst/\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \banks[3].waveform\(15),
      I1 => \banks[3].waveform\(14),
      I2 => \banks[3].waveform\(13),
      O => Buzzer
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Synth_0_0_Synth is
  port (
    Buzzer : out STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_Synth_0_0_Synth : entity is "Synth";
end system_Synth_0_0_Synth;

architecture STRUCTURE of system_Synth_0_0_Synth is
begin
\banks[0].bank\: entity work.system_Synth_0_0_Bank
     port map (
      Buzzer => Buzzer,
      CO(0) => CO(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Synth_0_0 is
  port (
    Clock : in STD_LOGIC;
    Buzzer : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_Synth_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_Synth_0_0 : entity is "system_Synth_0_0,Synth,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_Synth_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_Synth_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_Synth_0_0 : entity is "Synth,Vivado 2020.1";
end system_Synth_0_0;

architecture STRUCTURE of system_Synth_0_0 is
  signal \channels[2].wavesum\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \NLW_channels[15].wavesum__158_carry__3_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__158_carry__3_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME Clock, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
begin
\channels[15].wavesum__158_carry__3_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => \NLW_channels[15].wavesum__158_carry__3_i_9_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \channels[2].wavesum\(17),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_channels[15].wavesum__158_carry__3_i_9_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
inst: entity work.system_Synth_0_0_Synth
     port map (
      Buzzer => Buzzer,
      CO(0) => \channels[2].wavesum\(17)
    );
end STRUCTURE;
