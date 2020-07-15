-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Jul 15 01:20:21 2020
-- Host        : ConnerServer running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim
--               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_RGBTest_0_0/system_RGBTest_0_0_sim_netlist.vhdl
-- Design      : system_RGBTest_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_RGBTest_0_0_RGBTest is
  port (
    RGB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_RGBTest_0_0_RGBTest : entity is "RGBTest";
end system_RGBTest_0_0_RGBTest;

architecture STRUCTURE of system_RGBTest_0_0_RGBTest is
  signal \FSM_onehot_RGB[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RGB[2]_i_9_n_0\ : STD_LOGIC;
  signal \RGB__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal clockdiv : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clockdiv[31]_i_1_n_0\ : STD_LOGIC;
  signal clockdiv_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \clockdiv_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clockdiv_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clockdiv_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clockdiv_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clockdiv_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clockdiv_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clockdiv_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clockdiv_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clockdiv_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clockdiv_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clockdiv_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clockdiv_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clockdiv_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clockdiv_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clockdiv_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clockdiv_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clockdiv_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \clockdiv_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clockdiv_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clockdiv_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clockdiv_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \clockdiv_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \clockdiv_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clockdiv_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clockdiv_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clockdiv_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clockdiv_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clockdiv_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clockdiv_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clockdiv_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_clockdiv_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clockdiv_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_RGB[2]_i_3\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_RGB_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RGB_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RGB_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute SOFT_HLUTNM of \RGB[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RGB[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clockdiv[0]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \clockdiv_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \clockdiv_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \clockdiv_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \clockdiv_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \clockdiv_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \clockdiv_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \clockdiv_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \clockdiv_reg[8]_i_1\ : label is 35;
begin
\FSM_onehot_RGB[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => \RGB__0\(2),
      I1 => \FSM_onehot_RGB[2]_i_2_n_0\,
      I2 => \FSM_onehot_RGB[2]_i_3_n_0\,
      I3 => \FSM_onehot_RGB[2]_i_4_n_0\,
      I4 => \FSM_onehot_RGB[2]_i_5_n_0\,
      I5 => \RGB__0\(0),
      O => \FSM_onehot_RGB[0]_i_1_n_0\
    );
\FSM_onehot_RGB[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => \RGB__0\(0),
      I1 => \FSM_onehot_RGB[2]_i_2_n_0\,
      I2 => \FSM_onehot_RGB[2]_i_3_n_0\,
      I3 => \FSM_onehot_RGB[2]_i_4_n_0\,
      I4 => \FSM_onehot_RGB[2]_i_5_n_0\,
      I5 => \RGB__0\(1),
      O => \FSM_onehot_RGB[1]_i_1_n_0\
    );
\FSM_onehot_RGB[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => \RGB__0\(1),
      I1 => \FSM_onehot_RGB[2]_i_2_n_0\,
      I2 => \FSM_onehot_RGB[2]_i_3_n_0\,
      I3 => \FSM_onehot_RGB[2]_i_4_n_0\,
      I4 => \FSM_onehot_RGB[2]_i_5_n_0\,
      I5 => \RGB__0\(2),
      O => \FSM_onehot_RGB[2]_i_1_n_0\
    );
\FSM_onehot_RGB[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => clockdiv(10),
      I1 => clockdiv(11),
      I2 => clockdiv(8),
      I3 => clockdiv(9),
      I4 => \FSM_onehot_RGB[2]_i_6_n_0\,
      O => \FSM_onehot_RGB[2]_i_2_n_0\
    );
\FSM_onehot_RGB[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => clockdiv(2),
      I1 => clockdiv(3),
      I2 => clockdiv(0),
      I3 => clockdiv(1),
      I4 => \FSM_onehot_RGB[2]_i_7_n_0\,
      O => \FSM_onehot_RGB[2]_i_3_n_0\
    );
\FSM_onehot_RGB[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clockdiv(26),
      I1 => clockdiv(27),
      I2 => clockdiv(24),
      I3 => clockdiv(25),
      I4 => \FSM_onehot_RGB[2]_i_8_n_0\,
      O => \FSM_onehot_RGB[2]_i_4_n_0\
    );
\FSM_onehot_RGB[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => clockdiv(18),
      I1 => clockdiv(19),
      I2 => clockdiv(16),
      I3 => clockdiv(17),
      I4 => \FSM_onehot_RGB[2]_i_9_n_0\,
      O => \FSM_onehot_RGB[2]_i_5_n_0\
    );
\FSM_onehot_RGB[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => clockdiv(13),
      I1 => clockdiv(12),
      I2 => clockdiv(14),
      I3 => clockdiv(15),
      O => \FSM_onehot_RGB[2]_i_6_n_0\
    );
\FSM_onehot_RGB[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => clockdiv(5),
      I1 => clockdiv(4),
      I2 => clockdiv(7),
      I3 => clockdiv(6),
      O => \FSM_onehot_RGB[2]_i_7_n_0\
    );
\FSM_onehot_RGB[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clockdiv(29),
      I1 => clockdiv(28),
      I2 => clockdiv(31),
      I3 => clockdiv(30),
      O => \FSM_onehot_RGB[2]_i_8_n_0\
    );
\FSM_onehot_RGB[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clockdiv(21),
      I1 => clockdiv(20),
      I2 => clockdiv(23),
      I3 => clockdiv(22),
      O => \FSM_onehot_RGB[2]_i_9_n_0\
    );
\FSM_onehot_RGB_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \FSM_onehot_RGB[0]_i_1_n_0\,
      Q => \RGB__0\(0),
      R => '0'
    );
\FSM_onehot_RGB_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \FSM_onehot_RGB[1]_i_1_n_0\,
      Q => \RGB__0\(1),
      R => '0'
    );
\FSM_onehot_RGB_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \FSM_onehot_RGB[2]_i_1_n_0\,
      Q => \RGB__0\(2),
      R => '0'
    );
\RGB[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \RGB__0\(0),
      I1 => \RGB__0\(1),
      O => RGB(0)
    );
\RGB[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \RGB__0\(0),
      I1 => \RGB__0\(2),
      O => RGB(1)
    );
\RGB[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \RGB__0\(1),
      I1 => \RGB__0\(2),
      O => RGB(2)
    );
\clockdiv[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clockdiv(0),
      O => clockdiv_0(0)
    );
\clockdiv[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_RGB[2]_i_2_n_0\,
      I1 => \FSM_onehot_RGB[2]_i_3_n_0\,
      I2 => \FSM_onehot_RGB[2]_i_4_n_0\,
      I3 => \FSM_onehot_RGB[2]_i_5_n_0\,
      O => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => clockdiv_0(0),
      Q => clockdiv(0),
      R => '0'
    );
\clockdiv_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(10),
      Q => clockdiv(10),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(11),
      Q => clockdiv(11),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(12),
      Q => clockdiv(12),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clockdiv_reg[8]_i_1_n_0\,
      CO(3) => \clockdiv_reg[12]_i_1_n_0\,
      CO(2) => \clockdiv_reg[12]_i_1_n_1\,
      CO(1) => \clockdiv_reg[12]_i_1_n_2\,
      CO(0) => \clockdiv_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => clockdiv(12 downto 9)
    );
