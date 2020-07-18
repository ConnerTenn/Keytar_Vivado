-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Jul 17 21:37:44 2020
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
entity \system_Synth_0_0_Channel__parameterized61\ is
  port (
    BusPReady_reg_0 : out STD_LOGIC;
    \BusPReadData_reg[30]_0\ : out STD_LOGIC;
    BusPAddr_4_sp_1 : out STD_LOGIC;
    BusClock : in STD_LOGIC;
    \BusPReadData_reg[30]_1\ : in STD_LOGIC;
    \BusPReadData_reg[30]_2\ : in STD_LOGIC;
    \BusPReadData_reg[30]_3\ : in STD_LOGIC;
    BusPEnable : in STD_LOGIC;
    BusPSel : in STD_LOGIC;
    BusPAddr : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_Synth_0_0_Channel__parameterized61\ : entity is "Channel";
end \system_Synth_0_0_Channel__parameterized61\;

architecture STRUCTURE of \system_Synth_0_0_Channel__parameterized61\ is
  signal BusPAddr_4_sn_1 : STD_LOGIC;
  signal \BusPReadData[30]_i_1_n_0\ : STD_LOGIC;
  signal \BusPReadData[30]_i_2_n_0\ : STD_LOGIC;
  signal \BusPReadData[30]_i_3_n_0\ : STD_LOGIC;
  signal \^buspreaddata_reg[30]_0\ : STD_LOGIC;
  signal \BusPReady_i_1__0_n_0\ : STD_LOGIC;
  signal \^buspready_reg_0\ : STD_LOGIC;
begin
  BusPAddr_4_sp_1 <= BusPAddr_4_sn_1;
  \BusPReadData_reg[30]_0\ <= \^buspreaddata_reg[30]_0\;
  BusPReady_reg_0 <= \^buspready_reg_0\;
\BusPReadData[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \BusPReadData_reg[30]_1\,
      I1 => \BusPReadData_reg[30]_2\,
      I2 => \BusPReadData[30]_i_2_n_0\,
      I3 => \BusPReadData_reg[30]_3\,
      I4 => \BusPReadData[30]_i_3_n_0\,
      I5 => \^buspreaddata_reg[30]_0\,
      O => \BusPReadData[30]_i_1_n_0\
    );
\BusPReadData[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => BusPAddr(10),
      I1 => BusPAddr(11),
      I2 => BusPAddr(9),
      I3 => BusPAddr(8),
      I4 => BusPAddr(13),
      I5 => BusPAddr(12),
      O => \BusPReadData[30]_i_2_n_0\
    );
\BusPReadData[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => BusPEnable,
      I1 => BusPSel,
      I2 => \^buspready_reg_0\,
      I3 => BusPAddr(0),
      I4 => BusPAddr(1),
      I5 => BusPAddr_4_sn_1,
      O => \BusPReadData[30]_i_3_n_0\
    );
\BusPReadData[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => BusPAddr(4),
      I1 => BusPAddr(5),
      I2 => BusPAddr(2),
      I3 => BusPAddr(3),
      I4 => BusPAddr(7),
      I5 => BusPAddr(6),
      O => BusPAddr_4_sn_1
    );
\BusPReadData_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => '1',
      D => \BusPReadData[30]_i_1_n_0\,
      Q => \^buspreaddata_reg[30]_0\,
      R => '0'
    );
\BusPReady_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => BusPEnable,
      I1 => \^buspready_reg_0\,
      I2 => BusPSel,
      O => \BusPReady_i_1__0_n_0\
    );
