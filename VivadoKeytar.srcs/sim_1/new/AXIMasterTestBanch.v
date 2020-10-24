
`timescale 1ns / 1ps


module AXIMasterTestBench;

    reg clock = 0;

    reg awready = 0;
    reg wready = 0;
    reg bvalid = 0;

    reg arready = 0;
    reg rlast = 0;
    reg rvalid = 0;

    wire [63:0] gpio;

    AXI_MasterTest_v1_0 AxiMaster(
        .m00_axi_aclk(clock),
        .m00_axi_aresetn(0),
        .m00_axi_awid(),
        .m00_axi_awaddr(),
        .m00_axi_awlen(),
        .m00_axi_awsize(),
        .m00_axi_awburst(),
        .m00_axi_awlock(),
        .m00_axi_awcache(),
        .m00_axi_awprot(),
        .m00_axi_awqos(),
        .m00_axi_awuser(),
        .m00_axi_awvalid(),
        .m00_axi_awready(awready),
        .m00_axi_wdata(),
        .m00_axi_wstrb(),
        .m00_axi_wlast(),
        .m00_axi_wuser(),
        .m00_axi_wvalid(),
        .m00_axi_wready(wready),
        .m00_axi_bid(0),
        .m00_axi_bresp(2'b00),
        .m00_axi_buser(0),
        .m00_axi_bvalid(bvalid),
        .m00_axi_bready(),
        .m00_axi_arid(),
        .m00_axi_araddr(),
        .m00_axi_arlen(),
        .m00_axi_arsize(),
        .m00_axi_arburst(),
        .m00_axi_arlock(),
        .m00_axi_arcache(),
        .m00_axi_arprot(),
        .m00_axi_arqos(),
        .m00_axi_aruser(),
        .m00_axi_arvalid(),
        .m00_axi_arready(arready),
        .m00_axi_rid(0),
        .m00_axi_rdata(rdata),
        .m00_axi_rresp(2'b00),
        .m00_axi_rlast(rlast),
        .m00_axi_ruser(0),
        .m00_axi_rvalid(rvalid),
        .m00_axi_rready(),
        .GPIO_DEBUG(gpio)
    );

    initial
    begin
        $display("\n\n=== Running Simulation ===\n\n");

        #1
        #0.5

        awready <= 1;
        #1 
        awready <= 0;

        // #1
        wready <= 1;
        #1
        // wready <= 0;

        // #2

        // wready <= 1;
        #1
        wready <= 0;

        #2

        wready <= 1;
        #1
        // wready <= 0;

        // #2

        // wready <= 1;
        #1
        wready <= 0;

        #1
        bvalid <= 1;
        #1
        bvalid <= 0;

        #100

        $display("\n\n=== Simulation Complete ===\n\n");
        $finish;
    end

    always 
    begin
        #0.5 clock = !clock; //100MHz Clock
    end
endmodule

