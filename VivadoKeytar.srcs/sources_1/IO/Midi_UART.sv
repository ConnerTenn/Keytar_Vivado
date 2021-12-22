
module Midi_UART(

    //== UART ==
    input Rx,

    //== Misc ==
    output Intr,

    //== AXI Slave ==
    input SAXI_aclk, //100MHz
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


    //Input synchronization
    (* IOB = "TRUE" *)
    reg rx_dly1;
    (* ASYNC_REG = "TRUE" *)
    reg rx_dly2;


    reg [7:0] rxFIFO [RX_FIFO_SIZE];
    reg [$clog2(RX_FIFO_SIZE)-1:0] fifoHead;
    reg [$clog2(RX_FIFO_SIZE)-1:0] fifoTail;
    reg [8:0] rxStaging;

    reg [11:0] rx_clkDiv;
    reg rx_clk, rx_clk_dly1;
    reg capture;

    //Clock Divider
    always @(posedge SAXI_aclk, negedge SAXI_resetn)
    begin

        if (SAXI_resetn=='b0)
        begin
            rx_dly1 <= 'b0;
            rx_dly2 <= 'b0;
            
            rx_clkDiv <= 'h0;
            rx_clk <= 'b0;
            rx_clk_dly1 <= 'b0;
            capture <= 'b0;
        end
        else
        begin
            //Double Flopping
            rx_dly2 <= rx_dly1;
            rx_dly1 <= Rx;
            rx_clk_dly1 <= rx_clk;


            //Capture in progress
            if (capture)
            begin
                //Clock Divider
                if (rx_clkDiv==AXI_CLK_FREQ/MIDI_CLK_FREQ/2)
                begin
                    rx_clk <= ~rx_clk;
                    rx_clkDiv <= 'h0;
                end
                else
                begin
                    rx_clkDiv <= rx_clkDiv+'h1;
                end

                //Rising edge of rx_clk
                if (rx_clk && !rx_clk_dly1)
                begin
                    for (int i=0; i<=7; i++)
                    begin
                        rxStaging[i] <= rxStaging[i+1];
                    end

                    rxStaging[8] <= rx_dly2;

                    //Staging buffer filled
                    if (rxStaging[0] == 'b1)
                    begin
                        capture <= 'b0;

                        rxFIFO[fifoHead] <= rxStaging[8:1];
                        fifoHead <= fifoHead + 'h1;
                    end
                end

            end
            //Start bit received
            else if (rx_dly2 == 'b0)
            begin
                //Signal begin capture
                capture <= 'b1;

                //Initalize clock
                rx_clk <= 'b0;
                rx_clkDiv <= 'h0;
            end

            
        end
    end

endmodule