\clockdiv_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(13),
      Q => clockdiv(13),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(14),
      Q => clockdiv(14),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(15),
      Q => clockdiv(15),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(16),
      Q => clockdiv(16),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clockdiv_reg[12]_i_1_n_0\,
      CO(3) => \clockdiv_reg[16]_i_1_n_0\,
      CO(2) => \clockdiv_reg[16]_i_1_n_1\,
      CO(1) => \clockdiv_reg[16]_i_1_n_2\,
      CO(0) => \clockdiv_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => clockdiv(16 downto 13)
    );
\clockdiv_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(17),
      Q => clockdiv(17),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(18),
      Q => clockdiv(18),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(19),
      Q => clockdiv(19),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(1),
      Q => clockdiv(1),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(20),
      Q => clockdiv(20),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clockdiv_reg[16]_i_1_n_0\,
      CO(3) => \clockdiv_reg[20]_i_1_n_0\,
      CO(2) => \clockdiv_reg[20]_i_1_n_1\,
      CO(1) => \clockdiv_reg[20]_i_1_n_2\,
      CO(0) => \clockdiv_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => clockdiv(20 downto 17)
    );
\clockdiv_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(21),
      Q => clockdiv(21),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(22),
      Q => clockdiv(22),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(23),
      Q => clockdiv(23),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(24),
      Q => clockdiv(24),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clockdiv_reg[20]_i_1_n_0\,
      CO(3) => \clockdiv_reg[24]_i_1_n_0\,
      CO(2) => \clockdiv_reg[24]_i_1_n_1\,
      CO(1) => \clockdiv_reg[24]_i_1_n_2\,
      CO(0) => \clockdiv_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => clockdiv(24 downto 21)
    );
