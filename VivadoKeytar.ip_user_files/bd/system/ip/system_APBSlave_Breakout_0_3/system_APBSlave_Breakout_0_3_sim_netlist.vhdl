-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 16 05:16:25 2020
-- Host        : ConnerServer running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top system_APBSlave_Breakout_0_3 -prefix
--               system_APBSlave_Breakout_0_3_ system_APBSlave_Breakout_0_2_sim_netlist.vhdl
-- Design      : system_APBSlave_Breakout_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_APBSlave_Breakout_0_3 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_APBSlave_Breakout_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_APBSlave_Breakout_0_3 : entity is "system_APBSlave_Breakout_0_2,Breakout,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_APBSlave_Breakout_0_3 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_APBSlave_Breakout_0_3 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_APBSlave_Breakout_0_3 : entity is "Breakout,Vivado 2020.1";
end system_APBSlave_Breakout_0_3;

architecture STRUCTURE of system_APBSlave_Breakout_0_3 is
  signal \^busperror\ : STD_LOGIC;
  signal \^buspreaddata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^buspready\ : STD_LOGIC;
  signal \^s_apb_paddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_apb_pclock\ : STD_LOGIC;
  signal \^s_apb_penable\ : STD_LOGIC;
  signal \^s_apb_psel\ : STD_LOGIC;
  signal \^s_apb_pwdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_apb_pwrite\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_apb_pclock : signal is "xilinx.com:signal:clock:1.0 s_apb_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_apb_pclock : signal is "XIL_INTERFACENAME s_apb_aclk, ASSOCIATED_BUSIF APB_S, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_apb_penable : signal is "xilinx.com:interface:apb:1.0 APB_S PENABLE";
  attribute X_INTERFACE_INFO of s_apb_pready : signal is "xilinx.com:interface:apb:1.0 APB_S PREADY";
  attribute X_INTERFACE_INFO of s_apb_psel : signal is "xilinx.com:interface:apb:1.0 APB_S PSEL";
  attribute X_INTERFACE_INFO of s_apb_pslverr : signal is "xilinx.com:interface:apb:1.0 APB_S PSLVERR";
  attribute X_INTERFACE_INFO of s_apb_pwrite : signal is "xilinx.com:interface:apb:1.0 APB_S PWRITE";
  attribute X_INTERFACE_INFO of s_apb_paddr : signal is "xilinx.com:interface:apb:1.0 APB_S PADDR";
  attribute X_INTERFACE_INFO of s_apb_prdata : signal is "xilinx.com:interface:apb:1.0 APB_S PRDATA";
  attribute X_INTERFACE_INFO of s_apb_pwdata : signal is "xilinx.com:interface:apb:1.0 APB_S PWDATA";
begin
  BusClock <= \^s_apb_pclock\;
  BusPAddr(31 downto 0) <= \^s_apb_paddr\(31 downto 0);
  BusPEnable <= \^s_apb_penable\;
  BusPSel <= \^s_apb_psel\;
  BusPWrite <= \^s_apb_pwrite\;
  BusPWriteData(31 downto 0) <= \^s_apb_pwdata\(31 downto 0);
  \^busperror\ <= BusPError;
  \^buspreaddata\(31 downto 0) <= BusPReadData(31 downto 0);
  \^buspready\ <= BusPReady;
  \^s_apb_paddr\(31 downto 0) <= s_apb_paddr(31 downto 0);
  \^s_apb_pclock\ <= s_apb_pclock;
  \^s_apb_penable\ <= s_apb_penable;
  \^s_apb_psel\ <= s_apb_psel;
  \^s_apb_pwdata\(31 downto 0) <= s_apb_pwdata(31 downto 0);
  \^s_apb_pwrite\ <= s_apb_pwrite;
  s_apb_prdata(31 downto 0) <= \^buspreaddata\(31 downto 0);
  s_apb_pready <= \^buspready\;
  s_apb_pslverr <= \^busperror\;
end STRUCTURE;
