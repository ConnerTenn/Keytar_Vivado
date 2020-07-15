-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Jul 15 04:25:30 2020
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
    \banks[3].waveform\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Buzzer_INST_0_i_17 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \banks[3].wavesum\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Buzzer_INST_0_i_30 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Buzzer_INST_0_i_22 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Buzzer_INST_0_i_13 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Buzzer_INST_0_i_7 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Buzzer_INST_0_i_9_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Buzzer_INST_0_i_3_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Buzzer_INST_0_i_1_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Buzzer : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_Synth_0_0_Bank : entity is "Bank";
end system_Synth_0_0_Bank;

architecture STRUCTURE of system_Synth_0_0_Bank is
  signal Buzzer_INST_0_i_14_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_14_n_1 : STD_LOGIC;
  signal Buzzer_INST_0_i_14_n_2 : STD_LOGIC;
  signal Buzzer_INST_0_i_14_n_3 : STD_LOGIC;
  signal Buzzer_INST_0_i_18_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_18_n_1 : STD_LOGIC;
  signal Buzzer_INST_0_i_18_n_2 : STD_LOGIC;
  signal Buzzer_INST_0_i_18_n_3 : STD_LOGIC;
  signal Buzzer_INST_0_i_1_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_1_n_1 : STD_LOGIC;
  signal Buzzer_INST_0_i_1_n_2 : STD_LOGIC;
  signal Buzzer_INST_0_i_1_n_3 : STD_LOGIC;
  signal Buzzer_INST_0_i_23_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_23_n_1 : STD_LOGIC;
  signal Buzzer_INST_0_i_23_n_2 : STD_LOGIC;
  signal Buzzer_INST_0_i_23_n_3 : STD_LOGIC;
  signal Buzzer_INST_0_i_32_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_32_n_1 : STD_LOGIC;
  signal Buzzer_INST_0_i_32_n_2 : STD_LOGIC;
  signal Buzzer_INST_0_i_32_n_3 : STD_LOGIC;
  signal Buzzer_INST_0_i_3_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_3_n_1 : STD_LOGIC;
  signal Buzzer_INST_0_i_3_n_2 : STD_LOGIC;
  signal Buzzer_INST_0_i_3_n_3 : STD_LOGIC;
  signal Buzzer_INST_0_i_4_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_4_n_1 : STD_LOGIC;
  signal Buzzer_INST_0_i_4_n_2 : STD_LOGIC;
  signal Buzzer_INST_0_i_4_n_3 : STD_LOGIC;
  signal Buzzer_INST_0_i_9_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_9_n_1 : STD_LOGIC;
  signal Buzzer_INST_0_i_9_n_2 : STD_LOGIC;
  signal Buzzer_INST_0_i_9_n_3 : STD_LOGIC;
  signal \banks[2].wavesum\ : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal \^banks[3].waveform\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \channels[15].wavesum__121_carry__3_i_1_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__121_carry__3_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__0_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__0_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__0_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__1_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__1_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__1_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__2_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__2_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__2_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__3_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__3_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry__3_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_10_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_11_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_1__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_1__4_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_2__0_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_2__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_2__4_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_3__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_4__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_4_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_5__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_5__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_5_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_6__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_6__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_6_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_7__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_7__3_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_7_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_8__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_8_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_i_9_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__180_carry_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__0_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__0_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__0_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__0_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__0_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__0_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__0_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__0_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__1_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__1_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__1_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__1_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__1_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__1_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__1_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__1_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__2_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__2_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__2_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__2_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__2_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__2_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__2_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__2_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__3_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__3_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__3_n_6\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry__3_n_7\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry_n_0\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry_n_1\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry_n_2\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry_n_3\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry_n_4\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry_n_5\ : STD_LOGIC;
  signal \channels[15].wavesum__49_carry_n_6\ : STD_LOGIC;
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
  signal \channels[4].wavesum\ : STD_LOGIC_VECTOR ( 19 downto 17 );
  signal NLW_Buzzer_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_Buzzer_INST_0_i_18_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Buzzer_INST_0_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Buzzer_INST_0_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Buzzer_INST_0_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Buzzer_INST_0_i_32_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Buzzer_INST_0_i_8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Buzzer_INST_0_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Buzzer_INST_0_i_9_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__121_carry__3_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__121_carry__3_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_channels[15].wavesum__180_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__180_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_channels[15].wavesum__180_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__180_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__180_carry_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__180_carry_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__49_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_channels[15].wavesum__49_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__49_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_channels[15].wavesum__85_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_channels[15].wavesum__85_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__85_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_channels[15].wavesum_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__180_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__180_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__180_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__180_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__180_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \channels[15].wavesum__180_carry__4\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \channels[15].wavesum__180_carry_i_3__0\ : label is "lutpair0";
  attribute HLUTNM of \channels[15].wavesum__180_carry_i_8\ : label is "lutpair0";
begin
  \banks[3].waveform\(15 downto 0) <= \^banks[3].waveform\(15 downto 0);
Buzzer_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => Buzzer_INST_0_i_3_n_0,
      CO(3) => Buzzer_INST_0_i_1_n_0,
      CO(2) => Buzzer_INST_0_i_1_n_1,
      CO(1) => Buzzer_INST_0_i_1_n_2,
      CO(0) => Buzzer_INST_0_i_1_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^banks[3].waveform\(15 downto 13),
      O(3 downto 2) => \banks[3].wavesum\(1 downto 0),
      O(1 downto 0) => NLW_Buzzer_INST_0_i_1_O_UNCONNECTED(1 downto 0),
      S(3) => \banks[2].wavesum\(16),
      S(2 downto 0) => Buzzer(2 downto 0)
    );
Buzzer_INST_0_i_14: unisim.vcomponents.CARRY4
     port map (
      CI => Buzzer_INST_0_i_23_n_0,
      CO(3) => Buzzer_INST_0_i_14_n_0,
      CO(2) => Buzzer_INST_0_i_14_n_1,
      CO(1) => Buzzer_INST_0_i_14_n_2,
      CO(0) => Buzzer_INST_0_i_14_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^banks[3].waveform\(12 downto 9),
      O(3 downto 0) => Buzzer_INST_0_i_17(10 downto 7),
      S(3 downto 0) => Buzzer_INST_0_i_13(3 downto 0)
    );
