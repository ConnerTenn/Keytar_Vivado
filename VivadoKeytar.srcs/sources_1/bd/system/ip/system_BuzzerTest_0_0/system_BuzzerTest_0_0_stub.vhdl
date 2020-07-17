-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 16 23:45:21 2020
-- Host        : ConnerServer running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_BuzzerTest_0_0/system_BuzzerTest_0_0_stub.vhdl
-- Design      : system_BuzzerTest_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_BuzzerTest_0_0 is
  Port ( 
    Clock : in STD_LOGIC;
    Buzzer : out STD_LOGIC;
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

end system_BuzzerTest_0_0;

architecture stub of system_BuzzerTest_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clock,Buzzer,BusClock,BusPAddr[31:0],BusPWriteData[31:0],BusPReadData[31:0],BusPWrite,BusPReady,BusPEnable,BusPSel,BusPError";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "BuzzerTest,Vivado 2020.1";
begin
end;
