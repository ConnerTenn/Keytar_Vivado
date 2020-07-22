-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Jul 21 19:59:05 2020
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
    Green : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    VSync : out STD_LOGIC;
    HSync : out STD_LOGIC;
    De : out STD_LOGIC;
    Clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMIController_0_0_HDMIController : entity is "HDMIController";
end system_HDMIController_0_0_HDMIController;

architecture STRUCTURE of system_HDMIController_0_0_HDMIController is
  signal \^hsync\ : STD_LOGIC;
  signal HSync_i_1_n_0 : STD_LOGIC;
  signal HSync_i_2_n_0 : STD_LOGIC;
  signal HSync_i_3_n_0 : STD_LOGIC;
  signal HSync_i_4_n_0 : STD_LOGIC;
  signal HSync_i_5_n_0 : STD_LOGIC;
  signal \Hcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \Hcounter[0]_i_3_n_0\ : STD_LOGIC;
  signal \Hcounter[0]_i_4_n_0\ : STD_LOGIC;
  signal \Hcounter[0]_i_5_n_0\ : STD_LOGIC;
  signal Hcounter_reg : STD_LOGIC_VECTOR ( 11 downto 6 );
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
  signal \Hcounter_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^vsync\ : STD_LOGIC;
  signal VSync_i_1_n_0 : STD_LOGIC;
  signal VSync_i_2_n_0 : STD_LOGIC;
  signal VSync_i_3_n_0 : STD_LOGIC;
  signal VSync_i_4_n_0 : STD_LOGIC;
  signal VSync_i_5_n_0 : STD_LOGIC;
  signal VSync_i_6_n_0 : STD_LOGIC;
  signal VSync_i_7_n_0 : STD_LOGIC;
  signal Vcounter : STD_LOGIC;
  signal \Vcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \Vcounter[10]_i_3_n_0\ : STD_LOGIC;
  signal \Vcounter[10]_i_4_n_0\ : STD_LOGIC;
  signal Vcounter_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^blue\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \blue[4]_i_1_n_0\ : STD_LOGIC;
  signal \blue[4]_i_2_n_0\ : STD_LOGIC;
  signal de_i_1_n_0 : STD_LOGIC;
  signal de_reg_n_0 : STD_LOGIC;
  signal \^green\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hblank : STD_LOGIC;
  signal hblank_i_1_n_0 : STD_LOGIC;
  signal hblank_i_2_n_0 : STD_LOGIC;
  signal hblank_i_3_n_0 : STD_LOGIC;
  signal hblank_i_4_n_0 : STD_LOGIC;
  signal hblank_i_5_n_0 : STD_LOGIC;
  signal hblank_i_6_n_0 : STD_LOGIC;
  signal hblank_i_7_n_0 : STD_LOGIC;
  signal hblank_i_8_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^red\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \red[0]_i_1_n_0\ : STD_LOGIC;
  signal \red[1]_i_1_n_0\ : STD_LOGIC;
  signal \red[1]_i_2_n_0\ : STD_LOGIC;
  signal \red[2]_i_1_n_0\ : STD_LOGIC;
  signal \red[3]_i_1_n_0\ : STD_LOGIC;
  signal \red[4]_i_1_n_0\ : STD_LOGIC;
  signal \red[4]_i_2_n_0\ : STD_LOGIC;
  signal \red[4]_i_3_n_0\ : STD_LOGIC;
  signal \red[4]_i_4_n_0\ : STD_LOGIC;
  signal \red[4]_i_5_n_0\ : STD_LOGIC;
  signal \vblank__9\ : STD_LOGIC;
  signal vblank_i_1_n_0 : STD_LOGIC;
  signal vblank_i_2_n_0 : STD_LOGIC;
  signal vblank_i_4_n_0 : STD_LOGIC;
  signal vblank_i_5_n_0 : STD_LOGIC;
  signal vblank_reg_n_0 : STD_LOGIC;
  signal \NLW_Hcounter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Blue[0]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Blue[1]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Blue[2]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Blue[3]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Blue[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of De_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Green[0]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Green[1]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Green[2]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Green[3]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Green[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Green[5]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of HSync_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of HSync_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Hcounter[0]_i_3\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \Hcounter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \Hcounter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Hcounter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \Red[0]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Red[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Red[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Red[3]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Red[4]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of VSync_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Vcounter[10]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Vcounter[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Vcounter[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Vcounter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Vcounter[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Vcounter[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Vcounter[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Vcounter[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \blue[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \blue[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of de_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of hblank_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of hblank_i_4 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of hblank_i_7 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of hblank_i_8 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \red[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \red[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \red[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \red[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \red[4]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \red[4]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \red[4]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of vblank_i_1 : label is "soft_lutpair7";
begin
  HSync <= \^hsync\;
  VSync <= \^vsync\;
\Blue[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(0),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Blue(0)
    );
\Blue[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(1),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Blue(1)
    );
\Blue[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(2),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Blue(2)
    );
\Blue[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(3),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Blue(3)
    );
\Blue[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^blue\(4),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Blue(4)
    );
De_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => de_reg_n_0,
      I1 => vblank_reg_n_0,
      O => De
    );
\Green[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^green\(0),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Green(0)
    );
\Green[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^green\(1),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Green(1)
    );
\Green[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^green\(2),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Green(2)
    );
\Green[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^green\(3),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Green(3)
    );
\Green[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^green\(4),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Green(4)
    );
\Green[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^green\(5),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Green(5)
    );
HSync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCFC4CCC4"
    )
        port map (
      I0 => HSync_i_2_n_0,
      I1 => \^hsync\,
      I2 => Hcounter_reg(10),
      I3 => Hcounter_reg(11),
      I4 => HSync_i_3_n_0,
      I5 => Hcounter_reg(9),
      O => HSync_i_1_n_0
    );
HSync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Hcounter_reg(6),
      I1 => HSync_i_4_n_0,
      I2 => Hcounter_reg(8),
      I3 => Hcounter_reg(7),
      O => HSync_i_2_n_0
    );
HSync_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Hcounter_reg(6),
      I1 => HSync_i_5_n_0,
      I2 => Hcounter_reg(7),
      I3 => Hcounter_reg(8),
      O => HSync_i_3_n_0
    );
HSync_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \Hcounter_reg__0\(0),
      I1 => \Hcounter_reg__0\(1),
      I2 => \Hcounter_reg__0\(2),
      I3 => \Hcounter_reg__0\(3),
      I4 => \Hcounter_reg__0\(5),
      I5 => \Hcounter_reg__0\(4),
      O => HSync_i_4_n_0
    );
HSync_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \Hcounter_reg__0\(3),
      I1 => \Hcounter_reg__0\(0),
      I2 => \Hcounter_reg__0\(2),
      I3 => \Hcounter_reg__0\(1),
      I4 => \Hcounter_reg__0\(4),
      I5 => \Hcounter_reg__0\(5),
      O => HSync_i_5_n_0
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
\Hcounter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA88888888"
    )
        port map (
      I0 => Hcounter_reg(11),
      I1 => \Hcounter[0]_i_3_n_0\,
      I2 => \Hcounter_reg__0\(5),
      I3 => Hcounter_reg(6),
      I4 => \Hcounter[0]_i_4_n_0\,
      I5 => Hcounter_reg(7),
      O => \Hcounter[0]_i_1_n_0\
    );
\Hcounter[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Hcounter_reg(8),
      I1 => Hcounter_reg(10),
      I2 => Hcounter_reg(9),
      O => \Hcounter[0]_i_3_n_0\
    );
\Hcounter[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1555FFFF"
    )
        port map (
      I0 => \Hcounter_reg__0\(3),
      I1 => \Hcounter_reg__0\(2),
      I2 => \Hcounter_reg__0\(1),
      I3 => \Hcounter_reg__0\(0),
      I4 => \Hcounter_reg__0\(4),
      O => \Hcounter[0]_i_4_n_0\
    );
\Hcounter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Hcounter_reg__0\(0),
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
      Q => \Hcounter_reg__0\(0),
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
      S(3 downto 1) => \Hcounter_reg__0\(3 downto 1),
      S(0) => \Hcounter[0]_i_5_n_0\
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
      Q => \Hcounter_reg__0\(1),
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
      Q => \Hcounter_reg__0\(2),
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
      Q => \Hcounter_reg__0\(3),
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
      Q => \Hcounter_reg__0\(4),
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
      S(3 downto 2) => Hcounter_reg(7 downto 6),
      S(1 downto 0) => \Hcounter_reg__0\(5 downto 4)
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
      Q => \Hcounter_reg__0\(5),
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
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Red(0)
    );
\Red[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^red\(1),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Red(1)
    );
\Red[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^red\(2),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Red(2)
    );
\Red[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^red\(3),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Red(3)
    );
\Red[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^red\(4),
      I1 => hblank,
      I2 => vblank_reg_n_0,
      O => Red(4)
    );
VSync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0F0F0"
    )
        port map (
      I0 => VSync_i_2_n_0,
      I1 => VSync_i_3_n_0,
      I2 => \^vsync\,
      I3 => VSync_i_4_n_0,
      I4 => \Hcounter[0]_i_1_n_0\,
      O => VSync_i_1_n_0
    );
VSync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => Vcounter_reg(6),
      I1 => Vcounter_reg(5),
      I2 => VSync_i_5_n_0,
      I3 => VSync_i_6_n_0,
      I4 => Vcounter_reg(0),
      I5 => Vcounter_reg(1),
      O => VSync_i_2_n_0
    );
VSync_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => Vcounter_reg(2),
      I1 => Vcounter_reg(10),
      I2 => Vcounter_reg(9),
      O => VSync_i_3_n_0
    );
VSync_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => Vcounter_reg(9),
      I1 => Vcounter_reg(10),
      I2 => VSync_i_7_n_0,
      I3 => Vcounter_reg(6),
      I4 => Vcounter_reg(8),
      I5 => Vcounter_reg(7),
      O => VSync_i_4_n_0
    );
VSync_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Vcounter_reg(7),
      I1 => Vcounter_reg(8),
      O => VSync_i_5_n_0
    );
VSync_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Vcounter_reg(4),
      I1 => Vcounter_reg(3),
      O => VSync_i_6_n_0
    );
VSync_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => Vcounter_reg(3),
      I1 => Vcounter_reg(2),
      I2 => Vcounter_reg(0),
      I3 => Vcounter_reg(1),
      I4 => Vcounter_reg(5),
      I5 => Vcounter_reg(4),
      O => VSync_i_7_n_0
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
\Vcounter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555555D"
    )
        port map (
      I0 => Vcounter_reg(10),
      I1 => \Vcounter[10]_i_3_n_0\,
      I2 => Vcounter_reg(8),
      I3 => Vcounter_reg(9),
      I4 => Vcounter_reg(7),
      I5 => Vcounter_reg(0),
      O => \Vcounter[0]_i_1_n_0\
    );
\Vcounter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888808"
    )
        port map (
      I0 => \Hcounter[0]_i_1_n_0\,
      I1 => Vcounter_reg(10),
      I2 => \Vcounter[10]_i_3_n_0\,
      I3 => Vcounter_reg(8),
      I4 => Vcounter_reg(9),
      I5 => Vcounter_reg(7),
      O => Vcounter
    );
\Vcounter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => Vcounter_reg(8),
      I1 => Vcounter_reg(6),
      I2 => \Vcounter[10]_i_4_n_0\,
      I3 => Vcounter_reg(7),
      I4 => Vcounter_reg(9),
      I5 => Vcounter_reg(10),
      O => \p_0_in__0\(10)
    );
