`timescale 1ns / 1ps

module Channel 
#(
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
    
    input Clock1MHz;
    output signed [23:0] Waveform;


    wire running;

    reg [23:0] increment = 219;
    reg [1:0] wavetype = 0;
    wire [23:0] wavegenout;

    WaveGen wavegen(
        .Clock(Clock1MHz),
        .Run(running),
        .Increment(increment),
        .WaveType(wavetype),
        .Waveform(wavegenout)
    );

    reg [23:0] attack = 0, decay = 0, sustain = 0, releas = 0;
    reg gate = 0, gatetmp = 0;
    wire [23:0] envelope;
    wire [1:0] adsrState;

    ADSR adsr(
        .Clock(Clock1MHz),
        .Gate(gate),
        .Running(running),
        .ADSRstate(adsrState),
        .Attack(attack), .Decay(decay), .Sustain(sustain), .Release(releas),
        .Envelope(envelope)
    );

    /*
    envolope is a fixed point encoded multiplier
    To computer multiplication, wavegenout must be sign extended
    Signed right shift is also used to rescale the output
    */
    wire [47:0] wavemul = { {24{wavegenout[23]}}, wavegenout} * {24'd0, envelope};
    assign Waveform = (wavemul>>>24);

    always @(posedge Clock1MHz)
    begin
        gate <= gatetmp;
    end


    always @(posedge BusClock)
    begin
        if (ReadEN)
        begin
            case (ReadAddress)
                ADDRESS+4*0: ReadData <= {8'h0, increment};
                ADDRESS+4*1: ReadData <= {30'h0, wavetype};
                ADDRESS+4*2: ReadData <= {8'h0, attack};
                ADDRESS+4*3: ReadData <= {8'h0, decay};
                ADDRESS+4*4: ReadData <= {8'h0, sustain};
                ADDRESS+4*5: ReadData <= {8'h0, releas};
                ADDRESS+4*6: ReadData <= {31'h0, gate};
                ADDRESS+4*7: ReadData <= {8'h0, envelope};
                ADDRESS+4*8: ReadData <= {30'h0, adsrState};
                ADDRESS+4*9: ReadData <= {31'h0, running};
                default: ReadData <= 32'h00000000;
            endcase
        end
        if (WriteEN)
        begin
            case (WriteAddress)
                ADDRESS+4*0: increment <= WriteData[23:0];
                ADDRESS+4*1: wavetype <= WriteData[1:0];
                ADDRESS+4*2: attack <= WriteData[23:0];
                ADDRESS+4*3: decay <= WriteData[23:0];
                ADDRESS+4*4: sustain <= WriteData[23:0];
                ADDRESS+4*5: releas <= WriteData[23:0];
                ADDRESS+4*6: gatetmp <= WriteData[0:0];
                // ADDRESS+4*7:
                // ADDRESS+4*8:
                // ADDRESS+4*9:
                default:;
            endcase
        end
    end

endmodule


