
module Midi_UART_Wrapper(

    //== UART ==
    input Rx,

    //== Misc ==
    output Intr,

    //== AXI Slave ==
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_aclk, ASSOCIATED_RESET SAXI_resetn, ASSOCIATED_BUSIF SAXI_Interface, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SAXI_aclk CLK" *)
    input SAXI_aclk, 
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SAXI_resetn RST" *)
    input SAXI_resetn,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_Interface, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
    //Read Address Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface ARREADY" *)
    output SAXI_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface ARVALID" *)
    input SAXI_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface ARADDR" *)
    input [31:0] SAXI_araddr,
    //Read Data Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface RREADY" *)
    input SAXI_rready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface RVALID" *)
    output SAXI_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface RDATA" *)
    output [31:0] SAXI_rdata,
    //Write Address Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface AWREADY" *)
    output SAXI_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface AWVALID" *)
    input SAXI_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface AWADDR" *)
    input [31:0] SAXI_awaddr,
    //Write Data Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface WREADY" *)
    output SAXI_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface WVALID" *)
    input SAXI_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface WDATA" *)
    input [31:0] SAXI_wdata,
    //Write Response Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface BREADY" *)
    input SAXI_bready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_Interface BVALID" *)
    output SAXI_bvalid
);

    Midi_UART uart(

        //== UART ==
        .Rx(Rx),

        //== Misc ==
        .Intr(Intr),

        //== AXI Slave ==
        .SAXI_aclk(SAXI_aclk),
        .SAXI_resetn(SAXI_resetn),

        //Read Address Channel
        .SAXI_arready(SAXI_arready),
        .SAXI_arvalid(SAXI_arvalid),
        .SAXI_araddr(SAXI_araddr),
        //Read Data Channel
        .SAXI_rready(SAXI_rready),
        .SAXI_rvalid(SAXI_rvalid),
        .SAXI_rdata(SAXI_rdata),
        //Write Address Channel
        .SAXI_awready(SAXI_awready),
        .SAXI_awvalid(SAXI_awvalid),
        .SAXI_awaddr(SAXI_awaddr),
        //Write Data Channel
        .SAXI_wready(SAXI_wready),
        .SAXI_wvalid(SAXI_wvalid),
        .SAXI_wdata(SAXI_wdata),
        //Write Response Channel
        .SAXI_bready(SAXI_bready),
        .SAXI_bvalid(SAXI_bvalid)
    );

endmodule