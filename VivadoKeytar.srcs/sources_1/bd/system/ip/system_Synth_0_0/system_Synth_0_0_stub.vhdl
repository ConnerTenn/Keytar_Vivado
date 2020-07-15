-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Jul 15 04:25:30 2020
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
    Clock : in STD_LOGIC;
    Buzzer : out STD_LOGIC
  );

end system_Synth_0_0;

architecture stub of system_Synth_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clock,Buzzer";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Synth,Vivado 2020.1";
begin
end;
