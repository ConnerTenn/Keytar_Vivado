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

    integer i;
    initial
    begin
        $display("\n\n=== Running Simulation ===\n\n");

        #4

        dataToFifo <= 10;
        fifoRead <= 1;
        fifoWrite <= 1;
        #1; assert (10 == dataFromFifo) else $display("ERROR: Read 10\n");

        dataToFifo <= 20;
        fifoRead <= 1;
        fifoWrite <= 1;
        #1; assert (20 == dataFromFifo) else $display("ERROR: Read 20\n");

        dataToFifo <= 20;
        fifoRead <= 1;
        fifoWrite <= 0;
        #1; assert (0 == dataFromFifo) else $display("ERROR: Read 0\n");

        #2; assert (0 == dataFromFifo) else $display("ERROR: Read 0\n");

        dataToFifo <= 40;
        fifoRead <= 0;
        fifoWrite <= 1;
        #1

        dataToFifo <= 50;
        fifoRead <= 0;
        fifoWrite <= 1;
        #1

        dataToFifo <= 15;
        fifoRead <= 1;
        fifoWrite <= 0;
        #1; assert (40 == dataFromFifo) else $display("ERROR: Read 40\n");

        #1; assert (50 == dataFromFifo) else $display("ERROR: Read 50\n");

        #1; assert (0 == dataFromFifo) else $display("ERROR: Read 0\n");
        #1; assert (0 == dataFromFifo) else $display("ERROR: Read 0\n");

        #10

        for (i=0; i<50; i=i+1)
        begin
            dataToFifo <= i;
            fifoRead <= 0;
            fifoWrite <= 1;
            #1;
        end

        for (i=0; i<10; i=i+1)
        begin
            dataToFifo <= 0;
            fifoRead <= 1;
            fifoWrite <= 0;
            #1; assert (i == dataFromFifo) else $display("ERROR: Read %d!=%d\n", i, dataFromFifo);
        end

        dataToFifo <= 0;
        fifoRead <= 0;
        fifoWrite <= 0;
        #20;

        for (i=0; i<40; i=i+1)
        begin
            dataToFifo <= i;
            fifoRead <= 1;
            fifoWrite <= 1;
            #1; assert (i+10 == dataFromFifo) else $display("ERROR: Read %d!=%d\n", i+10, dataFromFifo);
        end

        for (i=0; i<40; i=i+1)
        begin
            dataToFifo <= 0;
            fifoRead <= 1;
            fifoWrite <= 0;
            #1; assert (i == dataFromFifo) else $display("ERROR: Read %d!=%d\n", i, dataFromFifo);
        end


        for (i=0; i<63+10; i=i+1)
        begin
            dataToFifo <= i;
            fifoRead <= 0;
            fifoWrite <= 1;
            #1;
        end

        dataToFifo <= 0;
        fifoRead <= 0;
        fifoWrite <= 0;
        #10
        assert (fifoFull) else $display("ERROR: Fifo Should be full\n");

        for (i=0; i<63; i=i+1)
        begin
            dataToFifo <= i;
            fifoRead <= 1;
            fifoWrite <= 0;
            #1; assert (i+10 == dataFromFifo) else $display("ERROR: Read %d!=%d\n", i+10, dataFromFifo);
        end


        $display("\n\n=== Simulation Complete ===\n\n");
        $finish;
    end

    always 
    begin
        #0.5 clock = !clock; //100MHz Clock
    end
endmodule

