

module AnalogController (
    input Clock,
    input signed [23:0] LeftOut, input signed [23:0] RightOut,
    output reg signed [23:0] LeftIn=0, output reg signed [23:0] RightIn=0,
    output reg I2SClk=0, output reg I2SLRSel=0,
    output reg I2SDout=0,
    input I2SDin,
    output reg DAC_Reset=0, output reg DAC_MClk=0,
    output I2S_Format, output [1:0] DAC_Mode
);

    assign I2S_Format = 1; //I2S mode (Format 1)
    assign DAC_Mode = 2; //Double Speed Mode (50kHz - 100KHz)

    reg [3:0] clkdivMClk = 0;
    reg [3:0] clkdivI2S = 0;

    //Freq(DAC_MClk) = 128 * Freq(I2SClk)

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
    reg signed [23:0] outSampleL = 0;
    reg signed [23:0] outSampleR = 0;
    reg signed [30:0] inSampleL = 0; //Only 31 bits needed since result is latched on last rising edge instead of shift
    reg signed [30:0] inSampleR = 0;

    always @(posedge I2SClk)
    begin
        if (state == 32-1)
        begin
            state <= 0;

            if (I2SLRSel == 0)
            begin
                outSampleL <= LeftOut;
                outSampleR <= RightOut;

                //Reset right accumulator since left just started (right just finished)
                inSampleR <= 0;
            end
            else if (I2SLRSel == 1)
            begin
                //Reset left accumulator since right just started (left just finished)
                inSampleL <= 0; //Reset accumulator
            end
        end
        else
        begin
            state <= state + 1;

            case (I2SLRSel)
                0: outSampleL <= outSampleL<<1;
                1: outSampleR <= outSampleR<<1;
            endcase

            case (I2SLRSel)
                0: inSampleL <= {inSampleL[29:0], I2SDin}; //Bit shift, inserting new data at LSB
                1: inSampleR <= {inSampleR[29:0], I2SDin};
            endcase
        end
        
    end

    always @(negedge I2SClk)
    begin
        case (I2SLRSel)
            0: I2SDout <= outSampleL[23:23];
            1: I2SDout <= outSampleR[23:23];
        endcase

        if (state == 32-1)
        begin
            case (I2SLRSel)
                0: LeftIn <= inSampleL[30:7]; //Upper 24 bits
                1: RightIn <= inSampleR[30:7]; //Upper 24 bits
            endcase

            I2SLRSel <= !I2SLRSel;
            DAC_Reset <= 1;
        end
    end
    
endmodule


