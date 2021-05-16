

module AudioOutController (
    Clock,
    Waveform,
    I2SClk, I2SData, I2SLRSel,
    DAC_Reset, DAC_MClk
);
    input Clock;
    input signed [23:0] Waveform;
    output reg I2SClk = 0;
    output reg I2SData=0, I2SLRSel=0;
    output reg DAC_Reset=0;
    output reg DAC_MClk=0; //Freq(DAC_MClk) = 128 * Freq(I2SClk)

    reg [3:0] clkdivMClk = 0;
    reg [3:0] clkdivI2S = 0;

    always @(posedge Clock)
    begin
        if (clkdivMClk == 4/2-1) //Generate Master Clock
        begin
            clkdivMClk <= 0;
            DAC_MClk <= !DAC_MClk;
        end
        else
        begin
            clkdivMClk <= clkdivMClk + 1;
        end
    end

    always @(posedge DAC_MClk)
    begin
        if (clkdivI2S == 4/2-1) //Generate I2S Clock
        begin
            clkdivI2S <= 0;
            I2SClk <= !I2SClk;
        end
        else
        begin
            clkdivI2S <= clkdivI2S + 1;
        end
    end

    reg [7:0] state = 0;
    reg signed [23:0] sampleL = 0;
    reg signed [23:0] sampleR = 0;

    always @(posedge I2SClk)
    begin
        if (state == 32-1)
        begin
            state <= 0;

            if (I2SLRSel == 0)
            begin
                sampleL <= Waveform;
                sampleR <= Waveform;
            end
        end
        else
        begin
            state <= state + 1;

            case (I2SLRSel)
                0: sampleL <= sampleL<<1;
                1: sampleR <= sampleR<<1;
            endcase
        end
    end

    always @(negedge I2SClk)
    begin
        case (I2SLRSel)
            0: I2SData <= sampleL[23:23];
            1: I2SData <= sampleR[23:23];
        endcase
        

        if (state == 32-1)
        begin
            I2SLRSel <= !I2SLRSel;
            DAC_Reset <= 1;
        end
    end
    
endmodule