Buzzer_INST_0_i_18: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Buzzer_INST_0_i_18_n_0,
      CO(2) => Buzzer_INST_0_i_18_n_1,
      CO(1) => Buzzer_INST_0_i_18_n_2,
      CO(0) => Buzzer_INST_0_i_18_n_3,
      CYINIT => \^banks[3].waveform\(0),
      DI(3 downto 0) => \^banks[3].waveform\(4 downto 1),
      O(3 downto 0) => NLW_Buzzer_INST_0_i_18_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => Buzzer_INST_0_i_9_0(3 downto 0)
    );
Buzzer_INST_0_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => Buzzer_INST_0_i_1_n_0,
      CO(3 downto 2) => NLW_Buzzer_INST_0_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => \banks[3].wavesum\(3),
      CO(0) => NLW_Buzzer_INST_0_i_2_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_Buzzer_INST_0_i_2_O_UNCONNECTED(3 downto 1),
      O(0) => \banks[3].wavesum\(2),
      S(3 downto 1) => B"001",
      S(0) => \banks[2].wavesum\(17)
    );
Buzzer_INST_0_i_23: unisim.vcomponents.CARRY4
     port map (
      CI => Buzzer_INST_0_i_32_n_0,
      CO(3) => Buzzer_INST_0_i_23_n_0,
      CO(2) => Buzzer_INST_0_i_23_n_1,
      CO(1) => Buzzer_INST_0_i_23_n_2,
      CO(0) => Buzzer_INST_0_i_23_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^banks[3].waveform\(8 downto 5),
      O(3 downto 0) => Buzzer_INST_0_i_17(6 downto 3),
      S(3 downto 0) => Buzzer_INST_0_i_22(3 downto 0)
    );
Buzzer_INST_0_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => Buzzer_INST_0_i_9_n_0,
      CO(3) => Buzzer_INST_0_i_3_n_0,
      CO(2) => Buzzer_INST_0_i_3_n_1,
      CO(1) => Buzzer_INST_0_i_3_n_2,
      CO(0) => Buzzer_INST_0_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^banks[3].waveform\(12 downto 9),
      O(3 downto 0) => NLW_Buzzer_INST_0_i_3_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => Buzzer_INST_0_i_1_0(3 downto 0)
    );
Buzzer_INST_0_i_32: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Buzzer_INST_0_i_32_n_0,
      CO(2) => Buzzer_INST_0_i_32_n_1,
      CO(1) => Buzzer_INST_0_i_32_n_2,
      CO(0) => Buzzer_INST_0_i_32_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^banks[3].waveform\(4 downto 1),
      O(3 downto 1) => Buzzer_INST_0_i_17(2 downto 0),
      O(0) => NLW_Buzzer_INST_0_i_32_O_UNCONNECTED(0),
      S(3 downto 0) => Buzzer_INST_0_i_30(3 downto 0)
    );
Buzzer_INST_0_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => Buzzer_INST_0_i_14_n_0,
      CO(3) => Buzzer_INST_0_i_4_n_0,
      CO(2) => Buzzer_INST_0_i_4_n_1,
      CO(1) => Buzzer_INST_0_i_4_n_2,
      CO(0) => Buzzer_INST_0_i_4_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^banks[3].waveform\(15 downto 13),
      O(3) => \banks[2].wavesum\(16),
      O(2 downto 0) => Buzzer_INST_0_i_17(13 downto 11),
      S(3) => \^banks[3].waveform\(15),
      S(2 downto 0) => Buzzer_INST_0_i_7(2 downto 0)
    );
Buzzer_INST_0_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => Buzzer_INST_0_i_4_n_0,
      CO(3 downto 1) => NLW_Buzzer_INST_0_i_8_CO_UNCONNECTED(3 downto 1),
      CO(0) => \banks[2].wavesum\(17),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_Buzzer_INST_0_i_8_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
Buzzer_INST_0_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => Buzzer_INST_0_i_18_n_0,
      CO(3) => Buzzer_INST_0_i_9_n_0,
      CO(2) => Buzzer_INST_0_i_9_n_1,
      CO(1) => Buzzer_INST_0_i_9_n_2,
      CO(0) => Buzzer_INST_0_i_9_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^banks[3].waveform\(8 downto 5),
      O(3 downto 0) => NLW_Buzzer_INST_0_i_9_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => Buzzer_INST_0_i_3_0(3 downto 0)
    );
\channels[15].wavesum__121_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \channels[15].wavesum__121_carry__3_n_0\,
      CO(2) => \channels[15].wavesum__121_carry__3_n_1\,
      CO(1) => \channels[15].wavesum__121_carry__3_n_2\,
      CO(0) => \channels[15].wavesum__121_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__121_carry__3_n_4\,
      O(2) => \channels[15].wavesum__121_carry__3_n_5\,
      O(1) => \channels[15].wavesum__121_carry__3_n_6\,
      O(0) => \channels[15].wavesum__121_carry__3_n_7\,
      S(3 downto 1) => \channels[4].wavesum\(19 downto 17),
      S(0) => '0'
    );
\channels[15].wavesum__121_carry__3_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_channels[15].wavesum__121_carry__3_i_1_CO_UNCONNECTED\(3),
      CO(2) => \channels[4].wavesum\(19),
      CO(1) => \NLW_channels[15].wavesum__121_carry__3_i_1_CO_UNCONNECTED\(1),
      CO(0) => \channels[15].wavesum__121_carry__3_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_channels[15].wavesum__121_carry__3_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \channels[4].wavesum\(18 downto 17),
      S(3 downto 2) => B"01",
      S(1 downto 0) => S(1 downto 0)
    );
\channels[15].wavesum__180_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \channels[15].wavesum__180_carry_n_0\,
      CO(2) => \channels[15].wavesum__180_carry_n_1\,
      CO(1) => \channels[15].wavesum__180_carry_n_2\,
      CO(0) => \channels[15].wavesum__180_carry_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__180_carry_i_1__1_n_0\,
      DI(2) => \channels[15].wavesum__180_carry_i_2__1_n_0\,
      DI(1) => \channels[15].wavesum__180_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_channels[15].wavesum__180_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \channels[15].wavesum__180_carry_i_4_n_0\,
      S(2) => \channels[15].wavesum__180_carry_i_5__0_n_0\,
      S(1) => \channels[15].wavesum__180_carry_i_6__0_n_0\,
      S(0) => \channels[15].wavesum__180_carry_i_7_n_0\
    );
