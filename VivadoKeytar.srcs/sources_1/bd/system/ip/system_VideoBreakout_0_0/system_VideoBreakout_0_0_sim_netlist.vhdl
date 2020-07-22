-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Jul 22 02:55:26 2020
-- Host        : ConnerServer running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim
--               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_VideoBreakout_0_0/system_VideoBreakout_0_0_sim_netlist.vhdl
-- Design      : system_VideoBreakout_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_VideoBreakout_0_0_VideoBreakout is
  port (
    FramePTR : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BusPReadData : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BusPReady : out STD_LOGIC;
    BusPWriteData : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BusClock : in STD_LOGIC;
    BusPWrite : in STD_LOGIC;
    BusPSel : in STD_LOGIC;
    BusPEnable : in STD_LOGIC;
    BusPAddr : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_VideoBreakout_0_0_VideoBreakout : entity is "VideoBreakout";
end system_VideoBreakout_0_0_VideoBreakout;

architecture STRUCTURE of system_VideoBreakout_0_0_VideoBreakout is
  signal \BusPReadData[5]_i_1_n_0\ : STD_LOGIC;
  signal \^buspready\ : STD_LOGIC;
  signal BusPReady_i_1_n_0 : STD_LOGIC;
  signal BusPReady_i_2_n_0 : STD_LOGIC;
  signal \^frameptr\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \FramePTR[5]_i_10_n_0\ : STD_LOGIC;
  signal \FramePTR[5]_i_1_n_0\ : STD_LOGIC;
  signal \FramePTR[5]_i_2_n_0\ : STD_LOGIC;
  signal \FramePTR[5]_i_3_n_0\ : STD_LOGIC;
  signal \FramePTR[5]_i_4_n_0\ : STD_LOGIC;
  signal \FramePTR[5]_i_5_n_0\ : STD_LOGIC;
  signal \FramePTR[5]_i_6_n_0\ : STD_LOGIC;
  signal \FramePTR[5]_i_7_n_0\ : STD_LOGIC;
  signal \FramePTR[5]_i_8_n_0\ : STD_LOGIC;
  signal \FramePTR[5]_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of BusPReady_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FramePTR[5]_i_5\ : label is "soft_lutpair0";
begin
  BusPReady <= \^buspready\;
  FramePTR(5 downto 0) <= \^frameptr\(5 downto 0);
\BusPReadData[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \FramePTR[5]_i_2_n_0\,
      I1 => \FramePTR[5]_i_3_n_0\,
      I2 => \FramePTR[5]_i_4_n_0\,
      I3 => \FramePTR[5]_i_5_n_0\,
      I4 => BusPWrite,
      O => \BusPReadData[5]_i_1_n_0\
    );
\BusPReadData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \BusPReadData[5]_i_1_n_0\,
      D => \^frameptr\(0),
      Q => BusPReadData(0),
      R => '0'
    );
\BusPReadData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \BusPReadData[5]_i_1_n_0\,
      D => \^frameptr\(1),
      Q => BusPReadData(1),
      R => '0'
    );
\BusPReadData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \BusPReadData[5]_i_1_n_0\,
      D => \^frameptr\(2),
      Q => BusPReadData(2),
      R => '0'
    );
\BusPReadData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \BusPReadData[5]_i_1_n_0\,
      D => \^frameptr\(3),
      Q => BusPReadData(3),
      R => '0'
    );
\BusPReadData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \BusPReadData[5]_i_1_n_0\,
      D => \^frameptr\(4),
      Q => BusPReadData(4),
      R => '0'
    );
\BusPReadData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \BusPReadData[5]_i_1_n_0\,
      D => \^frameptr\(5),
      Q => BusPReadData(5),
      R => '0'
    );
BusPReady_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F22FF22"
    )
        port map (
      I0 => \FramePTR[5]_i_4_n_0\,
      I1 => BusPReady_i_2_n_0,
      I2 => BusPSel,
      I3 => \^buspready\,
      I4 => BusPEnable,
      O => BusPReady_i_1_n_0
    );
