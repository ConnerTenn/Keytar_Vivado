
`timescale 1 ns / 1 ps

module AXI_ControllerTest
(
    //== Global Signals ==
    //Global Clock Signal.
    input AXI_ACLK,
    //Global Reset Singal. This Signal is Active Low
    input AXI_ARESETN,

    //== External Control Signals ==
    input [31:0] ReadAddress,
    input [7:0] ReadBurstLen,
    output [63:0] ReadData,
    input ReadTransfer,
    input ReadTransferComplete,

    input [31:0] WriteAddress,
    input [7:0] WriteBurstLen,
    input [63:0] WriteData,
    input WriteTransfer,
    output WriteDataRequest,

    //== Read Address Channel ==
    //Handshakes
    output reg ARVALID = 0, input ARREADY,
    //Burst length
    output reg [7:0] ARLEN = 0,
    //Number of bytes per transfer
    output reg [2:0] ARSIZE = 0, // = clog2(NumBytes)
    //Burst Type
    output reg [1:0] ARBURST = 0, //00:Fixed, 01:Incr, 10:Wrap, 11:Reserved
    //Read Address
    output reg [31:0] ARADDR = 0,

    //== Read Data Channel ==
    //Handshakes
    input RVALID, output reg RREADY = 0,
    //Last transfer in burst
    input RLAST,
    //Response
    input [1:0] RRESP,
    //Data
    input [63:0] RDATA,


    //== Write Address Channel ==
    //Handshakes
    output reg AWVALID = 0, input AWREADY,
    //Burst length
    output reg [7:0] AWLEN = 0,
    //Number of bytes per transfer
    output reg [2:0] AWSIZE = 0, // = clog2(NumBytes)
    //Burst Type
    output reg [1:0] AWBURST = 0, //00:Fixed, 01:Incr, 10:Wrap, 11:Reserved
    //Write Address
    output reg [31:0] AWADDR = 0,

    //== Write Data Channel ==
    //Handshakes
    output reg WVALID = 0, input WREADY,
    //Vailid byte lanes mask; The bytes of the entire word that are valid
    output reg [7:0] WSTRB = 8'b1111_1111,
    //Last transfer in burst
    output reg WLAST = 0,
    //Data
    output reg [63:0] WDATA = 0,

    //== Write Response Channel ==
    //Handshakes
    input BVALID, output reg BREADY = 0,
    //Response
    input [1:0] BRESP,

    //== Analytics & Debugging ==
    output reg [15:0] AWReadyCount = 0,
    output reg [15:0] WReadyCount = 0,
    output [11:0] States
);

    //Write Channels

    reg writeActive = 0; //True for entire write transaction
    reg writeInProgress = 0; //True while data is actually being written
    reg [7:0] writeLen = 0;

    assign WriteDataRequest = writeActive && ((AWREADY && !writeInProgress) || WREADY) && !WLAST;

    always @(posedge AXI_ACLK)
    begin
        if ((WLAST && WREADY) || AXI_ARESETN) //Reset after transaction
        begin
            // writeActive <= 0; //Write active d-asserted in Write Response Channel (BVALID)
            writeInProgress <= 0;
            writeLen <= 0;
            AWLEN <= 0;
            AWADDR <= 0;
            AWVALID <= 0;
            WVALID <= 0;
            WDATA <= 0;
        end
        else if (WriteTransfer && !writeActive) //Initiate Transaction
        begin
            AWSIZE <= 3; //8 Bytes (64 bits) per transfer. Constant
            AWBURST <= 2'b01; //INCR Mode. Constant

            writeActive <= 1;
            writeInProgress <= 0;
            writeLen <= 0;

            AWLEN <= WriteBurstLen;
            AWADDR <= WriteAddress;
            AWVALID <= 1;

            WVALID <= 0;
        end

        if (writeActive && AWREADY && !writeInProgress) //Address has been acknowledged, time to transfer data
        begin
            AWVALID <= 0;
            writeInProgress <= 1;
            BREADY <= 1;
        end

        if (WriteDataRequest) // && !WLAST) //Latch in data and increment counter when more data is to be read.
        begin
            WDATA <= WriteData;
            WVALID <= 1;
            writeLen <= writeLen + 1;
        end
        else if (WREADY)
        begin
            WVALID <= 0;
        end

        //Assert WLAST when last data has been posted
        if ((writeLen >= AWLEN) && WREADY)
        begin
            WLAST <= 1;
        end
        if (WLAST && WREADY) //Reset WLAST when it is acknowledged
        begin
            WLAST <= 0;
        end

        //Transaction acknowledged
        if (BVALID)
        begin
            BREADY <= 0;
            writeActive <= 0;
        end
    end



    //Read Channels

    // reg readActive = 0;
    // reg readInProgress = 0;
    // reg [7:0] readLen = 0;

    // always @(posedge AXI_ACLK)
    // begin
    //     //Initiate Transaction
    //     if (ReadTransfer && !readActive)
    //     begin
    //         ARSIZE <= 3; //8 Bytes (64 bits) per transfer. Constant
    //         ARBURST <= 2'b01; //INCR Mode. Constant

    //         readActive <= 1;
    //         readInProgress <= 0;
    //         readLen <= 0;

    //         ARLEN <= ReadBurstLen;
    //         ARADDR <= ReadAddress;
    //         ARVALID <= 1;

    //         RREADY <= 0;
    //     end
    //     else if (RLAST && RVALID)
    //     begin
    //         readActive <= 0;
    //         readInProgress <= 0;
    //         readLen <= 0;
    //         ARLEN <= 0;
    //         ARADDR <= 0;
    //         ARVALID <= 0;
    //         RREADY <= 0;
    //     end

    //     if (AWREADY) //Address has been acknowledged, time to read data
    //     begin
    //         ARVALID <= 0;
    //         readInProgress <= 1;
    //     end
    // end


    reg awready_once = 0;
    reg wready_once = 0;
    always @(AXI_ACLK)
    begin
        if (AWREADY && awready_once==0)
        begin
            AWReadyCount <= AWReadyCount+1;
            awready_once <= 1;
        end
        else if (AWREADY==0)
        begin
            awready_once <= 0;
        end
        
        if (WREADY && wready_once==0)
        begin
            WReadyCount <= WReadyCount+1;
            wready_once <= 1;
        end
        else if (WREADY==0)
        begin
            wready_once <= 0;
        end
    end

    assign States[7:0] = writeLen;
    assign States[8] = writeActive;
    assign States[9] = writeInProgress;
    assign States[10] = WREADY;
    assign States[11] = AWREADY;

endmodule