\channels[15].wavesum__180_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__180_carry_n_0\,
      CO(3) => \channels[15].wavesum__180_carry__0_n_0\,
      CO(2) => \channels[15].wavesum__180_carry__0_n_1\,
      CO(1) => \channels[15].wavesum__180_carry__0_n_2\,
      CO(0) => \channels[15].wavesum__180_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__180_carry_i_1__2_n_0\,
      DI(2) => \channels[15].wavesum__180_carry_i_2__2_n_0\,
      DI(1) => \channels[15].wavesum__180_carry_i_3__1_n_0\,
      DI(0) => \channels[15].wavesum__180_carry_i_4__0_n_0\,
      O(3 downto 1) => \^banks[3].waveform\(2 downto 0),
      O(0) => \NLW_channels[15].wavesum__180_carry__0_O_UNCONNECTED\(0),
      S(3) => \channels[15].wavesum__180_carry_i_5__1_n_0\,
      S(2) => \channels[15].wavesum__180_carry_i_6__1_n_0\,
      S(1) => \channels[15].wavesum__180_carry_i_7__1_n_0\,
      S(0) => \channels[15].wavesum__180_carry_i_8__0_n_0\
    );
\channels[15].wavesum__180_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__180_carry__0_n_0\,
      CO(3) => \channels[15].wavesum__180_carry__1_n_0\,
      CO(2) => \channels[15].wavesum__180_carry__1_n_1\,
      CO(1) => \channels[15].wavesum__180_carry__1_n_2\,
      CO(0) => \channels[15].wavesum__180_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__180_carry_i_1__3_n_0\,
      DI(2) => \channels[15].wavesum__180_carry_i_2__3_n_0\,
      DI(1) => \channels[15].wavesum__180_carry_i_3__2_n_0\,
      DI(0) => \channels[15].wavesum__180_carry_i_4__1_n_0\,
      O(3 downto 0) => \^banks[3].waveform\(6 downto 3),
      S(3) => \channels[15].wavesum__180_carry_i_5__2_n_0\,
      S(2) => \channels[15].wavesum__180_carry_i_6__2_n_0\,
      S(1) => \channels[15].wavesum__180_carry_i_7__2_n_0\,
      S(0) => \channels[15].wavesum__180_carry_i_8__1_n_0\
    );
\channels[15].wavesum__180_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__180_carry__1_n_0\,
      CO(3) => \channels[15].wavesum__180_carry__2_n_0\,
      CO(2) => \channels[15].wavesum__180_carry__2_n_1\,
      CO(1) => \channels[15].wavesum__180_carry__2_n_2\,
      CO(0) => \channels[15].wavesum__180_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__180_carry_i_1__4_n_0\,
      DI(2) => \channels[15].wavesum__180_carry_i_2__4_n_0\,
      DI(1) => \channels[15].wavesum__180_carry_i_3__3_n_0\,
      DI(0) => \channels[15].wavesum__180_carry_i_4__2_n_0\,
      O(3 downto 0) => \^banks[3].waveform\(10 downto 7),
      S(3) => \channels[15].wavesum__180_carry_i_5__3_n_0\,
      S(2) => \channels[15].wavesum__180_carry_i_6__3_n_0\,
      S(1) => \channels[15].wavesum__180_carry_i_7__3_n_0\,
      S(0) => \channels[15].wavesum__180_carry_i_8__2_n_0\
    );
\channels[15].wavesum__180_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__180_carry__2_n_0\,
      CO(3) => \channels[15].wavesum__180_carry__3_n_0\,
      CO(2) => \channels[15].wavesum__180_carry__3_n_1\,
      CO(1) => \channels[15].wavesum__180_carry__3_n_2\,
      CO(0) => \channels[15].wavesum__180_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \channels[15].wavesum__180_carry_i_1_n_0\,
      DI(2) => \channels[15].wavesum__180_carry_i_2_n_0\,
      DI(1) => \channels[15].wavesum__180_carry_i_3__0_n_0\,
      DI(0) => \channels[15].wavesum__180_carry_i_4__3_n_0\,
      O(3 downto 0) => \^banks[3].waveform\(14 downto 11),
      S(3) => \channels[15].wavesum__180_carry_i_5_n_0\,
      S(2) => \channels[15].wavesum__180_carry_i_6_n_0\,
      S(1) => \channels[15].wavesum__180_carry_i_7__0_n_0\,
      S(0) => \channels[15].wavesum__180_carry_i_8_n_0\
    );
\channels[15].wavesum__180_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__180_carry__3_n_0\,
      CO(3 downto 0) => \NLW_channels[15].wavesum__180_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_channels[15].wavesum__180_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => \^banks[3].waveform\(15),
      S(3 downto 1) => B"000",
      S(0) => \channels[15].wavesum__180_carry_i_1__0_n_0\
    );
\channels[15].wavesum__180_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E8E8FF"
    )
        port map (
      I0 => \channels[15].wavesum__121_carry__3_n_6\,
      I1 => \channels[15].wavesum__49_carry__3_n_6\,
      I2 => \channels[15].wavesum__85_carry__3_n_6\,
      I3 => \channels[15].wavesum_carry__3_n_1\,
      I4 => \channels[15].wavesum__180_carry_i_9_n_0\,
      O => \channels[15].wavesum__180_carry_i_1_n_0\
    );
\channels[15].wavesum__180_carry_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__3_n_6\,
      I1 => \channels[15].wavesum__49_carry__3_n_6\,
      I2 => \channels[15].wavesum__121_carry__3_n_6\,
      O => \channels[15].wavesum__180_carry_i_10_n_0\
    );
\channels[15].wavesum__180_carry_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__3_n_7\,
      I1 => \channels[15].wavesum__49_carry__3_n_7\,
      I2 => \channels[15].wavesum__121_carry__3_n_7\,
      O => \channels[15].wavesum__180_carry_i_11_n_0\
    );
