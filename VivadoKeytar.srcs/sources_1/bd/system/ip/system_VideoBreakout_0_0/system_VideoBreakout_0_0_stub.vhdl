-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Jul 22 02:55:26 2020
-- Host        : ConnerServer running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /NetDrive/Personal/Projects/Keytar/VivadoKeytar/VivadoKeytar.srcs/sources_1/bd/system/ip/system_VideoBreakout_0_0/system_VideoBreakout_0_0_stub.vhdl
-- Design      : system_VideoBreakout_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_VideoBreakout_0_0 is
  Port ( 
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

end system_VideoBreakout_0_0;

architecture stub of system_VideoBreakout_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "PClock,vid_active_video,vid_data[31:0],vid_field_id,vid_hblank,vid_hsync,vid_vblank,vid_vsync,Red[4:0],Green[5:0],Blue[4:0],HSync,VSync,PClk,De,FramePTR[5:0],BusClock,BusPAddr[31:0],BusPWriteData[31:0],BusPReadData[31:0],BusPWrite,BusPReady,BusPEnable,BusPSel,BusPError";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "VideoBreakout,Vivado 2020.1";
begin
end;
