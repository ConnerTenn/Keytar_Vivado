//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Sun May 16 03:51:25 2021
//Host        : ConnerServer running 64-bit Manjaro Linux
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (Blue,
    Buzzer,
    Clk12MHz,
    DAC_MClk,
    DAC_Mode,
    DAC_Reset,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    De,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    Green,
    HSync,
    I2C_scl_io,
    I2C_sda_io,
    I2S_Clk,
    I2S_DIn,
    I2S_DOut,
    I2S_Format,
    I2S_LR,
    KeyRibbonDrive,
    KeyRibbonSense,
    PClk,
    RGB,
    Red,
    VSync,
    Waveform);
  output [4:0]Blue;
  output [0:0]Buzzer;
  input Clk12MHz;
  output DAC_MClk;
  output [1:0]DAC_Mode;
  output DAC_Reset;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output [0:0]De;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [5:0]Green;
  output [0:0]HSync;
  inout I2C_scl_io;
  inout I2C_sda_io;
  output I2S_Clk;
  input I2S_DIn;
  output I2S_DOut;
  output [0:0]I2S_Format;
  output I2S_LR;
  output [7:0]KeyRibbonDrive;
  input [7:0]KeyRibbonSense;
  output [0:0]PClk;
  output [2:0]RGB;
  output [4:0]Red;
  output [0:0]VSync;
  output [23:0]Waveform;

  wire [4:0]Blue;
  wire [0:0]Buzzer;
  wire Clk12MHz;
  wire DAC_MClk;
  wire [1:0]DAC_Mode;
  wire DAC_Reset;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire [0:0]De;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [5:0]Green;
  wire [0:0]HSync;
  wire I2C_scl_i;
  wire I2C_scl_io;
  wire I2C_scl_o;
  wire I2C_scl_t;
  wire I2C_sda_i;
  wire I2C_sda_io;
  wire I2C_sda_o;
  wire I2C_sda_t;
  wire I2S_Clk;
  wire I2S_DIn;
  wire I2S_DOut;
  wire [0:0]I2S_Format;
  wire I2S_LR;
  wire [7:0]KeyRibbonDrive;
  wire [7:0]KeyRibbonSense;
  wire [0:0]PClk;
  wire [2:0]RGB;
  wire [4:0]Red;
  wire [0:0]VSync;
  wire [23:0]Waveform;

  IOBUF I2C_scl_iobuf
       (.I(I2C_scl_o),
        .IO(I2C_scl_io),
        .O(I2C_scl_i),
        .T(I2C_scl_t));
  IOBUF I2C_sda_iobuf
       (.I(I2C_sda_o),
        .IO(I2C_sda_io),
        .O(I2C_sda_i),
        .T(I2C_sda_t));
  system system_i
       (.Blue(Blue),
        .Buzzer(Buzzer),
        .Clk12MHz(Clk12MHz),
        .DAC_MClk(DAC_MClk),
        .DAC_Mode(DAC_Mode),
        .DAC_Reset(DAC_Reset),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .De(De),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .Green(Green),
        .HSync(HSync),
        .I2C_scl_i(I2C_scl_i),
        .I2C_scl_o(I2C_scl_o),
        .I2C_scl_t(I2C_scl_t),
        .I2C_sda_i(I2C_sda_i),
        .I2C_sda_o(I2C_sda_o),
        .I2C_sda_t(I2C_sda_t),
        .I2S_Clk(I2S_Clk),
        .I2S_DIn(I2S_DIn),
        .I2S_DOut(I2S_DOut),
        .I2S_Format(I2S_Format),
        .I2S_LR(I2S_LR),
        .KeyRibbonDrive(KeyRibbonDrive),
        .KeyRibbonSense(KeyRibbonSense),
        .PClk(PClk),
        .RGB(RGB),
        .Red(Red),
        .VSync(VSync),
        .Waveform(Waveform));
endmodule