BusPReady_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \FramePTR[5]_i_2_n_0\,
      I1 => BusPSel,
      I2 => BusPAddr(15),
      I3 => BusPAddr(17),
      I4 => BusPAddr(26),
      I5 => \FramePTR[5]_i_8_n_0\,
      O => BusPReady_i_2_n_0
    );
BusPReady_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => '1',
      D => BusPReady_i_1_n_0,
      Q => \^buspready\,
      R => '0'
    );
\FramePTR[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \FramePTR[5]_i_2_n_0\,
      I1 => \FramePTR[5]_i_3_n_0\,
      I2 => \FramePTR[5]_i_4_n_0\,
      I3 => BusPWrite,
      I4 => \FramePTR[5]_i_5_n_0\,
      O => \FramePTR[5]_i_1_n_0\
    );
\FramePTR[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BusPAddr(31),
      I1 => BusPAddr(24),
      I2 => BusPAddr(13),
      I3 => BusPAddr(10),
      O => \FramePTR[5]_i_10_n_0\
    );
\FramePTR[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => BusPAddr(21),
      I1 => BusPAddr(8),
      I2 => BusPAddr(29),
      I3 => BusPAddr(12),
      I4 => BusPAddr(28),
      I5 => BusPAddr(18),
      O => \FramePTR[5]_i_2_n_0\
    );
\FramePTR[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FramePTR[5]_i_6_n_0\,
      I1 => \FramePTR[5]_i_7_n_0\,
      I2 => BusPAddr(17),
      I3 => BusPAddr(4),
      I4 => BusPAddr(2),
      I5 => \FramePTR[5]_i_8_n_0\,
      O => \FramePTR[5]_i_3_n_0\
    );
\FramePTR[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => BusPAddr(22),
      I1 => BusPAddr(30),
      I2 => BusPAddr(14),
      I3 => \FramePTR[5]_i_9_n_0\,
      I4 => \FramePTR[5]_i_10_n_0\,
      O => \FramePTR[5]_i_4_n_0\
    );
\FramePTR[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => BusPEnable,
      I1 => \^buspready\,
      I2 => BusPSel,
      O => \FramePTR[5]_i_5_n_0\
    );
\FramePTR[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BusPAddr(6),
      I1 => BusPAddr(7),
      I2 => BusPAddr(3),
      I3 => BusPAddr(1),
      O => \FramePTR[5]_i_6_n_0\
    );
\FramePTR[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BusPAddr(0),
      I1 => BusPAddr(26),
      I2 => BusPAddr(5),
      I3 => BusPAddr(15),
      O => \FramePTR[5]_i_7_n_0\
    );
\FramePTR[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => BusPAddr(16),
      I1 => BusPAddr(27),
      I2 => BusPAddr(19),
      I3 => BusPAddr(20),
      O => \FramePTR[5]_i_8_n_0\
    );
\FramePTR[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BusPAddr(9),
      I1 => BusPAddr(23),
      I2 => BusPAddr(25),
      I3 => BusPAddr(11),
      O => \FramePTR[5]_i_9_n_0\
    );
\FramePTR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \FramePTR[5]_i_1_n_0\,
      D => BusPWriteData(0),
      Q => \^frameptr\(0),
      R => '0'
    );
\FramePTR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \FramePTR[5]_i_1_n_0\,
      D => BusPWriteData(1),
      Q => \^frameptr\(1),
      R => '0'
    );
\FramePTR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \FramePTR[5]_i_1_n_0\,
      D => BusPWriteData(2),
      Q => \^frameptr\(2),
      R => '0'
    );
\FramePTR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \FramePTR[5]_i_1_n_0\,
      D => BusPWriteData(3),
      Q => \^frameptr\(3),
      R => '0'
    );
\FramePTR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \FramePTR[5]_i_1_n_0\,
      D => BusPWriteData(4),
      Q => \^frameptr\(4),
      R => '0'
    );