\channels[15].wavesum__180_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC9C9C3C3939333"
    )
        port map (
      I0 => \channels[15].wavesum__121_carry__3_n_5\,
      I1 => \channels[15].wavesum__180_carry_i_2__0_n_3\,
      I2 => \channels[15].wavesum_carry__3_n_1\,
      I3 => \channels[15].wavesum__85_carry__3_n_1\,
      I4 => \channels[15].wavesum__49_carry__3_n_1\,
      I5 => \channels[15].wavesum__121_carry__3_n_4\,
      O => \channels[15].wavesum__180_carry_i_1__0_n_0\
    );
\channels[15].wavesum__180_carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6606060"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry_n_5\,
      I1 => \channels[15].wavesum__49_carry_n_5\,
      I2 => \channels[15].wavesum_carry_n_5\,
      I3 => \channels[15].wavesum__49_carry_n_6\,
      I4 => \channels[15].wavesum__85_carry_n_6\,
      O => \channels[15].wavesum__180_carry_i_1__1_n_0\
    );
\channels[15].wavesum__180_carry_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__0_n_5\,
      I1 => \channels[15].wavesum__49_carry__0_n_5\,
      I2 => \channels[15].wavesum__85_carry__0_n_6\,
      I3 => \channels[15].wavesum__49_carry__0_n_6\,
      I4 => \channels[15].wavesum_carry__0_n_5\,
      O => \channels[15].wavesum__180_carry_i_1__2_n_0\
    );
\channels[15].wavesum__180_carry_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__1_n_5\,
      I1 => \channels[15].wavesum__49_carry__1_n_5\,
      I2 => \channels[15].wavesum__49_carry__1_n_6\,
      I3 => \channels[15].wavesum__85_carry__1_n_6\,
      I4 => \channels[15].wavesum_carry__1_n_5\,
      O => \channels[15].wavesum__180_carry_i_1__3_n_0\
    );
\channels[15].wavesum__180_carry_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_5\,
      I1 => \channels[15].wavesum__49_carry__2_n_5\,
      I2 => \channels[15].wavesum__49_carry__2_n_6\,
      I3 => \channels[15].wavesum__85_carry__2_n_6\,
      I4 => \channels[15].wavesum_carry__2_n_5\,
      O => \channels[15].wavesum__180_carry_i_1__4_n_0\
    );
\channels[15].wavesum__180_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__3_n_7\,
      I1 => \channels[15].wavesum__49_carry__3_n_7\,
      I2 => \channels[15].wavesum__121_carry__3_n_7\,
      I3 => \channels[15].wavesum_carry__3_n_6\,
      I4 => \channels[15].wavesum__180_carry_i_10_n_0\,
      O => \channels[15].wavesum__180_carry_i_2_n_0\
    );
\channels[15].wavesum__180_carry_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__121_carry__3_n_0\,
      CO(3 downto 1) => \NLW_channels[15].wavesum__180_carry_i_2__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \channels[15].wavesum__180_carry_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_channels[15].wavesum__180_carry_i_2__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\channels[15].wavesum__180_carry_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry_n_5\,
      I1 => \channels[15].wavesum__49_carry_n_5\,
      I2 => \channels[15].wavesum__85_carry_n_6\,
      I3 => \channels[15].wavesum__49_carry_n_6\,
      I4 => \channels[15].wavesum_carry_n_5\,
      O => \channels[15].wavesum__180_carry_i_2__1_n_0\
    );
\channels[15].wavesum__180_carry_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__0_n_6\,
      I1 => \channels[15].wavesum__49_carry__0_n_6\,
      I2 => \channels[15].wavesum__85_carry__0_n_7\,
      I3 => \channels[15].wavesum__49_carry__0_n_7\,
      I4 => \channels[15].wavesum_carry__0_n_6\,
      O => \channels[15].wavesum__180_carry_i_2__2_n_0\
    );
\channels[15].wavesum__180_carry_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__1_n_6\,
      I1 => \channels[15].wavesum__49_carry__1_n_6\,
      I2 => \channels[15].wavesum__85_carry__1_n_7\,
      I3 => \channels[15].wavesum__49_carry__1_n_7\,
      I4 => \channels[15].wavesum_carry__1_n_6\,
      O => \channels[15].wavesum__180_carry_i_2__3_n_0\
    );
\channels[15].wavesum__180_carry_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_6\,
      I1 => \channels[15].wavesum__49_carry__2_n_6\,
      I2 => \channels[15].wavesum__85_carry__2_n_7\,
      I3 => \channels[15].wavesum__49_carry__2_n_7\,
      I4 => \channels[15].wavesum_carry__2_n_6\,
      O => \channels[15].wavesum__180_carry_i_2__4_n_0\
    );
\channels[15].wavesum__180_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__49_carry_n_6\,
      I1 => \channels[15].wavesum__85_carry_n_6\,
      I2 => \channels[15].wavesum_carry_n_6\,
      O => \channels[15].wavesum__180_carry_i_3_n_0\
    );
\channels[15].wavesum__180_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_4\,
      I1 => \channels[15].wavesum__49_carry__2_n_4\,
      I2 => \channels[15].wavesum_carry__3_n_7\,
      I3 => \channels[15].wavesum__180_carry_i_11_n_0\,
      O => \channels[15].wavesum__180_carry_i_3__0_n_0\
    );
\channels[15].wavesum__180_carry_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__0_n_7\,
      I1 => \channels[15].wavesum__49_carry__0_n_7\,
      I2 => \channels[15].wavesum__49_carry_n_4\,
      I3 => \channels[15].wavesum__85_carry_n_4\,
      I4 => \channels[15].wavesum_carry__0_n_7\,
      O => \channels[15].wavesum__180_carry_i_3__1_n_0\
    );
\channels[15].wavesum__180_carry_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__1_n_7\,
      I1 => \channels[15].wavesum__49_carry__1_n_7\,
      I2 => \channels[15].wavesum__85_carry__0_n_4\,
      I3 => \channels[15].wavesum__49_carry__0_n_4\,
      I4 => \channels[15].wavesum_carry__1_n_7\,
      O => \channels[15].wavesum__180_carry_i_3__2_n_0\
    );
\channels[15].wavesum__180_carry_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_7\,
      I1 => \channels[15].wavesum__49_carry__2_n_7\,
      I2 => \channels[15].wavesum__49_carry__1_n_4\,
      I3 => \channels[15].wavesum__85_carry__1_n_4\,
      I4 => \channels[15].wavesum_carry__2_n_7\,
      O => \channels[15].wavesum__180_carry_i_3__3_n_0\
    );
