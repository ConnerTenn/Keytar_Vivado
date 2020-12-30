
module VideoController # 
(
    parameter SAXI_SLAVE_BASE_ADDR = 32'h00000000,
    parameter MAXI_ID_WIDTH = 1,
    parameter SAXI_ID_WIDTH = 1
)
(
    // input Clk, input Reset,

    //== AXI Master ==
    input MAXI_aclk, input MAXI_resetn,
    //Read Address Channel
    output MAXI_arvalid, input MAXI_arready,
    output [31:0] MAXI_araddr, output [7:0] MAXI_arlen,
    output [MAXI_ID_WIDTH-1:0] MAXI_arid, output MAXI_arlock, output [3:0] MAXI_arcache, output [2:0] MAXI_arprot, output [3:0] MAXI_arqos,
    output [2:0] MAXI_arsize, output [1:0] MAXI_arburst, 
    //Read Data Channel
    input MAXI_rvalid, output MAXI_rready, input MAXI_rlast,
    input [63:0] MAXI_rdata,
    input [MAXI_ID_WIDTH-1:0] MAXI_rid, input [1:0] MAXI_rresp,
    //Write Address Channel
    output MAXI_awvalid, input MAXI_awready,
    output [31:0] MAXI_awaddr, output [7:0] MAXI_awlen,
    output [MAXI_ID_WIDTH-1:0] MAXI_awid, output MAXI_awlock, output [3:0] MAXI_awcache, output [2:0] MAXI_awprot, output [3:0] MAXI_awqos,
    output [2:0] MAXI_awsize, output [1:0] MAXI_awburst,
    //Write Data Channel
    output MAXI_wvalid, input MAXI_wready, output MAXI_wlast,
    output [63:0] MAXI_wdata,
    output [7:0] MAXI_wstrb,
    //Write Response Channel
    input MAXI_bvalid, output MAXI_bready,
    input [MAXI_ID_WIDTH-1:0] MAXI_bid, input [1:0] MAXI_bresp,

    //== AXI Slave ==
    input SAXI_aclk, input SAXI_resetn,
    //Read Address Channel
    input SAXI_arvalid, output SAXI_arready,
    input [31:0] SAXI_araddr,
    input [SAXI_ID_WIDTH-1:0] SAXI_arid, input [2:0] SAXI_arprot,
    //Read Data Channel
    output SAXI_rvalid, input SAXI_rready,
    output [31:0] SAXI_rdata,
    output [SAXI_ID_WIDTH-1:0] SAXI_rid, output [1:0] SAXI_rresp,
    //Write Address Channel
    input SAXI_awvalid, output SAXI_awready,
    input [31:0] SAXI_awaddr,
    input [SAXI_ID_WIDTH-1:0] SAXI_awid,
    input [2:0] SAXI_awsize, input [1:0] SAXI_awburst,
    //Write Data Channel
    input SAXI_wvalid, output SAXI_wready, input SAXI_wlast,
    input [31:0] SAXI_wdata,
    input [7:0] SAXI_wstrb,
    //Write Response Channel
    output SAXI_bvalid, input SAXI_bready,
    output [SAXI_ID_WIDTH-1:0] SAXI_bid, output [1:0] SAXI_bresp,
    
    //== HDMI Signals ==
    output [4:0] Red, output [5:0] Green, output [4:0] Blue,
    output HSync, output VSync,
    output PClk,
    output De
);
    wire Clk = MAXI_aclk;

    //== AXI Master ==
    //Read Address Channel
    assign MAXI_arid = 0; //Exclusive access ID
    assign MAXI_arlock = 0; //Normal Access mode; Atomic access disabled
    assign MAXI_arcache = 4'b0000; //Device Non-bufferable
    assign MAXI_arprot = 3'b000; //Unprivlaged, non-secure, data access
    assign MAXI_arqos = 4'h0; //Quality of Service Disabled
    assign MAXI_arsize = 3; //8 Bytes (64 bits) per transfer
    assign MAXI_arburst = 2'b01; //INCR Mode
    //Write Address channel
    assign MAXI_awid = 0; //Exclusive access ID 
    assign MAXI_awlock = 0; //Normal Access mode; Atomic access disabled
    assign MAXI_awcache = 4'b0000; //Device Non-bufferable
    assign MAXI_awprot = 3'b000; //Unprivlaged, non-secure, data access
    assign MAXI_awqos= 4'h0; //Quality of Service Disabled
    assign MAXI_awsize = 3; //8 Bytes (64 bits) per transfer
    assign MAXI_awburst = 2'b01; //INCR Mode
    //Write Data Channel
    assign MAXI_wstrb = 8'b1111_1111; //Vailid byte lanes mask; The bytes of the entire word that are valid


    //== AXI Slave ==
    //Write Response Channel
    assign SAXI_bid = 0;
    assign SAXI_bresp = 2'b00;


    wire [31:0] maxiReadAddress; wire [7:0] maxiReadBurstLen;
    wire [63:0] maxiReadData;
    wire maxiReadTransfer; wire maxiReadValid;

    wire [31:0] maxiWriteAddress; wire [7:0] maxiWriteBurstLen;
    wire [63:0] maxiWriteData;
    wire maxiWriteTransfer; wire maxiWriteDataRequest;

    wire [31:0] saxiReadAddress;
    wire [31:0] saxiReadData;
    wire saxiReadEN;

    wire [31:0] saxiWriteAddress;
    wire [31:0] saxiWriteData;
    wire saxiWriteEN;


    wire activate;
    wire [31:0] fb1Addr, fb2Addr;
    wire [31:0] fbSize;
    wire fbSelect; wire currentFB;

    RegsiterBank #( .BASE_ADDR(SAXI_SLAVE_BASE_ADDR) ) Registers
    (
        .Clock(SAXI_aclk), .ResetN(SAXI_resetn),

        .ReadAddress(saxiReadAddress),
        .ReadData(saxiReadData),
        .ReadEN(saxiReadEN),
        //== Write Channel ==
        .WriteAddress(saxiWriteAddress),
        .WriteData(saxiWriteData),
        .WriteEN(saxiWriteEN),

        //== Registers ==
        .Activate(activate),
        .FB1Addr(fb1Addr), .FB2Addr(fb2Addr),
        .FBSize(fbSize),
        .FBselect(fbSelect), .CurrentFB(currentFB),


        //== Status Values ==
        .FbReadAddr(maxiReadAddress),
        .FifoFill(fifoFillLevel),
        .DataToFifo(dataToFifo),
        .DataFromFifo(dataFromFifo),
        .ReadLen(maxiReadBurstLen)
    );


    wire fifoReset;
    wire fifoRead; wire [63:0] dataFromFifo;
    wire fifoWrite; wire [63:0] dataToFifo;
    wire [5:0] fifoFillLevel; wire fifoFull; wire fifoEmpty;

    wire startFrame;
    wire colourDataRequest;
    wire [15:0] colourData;

    FrameBufferController FrameBufferCtl (
        .Clock(Clk),

        //== Status and Control ==
        .Run(activate),
        .FB1Addr(fb1Addr), .FB2Addr(fb2Addr),
        .FBSize(fbSize),
        .FBSelect(fbSelect), .CurrentFB(currentFB),

        //== AXI Read ==
        .ReadAddress(maxiReadAddress), .ReadBurstLen(maxiReadBurstLen),
        .ReadData(maxiReadData),
        .ReadTransfer(maxiReadTransfer), .ReadValid(maxiReadValid),
        //== AXI Write ==
        .WriteAddress(maxiWriteAddress), .WriteBurstLen(maxiWriteBurstLen),
        .WriteData(maxiWriteData),
        .WriteTransfer(maxiWriteTransfer), .WriteDataRequest(maxiWriteDataRequest),

        //== FIFO ==
        .FifoReset(fifoReset),
        .FifoRead(fifoRead), .FifoDataIn(dataFromFifo),
        .FifoWrite(fifoWrite), .FifoDataOut(dataToFifo),
        .FifoFillLevel(fifoFillLevel), .FifoFull(fifoFull), .FifoEmpty(fifoEmpty),

        //== Timing Controller ==
        .StartFrame(startFrame),
        .ColourDataRequest(colourDataRequest),
        .ColourData(colourData)
    );

    TimingController TimingCtl (
        .Clock(Clk),
        //== Interface Signals ==
        .StartFrame(startFrame),
        .ColourData(colourData),
        .ColourDataRequest(colourDataRequest),
        //== HDMI Signals ==
        .Red(Red), .Green(Green), .Blue(Blue),
        .HSync(HSync), .VSync(VSync),
        .PClk(PClk), .De(De)
    );

    DataFIFO #(.DATA_WIDTH(64)) Fifo (
        .Clock(Clk), .Reset(fifoReset),
        //== Read Channel ==
        .Read(fifoRead),
        .DataOut(dataFromFifo),
        //== Write Channel ==
        .Write(fifoWrite),
        .DataIn(dataToFifo),
        //== Status ==
        .FifoFillLevel(fifoFillLevel),
        .FifoFull(fifoFull),
        .FifoEmpty(fifoEmpty)
    );


    AxiMasterController AxiMaster (
        //== Global Signals ==
        .AxiAClk(MAXI_aclk),
        .AxiAResetN(MAXI_resetn),

        //== External Control Signals ==
        .ReadAddress(maxiReadAddress), .ReadBurstLen(maxiReadBurstLen),
        .ReadData(maxiReadData),
        .ReadTransfer(maxiReadTransfer), .ReadValid(maxiReadValid),

        .WriteAddress(maxiWriteAddress), .WriteBurstLen(maxiWriteBurstLen),
        .WriteData(maxiWriteData),
        .WriteTransfer(maxiWriteTransfer), .WriteDataRequest(maxiWriteDataRequest),

        //== Read Address Channel ==
        .ARvalid(MAXI_arvalid), .ARready(MAXI_arready),
        .ARaddr(MAXI_araddr), .ARlen(MAXI_arlen),

        //== Read Data Channel ==
        .Rvalid(MAXI_rvalid), .Rready(MAXI_rready),
        .Rlast(MAXI_rlast),
        .Rdata(MAXI_rdata),


        //== Write Address Channel ==
        .AWvalid(MAXI_awvalid), .AWready(MAXI_awready),
        .AWaddr(MAXI_awaddr),.AWlen(MAXI_awlen),

        //== Write Data Channel ==
        .Wvalid(MAXI_wvalid), .Wready(MAXI_wready),
        .Wlast(MAXI_wlast),
        .Wdata(MAXI_wdata),

        //== Write Response Channel ==
        .Bvalid(MAXI_bvalid), .Bready(MAXI_bready)
    );

    AxiSlaveController AxiSlave (
        //== Global Signals ==
        .AxiAClk(SAXI_aclk),
        .AxiAResetN(SAXI_resetn),

        //== External Control Signals ==
        .ReadAddress(saxiReadAddress),
        .ReadData(saxiReadData),
        .ReadEN(saxiReadEN),

        .WriteAddress(saxiWriteAddress),
        .WriteData(saxiWriteData),
        .WriteEN(saxiWriteEN),

        //== Read Address Channel ==
        .ARvalid(SAXI_arvalid), .ARready(SAXI_arready),
        .ARaddr(SAXI_araddr),

        //== Read Data Channel ==
        .Rvalid(SAXI_rvalid), .Rready(SAXI_rready),
        .Rdata(SAXI_rdata),


        //== Write Address Channel ==
        .AWvalid(SAXI_awvalid), .AWready(SAXI_awready),
        .AWaddr(SAXI_awaddr),

        //== Write Data Channel ==
        .Wvalid(SAXI_wvalid), .Wready(SAXI_wready),
        .Wdata(SAXI_wdata),

        //== Write Response Channel ==
        .Bvalid(SAXI_bvalid), .Bready(SAXI_bready)
    );

endmodule