\Vcounter[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => Vcounter_reg(2),
      I1 => Vcounter_reg(4),
      I2 => Vcounter_reg(3),
      I3 => Vcounter_reg(6),
      I4 => Vcounter_reg(5),
      O => \Vcounter[10]_i_3_n_0\
    );
\Vcounter[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Vcounter_reg(5),
      I1 => Vcounter_reg(3),
      I2 => Vcounter_reg(1),
      I3 => Vcounter_reg(0),
      I4 => Vcounter_reg(2),
      I5 => Vcounter_reg(4),
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
      I0 => Vcounter_reg(0),
      I1 => Vcounter_reg(1),
      I2 => Vcounter_reg(2),
      O => \p_0_in__0\(2)
    );
\Vcounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Vcounter_reg(1),
      I1 => Vcounter_reg(0),
      I2 => Vcounter_reg(2),
      I3 => Vcounter_reg(3),
      O => \p_0_in__0\(3)
    );
\Vcounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => Vcounter_reg(2),
      I1 => Vcounter_reg(0),
      I2 => Vcounter_reg(1),
      I3 => Vcounter_reg(3),
      I4 => Vcounter_reg(4),
      O => \p_0_in__0\(4)
    );
\Vcounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => Vcounter_reg(3),
      I1 => Vcounter_reg(1),
      I2 => Vcounter_reg(0),
      I3 => Vcounter_reg(2),
      I4 => Vcounter_reg(4),
      I5 => Vcounter_reg(5),
      O => \p_0_in__0\(5)
    );