\channels[15].wavesum__180_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry_n_4\,
      I1 => \channels[15].wavesum__49_carry_n_4\,
      I2 => \channels[15].wavesum__180_carry_i_1__1_n_0\,
      I3 => \channels[15].wavesum__85_carry_n_5\,
      I4 => \channels[15].wavesum__49_carry_n_5\,
      I5 => \channels[15].wavesum_carry_n_4\,
      O => \channels[15].wavesum__180_carry_i_4_n_0\
    );
\channels[15].wavesum__180_carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry_n_4\,
      I1 => \channels[15].wavesum__49_carry_n_4\,
      I2 => \channels[15].wavesum__85_carry_n_5\,
      I3 => \channels[15].wavesum__49_carry_n_5\,
      I4 => \channels[15].wavesum_carry_n_4\,
      O => \channels[15].wavesum__180_carry_i_4__0_n_0\
    );
\channels[15].wavesum__180_carry_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__0_n_4\,
      I1 => \channels[15].wavesum__49_carry__0_n_4\,
      I2 => \channels[15].wavesum__85_carry__0_n_5\,
      I3 => \channels[15].wavesum__49_carry__0_n_5\,
      I4 => \channels[15].wavesum_carry__0_n_4\,
      O => \channels[15].wavesum__180_carry_i_4__1_n_0\
    );
\channels[15].wavesum__180_carry_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__1_n_4\,
      I1 => \channels[15].wavesum__49_carry__1_n_4\,
      I2 => \channels[15].wavesum__85_carry__1_n_5\,
      I3 => \channels[15].wavesum__49_carry__1_n_5\,
      I4 => \channels[15].wavesum_carry__1_n_4\,
      O => \channels[15].wavesum__180_carry_i_4__2_n_0\
    );
\channels[15].wavesum__180_carry_i_4__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6666000"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_4\,
      I1 => \channels[15].wavesum__49_carry__2_n_4\,
      I2 => \channels[15].wavesum__85_carry__2_n_5\,
      I3 => \channels[15].wavesum__49_carry__2_n_5\,
      I4 => \channels[15].wavesum_carry__2_n_4\,
      O => \channels[15].wavesum__180_carry_i_4__3_n_0\
    );
\channels[15].wavesum__180_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \channels[15].wavesum__180_carry_i_1_n_0\,
      I1 => \channels[15].wavesum_carry__3_n_1\,
      I2 => \channels[15].wavesum__121_carry__3_n_4\,
      I3 => \channels[15].wavesum__85_carry__3_n_1\,
      I4 => \channels[15].wavesum__49_carry__3_n_1\,
      I5 => \channels[15].wavesum__121_carry__3_n_5\,
      O => \channels[15].wavesum__180_carry_i_5_n_0\
    );
\channels[15].wavesum__180_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry_n_5\,
      I1 => \channels[15].wavesum__49_carry_n_5\,
      I2 => \channels[15].wavesum_carry_n_5\,
      I3 => \channels[15].wavesum__85_carry_n_6\,
      I4 => \channels[15].wavesum__49_carry_n_6\,
      I5 => \channels[15].wavesum_carry_n_6\,
      O => \channels[15].wavesum__180_carry_i_5__0_n_0\
    );
\channels[15].wavesum__180_carry_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__0_n_4\,
      I1 => \channels[15].wavesum__49_carry__0_n_4\,
      I2 => \channels[15].wavesum__180_carry_i_1__2_n_0\,
      I3 => \channels[15].wavesum__85_carry__0_n_5\,
      I4 => \channels[15].wavesum__49_carry__0_n_5\,
      I5 => \channels[15].wavesum_carry__0_n_4\,
      O => \channels[15].wavesum__180_carry_i_5__1_n_0\
    );
\channels[15].wavesum__180_carry_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__1_n_4\,
      I1 => \channels[15].wavesum__49_carry__1_n_4\,
      I2 => \channels[15].wavesum__180_carry_i_1__3_n_0\,
      I3 => \channels[15].wavesum__85_carry__1_n_5\,
      I4 => \channels[15].wavesum__49_carry__1_n_5\,
      I5 => \channels[15].wavesum_carry__1_n_4\,
      O => \channels[15].wavesum__180_carry_i_5__2_n_0\
    );
\channels[15].wavesum__180_carry_i_5__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_4\,
      I1 => \channels[15].wavesum__49_carry__2_n_4\,
      I2 => \channels[15].wavesum__180_carry_i_1__4_n_0\,
      I3 => \channels[15].wavesum__85_carry__2_n_5\,
      I4 => \channels[15].wavesum__49_carry__2_n_5\,
      I5 => \channels[15].wavesum_carry__2_n_4\,
      O => \channels[15].wavesum__180_carry_i_5__3_n_0\
    );
\channels[15].wavesum__180_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \channels[15].wavesum__180_carry_i_2_n_0\,
      I1 => \channels[15].wavesum__121_carry__3_n_6\,
      I2 => \channels[15].wavesum__49_carry__3_n_6\,
      I3 => \channels[15].wavesum__85_carry__3_n_6\,
      I4 => \channels[15].wavesum_carry__3_n_1\,
      I5 => \channels[15].wavesum__180_carry_i_9_n_0\,
      O => \channels[15].wavesum__180_carry_i_6_n_0\
    );
\channels[15].wavesum__180_carry_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \channels[15].wavesum__49_carry_n_6\,
      I1 => \channels[15].wavesum__85_carry_n_6\,
      I2 => \channels[15].wavesum_carry_n_6\,
      O => \channels[15].wavesum__180_carry_i_6__0_n_0\
    );
\channels[15].wavesum__180_carry_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__0_n_5\,
      I1 => \channels[15].wavesum__49_carry__0_n_5\,
      I2 => \channels[15].wavesum__180_carry_i_2__2_n_0\,
      I3 => \channels[15].wavesum__85_carry__0_n_6\,
      I4 => \channels[15].wavesum__49_carry__0_n_6\,
      I5 => \channels[15].wavesum_carry__0_n_5\,
      O => \channels[15].wavesum__180_carry_i_6__1_n_0\
    );
