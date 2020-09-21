
`timescale 1 ns / 1 ps

module AXI_Controller
(
    //== Global Signals ==
    //Global Clock Signal.
    input AXI_ACLK,
    //Global Reset Singal. This Signal is Active Low
    input AXI_ARESETN,

    //== External Control Signals ==


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
    input [63:0] RDATA


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
    output reg [63:0] WDATA,

    //== Write Response Channel ==
    //Handshakes
    input BVALID, output reg BREADY = 0,
    //Response
    input [1:0] BRESP,

);


    // always @(posedge AXI_ACLK)
    // begin

    // end


endmodule

