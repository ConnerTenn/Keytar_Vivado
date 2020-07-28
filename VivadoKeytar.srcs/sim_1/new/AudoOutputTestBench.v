`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 07:50:23 PM
// Design Name: 
// Module Name: AudoOutputTestBench
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


module AudoOutputTestBench;

    reg clock = 0;

    // wire [4:0] red;
    // wire [5:0] green;
    // wire [4:0] blue;

    AudioOutController audio(
        .Clock100MHz(clock),
        .Waveform(24'h80_70F0),
        .I2SClk(), .I2SData(), .I2SWordSel()
    );

    initial
    begin
        $display("\n\n=== Running Simulation ===\n\n");

        #10000

        $display("\n\n=== Simulation Complete ===\n\n");
        $finish;
    end

    always 
    begin
        #0.5 clock = !clock; //100MHz Clock
    end
endmodule
