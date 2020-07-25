

module AudioOutController (
    Clock100MHz,
    Waveform,
    I2S_Clk, I2S_Data, I2S_WordSel
);
    input Clock100MHz;
    input signed [23:0] Waveform;
    output I2S_Clk;
    output reg I2S_Data=0, I2S_WordSel=0;

    reg [7:0] clkdiv96KHz = 0;
    reg [7:0] clkdivbus = 0;
    reg clk96KHz = 0;
    reg clkbus = 0;

    assign I2S_Clk = clkbus;

    always @(posedge Clock100MHz)
    begin
        if (clkdivbus == 22-1) //Generate bus
        begin
            clkdivbus <= 0;
            clkbus <= !clkbus;
        end
        else
        begin
            clkdivbus <= clkdivbus + 1;
        end
    end

    always @(posedge clkbus)
    begin
        if (clkdiv96KHz == 24*2-1) //~96KHz
        begin
            clkdiv96KHz <= 0;
            clk96KHz <= !clk96KHz;
        end
        else
        begin
            clkdiv96KHz <= clkdiv96KHz + 1;
        end
    end

    reg [7:0] state = 0;
    reg signed [23:0] sampleL;
    reg signed [23:0] sampleR;

    always @(posedge clkbus)
    begin
        if (state == 24-1)
        begin
            state <= 0;

            if (I2S_WordSel == 0)
            begin
                sampleL <= Waveform;
                sampleR <= Waveform;
            end
        end
        else
        begin
            state <= state + 1;

            case (I2S_WordSel)
                0: sampleL <= sampleL<<1;
                1: sampleR <= sampleR<<1;
            endcase
        end
    end

    always @(negedge clkbus)
    begin
        case (I2S_WordSel)
            0: I2S_Data <= sampleL[23:23];
            1: I2S_Data <= sampleR[23:23];
        endcase
        
        // if (state == 0 && I2S_WordSel == 0)
        // begin
        // end
        // else
        // begin
            
        // end

        if (state == 24-1)
        begin
            I2S_WordSel <= !I2S_WordSel;
        end
    end
    
endmodule


