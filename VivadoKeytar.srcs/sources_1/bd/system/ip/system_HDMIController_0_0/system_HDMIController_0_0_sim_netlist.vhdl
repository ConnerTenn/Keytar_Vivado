-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Jul 21 01:03:36 2020
-- Host        : ConnerServer running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim
--               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_HDMIController_0_0/system_HDMIController_0_0_sim_netlist.vhdl
-- Design      : system_HDMIController_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMIController_0_0_HDMIController is
  port (
    Red : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Green : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    HSync : out STD_LOGIC;
    De : out STD_LOGIC;
    VSync : out STD_LOGIC;
    Clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMIController_0_0_HDMIController : entity is "HDMIController";
end system_HDMIController_0_0_HDMIController;

architecture STRUCTURE of system_HDMIController_0_0_HDMIController is
  signal \^de\ : STD_LOGIC;
  signal De_i_1_n_0 : STD_LOGIC;
  signal De_i_2_n_0 : STD_LOGIC;
  signal \^hsync\ : STD_LOGIC;
  signal HSync_i_1_n_0 : STD_LOGIC;
  signal HSync_i_2_n_0 : STD_LOGIC;
  signal HSync_i_3_n_0 : STD_LOGIC;
  signal HSync_i_4_n_0 : STD_LOGIC;
  signal \Hcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \Hcounter[0]_i_3_n_0\ : STD_LOGIC;
  signal \Hcounter[0]_i_4_n_0\ : STD_LOGIC;
  signal \Hcounter[0]_i_5_n_0\ : STD_LOGIC;
  signal Hcounter_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \Hcounter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \Hcounter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \Hcounter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \Hcounter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \Hcounter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \Hcounter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \Hcounter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \Hcounter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \Hcounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Hcounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Hcounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Hcounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Hcounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Hcounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Hcounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Hcounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Hcounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Hcounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Hcounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Hcounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Hcounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Hcounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Hcounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^vsync\ : STD_LOGIC;
  signal VSync_i_1_n_0 : STD_LOGIC;
  signal VSync_i_2_n_0 : STD_LOGIC;
  signal VSync_i_3_n_0 : STD_LOGIC;
  signal VSync_i_4_n_0 : STD_LOGIC;
  signal VSync_i_5_n_0 : STD_LOGIC;
  signal VSync_i_6_n_0 : STD_LOGIC;
  signal Vcounter : STD_LOGIC;
  signal \Vcounter[10]_i_3_n_0\ : STD_LOGIC;
  signal \Vcounter[10]_i_4_n_0\ : STD_LOGIC;
  signal \Vcounter[6]_i_2_n_0\ : STD_LOGIC;
  signal Vcounter_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^blue\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \blue[0]_i_1_n_0\ : STD_LOGIC;
  signal \blue[1]_i_1_n_0\ : STD_LOGIC;
  signal \blue[2]_i_1_n_0\ : STD_LOGIC;
  signal \blue[3]_i_1_n_0\ : STD_LOGIC;
  signal \blue[4]_i_1_n_0\ : STD_LOGIC;
  signal \blue[4]_i_2_n_0\ : STD_LOGIC;
  signal \^green\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \green[2]_i_2_n_0\ : STD_LOGIC;
  signal \green[2]_i_3_n_0\ : STD_LOGIC;
  signal \green[2]_i_4_n_0\ : STD_LOGIC;
  signal \green_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \green_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \green_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \green_reg[2]_i_1_n_6\ : STD_LOGIC;
  signal hblank_i_1_n_0 : STD_LOGIC;
  signal hblank_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^red\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \red[3]_i_2_n_0\ : STD_LOGIC;
  signal \red[3]_i_3_n_0\ : STD_LOGIC;
  signal \red_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \red_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \red_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \red_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal vblank_i_1_n_0 : STD_LOGIC;
  signal vblank_i_2_n_0 : STD_LOGIC;
  signal vblank_i_3_n_0 : STD_LOGIC;
  signal vblank_reg_n_0 : STD_LOGIC;
  signal \NLW_Hcounter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_green_reg[2]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_green_reg[2]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Blue[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Blue[1]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Blue[2]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Blue[3]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Blue[4]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of De_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Green[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Green[1]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Green[2]_INST_0\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \Hcounter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \Hcounter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Hcounter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \Red[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Red[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Red[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Red[3]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of VSync_i_4 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Vcounter[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Vcounter[10]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Vcounter[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Vcounter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Vcounter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Vcounter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Vcounter[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Vcounter[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Vcounter[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \blue[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \blue[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \blue[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \blue[4]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \green_reg[2]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of hblank_i_1 : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \red_reg[3]_i_1\ : label is 35;
begin
  De <= \^de\;
  HSync <= \^hsync\;
  VSync <= \^vsync\;
\Blue[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(0),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Blue(0)
    );
\Blue[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(1),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Blue(1)
    );
\Blue[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(2),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Blue(2)
    );
\Blue[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(3),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Blue(3)
    );
\Blue[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(4),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Blue(4)
    );
De_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF04"
    )
        port map (
      I0 => De_i_2_n_0,
      I1 => Hcounter_reg(7),
      I2 => Hcounter_reg(11),
      I3 => \^de\,
      O => De_i_1_n_0
    );
De_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => HSync_i_4_n_0,
      I1 => Hcounter_reg(3),
      I2 => Hcounter_reg(5),
      I3 => Hcounter_reg(4),
      I4 => Hcounter_reg(2),
      O => De_i_2_n_0
    );
De_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => De_i_1_n_0,
      Q => \^de\,
      R => '0'
    );
\Green[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^red\(4),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Red(4)
    );
\Green[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^green\(1),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Green(0)
    );
\Green[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^green\(2),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Green(1)
    );
HSync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF0A0A0A0A"
    )
        port map (
      I0 => HSync_i_2_n_0,
      I1 => HSync_i_3_n_0,
      I2 => HSync_i_4_n_0,
      I3 => Hcounter_reg(3),
      I4 => Hcounter_reg(5),
      I5 => \^hsync\,
      O => HSync_i_1_n_0
    );
HSync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => Hcounter_reg(7),
      I1 => Hcounter_reg(11),
      I2 => Hcounter_reg(3),
      I3 => Hcounter_reg(5),
      I4 => Hcounter_reg(4),
      I5 => Hcounter_reg(2),
      O => HSync_i_2_n_0
    );
HSync_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Hcounter_reg(4),
      I1 => Hcounter_reg(2),
      I2 => Hcounter_reg(11),
      I3 => Hcounter_reg(7),
      O => HSync_i_3_n_0
    );
HSync_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => Hcounter_reg(0),
      I1 => Hcounter_reg(6),
      I2 => Hcounter_reg(1),
      I3 => Hcounter_reg(10),
      I4 => Hcounter_reg(8),
      I5 => Hcounter_reg(9),
      O => HSync_i_4_n_0
    );
HSync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => HSync_i_1_n_0,
      Q => \^hsync\,
      R => '0'
    );
\Hcounter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Hcounter[0]_i_3_n_0\,
      I1 => Hcounter_reg(11),
      O => \Hcounter[0]_i_1_n_0\
    );
\Hcounter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA8"
    )
        port map (
      I0 => Hcounter_reg(7),
      I1 => \Hcounter[0]_i_5_n_0\,
      I2 => Hcounter_reg(5),
      I3 => Hcounter_reg(10),
      I4 => Hcounter_reg(8),
      I5 => Hcounter_reg(9),
      O => \Hcounter[0]_i_3_n_0\
    );
\Hcounter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hcounter_reg(0),
      O => \Hcounter[0]_i_4_n_0\
    );
\Hcounter[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8000"
    )
        port map (
      I0 => Hcounter_reg(4),
      I1 => Hcounter_reg(0),
      I2 => Hcounter_reg(1),
      I3 => Hcounter_reg(2),
      I4 => Hcounter_reg(3),
      I5 => Hcounter_reg(6),
      O => \Hcounter[0]_i_5_n_0\
    );
\Hcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[0]_i_2_n_7\,
      Q => Hcounter_reg(0),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Hcounter_reg[0]_i_2_n_0\,
      CO(2) => \Hcounter_reg[0]_i_2_n_1\,
      CO(1) => \Hcounter_reg[0]_i_2_n_2\,
      CO(0) => \Hcounter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \Hcounter_reg[0]_i_2_n_4\,
      O(2) => \Hcounter_reg[0]_i_2_n_5\,
      O(1) => \Hcounter_reg[0]_i_2_n_6\,
      O(0) => \Hcounter_reg[0]_i_2_n_7\,
      S(3 downto 1) => Hcounter_reg(3 downto 1),
      S(0) => \Hcounter[0]_i_4_n_0\
    );
\Hcounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[8]_i_1_n_5\,
      Q => Hcounter_reg(10),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[8]_i_1_n_4\,
      Q => Hcounter_reg(11),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[0]_i_2_n_6\,
      Q => Hcounter_reg(1),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[0]_i_2_n_5\,
      Q => Hcounter_reg(2),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[0]_i_2_n_4\,
      Q => Hcounter_reg(3),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[4]_i_1_n_7\,
      Q => Hcounter_reg(4),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Hcounter_reg[0]_i_2_n_0\,
      CO(3) => \Hcounter_reg[4]_i_1_n_0\,
      CO(2) => \Hcounter_reg[4]_i_1_n_1\,
      CO(1) => \Hcounter_reg[4]_i_1_n_2\,
      CO(0) => \Hcounter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Hcounter_reg[4]_i_1_n_4\,
      O(2) => \Hcounter_reg[4]_i_1_n_5\,
      O(1) => \Hcounter_reg[4]_i_1_n_6\,
      O(0) => \Hcounter_reg[4]_i_1_n_7\,
      S(3 downto 0) => Hcounter_reg(7 downto 4)
    );
\Hcounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[4]_i_1_n_6\,
      Q => Hcounter_reg(5),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[4]_i_1_n_5\,
      Q => Hcounter_reg(6),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[4]_i_1_n_4\,
      Q => Hcounter_reg(7),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[8]_i_1_n_7\,
      Q => Hcounter_reg(8),
      R => \Hcounter[0]_i_1_n_0\
    );
\Hcounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Hcounter_reg[4]_i_1_n_0\,
      CO(3) => \NLW_Hcounter_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \Hcounter_reg[8]_i_1_n_1\,
      CO(1) => \Hcounter_reg[8]_i_1_n_2\,
      CO(0) => \Hcounter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Hcounter_reg[8]_i_1_n_4\,
      O(2) => \Hcounter_reg[8]_i_1_n_5\,
      O(1) => \Hcounter_reg[8]_i_1_n_6\,
      O(0) => \Hcounter_reg[8]_i_1_n_7\,
      S(3 downto 0) => Hcounter_reg(11 downto 8)
    );
\Hcounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg[8]_i_1_n_6\,
      Q => Hcounter_reg(9),
      R => \Hcounter[0]_i_1_n_0\
    );
\Red[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^red\(0),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Red(0)
    );
\Red[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^red\(1),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Red(1)
    );
\Red[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^red\(2),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Red(2)
    );
\Red[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^red\(3),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Red(3)
    );
VSync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFF88888888"
    )
        port map (
      I0 => VSync_i_2_n_0,
      I1 => VSync_i_3_n_0,
      I2 => VSync_i_4_n_0,
      I3 => VSync_i_5_n_0,
      I4 => VSync_i_6_n_0,
      I5 => \^vsync\,
      O => VSync_i_1_n_0
    );