BusPReady_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => '1',
      D => \BusPReady_i_1__0_n_0\,
      Q => \^buspready_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_Synth_0_0_Channel__parameterized62\ is
  port (
    BusPReadData : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \BusPAddr[28]\ : out STD_LOGIC;
    BusPAddr_22_sp_1 : out STD_LOGIC;
    BusPAddr_16_sp_1 : out STD_LOGIC;
    BusPReady : out STD_LOGIC;
    BusClock : in STD_LOGIC;
    BusPEnable : in STD_LOGIC;
    BusPSel : in STD_LOGIC;
    BusPAddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \BusPReadData_reg[30]_0\ : in STD_LOGIC;
    BusPReady_0 : in STD_LOGIC;
    \BusPReadData[30]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_Synth_0_0_Channel__parameterized62\ : entity is "Channel";
end \system_Synth_0_0_Channel__parameterized62\;

architecture STRUCTURE of \system_Synth_0_0_Channel__parameterized62\ is
  signal \^buspaddr[28]\ : STD_LOGIC;
  signal BusPAddr_16_sn_1 : STD_LOGIC;
  signal BusPAddr_22_sn_1 : STD_LOGIC;
  signal \^buspreaddata\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \BusPReadData[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \BusPReadData[30]_i_4_n_0\ : STD_LOGIC;
  signal \BusPReadData[30]_i_6_n_0\ : STD_LOGIC;
  signal BusPReady_i_1_n_0 : STD_LOGIC;
  signal BusPReady_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of BusPReady_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of BusPReady_i_1 : label is "soft_lutpair0";
begin
  \BusPAddr[28]\ <= \^buspaddr[28]\;
  BusPAddr_16_sp_1 <= BusPAddr_16_sn_1;
  BusPAddr_22_sp_1 <= BusPAddr_22_sn_1;
  BusPReadData(1 downto 0) <= \^buspreaddata\(1 downto 0);
\BusPReadData[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \^buspaddr[28]\,
      I1 => BusPAddr_22_sn_1,
      I2 => \BusPReadData[30]_i_4_n_0\,
      I3 => BusPAddr_16_sn_1,
      I4 => \BusPReadData[30]_i_6_n_0\,
      I5 => \^buspreaddata\(0),
      O => \BusPReadData[30]_i_1__0_n_0\
    );
\BusPReadData[30]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => BusPAddr(22),
      I1 => BusPAddr(23),
      I2 => BusPAddr(20),
      I3 => BusPAddr(21),
      I4 => BusPAddr(25),
      I5 => BusPAddr(24),
      O => \^buspaddr[28]\
    );
\BusPReadData[30]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => BusPAddr(16),
      I1 => BusPAddr(17),
      I2 => BusPAddr(14),
      I3 => BusPAddr(15),
      I4 => BusPAddr(19),
      I5 => BusPAddr(18),
      O => BusPAddr_22_sn_1
    );
\BusPReadData[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => BusPAddr(4),
      I1 => BusPAddr(5),
      I2 => BusPAddr(2),
      I3 => BusPAddr(3),
      I4 => BusPAddr(7),
      I5 => BusPAddr(6),
      O => \BusPReadData[30]_i_4_n_0\
    );
\BusPReadData[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => BusPAddr(10),
      I1 => BusPAddr(11),
      I2 => BusPAddr(8),
      I3 => BusPAddr(9),
      I4 => BusPAddr(13),
      I5 => BusPAddr(12),
      O => BusPAddr_16_sn_1
    );
\BusPReadData[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => BusPEnable,
      I1 => BusPSel,
      I2 => BusPReady_reg_n_0,
      I3 => BusPAddr(0),
      I4 => BusPAddr(1),
      I5 => \BusPReadData_reg[30]_0\,
      O => \BusPReadData[30]_i_6_n_0\
    );
\BusPReadData[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^buspreaddata\(0),
      I1 => \BusPReadData[30]\,
      O => \^buspreaddata\(1)
    );
\BusPReadData_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => '1',
      D => \BusPReadData[30]_i_1__0_n_0\,
      Q => \^buspreaddata\(0),
      R => '0'
    );
BusPReady_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BusPReady_reg_n_0,
      I1 => BusPReady_0,
      O => BusPReady
    );
BusPReady_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => BusPEnable,
      I1 => BusPReady_reg_n_0,
      I2 => BusPSel,
      O => BusPReady_i_1_n_0
    );
