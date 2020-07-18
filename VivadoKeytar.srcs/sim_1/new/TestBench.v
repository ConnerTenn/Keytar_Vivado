`timescale 1us / 100ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2020 02:20:40 AM
// Design Name: 
// Module Name: BuzzerTestBench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TestBench;


    reg clock1MHz = 1;

    wire signed [23:0] waveform;

    reg [31:0] buspaddr = 32'h0000_0000;
    reg [31:0] buspwritedata = 32'h0000_0000;
    reg buspsel = 0, buspenable = 0;

    Synth #(.DEBUG(1)) synth (
        .Clock100MHz(clock1MHz), //100MHz divider is bypased in debug mode
        .Waveform(waveform),
        .BusClock(clock1MHz), .BusPAddr(buspaddr), .BusPWriteData(buspwritedata), .BusPReadData(), 
        .BusPWrite(1), .BusPReady(), 
        .BusPEnable(buspenable), .BusPSel(buspsel), .BusPError()
    );


    initial 
    begin
        $display("\n\n=== Running Simulation ===\n\n");
        buspaddr <= 32'h4000_0000;
        buspwritedata <= 100_000;
        buspsel <= 1;

        #1
        buspenable <= 1;
        #1
        buspenable <= 0;
        buspaddr <= 32'h4000_0100;
        buspwritedata <= 100_000;
        #1
        buspenable <= 1;
        #1
        buspenable <= 0;
        buspsel <= 0;


        #200;

        $display("\n\n=== Simulation Complete ===\n\n");

        $finish;
    end

    always @(waveform)
    begin
        $display("%d", waveform);
    end
    
    always 
    begin
        #0.5 clock1MHz = !clock1MHz; //100MHz Clock
    end
    
endmodule
