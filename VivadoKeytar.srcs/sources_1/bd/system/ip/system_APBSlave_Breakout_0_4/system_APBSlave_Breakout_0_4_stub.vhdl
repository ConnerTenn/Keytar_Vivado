-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 16 05:16:25 2020
-- Host        : ConnerServer running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_APBSlave_Breakout_0_4 -prefix
--               system_APBSlave_Breakout_0_4_ system_APBSlave_Breakout_0_2_stub.vhdl
-- Design      : system_APBSlave_Breakout_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_APBSlave_Breakout_0_4 is
  Port ( 
    s_apb_pclock : in STD_LOGIC;
    s_apb_paddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_apb_pwdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_apb_prdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_apb_pwrite : in STD_LOGIC;
    s_apb_pready : out STD_LOGIC;
    s_apb_penable : in STD_LOGIC;
    s_apb_psel : in STD_LOGIC;
    s_apb_pslverr : out STD_LOGIC;
    BusClock : out STD_LOGIC;
    BusPAddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BusPWriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BusPReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BusPWrite : out STD_LOGIC;
    BusPReady : in STD_LOGIC;
    BusPEnable : out STD_LOGIC;
    BusPSel : out STD_LOGIC;
    BusPError : in STD_LOGIC
  );

end system_APBSlave_Breakout_0_4;

architecture stub of system_APBSlave_Breakout_0_4 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_apb_pclock,s_apb_paddr[31:0],s_apb_pwdata[31:0],s_apb_prdata[31:0],s_apb_pwrite,s_apb_pready,s_apb_penable,s_apb_psel,s_apb_pslverr,BusClock,BusPAddr[31:0],BusPWriteData[31:0],BusPReadData[31:0],BusPWrite,BusPReady,BusPEnable,BusPSel,BusPError";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Breakout,Vivado 2020.1";
begin
end;