\FramePTR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => \FramePTR[5]_i_1_n_0\,
      D => BusPWriteData(5),
      Q => \^frameptr\(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_VideoBreakout_0_0 is
  port (
    PClock : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    vid_field_id : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    Red : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Green : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    HSync : out STD_LOGIC;
    VSync : out STD_LOGIC;
    PClk : out STD_LOGIC;
    De : out STD_LOGIC;
    FramePTR : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BusClock : in STD_LOGIC;
    BusPAddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BusPWriteData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BusPReadData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BusPWrite : in STD_LOGIC;
    BusPReady : out STD_LOGIC;
    BusPEnable : in STD_LOGIC;
    BusPSel : in STD_LOGIC;
    BusPError : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_VideoBreakout_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_VideoBreakout_0_0 : entity is "system_VideoBreakout_0_0,VideoBreakout,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_VideoBreakout_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_VideoBreakout_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_VideoBreakout_0_0 : entity is "VideoBreakout,Vivado 2020.1";
end system_VideoBreakout_0_0;

architecture STRUCTURE of system_VideoBreakout_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^buspreaddata\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^pclock\ : STD_LOGIC;
  signal \^vid_active_video\ : STD_LOGIC;
  signal \^vid_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^vid_hsync\ : STD_LOGIC;
  signal \^vid_vsync\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_io ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_field_id : signal is "xilinx.com:interface:vid_io:1.0 vid_io FIELD";
  attribute X_INTERFACE_INFO of vid_hblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io HBLANK";
  attribute X_INTERFACE_INFO of vid_hsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io HSYNC";
  attribute X_INTERFACE_INFO of vid_vblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io VBLANK";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io VSYNC";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 vid_io DATA";
begin
  Blue(4 downto 0) <= \^vid_data\(12 downto 8);
  BusPError <= \<const0>\;
  BusPReadData(31) <= \<const0>\;
  BusPReadData(30) <= \<const0>\;
  BusPReadData(29) <= \<const0>\;
  BusPReadData(28) <= \<const0>\;
  BusPReadData(27) <= \<const0>\;
  BusPReadData(26) <= \<const0>\;
  BusPReadData(25) <= \<const0>\;
  BusPReadData(24) <= \<const0>\;
  BusPReadData(23) <= \<const0>\;
  BusPReadData(22) <= \<const0>\;
  BusPReadData(21) <= \<const0>\;
  BusPReadData(20) <= \<const0>\;
  BusPReadData(19) <= \<const0>\;
  BusPReadData(18) <= \<const0>\;
  BusPReadData(17) <= \<const0>\;
  BusPReadData(16) <= \<const0>\;
  BusPReadData(15) <= \<const0>\;
  BusPReadData(14) <= \<const0>\;
  BusPReadData(13) <= \<const0>\;
  BusPReadData(12) <= \<const0>\;
  BusPReadData(11) <= \<const0>\;
  BusPReadData(10) <= \<const0>\;
  BusPReadData(9) <= \<const0>\;
  BusPReadData(8) <= \<const0>\;
  BusPReadData(7) <= \<const0>\;
  BusPReadData(6) <= \<const0>\;
  BusPReadData(5 downto 0) <= \^buspreaddata\(5 downto 0);
  De <= \^vid_active_video\;
  Green(5 downto 0) <= \^vid_data\(21 downto 16);
  HSync <= \^vid_hsync\;
  PClk <= \^pclock\;
  Red(4 downto 0) <= \^vid_data\(28 downto 24);
  VSync <= \^vid_vsync\;
  \^pclock\ <= PClock;
  \^vid_active_video\ <= vid_active_video;
  \^vid_data\(28 downto 24) <= vid_data(28 downto 24);
  \^vid_data\(21 downto 16) <= vid_data(21 downto 16);
  \^vid_data\(12 downto 8) <= vid_data(12 downto 8);
  \^vid_hsync\ <= vid_hsync;
  \^vid_vsync\ <= vid_vsync;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_VideoBreakout_0_0_VideoBreakout
     port map (
      BusClock => BusClock,
      BusPAddr(31 downto 0) => BusPAddr(31 downto 0),
      BusPEnable => BusPEnable,
      BusPReadData(5 downto 0) => \^buspreaddata\(5 downto 0),
      BusPReady => BusPReady,
      BusPSel => BusPSel,
      BusPWrite => BusPWrite,
      BusPWriteData(5 downto 0) => BusPWriteData(5 downto 0),
      FramePTR(5 downto 0) => FramePTR(5 downto 0)
    );
end STRUCTURE;
