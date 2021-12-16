
module Midi_UART(

    //== UART ==
    input Rx,

    //== Misc ==
    output Intr,

    //== AXI Slave ==
    input SAXI_aclk,
    input SAXI_resetn,

    //Read Address Channel
    output SAXI_arready,
    input SAXI_arvalid,
    input [31:0] SAXI_araddr,
    //Read Data Channel
    input SAXI_rready,
    output SAXI_rvalid,
    output [31:0] SAXI_rdata,
    //Write Address Channel
    output SAXI_awready,
    input SAXI_awvalid,
    input [31:0] SAXI_awaddr,
    //Write Data Channel
    output SAXI_wready,
    input SAXI_wvalid,
    input [31:0] SAXI_wdata,
    //Write Response Channel
    input SAXI_bready,
    output SAXI_bvalid
);
    parameter AXI_CLK_FREQ = 100000000;
    parameter MIDI_CLK_FREQ = 31250;

    parameter RX_FIFO_SIZE = 256;

    reg [7:0] rxFIFO [RX_FIFO_SIZE];

    reg [11:0] rx_clkDiv;
    reg rx_clk;

    always @(posedge SAXI_aclk, negedge SAXI_resetn)
    begin

        if (SAXI_resetn=='b0)
        begin
            rx_clkDiv <= 'h0;
            rx_clk <= 0;
        end
        else
        begin
            if (rx_clkDiv==AXI_CLK_FREQ/MIDI_CLK_FREQ/2)
            begin
                rx_clk <= ~rx_clk;
                rx_clkDiv <= 'h0;
            end
            else
            begin
                rx_clkDiv <= rx_clkDiv+'h1;
            end
        end
    end


    always @(posedge rx_clk)
    begin
    end

endmodule