\channels[15].wavesum__180_carry_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__1_n_5\,
      I1 => \channels[15].wavesum__49_carry__1_n_5\,
      I2 => \channels[15].wavesum__180_carry_i_2__3_n_0\,
      I3 => \channels[15].wavesum_carry__1_n_5\,
      I4 => \channels[15].wavesum__49_carry__1_n_6\,
      I5 => \channels[15].wavesum__85_carry__1_n_6\,
      O => \channels[15].wavesum__180_carry_i_6__2_n_0\
    );
\channels[15].wavesum__180_carry_i_6__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_5\,
      I1 => \channels[15].wavesum__49_carry__2_n_5\,
      I2 => \channels[15].wavesum__180_carry_i_2__4_n_0\,
      I3 => \channels[15].wavesum_carry__2_n_5\,
      I4 => \channels[15].wavesum__49_carry__2_n_6\,
      I5 => \channels[15].wavesum__85_carry__2_n_6\,
      O => \channels[15].wavesum__180_carry_i_6__3_n_0\
    );
\channels[15].wavesum__180_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \channels[15].wavesum_carry_n_7\,
      I1 => '0',
      O => \channels[15].wavesum__180_carry_i_7_n_0\
    );
\channels[15].wavesum__180_carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \channels[15].wavesum__180_carry_i_3__0_n_0\,
      I1 => \channels[15].wavesum__85_carry__3_n_7\,
      I2 => \channels[15].wavesum__49_carry__3_n_7\,
      I3 => \channels[15].wavesum__121_carry__3_n_7\,
      I4 => \channels[15].wavesum_carry__3_n_6\,
      I5 => \channels[15].wavesum__180_carry_i_10_n_0\,
      O => \channels[15].wavesum__180_carry_i_7__0_n_0\
    );
\channels[15].wavesum__180_carry_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__0_n_6\,
      I1 => \channels[15].wavesum__49_carry__0_n_6\,
      I2 => \channels[15].wavesum__180_carry_i_3__1_n_0\,
      I3 => \channels[15].wavesum__85_carry__0_n_7\,
      I4 => \channels[15].wavesum__49_carry__0_n_7\,
      I5 => \channels[15].wavesum_carry__0_n_6\,
      O => \channels[15].wavesum__180_carry_i_7__1_n_0\
    );
\channels[15].wavesum__180_carry_i_7__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__1_n_6\,
      I1 => \channels[15].wavesum__49_carry__1_n_6\,
      I2 => \channels[15].wavesum__180_carry_i_3__2_n_0\,
      I3 => \channels[15].wavesum__85_carry__1_n_7\,
      I4 => \channels[15].wavesum__49_carry__1_n_7\,
      I5 => \channels[15].wavesum_carry__1_n_6\,
      O => \channels[15].wavesum__180_carry_i_7__2_n_0\
    );
\channels[15].wavesum__180_carry_i_7__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_6\,
      I1 => \channels[15].wavesum__49_carry__2_n_6\,
      I2 => \channels[15].wavesum__180_carry_i_3__3_n_0\,
      I3 => \channels[15].wavesum__85_carry__2_n_7\,
      I4 => \channels[15].wavesum__49_carry__2_n_7\,
      I5 => \channels[15].wavesum_carry__2_n_6\,
      O => \channels[15].wavesum__180_carry_i_7__3_n_0\
    );
\channels[15].wavesum__180_carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_4\,
      I1 => \channels[15].wavesum__49_carry__2_n_4\,
      I2 => \channels[15].wavesum_carry__3_n_7\,
      I3 => \channels[15].wavesum__180_carry_i_11_n_0\,
      I4 => \channels[15].wavesum__180_carry_i_4__3_n_0\,
      O => \channels[15].wavesum__180_carry_i_8_n_0\
    );
\channels[15].wavesum__180_carry_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__0_n_7\,
      I1 => \channels[15].wavesum__49_carry__0_n_7\,
      I2 => \channels[15].wavesum__180_carry_i_4__0_n_0\,
      I3 => \channels[15].wavesum_carry__0_n_7\,
      I4 => \channels[15].wavesum__49_carry_n_4\,
      I5 => \channels[15].wavesum__85_carry_n_4\,
      O => \channels[15].wavesum__180_carry_i_8__0_n_0\
    );
\channels[15].wavesum__180_carry_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__1_n_7\,
      I1 => \channels[15].wavesum__49_carry__1_n_7\,
      I2 => \channels[15].wavesum__180_carry_i_4__1_n_0\,
      I3 => \channels[15].wavesum__85_carry__0_n_4\,
      I4 => \channels[15].wavesum__49_carry__0_n_4\,
      I5 => \channels[15].wavesum_carry__1_n_7\,
      O => \channels[15].wavesum__180_carry_i_8__1_n_0\
    );
\channels[15].wavesum__180_carry_i_8__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \channels[15].wavesum__85_carry__2_n_7\,
      I1 => \channels[15].wavesum__49_carry__2_n_7\,
      I2 => \channels[15].wavesum__180_carry_i_4__2_n_0\,
      I3 => \channels[15].wavesum_carry__2_n_7\,
      I4 => \channels[15].wavesum__49_carry__1_n_4\,
      I5 => \channels[15].wavesum__85_carry__1_n_4\,
      O => \channels[15].wavesum__180_carry_i_8__2_n_0\
    );
\channels[15].wavesum__180_carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \channels[15].wavesum__49_carry__3_n_1\,
      I1 => \channels[15].wavesum__85_carry__3_n_1\,
      I2 => \channels[15].wavesum__121_carry__3_n_5\,
      O => \channels[15].wavesum__180_carry_i_9_n_0\
    );
\channels[15].wavesum__49_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \channels[15].wavesum__49_carry_n_0\,
      CO(2) => \channels[15].wavesum__49_carry_n_1\,
      CO(1) => \channels[15].wavesum__49_carry_n_2\,
      CO(0) => \channels[15].wavesum__49_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \channels[15].wavesum__49_carry_n_4\,
      O(2) => \channels[15].wavesum__49_carry_n_5\,
      O(1) => \channels[15].wavesum__49_carry_n_6\,
      O(0) => \NLW_channels[15].wavesum__49_carry_O_UNCONNECTED\(0),
      S(3 downto 0) => B"1110"
    );
