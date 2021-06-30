
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
    output reg ARready = 0, input ARvalid,
    //Read Address
    input [31:0] ARaddr,

    //== Read Data Channel ==
    //Handshakes
    input Rready, output reg Rvalid = 0,
    //Data
    output [31:0] Rdata,


    //== Write Address Channel ==
    //Handshakes
    output reg AWready = 0, input AWvalid,
    //Write Address
    input [31:0] AWaddr,

    //== Write Data Channel ==
    //Handshakes
    output reg Wready = 0, input Wvalid,
    //Data
    input [31:0] Wdata,

    //== Write Response Channel ==
    //Handshakes
    input Bready, output reg Bvalid = 0
);


    //Read Channels

    reg [1:0] readState = 2'b0;

    assign ReadEN = (readState==2'b01 && ARready);
    assign Rdata = ReadData;

    always @(posedge AxiAClk)
    begin
        if (AxiAResetN==0)
        begin
            readState <= 2'b00;
            ARready <= 0;
            Rvalid <= 0;
        end
        else
        begin
            if (ARvalid && readState==2'b00)
            begin
                readState <= 2'b01;

                ReadAddress <= ARaddr;

                ARready <= 1;
            end
            if (readState==2'b01 && ARready) //Now in read state
            begin
                readState <= 2'b10;
                ARready <= 0;
            end
            if (readState==2'b10 && Rready) //Transaction acknowledged
            begin
                readState <= 2'b00;
            end

            if (ReadEN)
            begin
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

    assign WriteEN = Wvalid && Wready;
    assign WriteData = Wdata;

    always @(posedge AxiAClk)
    begin
        if (AxiAResetN==0)
        begin
            writeState <= 2'b00;
            AWready <= 0;
            Wready <= 0;
            Bvalid <= 0;
        end
        else
        begin
            if (AWvalid && writeState==2'b00)
            begin
                writeState <= 2'b01;

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
            if (writeState==2'b10 && Wvalid) //Transaction acknowledged
            begin
                Bvalid <= 1;
                writeState <= 2'b00;
                Wready <= 0;
            end
            else if (Bvalid)
            begin
                Bvalid <= 0;
            end

        end
    end

endmodule

