`timescale 1ns / 1ps


module Synth # 
(
    parameter SAXI_SLAVE_BASE_ADDR = 32'h00000000
)
(
    input Clock100MHz,
    output signed [23:0] Waveform,


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
    `include "Math.v"


    //== AXI Slave ==
    //Read Response Channel
    assign SAXI_rresp = 2'b00;
    //Write Response Channel
    assign SAXI_bresp = 2'b00;
    //Read Interface
    wire [31:0] saxiReadAddress;
    wire [31:0] saxiReadData;
    wire saxiReadEN;
    //Write Interface
    wire [31:0] saxiWriteAddress;
    wire [31:0] saxiWriteData;
    wire saxiWriteEN;


    reg clock1MHz = 0;


    localparam NUM_BANKS = 4;

    genvar gi;
    for (gi=0; gi<NUM_BANKS; gi=gi+1)
    begin:banks
        wire signed [23:0] waveform;
        wire signed [clog2(24'hFFFFFF*NUM_BANKS):0] wavesum;

        wire [31:0] readdata;
        wire [31:0] readdata_OR;

        Bank #(.ADDRESS(SAXI_SLAVE_BASE_ADDR + 32'h1000 * gi)) banki
        (
            .Clock(clock1MHz),
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
    assign Waveform = (banks[NUM_BANKS-1].wavesum >>> (clog2(24'hFFFFFF*NUM_BANKS)-24+1));


    assign saxiReadData = banks[NUM_BANKS-1].readdata_OR;


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


    reg [7:0] clkdiv = 0;

    always @(posedge Clock100MHz)
    begin
        if (clkdiv < 100)
        begin
            clkdiv <= clkdiv + 1;
        end
        else
        begin
            clkdiv <= 0;
            clock1MHz <= !clock1MHz;
        end
    end

endmodule