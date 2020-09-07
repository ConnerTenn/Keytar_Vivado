`timescale 1ns / 1ps

module Channel 
#(
    parameter ADDRESS=0
)
(
    Clock1MHz,
    Waveform,
    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError
);
    parameter WAVE_MAX = 24'hFFFFFF;
    
    input Clock1MHz;
    output signed [23:0] Waveform;

    input BusClock;
    input [31:0] BusPAddr, BusPWriteData;
    output reg [31:0] BusPReadData = 0;
    input BusPWrite;
    output reg BusPReady = 0;
    input BusPEnable, BusPSel;
    output BusPError;

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

        if (BusPSel && !BusPReady)
        begin
            BusPReady <= 1;
            
            if (!BusPWrite)
            begin
                //Read
                case (BusPAddr)
                    ADDRESS+4*0: BusPReadData <= {8'h0, increment};
                    ADDRESS+4*1: BusPReadData <= {30'h0, wavetype};
                    ADDRESS+4*2: BusPReadData <= {8'h0, attack};
                    ADDRESS+4*3: BusPReadData <= {8'h0, decay};
                    ADDRESS+4*4: BusPReadData <= {8'h0, sustain};
                    ADDRESS+4*5: BusPReadData <= {8'h0, releas};
                    ADDRESS+4*6: BusPReadData <= {31'h0, gate};
                    ADDRESS+4*7: BusPReadData <= {8'h0, envelope};
                    ADDRESS+4*8: BusPReadData <= {30'h0, adsrState};
                    ADDRESS+4*9: BusPReadData <= {31'h0, running};
                endcase
            end
        end

        if (BusPSel && BusPReady && BusPEnable)
        begin
            if (BusPWrite)
            begin
                //Write
                case (BusPAddr)
                    ADDRESS+4*0: increment <= BusPWriteData[23:0];
                    ADDRESS+4*1: wavetype <= BusPWriteData[1:0];
                    ADDRESS+4*2: attack <= BusPWriteData[23:0];
                    ADDRESS+4*3: decay <= BusPWriteData[23:0];
                    ADDRESS+4*4: sustain <= BusPWriteData[23:0];
                    ADDRESS+4*5: releas <= BusPWriteData[23:0];
                    ADDRESS+4*6: gatetmp <= BusPWriteData[0:0];
                    // ADDRESS+4*7:
                    // ADDRESS+4*8:
                    // ADDRESS+4*9:
                endcase
            end

            BusPReadData <= 0;
            BusPReady <= 0;
        end
    end

endmodule


