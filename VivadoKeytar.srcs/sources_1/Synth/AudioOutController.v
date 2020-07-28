

module AudioOutController (
    Clock,
    Waveform,
    I2SClk, I2SData, I2SWordSel
);
    input Clock;
    input signed [23:0] Waveform;
    output I2SClk;
    output reg I2SData=0, I2SWordSel=0;

    reg [7:0] clkdiv96KHz = 0;
    reg [7:0] clkdivbus = 0;
    reg clk96KHz = 0;
    reg clkbus = 0;

    assign I2SClk = clkbus;

    always @(posedge Clock)
    begin
        if (clkdivbus == (8)/2-1) //Generate bus
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
        if (clkdiv96KHz == (16*2)/2-1)
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
    reg signed [23:0] sampleL = 0;
    reg signed [23:0] sampleR = 0;

    always @(posedge clkbus)
    begin
        if (state == 16-1)
        begin
            state <= 0;

            if (I2SWordSel == 0)
            begin
                sampleL <= Waveform;
                sampleR <= Waveform;
            end
        end
        else
        begin
            state <= state + 1;

            case (I2SWordSel)
                0: sampleL <= sampleL<<1;
                1: sampleR <= sampleR<<1;
            endcase
        end
    end

    always @(negedge clkbus)
    begin
        case (I2SWordSel)
            0: I2SData <= sampleL[23:23];
            1: I2SData <= sampleR[23:23];
        endcase
        

        if (state == 16-1)
        begin
            I2SWordSel <= !I2SWordSel;
        end
    end
    
endmodule


