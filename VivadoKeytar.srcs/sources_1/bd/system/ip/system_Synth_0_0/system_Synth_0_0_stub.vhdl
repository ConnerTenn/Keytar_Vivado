-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Jul 22 03:17:19 2020
-- Host        : ConnerServer running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_Synth_0_0/system_Synth_0_0_stub.vhdl
-- Design      : system_Synth_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_Synth_0_0 is
  Port ( 
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

end system_Synth_0_0;

architecture stub of system_Synth_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clock100MHz,Waveform[23:0],BusClock,BusPAddr[31:0],BusPWriteData[31:0],BusPReadData[31:0],BusPWrite,BusPReady,BusPEnable,BusPSel,BusPError";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Synth,Vivado 2020.1";
begin
end;