\clockdiv_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(25),
      Q => clockdiv(25),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(26),
      Q => clockdiv(26),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(27),
      Q => clockdiv(27),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(28),
      Q => clockdiv(28),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clockdiv_reg[24]_i_1_n_0\,
      CO(3) => \clockdiv_reg[28]_i_1_n_0\,
      CO(2) => \clockdiv_reg[28]_i_1_n_1\,
      CO(1) => \clockdiv_reg[28]_i_1_n_2\,
      CO(0) => \clockdiv_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => clockdiv(28 downto 25)
    );
\clockdiv_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(29),
      Q => clockdiv(29),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(2),
      Q => clockdiv(2),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(30),
      Q => clockdiv(30),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(31),
      Q => clockdiv(31),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clockdiv_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_clockdiv_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \clockdiv_reg[31]_i_2_n_2\,
      CO(0) => \clockdiv_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clockdiv_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => clockdiv(31 downto 29)
    );
\clockdiv_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(3),
      Q => clockdiv(3),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(4),
      Q => clockdiv(4),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clockdiv_reg[4]_i_1_n_0\,
      CO(2) => \clockdiv_reg[4]_i_1_n_1\,
      CO(1) => \clockdiv_reg[4]_i_1_n_2\,
      CO(0) => \clockdiv_reg[4]_i_1_n_3\,
      CYINIT => clockdiv(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => clockdiv(4 downto 1)
    );
\clockdiv_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(5),
      Q => clockdiv(5),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(6),
      Q => clockdiv(6),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(7),
      Q => clockdiv(7),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(8),
      Q => clockdiv(8),
      R => \clockdiv[31]_i_1_n_0\
    );
\clockdiv_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clockdiv_reg[4]_i_1_n_0\,
      CO(3) => \clockdiv_reg[8]_i_1_n_0\,
      CO(2) => \clockdiv_reg[8]_i_1_n_1\,
      CO(1) => \clockdiv_reg[8]_i_1_n_2\,
      CO(0) => \clockdiv_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => clockdiv(8 downto 5)
    );
\clockdiv_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => data0(9),
      Q => clockdiv(9),
      R => \clockdiv[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_RGBTest_0_0 is
  port (
    Clock : in STD_LOGIC;
    RGB : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_RGBTest_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_RGBTest_0_0 : entity is "system_RGBTest_0_0,RGBTest,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_RGBTest_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_RGBTest_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_RGBTest_0_0 : entity is "RGBTest,Vivado 2020.1";
end system_RGBTest_0_0;

architecture STRUCTURE of system_RGBTest_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME Clock, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.system_RGBTest_0_0_RGBTest
     port map (
      Clock => Clock,
      RGB(2 downto 0) => RGB(2 downto 0)
    );
end STRUCTURE;
