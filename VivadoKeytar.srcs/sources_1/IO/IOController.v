
module IOController # 
(
    parameter SAXI_SLAVE_BASE_ADDR = 32'h00000000
)
(
    //== Touch Strip ==
    input [23:0] StripPosition, input [23:0] StripPressure,
    //== Analog Controller ==
    output reg [3:0] CtrlPortAddr=0, output reg [7:0] CtrlPortData=0, output reg CtrlPortTrigger=0, input CtrlPortRunning, output reg CtrlPortReset=0,


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

    //== AXI Slave ==
    //Read Response Channel
    assign SAXI_rresp = 2'b00;
    //Write Response Channel
    assign SAXI_bresp = 2'b00;
    //Read Interface
    wire [31:0] saxiReadAddress;
    reg [31:0] saxiReadData;
    wire saxiReadEN;
    //Write Interface
    wire [31:0] saxiWriteAddress;
    wire [31:0] saxiWriteData;
    wire saxiWriteEN;




    always @(posedge SAXI_aclk)
    begin
        if (saxiReadEN)
        begin
            case (saxiReadAddress)
                //== Touch Strip ==
                SAXI_SLAVE_BASE_ADDR+4*0: saxiReadData <= { {8{StripPosition[23]}}, StripPosition };
                SAXI_SLAVE_BASE_ADDR+4*1: saxiReadData <= { {8{StripPressure[23]}}, StripPressure };
                //== Analog Controller ==
                SAXI_SLAVE_BASE_ADDR+4*2: saxiReadData <= {31'h00000000, CtrlPortRunning};
                // SAXI_SLAVE_BASE_ADDR+4*3:
                default: saxiReadData <= 32'h00000000;
            endcase
        end
        if (saxiWriteEN)
        begin
            case (saxiWriteAddress)
                //== Touch Strip ==
                // SAXI_SLAVE_BASE_ADDR+4*0:
                // SAXI_SLAVE_BASE_ADDR+4*1:
                //== Analog Controller ==
                SAXI_SLAVE_BASE_ADDR+4*2: begin {CtrlPortAddr, CtrlPortData} <= saxiWriteData[11:0]; CtrlPortTrigger <= 1; end
                SAXI_SLAVE_BASE_ADDR+4*3: begin CtrlPortReset <= saxiWriteData[0]; end
                default:;
            endcase
        end
        else if (CtrlPortRunning)
        begin
            CtrlPortTrigger <= 0;
        end
    end

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