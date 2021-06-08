

module AnalogController (
    input Clock,
    input signed [23:0] LeftOut, input signed [23:0] RightOut,
    output reg signed [23:0] LeftIn=0, output reg signed [23:0] RightIn=0,
    output reg I2SClk=0, output reg I2SLRSel=0,
    output reg I2SDout=0,
    input I2SDin,
    output DAC_Reset, output reg DAC_MClk=0,
    input [3:0] CtrlPortAddr, input [7:0] CtrlPortData, input CtrlPortTrigger, output reg CtrlPortRunning=0, input CtrlPortReset,
    output CClk, output reg MoSi, output reg CS_n
);

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
        end
    end


    //== Controller Interface ==

    assign DAC_Reset = CtrlPortReset;

    wire [6:0] chipAddr = 7'b0010000;
    reg [5:0] ctrlState = 6'b111111;
    reg [23:0] ctrlDataBuffer;

    assign CClk = DAC_MClk;

    always @(negedge DAC_MClk)
    begin
        if (CtrlPortTrigger==1 && ctrlState==6'b111111)
        begin
            ctrlState <= 0;
            CtrlPortRunning <= 1;

            ctrlDataBuffer <= {chipAddr, 1'b0, 4'h0, CtrlPortAddr, CtrlPortData};
        end
        else if (ctrlState!=6'b111111)
        begin
            CS_n <= 0;
            MoSi <= ctrlDataBuffer[23];
            ctrlDataBuffer <= ctrlDataBuffer<<1;

            if (ctrlState == 23) 
            begin 
                ctrlState <= 6'b111111;
            end
            else 
            begin 
                ctrlState <= ctrlState+1;
            end
        end
        else
        begin
            CtrlPortRunning <= 0;
            CS_n <= 1;
        end
    end
endmodule