\Vcounter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Vcounter[10]_i_4_n_0\,
      I1 => Vcounter_reg(6),
      O => \p_0_in__0\(6)
    );
\Vcounter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Vcounter[10]_i_4_n_0\,
      I1 => Vcounter_reg(6),
      I2 => Vcounter_reg(7),
      O => \p_0_in__0\(7)
    );
\Vcounter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Vcounter_reg(6),
      I1 => \Vcounter[10]_i_4_n_0\,
      I2 => Vcounter_reg(7),
      I3 => Vcounter_reg(8),
      O => \p_0_in__0\(8)
    );
\Vcounter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => Vcounter_reg(7),
      I1 => \Vcounter[10]_i_4_n_0\,
      I2 => Vcounter_reg(6),
      I3 => Vcounter_reg(8),
      I4 => Vcounter_reg(9),
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
      D => \Vcounter[0]_i_1_n_0\,
      Q => Vcounter_reg(0),
      R => '0'
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
\blue[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \blue[4]_i_2_n_0\,
      I1 => Vcounter_reg(6),
      O => p_0_in(1)
    );
\blue[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \red[4]_i_2_n_0\,
      O => p_0_in(2)
    );
\blue[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \red[4]_i_4_n_0\,
      O => p_0_in(3)
    );
\blue[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => Vcounter_reg(9),
      I1 => Vcounter_reg(7),
      I2 => \blue[4]_i_2_n_0\,
      I3 => Vcounter_reg(6),
      I4 => Vcounter_reg(8),
      O => p_0_in(4)
    );
