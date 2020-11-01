
module AxiSlaveController
(
    //== Global Signals ==
    //Global Clock Signal.
    input AxiAClk,
    //Global Reset Singal. This Signal is Active Low
    input AxiAResetN,

    //== External Control Signals ==
    output reg [31:0] ReadAddress,
    input [31:0] ReadData,
    output ReadEN,

    output reg [31:0] WriteAddress,
    output [31:0] WriteData,
    output WriteEN,

    //== Read Address Channel ==
    //Handshakes
    input ARvalid, output reg ARready = 0,
    //Read Address
    input [31:0] ARaddr,
    //Burst length
    input [7:0] ARlen,

    //== Read Data Channel ==
    //Handshakes
    output reg Rvalid = 0, input Rready,
    //Last transfer in burst
    input Rlast,
    //Data
    output [31:0] Rdata,


    //== Write Address Channel ==
    //Handshakes
    input AWvalid, output reg AWready = 0,
    //Write Address
    input [31:0] AWaddr,
    //Burst length
    input [7:0] AWlen,

    //== Write Data Channel ==
    //Handshakes
    input Wvalid, output reg Wready,
    //Last transfer in burst
    input Wlast,
    //Data
    input [31:0] Wdata,

    //== Write Response Channel ==
    //Handshakes
    output reg Bvalid = 0, input Bready
);

    //Read Channels

    reg [1:0] readState = 2'b0;
    // reg [7:0] readLen = 0;

    assign ReadEN = (readState==2'b01 && ARready) || (readState==2'b10 && Rready && !Rlast);
    assign Rdata = ReadData;

    always @(posedge AxiAClk)
    begin
        if (AxiAResetN==0)
        begin
            readState <= 2'b00;
            // readLen <= 0;
            ARready <= 0;
            Rvalid <= 0;
        end
        else
        begin
            if (ARvalid && readState==2'b00)
            begin
                readState <= 2'b01;
                // readLen <= 0;

                ReadAddress <= ARaddr;

                ARready <= 1;
            end
            if (readState==2'b01 && ARready) //Now in read state
            begin
                readState <= 2'b10;
                ARready <= 0;
            end
            if (readState==2'b10 && Rlast) //End of transaction
            begin
                readState <= 2'b00;
            end

            if (ReadEN)
            begin
                ReadAddress <= ReadAddress+8;
                Rvalid <= 1;
            end
            else if (Rready)
            begin
                Rvalid <= 0;
            end

        end
    end



    //Write Channels

    reg [1:0] writeState = 2'b0;
    // reg [7:0] writeLen = 0;

    assign WriteEN = Wvalid && Wready;
    assign WriteData = Wdata;

    always @(posedge AxiAClk)
    begin
        if (AxiAResetN==0)
        begin
            writeState <= 2'b00;
            // writeLen <= 0;
            AWready <= 0;
            Wready <= 0;
            Bvalid <= 0;
        end
        else
        begin
            if (AWvalid && writeState==2'b00)
            begin
                writeState <= 2'b01;
                // writeLen <= 0;

                WriteAddress <= AWaddr;
                AWready <= 1;

                Wready <= 0;
                Bvalid <= 0;
            end
            if (writeState==2'b01 && AWready) //Now in write state
            begin
                writeState <= 2'b10;
                AWready <= 0;

                Wready <= 1;
            end
            if (writeState==2'b10 && Wlast) //Transaction acknowledged
            begin
                Bvalid <= 1;
                writeState <= 2'b00;
            end
            else if (Bvalid)
            begin
                Bvalid <= 0;
            end

            if (WriteEN)
            begin
                WriteAddress <= WriteAddress+8;
            end

        end
    end

endmodule

