
module Synth (
    Clock,
    Buzzer,
    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError
);
    input Clock;
    output Buzzer;

    input BusClock;
    input [31:0] BusPAddr, BusPWriteData;
    output [31:0] BusPReadData;
    input BusPWrite;
    output reg BusPReady;
    input BusPEnable, BusPSel;
    output BusPError;
    

endmodule