\blue[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => Vcounter_reg(9),
      I1 => Vcounter_reg(7),
      I2 => \blue[4]_i_2_n_0\,
      I3 => Vcounter_reg(6),
      I4 => Vcounter_reg(8),
      I5 => Vcounter_reg(10),
      O => \blue[4]_i_1_n_0\
    );
\blue[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A888"
    )
        port map (
      I0 => Vcounter_reg(5),
      I1 => Vcounter_reg(4),
      I2 => Vcounter_reg(3),
      I3 => Vcounter_reg(2),
      I4 => Vcounter_reg(0),
      I5 => Vcounter_reg(1),
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
      D => p_0_in(1),
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
      D => p_0_in(2),
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
      D => p_0_in(3),
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
      D => p_0_in(4),
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
de_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => de_reg_n_0,
      I1 => hblank_i_2_n_0,
      I2 => hblank_i_3_n_0,
      O => de_i_1_n_0
    );
de_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => de_i_1_n_0,
      Q => de_reg_n_0,
      R => '0'
    );
\green_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg__0\(0),
      Q => \^green\(0),
      R => '0'
    );
\green_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg__0\(1),
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
      D => \Hcounter_reg__0\(2),
      Q => \^green\(2),
      R => '0'
    );
\green_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg__0\(3),
      Q => \^green\(3),
      R => '0'
    );
