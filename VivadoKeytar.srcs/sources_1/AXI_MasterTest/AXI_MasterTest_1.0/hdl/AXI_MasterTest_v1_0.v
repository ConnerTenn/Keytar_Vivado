
`timescale 1 ns / 1 ps

module AXI_MasterTest_v1_0 #
(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line


    // Parameters of Axi Master Bus Interface M00_AXI
    parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
    parameter integer C_M00_AXI_BURST_LEN = 16,
    parameter integer C_M00_AXI_ID_WIDTH = 1,
    parameter integer C_M00_AXI_ADDR_WIDTH = 32,
    parameter integer C_M00_AXI_DATA_WIDTH = 64,
    parameter integer C_M00_AXI_AWUSER_WIDTH = 0,
    parameter integer C_M00_AXI_ARUSER_WIDTH = 0,
    parameter integer C_M00_AXI_WUSER_WIDTH	= 0,
    parameter integer C_M00_AXI_RUSER_WIDTH	= 0,
    parameter integer C_M00_AXI_BUSER_WIDTH	= 0
)
(
    // Users to add ports here

    // User ports ends
    // Do not modify the ports beyond this line


    // Ports of Axi Master Bus Interface M00_AXI
    // input wire  m00_axi_init_axi_txn,
    input wire  m00_axi_aclk,
    input wire  m00_axi_aresetn,
    output wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid,
    output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
    output wire [7 : 0] m00_axi_awlen,
    output wire [2 : 0] m00_axi_awsize,
    output wire [1 : 0] m00_axi_awburst,
    output wire  m00_axi_awlock,
    output wire [3 : 0] m00_axi_awcache,
    output wire [2 : 0] m00_axi_awprot,
    output wire [3 : 0] m00_axi_awqos,
    output wire [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser,
    output wire  m00_axi_awvalid,
    input wire  m00_axi_awready,
    output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
    output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
    output wire  m00_axi_wlast,
    output wire [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser,
    output wire  m00_axi_wvalid,
    input wire  m00_axi_wready,
    input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid,
    input wire [1 : 0] m00_axi_bresp,
    input wire [C_M00_AXI_BUSER_WIDTH-1 : 0] m00_axi_buser,
    input wire  m00_axi_bvalid,
    output wire  m00_axi_bready,
    output wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid,
    output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
    output wire [7 : 0] m00_axi_arlen,
    output wire [2 : 0] m00_axi_arsize,
    output wire [1 : 0] m00_axi_arburst,
    output wire  m00_axi_arlock,
    output wire [3 : 0] m00_axi_arcache,
    output wire [2 : 0] m00_axi_arprot,
    output wire [3 : 0] m00_axi_arqos,
    output wire [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser,
    output wire  m00_axi_arvalid,
    input wire  m00_axi_arready,
    input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid,
    input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
    input wire [1 : 0] m00_axi_rresp,
    input wire  m00_axi_rlast,
    input wire [C_M00_AXI_RUSER_WIDTH-1 : 0] m00_axi_ruser,
    input wire  m00_axi_rvalid,
    output wire  m00_axi_rready,
    
    output [63:0] GPIO_DEBUG
);

    // //Instantiation of Axi Bus Interface M00_AXI
    // AXI_MasterTest_v1_0_M00_AXI # ( 
    // 	.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
    // 	.C_M_AXI_BURST_LEN(C_M00_AXI_BURST_LEN),
    // 	.C_M_AXI_ID_WIDTH(C_M00_AXI_ID_WIDTH),
    // 	.C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
    // 	.C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
    // 	.C_M_AXI_AWUSER_WIDTH(C_M00_AXI_AWUSER_WIDTH),
    // 	.C_M_AXI_ARUSER_WIDTH(C_M00_AXI_ARUSER_WIDTH),
    // 	.C_M_AXI_WUSER_WIDTH(C_M00_AXI_WUSER_WIDTH),
    // 	.C_M_AXI_RUSER_WIDTH(C_M00_AXI_RUSER_WIDTH),
    // 	.C_M_AXI_BUSER_WIDTH(C_M00_AXI_BUSER_WIDTH)
    // ) AXI_MasterTest_v1_0_M00_AXI_inst (
    // 	.INIT_AXI_TXN(m00_axi_init_axi_txn),
    // 	.TXN_DONE(m00_axi_txn_done),
    // 	.ERROR(m00_axi_error),
    // 	// .M_AXI_ACLK(m00_axi_aclk),
    // 	// .M_AXI_ARESETN(m00_axi_aresetn),
    // 	// .M_AXI_AWID(m00_axi_awid),
    // 	// .M_AXI_AWADDR(m00_axi_awaddr),
    // 	// .M_AXI_AWLEN(m00_axi_awlen),
    // 	// .M_AXI_AWSIZE(m00_axi_awsize),
    // 	// .M_AXI_AWBURST(m00_axi_awburst),
    // 	// .M_AXI_AWLOCK(m00_axi_awlock),
    // 	// .M_AXI_AWCACHE(m00_axi_awcache),
    // 	// .M_AXI_AWPROT(m00_axi_awprot),
    // 	// .M_AXI_AWQOS(m00_axi_awqos),
    // 	// .M_AXI_AWUSER(m00_axi_awuser),
    // 	// .M_AXI_AWVALID(m00_axi_awvalid),
    // 	// .M_AXI_AWREADY(m00_axi_awready),
    // 	// .M_AXI_WDATA(m00_axi_wdata),
    // 	// .M_AXI_WSTRB(m00_axi_wstrb),
    // 	// .M_AXI_WLAST(m00_axi_wlast),
    // 	// .M_AXI_WUSER(m00_axi_wuser),
    // 	// .M_AXI_WVALID(m00_axi_wvalid),
    // 	// .M_AXI_WREADY(m00_axi_wready),
    // 	// .M_AXI_BID(m00_axi_bid),
    // 	// .M_AXI_BRESP(m00_axi_bresp),
    // 	// .M_AXI_BUSER(m00_axi_buser),
    // 	// .M_AXI_BVALID(m00_axi_bvalid),
    // 	// .M_AXI_BREADY(m00_axi_bready),
    // 	// .M_AXI_ARID(m00_axi_arid),
    // 	// .M_AXI_ARADDR(m00_axi_araddr),
    // 	// .M_AXI_ARLEN(m00_axi_arlen),
    // 	// .M_AXI_ARSIZE(m00_axi_arsize),
    // 	// .M_AXI_ARBURST(m00_axi_arburst),
    // 	// .M_AXI_ARLOCK(m00_axi_arlock),
    // 	// .M_AXI_ARCACHE(m00_axi_arcache),
    // 	// .M_AXI_ARPROT(m00_axi_arprot),
    // 	// .M_AXI_ARQOS(m00_axi_arqos),
    // 	// .M_AXI_ARUSER(m00_axi_aruser),
    // 	// .M_AXI_ARVALID(m00_axi_arvalid),
    // 	// .M_AXI_ARREADY(m00_axi_arready),
    // 	// .M_AXI_RID(m00_axi_rid),
    // 	// .M_AXI_RDATA(m00_axi_rdata),
    // 	// .M_AXI_RRESP(m00_axi_rresp),
    // 	// .M_AXI_RLAST(m00_axi_rlast),
    // 	// .M_AXI_RUSER(m00_axi_ruser),
    // 	// .M_AXI_RVALID(m00_axi_rvalid),
    // 	// .M_AXI_RREADY(m00_axi_rready)
    // );
    assign m00_axi_txn_done = 0;
    assign m00_axi_error = 0;

    //== Read Address Channel ==
    assign m00_axi_aruser = 0;
    assign m00_axi_arid = 0; //Exclusive access ID
    assign m00_axi_arlock = 0; //Normal Access mode; Atomic access disabled
    assign m00_axi_arcache = 4'b0000; //Device Non-bufferable
    assign m00_axi_arprot = 3'b000; //Unprivlaged, non-secure, data access
    assign m00_axi_arqos = 4'h0; //Quality of Service Disabled

    //== Read Data Channel ==
    // m00_axi_ruser;
    //m00_axi_rid;

    //== Write Address channel ==
    assign m00_axi_awuser = 0;
    assign m00_axi_awid = 0; //Exclusive access ID 
    assign m00_axi_awlock = 0; //Normal Access mode; Atomic access disabled
    assign m00_axi_awcache = 4'b0000; //Device Non-bufferable
    assign m00_axi_awprot = 3'b000; //Unprivlaged, non-secure, data access
    assign m00_axi_awqos= 4'h0; //Quality of Service Disabled

    //== Write Data Channel ==
    assign m00_axi_wuser = 0;

    //== Write Response Channel ==
    // m00_axi_buser;
    //m00_axi_bid;


    wire [31:0] readAddress;
    wire [7:0] readBurstLen;
    wire [63:0] readData;
    wire readTransfer;
    wire readValid;

    wire [31:0] writeAddress;
    wire [7:0] writeBurstLen;
    wire [63:0] writeData;
    wire writeTransfer;
    wire writeDataRequest;

    //== Debug ==
    wire [15:0] awready_count;
    wire [15:0] arready_count;
    wire [15:0] val1;
    wire [15:0] val2;


    AXI_ControllerTest AXI_Master_Controller (
        //== Global Signals ==
        .AXI_ACLK(m00_axi_aclk),
        .AXI_ARESETN(m00_axi_aresetn),
        //== External Control Signals ==
        //Read
        .ReadAddress(readAddress),
        .ReadBurstLen(readBurstLen),
        .ReadData(readData),
        .ReadTransfer(readTransfer),
        .ReadValid(readValid),
        //Write
        .WriteAddress(writeAddress),
        .WriteBurstLen(writeBurstLen),
        .WriteData(writeData),
        .WriteTransfer(writeTransfer),
        .WriteDataRequest(writeDataRequest),
        //== Read Address Channel ==
        .ARVALID(m00_axi_arvalid), .ARREADY(m00_axi_arready),
        .ARLEN(m00_axi_arlen),
        .ARSIZE(m00_axi_arsize),
        .ARBURST(m00_axi_arburst),
        .ARADDR(m00_axi_araddr),
        //== Read Data Channel ==
        .RVALID(m00_axi_rvalid), .RREADY(m00_axi_rready),
        .RLAST(m00_axi_rlast),
        .RRESP(m00_axi_rresp),
        .RDATA(m00_axi_rdata),
        //== Write Address Channel ==
        .AWVALID(m00_axi_awvalid), .AWREADY(m00_axi_awready),
        .AWLEN(m00_axi_awlen),
        .AWSIZE(m00_axi_awsize),
        .AWBURST(m00_axi_awburst),
        .AWADDR(m00_axi_awaddr),
        //== Write Data Channel ==
        .WVALID(m00_axi_wvalid), .WREADY(m00_axi_wready),
        .WSTRB(m00_axi_wstrb),
        .WLAST(m00_axi_wlast),
        .WDATA(m00_axi_wdata),
        //== Write Response Channel ==
        .BVALID(m00_axi_bvalid), .BREADY(m00_axi_bready),
        .BRESP(m00_axi_bresp),

        .AWReadyCount(awready_count),
        .ARReadyCount(arready_count)
    );

    assign GPIO_DEBUG[63:48] = awready_count;
    assign GPIO_DEBUG[47:32] = arready_count;
    assign GPIO_DEBUG[31:16] = val1;
    assign GPIO_DEBUG[15:0] = val2;

    AXI_DataControllerTest DataController (
        .Clock(m00_axi_aclk),
        .ResetN(m00_axi_aresetn),
        //Read
        .ReadAddress(readAddress),
        .ReadBurstLen(readBurstLen),
        .ReadData(readData),
        .ReadTransfer(readTransfer),
        .ReadValid(readValid),
        //Write
        .WriteAddress(writeAddress),
        .WriteBurstLen(writeBurstLen),
        .WriteData(writeData),
        .WriteTransfer(writeTransfer),
        .WriteDataRequest(writeDataRequest),

        .Val1(val1),
        .Val2(val2)
    );

endmodule
