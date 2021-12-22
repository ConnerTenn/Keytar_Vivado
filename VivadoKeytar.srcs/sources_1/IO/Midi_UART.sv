
module Midi_UART # 
(
    parameter SAXI_SLAVE_BASE_ADDR = 32'h00000000
)
(
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


    //== MIDI UART ==
    //Input synchronization
    (* IOB = "TRUE" *)
    reg rx_dly1;
    (* ASYNC_REG = "TRUE" *)
    reg rx_dly2;


    (* ram_style = "block" *)
    reg [7:0] rxFIFO [RX_FIFO_SIZE];
    reg [$clog2(RX_FIFO_SIZE)-1:0] fifoHead;
    reg [$clog2(RX_FIFO_SIZE)-1:0] fifoTail;
    wire fifoHasData = fifoHead != fifoTail;
    wire fifoFull = fifoHead+1 == fifoTail;
    reg [8:0] rxStaging;

    reg [11:0] rx_clkDiv;
    reg rx_clk, rx_clk_dly1;
    reg capture;


    assign Intr = fifoHasData;

    //Clock Divider
    always @(posedge SAXI_aclk, negedge SAXI_resetn)
    begin

        if (SAXI_resetn=='b0)
        begin
            //FIFO
            for (int i=0; i<RX_FIFO_SIZE; i++)
            begin
                rxFIFO[i] <= 'h0;
            end
            fifoHead <= 'h0;
            fifoTail <= 'h0;

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
                //Generate rx_clk
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
            //Start bit received
            else if (rx_dly2 == 'b0)
            begin
                //Signal begin capture
                capture <= 'b1;

                //Initalize clock
                rx_clk <= 'b0;
                rx_clkDiv <= 'h0;
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

                    //Fifo Full
                    if (fifoFull)
                    begin
                        fifoTail <= fifoTail + 'h1;
                    end
                end
            end



            //AXI Registers
            if (saxiReadEN)
            begin
                case (saxiReadAddress)
                    //== Read FIFO ==
                    SAXI_SLAVE_BASE_ADDR+4*0: 
                    begin
                        saxiReadData <= {24'h0, rxFIFO[fifoTail]};
                        if (fifoHasData)
                        begin
                            fifoTail <= fifoTail+1;
                        end
                    end
                    //== FIFO Status ==
                    SAXI_SLAVE_BASE_ADDR+4*1: saxiReadData <= { 31'h0, fifoHasData };
                    SAXI_SLAVE_BASE_ADDR+4*2: saxiReadData <= { 31'h0, fifoFull };
                    default: saxiReadData <= 32'h00000000;
                endcase
            end
            if (saxiWriteEN)
            begin
                case (saxiWriteAddress)
                    // SAXI_SLAVE_BASE_ADDR+4*0: //Do something
                    default:;
                endcase
            end
        end //if (SAXI_resetn=='b0) else 
    end //always



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