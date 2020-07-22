`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2020 06:11:18 PM
// Design Name: 
// Module Name: VideoTestBench
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


module VideoTestBench;

    reg clock = 0;

    // wire [4:0] red;
    // wire [5:0] green;
    // wire [4:0] blue;

    HDMIController hdmi(
        .Clock(clock),
        .Red(), .Green(), .Blue(),
        .HSync(), .VSync(),
        .PClk(), .De()
    );

    initial
    begin
        $display("\n\n=== Running Simulation ===\n\n");

        #2475000

        $display("\n\n=== Simulation Complete ===\n\n");
        $finish;
    end

    always 
    begin
        #0.5 clock = !clock; //100MHz Clock
    end
endmodule
