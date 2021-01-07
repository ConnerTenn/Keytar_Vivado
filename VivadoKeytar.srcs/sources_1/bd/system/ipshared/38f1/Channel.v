`timescale 1ns / 1ps

module Channel #
(
    parameter ADDRESS=0
)
(
    input Clock,
    output signed [23:0] Waveform,

    //== Control ==
    input [1:0] WaveType,
    input signed [23:0] Lfo,
    input signed [23:0] PulseWidth,
    
    //== ADSR ==
    input [23:0] Attack, 
    input [23:0] Decay, 
    input [23:0] Sustain, 
    input [23:0] Release,

    //== AXI Clock ==
    input BusClock,
    //== AXI Read ==
    input [31:0] ReadAddress,
    output reg [31:0] ReadData,
    input ReadEN,
    //== AXI Write ==
    input [31:0] WriteAddress,
    input [31:0] WriteData,
    input WriteEN
);
    localparam WAVE_MAX = 24'hFFFFFF;


    wire running;

    reg [23:0] increment = 0;
    wire [23:0] wavegenout;

    WaveGen wavegen(
        .Clock(Clock),
        .Run(running),
        .Increment(increment+Lfo),
        .WaveType(WaveType),
        .PulseWidth(PulseWidth),
        .Waveform(wavegenout)
    );

    reg gate = 0, gatetmp = 0;
    wire [23:0] envelope;
    wire [1:0] adsrState;

    ADSR adsr(
        .Clock(Clock),
        .Gate(gate),
        .Running(running),
        .ADSRstate(adsrState),
        .Attack(Attack), .Decay(Decay), .Sustain(Sustain), .Release(Release),
        .Envelope(envelope)
    );

    /*
    envolope is a fixed point encoded multiplier
    To computer multiplication, wavegenout must be sign extended
    Signed right shift is also used to rescale the output
    */
    wire [47:0] wavemul = { {24{wavegenout[23]}}, wavegenout} * {24'd0, envelope};
    assign Waveform = (wavemul>>>24);

    always @(posedge Clock)
    begin
        gate <= gatetmp;
    end


    always @(posedge BusClock)
    begin
        if (ReadEN)
        begin
            case (ReadAddress)
                ADDRESS+4*0: ReadData <= {31'h0, gate};
                ADDRESS+4*1: ReadData <= {8'h0, increment};
                ADDRESS+4*2: ReadData <= {31'h0, running};
                ADDRESS+4*3: ReadData <= {8'h0, envelope};
                ADDRESS+4*4: ReadData <= {30'h0, adsrState};
                default: ReadData <= 32'h00000000;
            endcase
        end
        if (WriteEN)
        begin
            case (WriteAddress)
                ADDRESS+4*0: gatetmp <= WriteData[0:0];
                ADDRESS+4*1: increment <= WriteData[23:0];
                // ADDRESS+4*2:
                // ADDRESS+4*3:
                // ADDRESS+4*4:
                default:;
            endcase
        end
    end

endmodule


