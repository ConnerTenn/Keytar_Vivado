
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
    Channel #(.ADDRESS(ADDRESS)) channel
    (
        .Clock1MHz(clock1MHz),
        .Waveform(waveform),
        //== AXI Read ==
        .ReadAddress(ReadData),
        .ReadData(ReadData),
        .ReadEN(ReadEN),
        //== AXI Write ==
        .WriteAddress(WriteAddress),
        .WriteData(WriteData),
        .WriteEN(WriteEN),
    );

endmodule