
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
    output ReadValid,

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
    output reg [15:0] ARReadyCount = 0
);

    //Write Channels

    reg [1:0] writeState = 2'b0;
    reg [7:0] writeLen = 0;

    assign WriteDataRequest = (writeState==2'b01 && AWREADY) || (writeState==2'b10 && WREADY && !WLAST);

    always @(posedge AXI_ACLK)
    begin
        if (AXI_ARESETN==0)
        begin
            writeState <= 2'b00;
            writeLen <= 0;
            AWLEN <= 0;
            AWADDR <= 0;
            AWVALID <= 0;
            WVALID <= 0;
            WDATA <= 0;
        end
        else
        begin
            if (WriteTransfer && writeState==2'b00)
            begin
                AWSIZE <= 3; //8 Bytes (64 bits) per transfer. Constant
                AWBURST <= 2'b01; //INCR Mode. Constant

                writeState <= 2'b01;
                writeLen <= 0;

                AWLEN <= WriteBurstLen;
                AWADDR <= WriteAddress;
                AWVALID <= 1;

                WVALID <= 0;
                WLAST <= 0;
            end
            if (writeState==2'b01 && AWREADY) //Now in write state
            begin
                writeState <= 2'b10;
                AWVALID <= 0;
                BREADY <= 1;
            end
            if (writeState==2'b10 && BVALID) //Transaction acknowledged
            begin
                BREADY <= 0;
                writeState <= 2'b00;
            end

            if (WriteDataRequest) // && !WLAST) //Latch in data and increment counter when more data is to be read.
            begin
                WDATA <= WriteData;
                WVALID <= 1;
                writeLen <= writeLen + 1;

                //Assert WLAST when last data has been posted
                if (writeLen >= AWLEN)
                begin
                    WLAST <= 1;
                end
            end
            else if (WREADY)
            begin
                WVALID <= 0;
            end

            if (WLAST && WREADY) //Reset WLAST when it is acknowledged
            begin
                WLAST <= 0;
            end

        end

    end



    //Read Channels

    reg [1:0] readState = 2'b0;
    // reg [7:0] readLen = 0;
    assign ReadValid = RVALID && RREADY;
    assign ReadData = RDATA;

    always @(posedge AXI_ACLK)
    begin
        if (AXI_ARESETN==0)
        begin
            readState <= 2'b00;
            // readLen <= 0;
            ARLEN <= 0;
            ARADDR <= 0;
            ARVALID <= 0;
            RREADY <= 0;
        end
        else
        begin
            if (ReadTransfer && readState==2'b00)
            begin
                ARSIZE <= 3; //8 Bytes (64 bits) per transfer. Constant
                ARBURST <= 2'b01; //INCR Mode. Constant

                readState <= 2'b01;
                // readLen <= 0;

                ARLEN <= ReadBurstLen;
                ARADDR <= ReadAddress;
                ARVALID <= 1;

                RREADY <= 0;
            end
            if (readState==2'b01 && ARREADY) //Now in read state
            begin
                readState <= 2'b10;
                ARVALID <= 0;
                RREADY <= 1;
            end
            if (readState==2'b10 && RLAST) //End of Transaction
            begin
                RREADY <= 0;
                readState <= 2'b00;
            end

            // if (WriteDataRequest) // && !WLAST) //Latch in data and increment counter when more data is to be read.
            // begin
            //     WDATA <= WriteData;
            //     WVALID <= 1;
            //     writeLen <= writeLen + 1;
            // end
            // else if (WREADY)
            // begin
            //     WVALID <= 0;
            // end

            // //Assert WLAST when last data has been posted
            // if ((writeLen >= AWLEN) && WREADY)
            // begin
            //     WLAST <= 1;
            // end
            // if (WLAST && WREADY) //Reset WLAST when it is acknowledged
            // begin
            //     WLAST <= 0;
            // end

        end
    end


    reg awready_once = 0;
    reg arready_once = 0;
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
        
        if (ARREADY && arready_once==0)
        begin
            ARReadyCount <= ARReadyCount+1;
            arready_once <= 1;
        end
        else if (ARREADY==0)
        begin
            arready_once <= 0;
        end
    end

endmodule

