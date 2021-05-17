
module IOController # 
(
    parameter SAXI_SLAVE_BASE_ADDR = 32'h00000000
)
(
    input [23:0] StripPosition, input [23:0] StripPressure,

    //== AXI Slave ==
    input SAXI_aclk, input SAXI_resetn,
    //Read Address Channel
    input SAXI_arvalid, output SAXI_arready,
    input [31:0] SAXI_araddr,
    //Read Data Channel
    output SAXI_rvalid, input SAXI_rready,
    output [31:0] SAXI_rdata,
    output [1:0] SAXI_rresp,
    //Write Address Channel
    input SAXI_awvalid, output SAXI_awready,
    input [31:0] SAXI_awaddr,
    //Write Data Channel
    input SAXI_wvalid, output SAXI_wready,
    input [31:0] SAXI_wdata,
    input [7:0] SAXI_wstrb,
    //Write Response Channel
    output SAXI_bvalid, input SAXI_bready,
    output [1:0] SAXI_bresp
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
                SAXI_SLAVE_BASE_ADDR+4*0: saxiReadData <= { {8{StripPosition[23]}}, StripPosition };
                SAXI_SLAVE_BASE_ADDR+4*1: saxiReadData <= { {8{StripPressure[23]}}, StripPressure };
                default: saxiReadData <= 32'h00000000;
            endcase
        end
        if (saxiWriteEN)
        begin
            case (saxiWriteAddress)
                // SAXI_SLAVE_BASE_ADDR+4*0:
                // SAXI_SLAVE_BASE_ADDR+4*1:
                // SAXI_SLAVE_BASE_ADDR+4*2:
                // SAXI_SLAVE_BASE_ADDR+4*3:
                // SAXI_SLAVE_BASE_ADDR+4*4:
                default:;
            endcase
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