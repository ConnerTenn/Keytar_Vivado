`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2020 03:32:46 AM
// Design Name: 
// Module Name: FifoTestBench
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



module FifoTestBench;

    reg clock = 0;

        reg fifoReset = 0;
        //== Read Channel ==
        reg fifoRead = 0;
        wire [63:0] dataFromFifo;
        //== Write Channel ==
        reg fifoWrite = 0;
        reg [63:0] dataToFifo = 0;
        //== Status ==
        wire [5:0] fifoFillLevel;
        wire fifoFull;
        wire fifoEmpty;


    DataFIFO #(.DATA_WIDTH(64)) Fifo (
        .Clock(clock), .Reset(fifoReset),
        //== Read Channel ==
        .Read(fifoRead),
        .DataOut(dataFromFifo),
        //== Write Channel ==
        .Write(fifoWrite),
        .DataIn(dataToFifo),
        //== Status ==
        .FifoFillLevel(fifoFillLevel),
        .FifoFull(fifoFull),
        .FifoEmpty(fifoEmpty)
    );

    initial
    begin
        $display("\n\n=== Running Simulation ===\n\n");

        #4

        dataToFifo <= 10;
        fifoRead <= 1;
        fifoWrite <= 1;
        #1

        fifoWrite <= 0;
        #2

        dataToFifo <= 20;
        fifoRead <= 0;
        fifoWrite <= 1;

        #1
        dataToFifo <= 30;

        #1
        fifoRead <= 1;
        fifoWrite <= 0;

        #1

        #1




        $display("\n\n=== Simulation Complete ===\n\n");
        $finish;
    end

    always 
    begin
        #0.5 clock = !clock; //100MHz Clock
    end
endmodule

