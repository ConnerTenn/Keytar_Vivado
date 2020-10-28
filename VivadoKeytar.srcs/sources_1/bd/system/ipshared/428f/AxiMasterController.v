
module AxiMasterController
(
    //== Global Signals ==
    //Global Clock Signal.
    input AxiAClk,
    //Global Reset Singal. This Signal is Active Low
    input AxiAResetN,

    //== External Control Signals ==
    input [31:0] ReadAddress, input [7:0] ReadBurstLen,
    output [63:0] ReadData,
    input ReadTransfer, output ReadValid,

    input [31:0] WriteAddress, input [7:0] WriteBurstLen,
    input [63:0] WriteData,
    input WriteTransfer, output WriteDataRequest,

    //== Read Address Channel ==
    //Handshakes
    output reg ARvalid = 0, input ARready,
    //Read Address
    output reg [31:0] ARaddr = 0,
    //Burst length
    output reg [7:0] ARlen = 0,

    //== Read Data Channel ==
    //Handshakes
    input Rvalid, output reg Rready = 0,
    //Last transfer in burst
    input Rlast,
    //Data
    input [63:0] Rdata,


    //== Write Address Channel ==
    //Handshakes
    output reg AWvalid = 0, input AWready,
    //Write Address
    output reg [31:0] AWaddr = 0,
    //Burst length
    output reg [7:0] AWlen = 0,

    //== Write Data Channel ==
    //Handshakes
    output reg Wvalid = 0, input Wready,
    //Last transfer in burst
    output reg Wlast = 0,
    //Data
    output reg [63:0] Wdata = 0,

    //== Write Response Channel ==
    //Handshakes
    input Bvalid, output reg Bready = 0
);

    //Write Channels

    reg [1:0] writeState = 2'b0;
    reg [7:0] writeLen = 0;

    assign WriteDataRequest = (writeState==2'b01 && AWready) || (writeState==2'b10 && Wready && !Wlast);

    always @(posedge AxiAClk)
    begin
        if (AxiAResetN==0)
        begin
            writeState <= 2'b00;
            writeLen <= 0;
            AWlen <= 0;
            AWaddr <= 0;
            AWvalid <= 0;
            Wvalid <= 0;
            Wdata <= 0;
        end
        else
        begin
            if (WriteTransfer && writeState==2'b00)
            begin
                writeState <= 2'b01;
                writeLen <= 0;

                AWlen <= WriteBurstLen;
                AWaddr <= WriteAddress;
                AWvalid <= 1;

                Wvalid <= 0;
                Wlast <= 0;
            end
            if (writeState==2'b01 && AWready) //Now in write state
            begin
                writeState <= 2'b10;
                AWvalid <= 0;
                Bready <= 1;
            end
            if (writeState==2'b10 && Bvalid) //Transaction acknowledged
            begin
                Bready <= 0;
                writeState <= 2'b00;
            end

            if (WriteDataRequest) // && !Wlast) //Latch in data and increment counter when more data is to be read.
            begin
                Wdata <= WriteData;
                Wvalid <= 1;
                writeLen <= writeLen + 1;

                //Assert Wlast when last data has been posted
                if (writeLen >= AWlen)
                begin
                    Wlast <= 1;
                end
            end
            else if (Wready)
            begin
                Wvalid <= 0;
            end

            if (Wlast && Wready) //Reset Wlast when it is acknowledged
            begin
                Wlast <= 0;
            end

        end

    end



    //Read Channels

    reg [1:0] readState = 2'b0;
    // reg [7:0] readLen = 0;
    assign ReadValid = Rvalid && Rready;
    assign ReadData = Rdata;

    always @(posedge AxiAClk)
    begin
        if (AxiAResetN==0)
        begin
            readState <= 2'b00;
            // readLen <= 0;
            ARlen <= 0;
            ARaddr <= 0;
            ARvalid <= 0;
            Rready <= 0;
        end
        else
        begin
            if (ReadTransfer && readState==2'b00)
            begin
                readState <= 2'b01;
                // readLen <= 0;

                ARlen <= ReadBurstLen;
                ARaddr <= ReadAddress;
                ARvalid <= 1;

                Rready <= 0;
            end
            if (readState==2'b01 && ARready) //Now in read state
            begin
                readState <= 2'b10;
                ARvalid <= 0;
                Rready <= 1;
            end
            if (readState==2'b10 && Rlast) //End of Transaction
            begin
                Rready <= 0;
                readState <= 2'b00;
            end

        end
    end

endmodule

