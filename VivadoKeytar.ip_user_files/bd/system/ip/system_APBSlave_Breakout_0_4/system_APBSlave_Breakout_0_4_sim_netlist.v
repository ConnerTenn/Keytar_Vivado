// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jul 16 05:16:25 2020
// Host        : ConnerServer running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top system_APBSlave_Breakout_0_4 -prefix
//               system_APBSlave_Breakout_0_4_ system_APBSlave_Breakout_0_2_sim_netlist.v
// Design      : system_APBSlave_Breakout_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_APBSlave_Breakout_0_2,Breakout,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "Breakout,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_APBSlave_Breakout_0_4
   (s_apb_pclock,
    s_apb_paddr,
    s_apb_pwdata,
    s_apb_prdata,
    s_apb_pwrite,
    s_apb_pready,
    s_apb_penable,
    s_apb_psel,
    s_apb_pslverr,
    BusClock,
    BusPAddr,
    BusPWriteData,
    BusPReadData,
    BusPWrite,
    BusPReady,
    BusPEnable,
    BusPSel,
    BusPError);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_apb_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_apb_aclk, ASSOCIATED_BUSIF APB_S, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_apb_pclock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PADDR" *) input [31:0]s_apb_paddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PWDATA" *) input [31:0]s_apb_pwdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PRDATA" *) output [31:0]s_apb_prdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PWRITE" *) input s_apb_pwrite;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PREADY" *) output s_apb_pready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PENABLE" *) input s_apb_penable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PSEL" *) input s_apb_psel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PSLVERR" *) output s_apb_pslverr;
  output BusClock;
  output [31:0]BusPAddr;
  output [31:0]BusPWriteData;
  input [31:0]BusPReadData;
  output BusPWrite;
  input BusPReady;
  output BusPEnable;
  output BusPSel;
  input BusPError;

  wire BusPError;
  wire [31:0]BusPReadData;
  wire BusPReady;
  wire [31:0]s_apb_paddr;
  wire s_apb_pclock;
  wire s_apb_penable;
  wire s_apb_psel;
  wire [31:0]s_apb_pwdata;
  wire s_apb_pwrite;

  assign BusClock = s_apb_pclock;
  assign BusPAddr[31:0] = s_apb_paddr;
  assign BusPEnable = s_apb_penable;
  assign BusPSel = s_apb_psel;
  assign BusPWrite = s_apb_pwrite;
  assign BusPWriteData[31:0] = s_apb_pwdata;
  assign s_apb_prdata[31:0] = BusPReadData;
  assign s_apb_pready = BusPReady;
  assign s_apb_pslverr = BusPError;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