\channels[15].wavesum__49_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__49_carry_n_0\,
      CO(3) => \channels[15].wavesum__49_carry__0_n_0\,
      CO(2) => \channels[15].wavesum__49_carry__0_n_1\,
      CO(1) => \channels[15].wavesum__49_carry__0_n_2\,
      CO(0) => \channels[15].wavesum__49_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__49_carry__0_n_4\,
      O(2) => \channels[15].wavesum__49_carry__0_n_5\,
      O(1) => \channels[15].wavesum__49_carry__0_n_6\,
      O(0) => \channels[15].wavesum__49_carry__0_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__49_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__49_carry__0_n_0\,
      CO(3) => \channels[15].wavesum__49_carry__1_n_0\,
      CO(2) => \channels[15].wavesum__49_carry__1_n_1\,
      CO(1) => \channels[15].wavesum__49_carry__1_n_2\,
      CO(0) => \channels[15].wavesum__49_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__49_carry__1_n_4\,
      O(2) => \channels[15].wavesum__49_carry__1_n_5\,
      O(1) => \channels[15].wavesum__49_carry__1_n_6\,
      O(0) => \channels[15].wavesum__49_carry__1_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__49_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__49_carry__1_n_0\,
      CO(3) => \channels[15].wavesum__49_carry__2_n_0\,
      CO(2) => \channels[15].wavesum__49_carry__2_n_1\,
      CO(1) => \channels[15].wavesum__49_carry__2_n_2\,
      CO(0) => \channels[15].wavesum__49_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \channels[15].wavesum__49_carry__2_n_4\,
      O(2) => \channels[15].wavesum__49_carry__2_n_5\,
      O(1) => \channels[15].wavesum__49_carry__2_n_6\,
      O(0) => \channels[15].wavesum__49_carry__2_n_7\,
      S(3 downto 0) => B"1111"
    );
\channels[15].wavesum__49_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \channels[15].wavesum__49_carry__2_n_0\,
      CO(3) => \NLW_channels[15].wavesum__49_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \channels[15].wavesum__49_carry__3_n_1\,
      CO(1) => \NLW_channels[15].wavesum__49_carry__3_CO_UNCONNECTED\(1),
      CO(0) => \channels[15].wavesum__49_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_channels[15].wavesum__49_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1) => \channels[15].wavesum__49_carry__3_n_6\,
      O(0) => \channels[15].wavesum__49_carry__3_n_7\,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Synth_0_0_Synth is
  port (
    \banks[3].wavesum\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_Synth_0_0_Synth : entity is "Synth";
end system_Synth_0_0_Synth;

architecture STRUCTURE of system_Synth_0_0_Synth is
  signal Buzzer_INST_0_i_10_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_11_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_12_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_13_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_15_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_16_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_17_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_19_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_20_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_21_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_22_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_24_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_25_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_26_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_27_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_28_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_29_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_30_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_31_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_33_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_34_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_35_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_36_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_37_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_38_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_39_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_5_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_6_n_0 : STD_LOGIC;
  signal Buzzer_INST_0_i_7_n_0 : STD_LOGIC;
  signal \banks[2].wavesum\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \banks[3].waveform\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
Buzzer_INST_0_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(12),
      I1 => \banks[2].wavesum\(12),
      O => Buzzer_INST_0_i_10_n_0
    );
Buzzer_INST_0_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(11),
      I1 => \banks[2].wavesum\(11),
      O => Buzzer_INST_0_i_11_n_0
    );
Buzzer_INST_0_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(10),
      I1 => \banks[2].wavesum\(10),
      O => Buzzer_INST_0_i_12_n_0
    );
Buzzer_INST_0_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(9),
      I1 => \banks[2].wavesum\(9),
      O => Buzzer_INST_0_i_13_n_0
    );
Buzzer_INST_0_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(15),
      I1 => \banks[3].waveform\(14),
      O => Buzzer_INST_0_i_15_n_0
    );
Buzzer_INST_0_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(14),
      I1 => \banks[3].waveform\(13),
      O => Buzzer_INST_0_i_16_n_0
    );
Buzzer_INST_0_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(13),
      I1 => \banks[3].waveform\(12),
      O => Buzzer_INST_0_i_17_n_0
    );
Buzzer_INST_0_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(8),
      I1 => \banks[2].wavesum\(8),
      O => Buzzer_INST_0_i_19_n_0
    );
Buzzer_INST_0_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(7),
      I1 => \banks[2].wavesum\(7),
      O => Buzzer_INST_0_i_20_n_0
    );
Buzzer_INST_0_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(6),
      I1 => \banks[2].wavesum\(6),
      O => Buzzer_INST_0_i_21_n_0
    );
Buzzer_INST_0_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(5),
      I1 => \banks[2].wavesum\(5),
      O => Buzzer_INST_0_i_22_n_0
    );
Buzzer_INST_0_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(12),
      I1 => \banks[3].waveform\(11),
      O => Buzzer_INST_0_i_24_n_0
    );
Buzzer_INST_0_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(11),
      I1 => \banks[3].waveform\(10),
      O => Buzzer_INST_0_i_25_n_0
    );
Buzzer_INST_0_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(10),
      I1 => \banks[3].waveform\(9),
      O => Buzzer_INST_0_i_26_n_0
    );
Buzzer_INST_0_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(9),
      I1 => \banks[3].waveform\(8),
      O => Buzzer_INST_0_i_27_n_0
    );
Buzzer_INST_0_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(4),
      I1 => \banks[2].wavesum\(4),
      O => Buzzer_INST_0_i_28_n_0
    );
Buzzer_INST_0_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(3),
      I1 => \banks[2].wavesum\(3),
      O => Buzzer_INST_0_i_29_n_0
    );
Buzzer_INST_0_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(2),
      I1 => \banks[2].wavesum\(2),
      O => Buzzer_INST_0_i_30_n_0
    );
Buzzer_INST_0_i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \banks[3].waveform\(0),
      O => Buzzer_INST_0_i_31_n_0
    );
Buzzer_INST_0_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(8),
      I1 => \banks[3].waveform\(7),
      O => Buzzer_INST_0_i_33_n_0
    );
Buzzer_INST_0_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(7),
      I1 => \banks[3].waveform\(6),
      O => Buzzer_INST_0_i_34_n_0
    );
