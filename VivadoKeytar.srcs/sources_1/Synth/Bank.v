
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
            .Waveform(Waveform),
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


    assign ReadData = channels[NUM_CHANNELS-1].readdata_OR;

    //Rescale output
    assign Waveform = (channels[NUM_CHANNELS-1].wavesum >>> (clog2(24'hFFFFFF*NUM_CHANNELS)-24));


    always @(posedge BusClock)
    begin
        if (ReadEN)
        begin
            case (ReadAddress)
                // ADDRESS+4*0: ReadData <= {8'h0, increment};
                ADDRESS+4*1: ReadData <= {30'h0, wavetype};
                ADDRESS+4*2: ReadData <= {8'h0, attack};
                ADDRESS+4*3: ReadData <= {8'h0, decay};
                ADDRESS+4*4: ReadData <= {8'h0, sustain};
                ADDRESS+4*5: ReadData <= {8'h0, releas};
                // ADDRESS+4*6: ReadData <= {31'h0, gate};
                // ADDRESS+4*7: ReadData <= {8'h0, envelope};
                // ADDRESS+4*8: ReadData <= {30'h0, adsrState};
                // ADDRESS+4*9: ReadData <= {31'h0, running};
                default: ReadData <= 32'h00000000;
            endcase
        end
        if (WriteEN)
        begin
            case (WriteAddress)
                // ADDRESS+4*0: increment <= WriteData[23:0];
                ADDRESS+4*1: wavetype <= WriteData[1:0];
                ADDRESS+4*2: attack <= WriteData[23:0];
                ADDRESS+4*3: decay <= WriteData[23:0];
                ADDRESS+4*4: sustain <= WriteData[23:0];
                ADDRESS+4*5: releas <= WriteData[23:0];
                // ADDRESS+4*6: gatetmp <= WriteData[0:0];
                // ADDRESS+4*7:
                // ADDRESS+4*8:
                // ADDRESS+4*9:
                default:;
            endcase
        end

endmodule