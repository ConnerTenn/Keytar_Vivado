-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Jul 20 03:05:24 2020
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
    Green : out STD_LOGIC_VECTOR ( 0 to 0 );
    Blue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMIController_0_0_HDMIController : entity is "HDMIController";
end system_HDMIController_0_0_HDMIController;

architecture STRUCTURE of system_HDMIController_0_0_HDMIController is
  signal \Vcounter[10]_i_3_n_0\ : STD_LOGIC;
  signal \Vcounter[10]_i_4_n_0\ : STD_LOGIC;
  signal Vcounter_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^blue\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \blue[0]_i_1_n_0\ : STD_LOGIC;
  signal \blue[1]_i_1_n_0\ : STD_LOGIC;
  signal \blue[2]_i_1_n_0\ : STD_LOGIC;
  signal \blue[3]_i_1_n_0\ : STD_LOGIC;
  signal \blue[4]_i_1_n_0\ : STD_LOGIC;
  signal \blue[4]_i_2_n_0\ : STD_LOGIC;
  signal hblank_reg_n_0 : STD_LOGIC;
  signal in1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal red : STD_LOGIC_VECTOR ( 4 to 4 );
  signal vblank_i_1_n_0 : STD_LOGIC;
  signal vblank_i_2_n_0 : STD_LOGIC;
  signal vblank_i_3_n_0 : STD_LOGIC;
  signal vblank_i_4_n_0 : STD_LOGIC;
  signal vblank_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Blue[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Blue[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Blue[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Blue[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Blue[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Green[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Vcounter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Vcounter[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Vcounter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Vcounter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Vcounter[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Vcounter[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Vcounter[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Vcounter[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \blue[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \blue[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \blue[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \blue[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of vblank_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of vblank_i_4 : label is "soft_lutpair9";
begin
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
\Green[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => red(4),
      I1 => hblank_reg_n_0,
      I2 => vblank_reg_n_0,
      O => Green(0)
    );
\Vcounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Vcounter_reg(0),
      O => p_0_in(0)
    );
\Vcounter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAAAAA8AAA8"
    )
        port map (
      I0 => Vcounter_reg(10),
      I1 => Vcounter_reg(7),
      I2 => Vcounter_reg(9),
      I3 => Vcounter_reg(8),
      I4 => \Vcounter[10]_i_3_n_0\,
      I5 => Vcounter_reg(6),
      O => in1
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
      O => p_0_in(10)
    );
\Vcounter[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055557FFF"
    )
        port map (
      I0 => Vcounter_reg(4),
      I1 => Vcounter_reg(0),
      I2 => Vcounter_reg(1),
      I3 => Vcounter_reg(2),
      I4 => Vcounter_reg(3),
      I5 => Vcounter_reg(5),
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
      O => p_0_in(1)
    );
\Vcounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => Vcounter_reg(0),
      I1 => Vcounter_reg(1),
      I2 => Vcounter_reg(2),
      O => p_0_in(2)
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
      O => p_0_in(3)
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
      O => p_0_in(4)
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
      O => p_0_in(5)
    );
\Vcounter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Vcounter[10]_i_4_n_0\,
      I1 => Vcounter_reg(6),
      O => p_0_in(6)
    );
\Vcounter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Vcounter[10]_i_4_n_0\,
      I1 => Vcounter_reg(6),
      I2 => Vcounter_reg(7),
      O => p_0_in(7)
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
      O => p_0_in(8)
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
      O => p_0_in(9)
    );
\Vcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(0),
      Q => Vcounter_reg(0),
      R => in1
    );
\Vcounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(10),
      Q => Vcounter_reg(10),
      R => in1
    );
\Vcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(1),
      Q => Vcounter_reg(1),
      R => in1
    );
\Vcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(2),
      Q => Vcounter_reg(2),
      R => in1
    );
\Vcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(3),
      Q => Vcounter_reg(3),
      R => in1
    );
\Vcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(4),
      Q => Vcounter_reg(4),
      R => in1
    );
\Vcounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(5),
      Q => Vcounter_reg(5),
      R => in1
    );
\Vcounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(6),
      Q => Vcounter_reg(6),
      R => in1
    );
\Vcounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(7),
      Q => Vcounter_reg(7),
      R => in1
    );
\Vcounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(8),
      Q => Vcounter_reg(8),
      R => in1
    );
\Vcounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => p_0_in(9),
      Q => Vcounter_reg(9),
      R => in1
    );
\blue[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEE00000111"
    )
        port map (
      I0 => Vcounter_reg(5),
      I1 => Vcounter_reg(3),
      I2 => Vcounter_reg(2),
      I3 => Vcounter_reg(1),
      I4 => Vcounter_reg(4),
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
      I0 => Vcounter_reg(8),
      I1 => \blue[4]_i_2_n_0\,
      I2 => Vcounter_reg(7),
      I3 => Vcounter_reg(9),
      O => \blue[3]_i_1_n_0\
    );
\blue[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => Vcounter_reg(9),
      I1 => Vcounter_reg(7),
      I2 => \blue[4]_i_2_n_0\,
      I3 => Vcounter_reg(8),
      I4 => Vcounter_reg(10),
      O => \blue[4]_i_1_n_0\
    );
\blue[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => Vcounter_reg(5),
      I1 => Vcounter_reg(3),
      I2 => Vcounter_reg(2),
      I3 => Vcounter_reg(1),
      I4 => Vcounter_reg(4),
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
hblank_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock,
      CE => '1',
      D => hblank_reg_n_0,
      Q => hblank_reg_n_0,
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
      D => '1',
      Q => red(4),
      R => '0'
    );
vblank_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => vblank_reg_n_0,
      I1 => Vcounter_reg(10),
      I2 => vblank_i_2_n_0,
      I3 => vblank_i_3_n_0,
      I4 => vblank_i_4_n_0,
      I5 => Vcounter_reg(9),
      O => vblank_i_1_n_0
    );
vblank_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Vcounter_reg(7),
      I1 => Vcounter_reg(8),
      O => vblank_i_2_n_0
    );
vblank_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => Vcounter_reg(3),
      I1 => Vcounter_reg(0),
      I2 => Vcounter_reg(2),
      I3 => Vcounter_reg(1),
      I4 => Vcounter_reg(5),
      I5 => Vcounter_reg(4),
      O => vblank_i_3_n_0
    );
vblank_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Vcounter_reg(8),
      I1 => Vcounter_reg(7),
      I2 => Vcounter_reg(6),
      O => vblank_i_4_n_0
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
  signal \^green\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME Clock, FREQ_HZ 133333344, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
begin
  De <= \<const0>\;
  Green(5) <= \<const0>\;
  Green(4) <= \<const0>\;
  Green(3) <= \<const0>\;
  Green(2) <= \<const0>\;
  Green(1) <= \^green\(1);
  Green(0) <= \^green\(1);
  HSync <= \<const0>\;
  PClk <= \^clock\;
  Red(4) <= \^green\(1);
  Red(3) <= \^green\(1);
  Red(2) <= \^green\(1);
  Red(1) <= \^green\(1);
  Red(0) <= \<const0>\;
  VSync <= \<const0>\;
  \^clock\ <= Clock;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_HDMIController_0_0_HDMIController
     port map (
      Blue(4 downto 0) => Blue(4 downto 0),
      Clock => \^clock\,
      Green(0) => \^green\(1)
    );
end STRUCTURE;
