
module Bank #
(
    parameter ADDRESS=0
)
(
    input Clock,
    output signed [23:0] Waveform,

    //== AXI Clock ==
    input BusClock,
    //== AXI Read ==
    input [31:0] ReadAddress,
    output [31:0] ReadData,
    input ReadEN,
    //== AXI Write ==
    input [31:0] WriteAddress,
    input [31:0] WriteData,
    input WriteEN
);
    `include "Math.v"


    reg [23:0] attack = 0, decay = 0, sustain = 0, releas = 0;
    reg [1:0] wavetype = 0;


    localparam NUM_CHANNELS = 8;

    genvar gi;
    for (gi=0; gi<NUM_CHANNELS; gi=gi+1)
    begin:channels
        wire signed [23:0] waveform;
        wire signed [clog2(24'hFFFFFF*NUM_CHANNELS):0] wavesum;

        wire [31:0] readdata;
        wire [31:0] readdata_OR;

        Channel #(.ADDRESS(ADDRESS + 32'h100 * gi + 32'h100)) channel
        (
            .Clock(Clock),
            .Waveform(waveform),
            .WaveType(wavetype),
            //== ADSR ==
            .Attack(attack), .Decay(decay), .Sustain(sustain), .Release(releas),
            //== AXI Clock ==
            .BusClock(BusClock),
            //== AXI Read ==
            .ReadAddress(ReadAddress),
            .ReadData(readdata),
            .ReadEN(ReadEN),
            //== AXI Write ==
            .WriteAddress(WriteAddress),
            .WriteData(WriteData),
            .WriteEN(WriteEN)
        );

        if (gi == 0)
        begin
            //First waveform sum is equal to itself; no previous channels
            assign wavesum = waveform;

            assign readdata_OR = readdata;
        end
        else if (gi > 0)
        begin
            //All other channels must add the previous waveform to itself
            assign wavesum = waveform + channels[gi-1].wavesum;

            assign readdata_OR = readdata | channels[gi-1].readdata_OR;
        end
    end

    //Rescale output
    assign Waveform = (channels[NUM_CHANNELS-1].wavesum >>> (clog2(24'hFFFFFF*NUM_CHANNELS)-24+1));


    reg [31:0] readData = 0;
    assign ReadData = channels[NUM_CHANNELS-1].readdata_OR | readData;


    always @(posedge BusClock)
    begin
        if (ReadEN)
        begin
            case (ReadAddress)
                ADDRESS+4*0: readData <= {30'h0, wavetype};
                ADDRESS+4*1: readData <= {8'h0, attack};
                ADDRESS+4*2: readData <= {8'h0, decay};
                ADDRESS+4*3: readData <= {8'h0, sustain};
                ADDRESS+4*4: readData <= {8'h0, releas};
                default: readData <= 32'h00000000;
            endcase
        end
        if (WriteEN)
        begin
            case (WriteAddress)
                ADDRESS+4*0: wavetype <= WriteData[1:0];
                ADDRESS+4*1: attack <= WriteData[23:0];
                ADDRESS+4*2: decay <= WriteData[23:0];
                ADDRESS+4*3: sustain <= WriteData[23:0];
                ADDRESS+4*4: releas <= WriteData[23:0];
                default:;
            endcase
        end
    end

endmodule