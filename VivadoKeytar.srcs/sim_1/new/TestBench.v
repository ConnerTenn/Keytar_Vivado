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
        .BusPWrite(1'b1), .BusPReady(), 
        .BusPEnable(buspenable), .BusPSel(buspsel), .BusPError()
    );


    initial 
    begin
        $display("\n\n=== Running Simulation ===\n\n");

        buspsel <= 1;

        //Channel[0] Increment
        buspaddr <= 32'h4000_0000;
        buspwritedata <= 100_000;
        #1; buspenable <= 1; #1; buspenable <= 0;

        //Channel[0] Increment
        buspaddr <= 32'h4000_0004;
        buspwritedata <= 1;
        #1; buspenable <= 1; #1; buspenable <= 0;

        //Channel[0] Attack
        buspaddr <= 32'h4000_0008;
        buspwritedata <= 50_000;
        #1; buspenable <= 1; #1; buspenable <= 0;
        //Channel[0] Decay
        buspaddr <= 32'h4000_000C;
        buspwritedata <= 100_000;
        #1; buspenable <= 1; #1; buspenable <= 0;
        //Channel[0] Sustain
        buspaddr <= 32'h4000_0010;
        buspwritedata <= 24'hA0_0000;
        #1; buspenable <= 1; #1; buspenable <= 0;
        //Channel[0] Release
        buspaddr <= 32'h4000_0014;
        buspwritedata <= 100_000;
        #1; buspenable <= 1; #1; buspenable <= 0;


        //Channel[1] Increment
        buspaddr <= 32'h4000_0100;
        buspwritedata <= 100_000;
        #1; buspenable <= 1; #1; buspenable <= 0;

        //Channel[1] Attack
        buspaddr <= 32'h4000_0108;
        buspwritedata <= 50_000;
        #1; buspenable <= 1; #1; buspenable <= 0;
        //Channel[1] Decay
        buspaddr <= 32'h4000_010C;
        buspwritedata <= 100_000;
        #1; buspenable <= 1; #1; buspenable <= 0;
        //Channel[1] Sustain
        buspaddr <= 32'h4000_0110;
        buspwritedata <= 24'hA0_0000;
        #1; buspenable <= 1; #1; buspenable <= 0;
        //Channel[1] Release
        buspaddr <= 32'h4000_0114;
        buspwritedata <= 100_000;
        #1; buspenable <= 1; #1; buspenable <= 0;


        //Channel[0] Gate
        buspaddr <= 32'h4000_0018;
        buspwritedata <= 1;
        #1; buspenable <= 1; #1; buspenable <= 0;

        //Channel[1] Gate
        buspaddr <= 32'h4000_0118;
        buspwritedata <= 1;
        #1; buspenable <= 1; #1; buspenable <= 0;

        
        buspsel <= 0;


        #2000

        buspsel <= 1;

        //Channel[0] Gate
        buspaddr <= 32'h4000_0018;
        buspwritedata <= 0;
        #1; buspenable <= 1; #1; buspenable <= 0;

        //Channel[1] Gate
        buspaddr <= 32'h4000_0118;
        buspwritedata <= 0;
        #1; buspenable <= 1; #1; buspenable <= 0;

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