BusPReady_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => BusClock,
      CE => '1',
      D => BusPReady_i_1_n_0,
      Q => BusPReady_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Synth_0_0_Synth is
  port (
    BusPReadData : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BusPReady : out STD_LOGIC;
    BusPEnable : in STD_LOGIC;
    BusPSel : in STD_LOGIC;
    BusPAddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BusClock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_Synth_0_0_Synth : entity is "Synth";
end system_Synth_0_0_Synth;

architecture STRUCTURE of system_Synth_0_0_Synth is
  signal \channels[62].channel0_n_0\ : STD_LOGIC;
  signal \channels[62].channel0_n_1\ : STD_LOGIC;
  signal \channels[62].channel0_n_2\ : STD_LOGIC;
  signal \channels[63].channel0_n_2\ : STD_LOGIC;
  signal \channels[63].channel0_n_3\ : STD_LOGIC;
  signal \channels[63].channel0_n_4\ : STD_LOGIC;
begin
\channels[62].channel0\: entity work.\system_Synth_0_0_Channel__parameterized61\
     port map (
      BusClock => BusClock,
      BusPAddr(13 downto 0) => BusPAddr(13 downto 0),
      BusPAddr_4_sp_1 => \channels[62].channel0_n_2\,
      BusPEnable => BusPEnable,
      \BusPReadData_reg[30]_0\ => \channels[62].channel0_n_1\,
      \BusPReadData_reg[30]_1\ => \channels[63].channel0_n_2\,
      \BusPReadData_reg[30]_2\ => \channels[63].channel0_n_3\,
      \BusPReadData_reg[30]_3\ => \channels[63].channel0_n_4\,
      BusPReady_reg_0 => \channels[62].channel0_n_0\,
      BusPSel => BusPSel
    );
\channels[63].channel0\: entity work.\system_Synth_0_0_Channel__parameterized62\
     port map (
      BusClock => BusClock,
      BusPAddr(25 downto 2) => BusPAddr(31 downto 8),
      BusPAddr(1 downto 0) => BusPAddr(1 downto 0),
      \BusPAddr[28]\ => \channels[63].channel0_n_2\,
      BusPAddr_16_sp_1 => \channels[63].channel0_n_4\,
      BusPAddr_22_sp_1 => \channels[63].channel0_n_3\,
      BusPEnable => BusPEnable,
      BusPReadData(1 downto 0) => BusPReadData(1 downto 0),
      \BusPReadData[30]\ => \channels[62].channel0_n_1\,
      \BusPReadData_reg[30]_0\ => \channels[62].channel0_n_2\,
      BusPReady => BusPReady,
      BusPReady_0 => \channels[62].channel0_n_0\,
      BusPSel => BusPSel
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Synth_0_0 is
  port (
    Clock100MHz : in STD_LOGIC;
    Waveform : out STD_LOGIC_VECTOR ( 23 downto 0 );
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
  signal \<const0>\ : STD_LOGIC;
  signal \^buspreaddata\ : STD_LOGIC_VECTOR ( 30 downto 8 );
begin
  BusPError <= \<const0>\;
  BusPReadData(31) <= \<const0>\;
  BusPReadData(30) <= \^buspreaddata\(30);
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
  BusPReadData(13) <= \^buspreaddata\(30);
  BusPReadData(12) <= \^buspreaddata\(30);
  BusPReadData(11) <= \^buspreaddata\(30);
  BusPReadData(10) <= \^buspreaddata\(30);
  BusPReadData(9) <= \^buspreaddata\(30);
  BusPReadData(8) <= \^buspreaddata\(8);
  BusPReadData(7) <= \<const0>\;
  BusPReadData(6) <= \<const0>\;
  BusPReadData(5) <= \<const0>\;
  BusPReadData(4) <= \<const0>\;
  BusPReadData(3) <= \<const0>\;
  BusPReadData(2) <= \<const0>\;
  BusPReadData(1) <= \<const0>\;
  BusPReadData(0) <= \<const0>\;
  Waveform(23) <= \<const0>\;
  Waveform(22) <= \<const0>\;
  Waveform(21) <= \<const0>\;
  Waveform(20) <= \<const0>\;
  Waveform(19) <= \<const0>\;
  Waveform(18) <= \<const0>\;
  Waveform(17) <= \<const0>\;
  Waveform(16) <= \<const0>\;
  Waveform(15) <= \<const0>\;
  Waveform(14) <= \<const0>\;
  Waveform(13) <= \<const0>\;
  Waveform(12) <= \<const0>\;
  Waveform(11) <= \<const0>\;
  Waveform(10) <= \<const0>\;
  Waveform(9) <= \<const0>\;
  Waveform(8) <= \<const0>\;
  Waveform(7) <= \<const0>\;
  Waveform(6) <= \<const0>\;
  Waveform(5) <= \<const0>\;
  Waveform(4) <= \<const0>\;
  Waveform(3) <= \<const0>\;
  Waveform(2) <= \<const0>\;
  Waveform(1) <= \<const0>\;
  Waveform(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_Synth_0_0_Synth
     port map (
      BusClock => BusClock,
      BusPAddr(31 downto 0) => BusPAddr(31 downto 0),
      BusPEnable => BusPEnable,
      BusPReadData(1) => \^buspreaddata\(30),
      BusPReadData(0) => \^buspreaddata\(8),
      BusPReady => BusPReady,
      BusPSel => BusPSel
    );
end STRUCTURE;
