`timescale 1ns / 1ps


module Synth # 
(
    parameter SAXI_SLAVE_BASE_ADDR = 32'h00000000
)
(
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_aclk, ASSOCIATED_RESET SAXI_resetn, ASSOCIATED_BUSIF SAXI_ControlInterface, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK100MHz CLK" *)
    input Clock100MHz,
    output reg signed [23:0] Waveform,


    //== AXI Slave ==
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SAXI_resetn RST" *)
    input SAXI_resetn,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXI_ControlInterface, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
    //Read Address Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARREADY" *)
    output SAXI_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARVALID" *)
    input SAXI_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface ARADDR" *)
    input [31:0] SAXI_araddr,
    //Read Data Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RREADY" *)
    input SAXI_rready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RVALID" *)
    output SAXI_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface RDATA" *)
    output [31:0] SAXI_rdata,
    //Write Address Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWREADY" *)
    output SAXI_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWVALID" *)
    input SAXI_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface AWADDR" *)
    input [31:0] SAXI_awaddr,
    //Write Data Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WREADY" *)
    output SAXI_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WVALID" *)
    input SAXI_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface WDATA" *)
    input [31:0] SAXI_wdata,
    //Write Response Channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface BREADY" *)
    input SAXI_bready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI_ControlInterface BVALID" *)
    output SAXI_bvalid
);
    `include "Math.v"


    //== AXI Slave ==
    //Read Interface
    wire [31:0] saxiReadAddress;
    wire [31:0] saxiReadData;
    wire saxiReadEN;
    //Write Interface
    wire [31:0] saxiWriteAddress;
    wire [31:0] saxiWriteData;
    wire saxiWriteEN;


    reg clock1MHz = 0;
    // reg clock50MHz = 0;


    localparam NUM_BANKS = 4;

    genvar gi;
    for (gi=0; gi<NUM_BANKS; gi=gi+1)
    begin:banks
        wire signed [23:0] waveform;
        wire signed [clog2(24'hFFFFFF*NUM_BANKS):0] wavesum;

        wire [31:0] readdata;
        wire [31:0] readdata_OR;

        Bank #(.ADDRESS(SAXI_SLAVE_BASE_ADDR + 32'h2000 * gi)) banki
        (
            .Clock100MHz(Clock100MHz),
            // .Clock50MHz(clock50MHz),
            .Clock1MHz(clock1MHz),
            .Waveform(waveform),
            //== AXI Clock ==
            .BusClock(Clock100MHz),
            //== AXI Read ==
            .ReadAddress(saxiReadAddress),
            .ReadData(readdata),
            .ReadEN(saxiReadEN),
            //== AXI Write ==
            .WriteAddress(saxiWriteAddress),
            .WriteData(saxiWriteData),
            .WriteEN(saxiWriteEN)
        );

        if (gi == 0)
        begin
            //First waveform sum is equal to itself; no previous banks
            assign wavesum = waveform;

            assign readdata_OR = readdata;
        end
        else if (gi > 0)
        begin
            //All other banks must add the previous waveform to itself
            assign wavesum = waveform + banks[gi-1].wavesum;

            assign readdata_OR = readdata | banks[gi-1].readdata_OR;
        end
    end

    //Rescale output
    wire signed [24:0] waveCombined = (banks[NUM_BANKS-1].wavesum >>> (clog2(24'hFFFFFF*NUM_BANKS)-24+1));

    always @(posedge clock1MHz)
    begin
        Waveform <= waveCombined;
    end


    assign saxiReadData = banks[NUM_BANKS-1].readdata_OR;


    AxiSlaveController AxiSlave (
        //== Global Signals ==
        .AxiAClk(Clock100MHz),
        .AxiAResetN(SAXI_resetn),

        //== External Control Signals ==
        .ReadAddress(saxiReadAddress),
        .ReadData(saxiReadData),
        .ReadEN(saxiReadEN),

        .WriteAddress(saxiWriteAddress),
        .WriteData(saxiWriteData),
        .WriteEN(saxiWriteEN),

        //== Read Address Channel ==
        .ARready(SAXI_arready), .ARvalid(SAXI_arvalid),
        .ARaddr(SAXI_araddr),

        //== Read Data Channel ==
        .Rready(SAXI_rready), .Rvalid(SAXI_rvalid),
        .Rdata(SAXI_rdata),


        //== Write Address Channel ==
        .AWready(SAXI_awready), .AWvalid(SAXI_awvalid),
        .AWaddr(SAXI_awaddr),

        //== Write Data Channel ==
        .Wready(SAXI_wready), .Wvalid(SAXI_wvalid),
        .Wdata(SAXI_wdata),

        //== Write Response Channel ==
        .Bvalid(SAXI_bvalid), .Bready(SAXI_bready)
    );


    reg [7:0] clk1MHzdiv = 0;

    always @(posedge Clock100MHz)
    begin
        if (clk1MHzdiv < 100/2-1)
        begin
            clk1MHzdiv <= clk1MHzdiv + 1;
        end
        else
        begin
            clk1MHzdiv <= 0;
            clock1MHz <= !clock1MHz;
        end
    end


    // always @(posedge Clock100MHz)
    // begin
    //     clock50MHz <= !clock50MHz;
    // end

endmodule