VSync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => Hcounter_reg(5),
      I1 => Hcounter_reg(4),
      I2 => Hcounter_reg(2),
      I3 => Hcounter_reg(3),
      I4 => Hcounter_reg(10),
      I5 => Hcounter_reg(6),
      O => VSync_i_2_n_0
    );
VSync_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Hcounter_reg(8),
      I1 => Hcounter_reg(9),
      I2 => Hcounter_reg(0),
      I3 => Hcounter_reg(1),
      I4 => Hcounter_reg(11),
      I5 => Hcounter_reg(7),
      O => VSync_i_3_n_0
    );
VSync_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Vcounter_reg(0),
      I1 => Vcounter_reg(1),
      O => VSync_i_4_n_0
    );
VSync_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Vcounter_reg(8),
      I1 => Vcounter_reg(7),
      I2 => Vcounter_reg(9),
      O => VSync_i_5_n_0
    );
VSync_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => Vcounter_reg(4),
      I1 => Vcounter_reg(5),
      I2 => Vcounter_reg(2),
      I3 => Vcounter_reg(3),
      I4 => Vcounter_reg(10),
      I5 => Vcounter_reg(6),
      O => VSync_i_6_n_0
    );
VSync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => VSync_i_1_n_0,
      Q => \^vsync\,
      R => '0'
    );
\Vcounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Vcounter_reg(0),
      O => \p_0_in__0\(0)
    );
\Vcounter[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Hcounter[0]_i_3_n_0\,
      I1 => Vcounter_reg(10),
      I2 => Hcounter_reg(11),
      I3 => \Vcounter[10]_i_3_n_0\,
      O => Vcounter
    );
\Vcounter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Vcounter[10]_i_4_n_0\,
      I1 => Vcounter_reg(9),
      I2 => Vcounter_reg(8),
      I3 => Vcounter_reg(7),
      I4 => Vcounter_reg(10),
      O => \p_0_in__0\(10)
    );
\Vcounter[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA00A800"
    )
        port map (
      I0 => Vcounter_reg(6),
      I1 => Vcounter_reg(2),
      I2 => Vcounter_reg(4),
      I3 => Vcounter_reg(5),
      I4 => Vcounter_reg(3),
      I5 => VSync_i_5_n_0,
      O => \Vcounter[10]_i_3_n_0\
    );
\Vcounter[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Vcounter[6]_i_2_n_0\,
      I1 => Vcounter_reg(2),
      I2 => Vcounter_reg(0),
      I3 => Vcounter_reg(1),
      I4 => Vcounter_reg(4),
      I5 => Vcounter_reg(6),
      O => \Vcounter[10]_i_4_n_0\
    );
\Vcounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Vcounter_reg(0),
      I1 => Vcounter_reg(1),
      O => \p_0_in__0\(1)
    );
\Vcounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => Vcounter_reg(1),
      I1 => Vcounter_reg(0),
      I2 => Vcounter_reg(2),
      O => \p_0_in__0\(2)
    );
\Vcounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Vcounter_reg(2),
      I1 => Vcounter_reg(0),
      I2 => Vcounter_reg(1),
      I3 => Vcounter_reg(3),
      O => \p_0_in__0\(3)
    );
\Vcounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => Vcounter_reg(3),
      I1 => Vcounter_reg(1),
      I2 => Vcounter_reg(0),
      I3 => Vcounter_reg(2),
      I4 => Vcounter_reg(4),
      O => \p_0_in__0\(4)
    );
\Vcounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => Vcounter_reg(3),
      I1 => Vcounter_reg(2),
      I2 => Vcounter_reg(0),
      I3 => Vcounter_reg(1),
      I4 => Vcounter_reg(4),
      I5 => Vcounter_reg(5),
      O => \p_0_in__0\(5)
    );
\Vcounter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \Vcounter[6]_i_2_n_0\,
      I1 => Vcounter_reg(2),
      I2 => Vcounter_reg(0),
      I3 => Vcounter_reg(1),
      I4 => Vcounter_reg(4),
      I5 => Vcounter_reg(6),
      O => \p_0_in__0\(6)
    );
\Vcounter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Vcounter_reg(3),
      I1 => Vcounter_reg(5),
      O => \Vcounter[6]_i_2_n_0\
    );
\Vcounter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Vcounter[10]_i_4_n_0\,
      I1 => Vcounter_reg(7),
      O => \p_0_in__0\(7)
    );
\Vcounter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => Vcounter_reg(7),
      I1 => \Vcounter[10]_i_4_n_0\,
      I2 => Vcounter_reg(8),
      O => \p_0_in__0\(8)
    );
\Vcounter[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Vcounter[10]_i_4_n_0\,
      I1 => Vcounter_reg(7),
      I2 => Vcounter_reg(8),
      I3 => Vcounter_reg(9),
      O => \p_0_in__0\(9)
    );
\Vcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => Vcounter_reg(0),
      R => Vcounter
    );
\Vcounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(10),
      Q => Vcounter_reg(10),
      R => Vcounter
    );
\Vcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => Vcounter_reg(1),
      R => Vcounter
    );
\Vcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => Vcounter_reg(2),
      R => Vcounter
    );
\Vcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => Vcounter_reg(3),
      R => Vcounter
    );
\Vcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => Vcounter_reg(4),
      R => Vcounter
    );
\Vcounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => Vcounter_reg(5),
      R => Vcounter
    );
\Vcounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => Vcounter_reg(6),
      R => Vcounter
    );
\Vcounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => Vcounter_reg(7),
      R => Vcounter
    );
\Vcounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(8),
      Q => Vcounter_reg(8),
      R => Vcounter
    );
\Vcounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => \Hcounter[0]_i_1_n_0\,
      D => \p_0_in__0\(9),
      Q => Vcounter_reg(9),
      R => Vcounter
    );
\blue[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0800F3F0F7F"
    )
        port map (
      I0 => Vcounter_reg(2),
      I1 => Vcounter_reg(3),
      I2 => Vcounter_reg(5),
      I3 => Vcounter_reg(4),
      I4 => VSync_i_4_n_0,
      I5 => Vcounter_reg(6),
      O => \blue[0]_i_1_n_0\
    );
\blue[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \blue[4]_i_2_n_0\,
      I1 => Vcounter_reg(7),
      O => \blue[1]_i_1_n_0\
    );
\blue[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => Vcounter_reg(7),
      I1 => \blue[4]_i_2_n_0\,
      I2 => Vcounter_reg(8),
      O => \blue[2]_i_1_n_0\
    );
\blue[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => Vcounter_reg(7),
      I1 => Vcounter_reg(8),
      I2 => \blue[4]_i_2_n_0\,
      I3 => Vcounter_reg(9),
      O => \blue[3]_i_1_n_0\
    );
\blue[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => Vcounter_reg(8),
      I1 => Vcounter_reg(7),
      I2 => Vcounter_reg(9),
      I3 => \blue[4]_i_2_n_0\,
      I4 => Vcounter_reg(10),
      O => \blue[4]_i_1_n_0\
    );
\blue[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0C0F080"
    )
        port map (
      I0 => Vcounter_reg(2),
      I1 => Vcounter_reg(3),
      I2 => Vcounter_reg(5),
      I3 => Vcounter_reg(4),
      I4 => VSync_i_4_n_0,
      I5 => Vcounter_reg(6),
      O => \blue[4]_i_2_n_0\
    );
\blue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \blue[0]_i_1_n_0\,
      Q => \^blue\(0),
      R => '0'
    );
\blue_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \blue[1]_i_1_n_0\,
      Q => \^blue\(1),
      R => '0'
    );
\blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \blue[2]_i_1_n_0\,
      Q => \^blue\(2),
      R => '0'
    );
\blue_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \blue[3]_i_1_n_0\,
      Q => \^blue\(3),
      R => '0'
    );
\blue_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \blue[4]_i_1_n_0\,
      Q => \^blue\(4),
      R => '0'
    );
\green[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hcounter_reg(11),
      O => \green[2]_i_2_n_0\
    );
\green[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hcounter_reg(10),
      O => \green[2]_i_3_n_0\
    );
\green[2]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hcounter_reg(9),
      O => \green[2]_i_4_n_0\
    );
\green_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \green_reg[2]_i_1_n_6\,
      Q => \^green\(1),
      R => '0'
    );
\green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \green_reg[2]_i_1_n_5\,
      Q => \^green\(2),
      R => '0'
    );
\green_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \red_reg[3]_i_1_n_0\,
      CO(3 downto 2) => \NLW_green_reg[2]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \green_reg[2]_i_1_n_2\,
      CO(0) => \green_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Hcounter_reg(10 downto 9),
      O(3) => \NLW_green_reg[2]_i_1_O_UNCONNECTED\(3),
      O(2) => \green_reg[2]_i_1_n_5\,
      O(1) => \green_reg[2]_i_1_n_6\,
      O(0) => p_0_in(4),
      S(3) => '0',
      S(2) => \green[2]_i_2_n_0\,
      S(1) => \green[2]_i_3_n_0\,
      S(0) => \green[2]_i_4_n_0\
    );