Buzzer_INST_0_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(6),
      I1 => \banks[3].waveform\(5),
      O => Buzzer_INST_0_i_35_n_0
    );
Buzzer_INST_0_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(5),
      I1 => \banks[3].waveform\(4),
      O => Buzzer_INST_0_i_36_n_0
    );
Buzzer_INST_0_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(4),
      I1 => \banks[3].waveform\(3),
      O => Buzzer_INST_0_i_37_n_0
    );
Buzzer_INST_0_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(3),
      I1 => \banks[3].waveform\(2),
      O => Buzzer_INST_0_i_38_n_0
    );
Buzzer_INST_0_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(2),
      I1 => \banks[3].waveform\(1),
      O => Buzzer_INST_0_i_39_n_0
    );
Buzzer_INST_0_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(1),
      I1 => \banks[3].waveform\(0),
      O => \banks[2].wavesum\(1)
    );
Buzzer_INST_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(15),
      I1 => \banks[2].wavesum\(15),
      O => Buzzer_INST_0_i_5_n_0
    );
Buzzer_INST_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(14),
      I1 => \banks[2].wavesum\(14),
      O => Buzzer_INST_0_i_6_n_0
    );
Buzzer_INST_0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \banks[3].waveform\(13),
      I1 => \banks[2].wavesum\(13),
      O => Buzzer_INST_0_i_7_n_0
    );
\banks[0].bank\: entity work.system_Synth_0_0_Bank
     port map (
      Buzzer(2) => Buzzer_INST_0_i_5_n_0,
      Buzzer(1) => Buzzer_INST_0_i_6_n_0,
      Buzzer(0) => Buzzer_INST_0_i_7_n_0,
      Buzzer_INST_0_i_13(3) => Buzzer_INST_0_i_24_n_0,
      Buzzer_INST_0_i_13(2) => Buzzer_INST_0_i_25_n_0,
      Buzzer_INST_0_i_13(1) => Buzzer_INST_0_i_26_n_0,
      Buzzer_INST_0_i_13(0) => Buzzer_INST_0_i_27_n_0,
      Buzzer_INST_0_i_17(13 downto 0) => \banks[2].wavesum\(15 downto 2),
      Buzzer_INST_0_i_1_0(3) => Buzzer_INST_0_i_10_n_0,
      Buzzer_INST_0_i_1_0(2) => Buzzer_INST_0_i_11_n_0,
      Buzzer_INST_0_i_1_0(1) => Buzzer_INST_0_i_12_n_0,
      Buzzer_INST_0_i_1_0(0) => Buzzer_INST_0_i_13_n_0,
      Buzzer_INST_0_i_22(3) => Buzzer_INST_0_i_33_n_0,
      Buzzer_INST_0_i_22(2) => Buzzer_INST_0_i_34_n_0,
      Buzzer_INST_0_i_22(1) => Buzzer_INST_0_i_35_n_0,
      Buzzer_INST_0_i_22(0) => Buzzer_INST_0_i_36_n_0,
      Buzzer_INST_0_i_30(3) => Buzzer_INST_0_i_37_n_0,
      Buzzer_INST_0_i_30(2) => Buzzer_INST_0_i_38_n_0,
      Buzzer_INST_0_i_30(1) => Buzzer_INST_0_i_39_n_0,
      Buzzer_INST_0_i_30(0) => \banks[2].wavesum\(1),
      Buzzer_INST_0_i_3_0(3) => Buzzer_INST_0_i_19_n_0,
      Buzzer_INST_0_i_3_0(2) => Buzzer_INST_0_i_20_n_0,
      Buzzer_INST_0_i_3_0(1) => Buzzer_INST_0_i_21_n_0,
      Buzzer_INST_0_i_3_0(0) => Buzzer_INST_0_i_22_n_0,
      Buzzer_INST_0_i_7(2) => Buzzer_INST_0_i_15_n_0,
      Buzzer_INST_0_i_7(1) => Buzzer_INST_0_i_16_n_0,
      Buzzer_INST_0_i_7(0) => Buzzer_INST_0_i_17_n_0,
      Buzzer_INST_0_i_9_0(3) => Buzzer_INST_0_i_28_n_0,
      Buzzer_INST_0_i_9_0(2) => Buzzer_INST_0_i_29_n_0,
      Buzzer_INST_0_i_9_0(1) => Buzzer_INST_0_i_30_n_0,
      Buzzer_INST_0_i_9_0(0) => Buzzer_INST_0_i_31_n_0,
      S(1 downto 0) => S(1 downto 0),
      \banks[3].waveform\(15 downto 0) => \banks[3].waveform\(15 downto 0),
      \banks[3].wavesum\(3 downto 0) => \banks[3].wavesum\(3 downto 0)
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
  signal \banks[3].wavesum\ : STD_LOGIC_VECTOR ( 18 downto 15 );
  signal \channels[2].wavesum\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \channels[3].wavesum\ : STD_LOGIC_VECTOR ( 18 downto 17 );
  signal \NLW_channels[15].wavesum__121_carry__3_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_channels[15].wavesum__121_carry__3_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__121_carry__3_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_channels[15].wavesum__121_carry__3_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME Clock, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
begin
Buzzer_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \banks[3].wavesum\(15),
      I1 => \banks[3].wavesum\(18),
      I2 => \banks[3].wavesum\(16),
      I3 => \banks[3].wavesum\(17),
      O => Buzzer
    );
\channels[15].wavesum__121_carry__3_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_channels[15].wavesum__121_carry__3_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \channels[3].wavesum\(18),
      CO(0) => \NLW_channels[15].wavesum__121_carry__3_i_2_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_channels[15].wavesum__121_carry__3_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => \channels[3].wavesum\(17),
      S(3 downto 1) => B"001",
      S(0) => \channels[2].wavesum\(17)
    );
\channels[15].wavesum__121_carry__3_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => \NLW_channels[15].wavesum__121_carry__3_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \channels[2].wavesum\(17),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_channels[15].wavesum__121_carry__3_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
inst: entity work.system_Synth_0_0_Synth
     port map (
      S(1 downto 0) => \channels[3].wavesum\(18 downto 17),
      \banks[3].wavesum\(3 downto 0) => \banks[3].wavesum\(18 downto 15)
    );
end STRUCTURE;
