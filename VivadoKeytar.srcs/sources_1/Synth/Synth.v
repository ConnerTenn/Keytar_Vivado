`timescale 1ns / 1ps


module Synth #(
    DEBUG = 0
)
(
    Clock100MHz,
    Waveform,
    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError
);

    `include "Math.v"

    input Clock100MHz;
    output signed [23:0] Waveform;

    input BusClock;
    input [31:0] BusPAddr, BusPWriteData;
    output [31:0] BusPReadData;
    input BusPWrite;
    output BusPReady;
    input BusPEnable, BusPSel;
    output BusPError;

    parameter NUM_CHANNELS = (DEBUG?2:16);

    reg clock1MHz = 0;

    genvar gi;
    for (gi=0; gi<NUM_CHANNELS; gi=gi+1)
    begin:channels
        wire signed [23:0] waveform;
        wire signed [clog2(24'hFFFFFF*NUM_CHANNELS):0] wavesum;

        wire [31:0] buspreaddata;
        wire [31:0] buspreaddata_OR;
        wire buspready, busperror;
        wire buspready_OR, busperror_OR;

        Channel #(.ADDRESS(32'h4000_0000 + 32'h100 * gi)) channel0
        (
            .Clock1MHz(clock1MHz),
            .Waveform(waveform),
            .BusClock(BusClock), .BusPAddr(BusPAddr), .BusPWriteData(BusPWriteData), .BusPReadData(buspreaddata), 
            .BusPWrite(BusPWrite), .BusPReady(buspready), 
            .BusPEnable(BusPEnable), .BusPSel(BusPSel), .BusPError(busperror_OR)
        );

        if (gi == 0)
        begin
            //First wavegen sum is equal to itself; no previous channels
            assign wavesum = waveform;

            assign buspreaddata_OR = buspreaddata;
            assign buspready_OR = buspready;
            assign busperror_OR = busperror;
        end
        else if (gi > 0)
        begin
            //All other channels must add the previous wavegen to itself
            assign wavesum = waveform + channels[gi-1].wavesum;

            assign buspreaddata_OR = buspreaddata | channels[gi-1].buspreaddata;
            assign buspready_OR = buspready | channels[gi-1].buspready;
            assign busperror_OR = busperror | channels[gi-1].busperror;
        end
    end

    //Rescale output
    assign Waveform = (channels[NUM_CHANNELS-1].wavesum >>> (clog2(24'hFFFFFF*NUM_CHANNELS)-23));

    assign BusPReadData = channels[NUM_CHANNELS-1].buspreaddata_OR;
    assign BusPReady = channels[NUM_CHANNELS-1].buspready_OR;
    assign BusPError = channels[NUM_CHANNELS-1].busperror_OR;


    reg [7:0] clkdiv = 0;

    if (!DEBUG)
    begin
        always @(posedge Clock100MHz)
        begin
            if (clkdiv < 100)
            begin
                clkdiv <= clkdiv + 1;
            end
            else
            begin
                clkdiv <= 0;
                clock1MHz <= !clock1MHz;
            end
        end
    end
    else
    begin
        always @(Clock100MHz)
        begin
            clock1MHz <= Clock100MHz;
        end
    end

endmodule