hblank_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F090"
    )
        port map (
      I0 => Hcounter_reg(11),
      I1 => Hcounter_reg(7),
      I2 => hblank_reg_n_0,
      I3 => De_i_2_n_0,
      O => hblank_i_1_n_0
    );
hblank_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => hblank_i_1_n_0,
      Q => hblank_reg_n_0,
      R => '0'
    );
\red[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hcounter_reg(8),
      O => \red[3]_i_2_n_0\
    );
\red[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hcounter_reg(6),
      O => \red[3]_i_3_n_0\
    );
\red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(0),
      Q => \^red\(0),
      R => '0'
    );
\red_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(1),
      Q => \^red\(1),
      R => '0'
    );
\red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(2),
      Q => \^red\(2),
      R => '0'
    );
\red_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(3),
      Q => \^red\(3),
      R => '0'
    );
\red_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \red_reg[3]_i_1_n_0\,
      CO(2) => \red_reg[3]_i_1_n_1\,
      CO(1) => \red_reg[3]_i_1_n_2\,
      CO(0) => \red_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => Hcounter_reg(8),
      DI(2) => '0',
      DI(1) => Hcounter_reg(6),
      DI(0) => '0',
      O(3 downto 0) => p_0_in(3 downto 0),
      S(3) => \red[3]_i_2_n_0\,
      S(2) => Hcounter_reg(7),
      S(1) => \red[3]_i_3_n_0\,
      S(0) => Hcounter_reg(5)
    );
\red_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(4),
      Q => \^red\(4),
      R => '0'
    );
vblank_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F8888"
    )
        port map (
      I0 => vblank_i_2_n_0,
      I1 => VSync_i_3_n_0,
      I2 => vblank_i_3_n_0,
      I3 => VSync_i_5_n_0,
      I4 => vblank_reg_n_0,
      O => vblank_i_1_n_0
    );
vblank_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => Hcounter_reg(5),
      I1 => Hcounter_reg(4),
      I2 => Hcounter_reg(2),
      I3 => Hcounter_reg(3),
      I4 => Hcounter_reg(10),
      I5 => Hcounter_reg(6),
      O => vblank_i_2_n_0
    );
vblank_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => Vcounter_reg(2),
      I1 => Vcounter_reg(4),
      I2 => VSync_i_4_n_0,
      I3 => \Vcounter[6]_i_2_n_0\,
      I4 => Vcounter_reg(6),
      I5 => Vcounter_reg(10),
      O => vblank_i_3_n_0
    );
vblank_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => vblank_i_1_n_0,
      Q => vblank_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMIController_0_0 is
  port (
    Clock : in STD_LOGIC;
    Red : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Green : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    HSync : out STD_LOGIC;
    VSync : out STD_LOGIC;
    PClk : out STD_LOGIC;
    De : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_HDMIController_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_HDMIController_0_0 : entity is "system_HDMIController_0_0,HDMIController,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_HDMIController_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_HDMIController_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_HDMIController_0_0 : entity is "HDMIController,Vivado 2020.1";
end system_HDMIController_0_0;

architecture STRUCTURE of system_HDMIController_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^clock\ : STD_LOGIC;
  signal \^green\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^red\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME Clock, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
begin
  Green(5) <= \<const0>\;
  Green(4) <= \<const0>\;
  Green(3) <= \<const0>\;
  Green(2 downto 0) <= \^green\(2 downto 0);
  PClk <= \^clock\;
  Red(4) <= \^green\(0);
  Red(3 downto 0) <= \^red\(3 downto 0);
  \^clock\ <= Clock;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_HDMIController_0_0_HDMIController
     port map (
      Blue(4 downto 0) => Blue(4 downto 0),
      Clock => \^clock\,
      De => De,
      Green(1 downto 0) => \^green\(2 downto 1),
      HSync => HSync,
      Red(4) => \^green\(0),
      Red(3 downto 0) => \^red\(3 downto 0),
      VSync => VSync
    );
end STRUCTURE;