\green_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg__0\(4),
      Q => \^green\(4),
      R => '0'
    );
\green_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \Hcounter_reg__0\(5),
      Q => \^green\(5),
      R => '0'
    );
hblank_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => hblank,
      I1 => hblank_i_2_n_0,
      I2 => hblank_i_3_n_0,
      O => hblank_i_1_n_0
    );
hblank_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => hblank_i_4_n_0,
      I1 => Hcounter_reg(6),
      I2 => hblank_i_5_n_0,
      I3 => Hcounter_reg(7),
      I4 => Hcounter_reg(8),
      I5 => hblank_i_6_n_0,
      O => hblank_i_2_n_0
    );
hblank_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => hblank_i_7_n_0,
      I1 => Hcounter_reg(6),
      I2 => hblank_i_5_n_0,
      I3 => Hcounter_reg(8),
      I4 => Hcounter_reg(7),
      I5 => hblank_i_8_n_0,
      O => hblank_i_3_n_0
    );
hblank_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => Hcounter_reg(11),
      I1 => Hcounter_reg(9),
      I2 => Hcounter_reg(10),
      O => hblank_i_4_n_0
    );
hblank_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Hcounter_reg__0\(0),
      I1 => \Hcounter_reg__0\(2),
      I2 => \Hcounter_reg__0\(1),
      I3 => \Hcounter_reg__0\(3),
      I4 => \Hcounter_reg__0\(5),
      I5 => \Hcounter_reg__0\(4),
      O => hblank_i_5_n_0
    );
hblank_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Hcounter_reg(10),
      I1 => Hcounter_reg(11),
      O => hblank_i_6_n_0
    );
hblank_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => Hcounter_reg(11),
      I1 => Hcounter_reg(9),
      I2 => Hcounter_reg(10),
      O => hblank_i_7_n_0
    );
hblank_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Hcounter_reg(10),
      I1 => Hcounter_reg(11),
      O => hblank_i_8_n_0
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
      Q => hblank,
      R => '0'
    );
\red[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Hcounter_reg__0\(3),
      I1 => \p_0_in__1\(0),
      O => \red[0]_i_1_n_0\
    );
\red[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111115EEEEEEEA"
    )
        port map (
      I0 => Vcounter_reg(4),
      I1 => Vcounter_reg(3),
      I2 => Vcounter_reg(2),
      I3 => Vcounter_reg(0),
      I4 => Vcounter_reg(1),
      I5 => Vcounter_reg(5),
      O => \p_0_in__1\(0)
    );
\red[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17E8E817"
    )
        port map (
      I0 => \Hcounter_reg__0\(3),
      I1 => \red[1]_i_2_n_0\,
      I2 => Vcounter_reg(5),
      I3 => Vcounter_reg(6),
      I4 => \Hcounter_reg__0\(4),
      O => \red[1]_i_1_n_0\
    );
\red[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => Vcounter_reg(1),
      I1 => Vcounter_reg(0),
      I2 => Vcounter_reg(2),
      I3 => Vcounter_reg(3),
      I4 => Vcounter_reg(4),
      O => \red[1]_i_2_n_0\
    );
\red[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \red[4]_i_3_n_0\,
      I1 => \red[4]_i_2_n_0\,
      I2 => \Hcounter_reg__0\(5),
      O => \red[2]_i_1_n_0\
    );
\red[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => \red[4]_i_3_n_0\,
      I1 => \Hcounter_reg__0\(5),
      I2 => \red[4]_i_2_n_0\,
      I3 => \red[4]_i_4_n_0\,
      I4 => Hcounter_reg(6),
      O => \red[3]_i_1_n_0\
    );
