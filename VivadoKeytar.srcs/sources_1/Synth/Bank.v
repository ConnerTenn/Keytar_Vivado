
module Bank #
(
    parameter ADDRESS=0
)
(
    input Clock100MHz,
    output signed [23:0] Waveform,

    //== AXI Read ==
    input [31:0] ReadAddress,
    output [31:0] ReadData,
    input ReadEN,
    //== AXI Write ==
    input [31:0] WriteAddress,
    input [31:0] WriteData,
    input WriteEN
);
    parameter WAVE_MAX = 24'hFFFFFF;

endmodule