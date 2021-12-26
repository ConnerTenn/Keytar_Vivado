
module Fifo_9x2k
(
    input Clk,
    input Rst,

    //Read
    output reg [7:0] ReadData,
    input ReadEN,

    //Write
    input [7:0] WriteData,
    input WriteEN,

    //Status
    output Empty,
    output AlmostEmpty,
    output Full,
    output AlmostFull
);

    FIFO18E1 #(
        .ALMOST_EMPTY_OFFSET(13'h0010),
        .ALMOST_FULL_OFFSET(13'h0080),
        .DATA_WIDTH(9), //8bits + 1 parity
        .DO_REG(1),
        .EN_SYN("FALSE"),
        .FIFO_MODE("FIFO18"),
        .FIRST_WORD_FALL_THROUGH("FALSE"),
        .INIT(36'h0),
        .SIM_DEVICE("7SERIES"),
        .SRVAL(36'h0)
    )
    fifo (
        .RST(Rst),
        .RSTREG(Rst),
        .REGCE('b1),

        //Read
        .RDCLK(Clk),
        .DO(ReadData),
        .RDEN(ReadEN),

        //Write
        .WRCLK(Clk),
        .DI(WriteData),
        .WREN(WriteEN),

        //Status
        .EMPTY(Empty),
        .ALMOSTEMPTY(AlmostEmpty),
        .FULL(Full),
        .ALMOSTFULL(AlmostFull),

        //Unused
        .RDCOUNT(),
        .WRCOUNT(),
        .DIP(4'h0),
        .DOP(),
        .RDERR(),
        .WRERR()
    );

endmodule

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
    reg [31:0] saxiReadAddress_dly1;
    reg [31:0] saxiReadData; //Not actually a register; Used in always_comb
    wire saxiReadEN;
    reg saxiReadEN_dly1;
    //Write Interface
    wire [31:0] saxiWriteAddress;
    wire [31:0] saxiWriteData;
    wire saxiWriteEN;

    reg AXIreg_FifoHasData;
    reg AXIreg_FifoFull;


    //== MIDI UART ==
    //Input synchronization
    (* IOB = "TRUE" *)
    reg rx_dly1;
    (* ASYNC_REG = "TRUE" *)
    reg rx_dly2;

    reg [11:0] rx_clkDiv;
    reg rx_clk, rx_clk_dly1;

    reg [8:0] rxStaging;
    reg capture;


    //== rxFIFO ==
    wire [7:0] fifoReadData;
    wire fifoRead;
    wire [7:0] fifoWriteData;
    wire fifoWrite;

    wire fifoEmpty;
    wire fifoAlmostFull;

    Fifo_9x2k fifo(
        .Clk(SAXI_aclk),
        .Rst(SAXI_resetn),

        //Read
        .ReadData(fifoReadData),
        .ReadEN(fifoRead),

        //Write
        .WriteData(fifoWriteData),
        .WriteEN(fifoWrite),

        //Status
        .Empty(fifoEmpty),
        .AlmostEmpty(),
        .Full(),
        .AlmostFull(fifoAlmostFull)
    );

    assign fifoWriteData = rxStaging[8:1];
    assign fifoWrite = (rx_clk && !rx_clk_dly1) && (rxStaging[0] == 'b1);
    assign fifoRead = saxiReadEN && (saxiReadAddress==SAXI_SLAVE_BASE_ADDR+4*0);


    assign Intr = !fifoEmpty;


    always @(posedge SAXI_aclk, negedge SAXI_resetn)
    begin

        if (SAXI_resetn=='b0)
        begin
            //UART
            rx_dly1 <= 'b0;
            rx_dly2 <= 'b0;
            
            rx_clkDiv <= 'h0;
            rx_clk <= 'b0;
            rx_clk_dly1 <= 'b0;
            capture <= 'b0;

            //AXI
            saxiReadAddress_dly1 <= 'h0;
            saxiReadEN_dly1 <= 'b0;
            AXIreg_FifoHasData <= 'b0;
            AXIreg_FifoFull <= 'b0;
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
                end
            end


            //== AXI Registers ==
            saxiReadAddress_dly1 <= saxiReadAddress;
            saxiReadEN_dly1 <= saxiReadEN;

            AXIreg_FifoHasData <= !fifoEmpty;
            AXIreg_FifoFull <= fifoAlmostFull;

        end //if (SAXI_resetn=='b0) else 
    end //always


    always_comb
    begin
        //Default
        saxiReadData <= 32'h0;

        //AXI Registers
        if (saxiReadEN_dly1)
        begin
            case (saxiReadAddress_dly1)
                //== Read FIFO ==
                SAXI_SLAVE_BASE_ADDR+4*0: saxiReadData <= fifoReadData;
                //== FIFO Status ==
                SAXI_SLAVE_BASE_ADDR+4*1: saxiReadData <= { 31'h0, AXIreg_FifoHasData};
                SAXI_SLAVE_BASE_ADDR+4*2: saxiReadData <= { 31'h0, AXIreg_FifoFull};
                // default: saxiReadData <= 32'h00000000;
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

