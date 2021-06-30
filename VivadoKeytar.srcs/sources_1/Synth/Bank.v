
module Bank #
(
    parameter ADDRESS=0
)
(
    input Clock100MHz,
    input Clock1MHz,
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

    localparam USE_FILTER = 0;

    reg signed [23:0] pulsewidth = 0;
    reg [23:0] attack = 0, decay = 0, sustain = 0, releas = 0;
    reg [1:0] wavetype = 0;

    wire signed [23:0] lfoWaveform;
    reg [1:0] lfoSelection = 0;


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
            .Clock1MHz(Clock1MHz),
            .Waveform(waveform),
            //== Control ==
            .WaveType(wavetype),
            .PulseWidth(pulsewidth),
            .Lfo(lfoWaveform),
            .LfoSelection(lfoSelection),
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
    wire signed [23:0] channelSumWaveform = (channels[NUM_CHANNELS-1].wavesum >>> (clog2(24'hFFFFFF*NUM_CHANNELS)-24+1));

    if (USE_FILTER)
    begin
        DigitalFilter filter(
            .Clock100MHz(Clock100MHz),
            .InWaveform(channelSumWaveform),
            .OutWaveform(Waveform)
        );
    end
    else
    begin
        assign Waveform = channelSumWaveform;
    end


    reg lfoRunning = 0;
    reg [23:0] lfoIncrement = 0;
    reg [23:0] lfoAmplitude = 0;
    wire signed [23:0] lfoWavegenout;
    reg [1:0] lfoWaveType = 0;

    WaveGen lfo(
        .Clock1MHz(Clock1MHz),
        .Run(lfoRunning),
        .Increment(lfoIncrement),
        .WaveType(lfoWaveType),
        .PulseWidth(24'h000000),
        .Waveform(lfoWavegenout)
    );

    wire signed [47:0] mulArg1 = { {24{lfoWavegenout[23]}}, lfoWavegenout};
    wire signed [47:0] mulArg2 = {24'd0, lfoAmplitude};
    wire signed [47:0] lfomul = mulArg1 * mulArg2;
    assign lfoWaveform = (lfomul>>>24);


    reg [31:0] readData = 0;
    assign ReadData = channels[NUM_CHANNELS-1].readdata_OR | readData;

    always @(posedge BusClock)
    begin
        if (ReadEN)
        begin
            case (ReadAddress)
                ADDRESS+4*0: readData <= {30'h0, wavetype};
                ADDRESS+4*1: readData <= {8'h0, pulsewidth};
                ADDRESS+4*2: readData <= {8'h0, attack};
                ADDRESS+4*3: readData <= {8'h0, decay};
                ADDRESS+4*4: readData <= {8'h0, sustain};
                ADDRESS+4*5: readData <= {8'h0, releas};
                ADDRESS+4*6: readData <= {31'h0, lfoRunning};
                ADDRESS+4*7: readData <= {8'h0, lfoIncrement};
                ADDRESS+4*8: readData <= {8'h0, lfoAmplitude};
                ADDRESS+4*9: readData <= {30'h0, lfoWaveType};
                ADDRESS+4*10: readData <= {30'h0, lfoSelection};
                default: readData <= 32'h00000000;
            endcase
        end
        if (WriteEN)
        begin
            case (WriteAddress)
                ADDRESS+4*0: wavetype <= WriteData[1:0];
                ADDRESS+4*1: pulsewidth <= WriteData[23:0];
                ADDRESS+4*2: attack <= WriteData[23:0];
                ADDRESS+4*3: decay <= WriteData[23:0];
                ADDRESS+4*4: sustain <= WriteData[23:0];
                ADDRESS+4*5: releas <= WriteData[23:0];
                ADDRESS+4*6: lfoRunning <= WriteData[0:0];
                ADDRESS+4*7: lfoIncrement <= WriteData[23:0];
                ADDRESS+4*8: lfoAmplitude <= WriteData[23:0];
                ADDRESS+4*9: lfoWaveType <= WriteData[1:0];
                ADDRESS+4*10: lfoSelection <= WriteData[1:0];
                default:;
            endcase
        end
    end

endmodule