\red[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2B2B0000D4D4FF"
    )
        port map (
      I0 => \red[4]_i_2_n_0\,
      I1 => \Hcounter_reg__0\(5),
      I2 => \red[4]_i_3_n_0\,
      I3 => Hcounter_reg(6),
      I4 => \red[4]_i_4_n_0\,
      I5 => \red[4]_i_5_n_0\,
      O => \red[4]_i_1_n_0\
    );
\red[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => Vcounter_reg(6),
      I1 => \blue[4]_i_2_n_0\,
      I2 => Vcounter_reg(7),
      O => \red[4]_i_2_n_0\
    );
\red[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BD149500"
    )
        port map (
      I0 => Vcounter_reg(6),
      I1 => Vcounter_reg(5),
      I2 => \red[1]_i_2_n_0\,
      I3 => \Hcounter_reg__0\(4),
      I4 => \Hcounter_reg__0\(3),
      O => \red[4]_i_3_n_0\
    );
\red[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => Vcounter_reg(7),
      I1 => \blue[4]_i_2_n_0\,
      I2 => Vcounter_reg(6),
      I3 => Vcounter_reg(8),
      O => \red[4]_i_4_n_0\
    );
\red[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666666669"
    )
        port map (
      I0 => p_1_in(4),
      I1 => Vcounter_reg(9),
      I2 => Vcounter_reg(7),
      I3 => \blue[4]_i_2_n_0\,
      I4 => Vcounter_reg(6),
      I5 => Vcounter_reg(8),
      O => \red[4]_i_5_n_0\
    );
\red[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Hcounter_reg(6),
      I1 => Hcounter_reg(7),
      O => p_1_in(4)
    );
\red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \red[0]_i_1_n_0\,
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
      D => \red[1]_i_1_n_0\,
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
      D => \red[2]_i_1_n_0\,
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
      D => \red[3]_i_1_n_0\,
      Q => \^red\(3),
      R => '0'
    );
\red_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \red[4]_i_1_n_0\,
      Q => \^red\(4),
      R => '0'
    );
vblank_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4CC"
    )
        port map (
      I0 => vblank_i_2_n_0,
      I1 => vblank_reg_n_0,
      I2 => \vblank__9\,
      I3 => \Hcounter[0]_i_1_n_0\,
      O => vblank_i_1_n_0
    );
vblank_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => Vcounter_reg(9),
      I1 => Vcounter_reg(6),
      I2 => vblank_i_4_n_0,
      I3 => Vcounter_reg(8),
      I4 => Vcounter_reg(7),
      I5 => Vcounter_reg(10),
      O => vblank_i_2_n_0
    );
vblank_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => Vcounter_reg(9),
      I1 => Vcounter_reg(10),
      I2 => vblank_i_5_n_0,
      I3 => Vcounter_reg(6),
      I4 => Vcounter_reg(8),
      I5 => Vcounter_reg(7),
      O => \vblank__9\
    );
vblank_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => Vcounter_reg(0),
      I1 => Vcounter_reg(1),
      I2 => Vcounter_reg(2),
      I3 => Vcounter_reg(3),
      I4 => Vcounter_reg(5),
      I5 => Vcounter_reg(4),
      O => vblank_i_4_n_0
    );
vblank_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => Vcounter_reg(3),
      I1 => Vcounter_reg(0),
      I2 => Vcounter_reg(1),
      I3 => Vcounter_reg(2),
      I4 => Vcounter_reg(5),
      I5 => Vcounter_reg(4),
      O => vblank_i_5_n_0
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
  signal \^clock\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME Clock, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
begin
  PClk <= \^clock\;
  \^clock\ <= Clock;
inst: entity work.system_HDMIController_0_0_HDMIController
     port map (
      Blue(4 downto 0) => Blue(4 downto 0),
      Clock => \^clock\,
      De => De,
      Green(5 downto 0) => Green(5 downto 0),
      HSync => HSync,
      Red(4 downto 0) => Red(4 downto 0),
      VSync => VSync
    );
end STRUCTURE;
