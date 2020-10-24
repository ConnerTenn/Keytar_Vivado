
module Breakout (
    s_apb_pclock, s_apb_paddr, s_apb_pwdata, s_apb_prdata, 
    s_apb_pwrite, s_apb_pready, 
    s_apb_penable, s_apb_psel, s_apb_pslverr,

    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError
);
    input s_apb_pclock;
    input [31:0] s_apb_paddr, s_apb_pwdata;
    output [31:0] s_apb_prdata;
    input s_apb_pwrite;
    output s_apb_pready;
    input s_apb_penable, s_apb_psel;
    output s_apb_pslverr;

    output BusClock;
    output [31:0] BusPAddr, BusPWriteData;
    input [31:0] BusPReadData;
    output BusPWrite;
    input BusPReady;
    output BusPEnable, BusPSel;
    input BusPError;
    
    assign BusClock = s_apb_pclock;
    assign BusPAddr = s_apb_paddr;
    assign BusPWriteData = s_apb_pwdata;
    assign s_apb_prdata = BusPReadData;
    assign BusPWrite = s_apb_pwrite;
    assign s_apb_pready = BusPReady;
    assign BusPEnable = s_apb_penable;
    assign BusPSel = s_apb_psel;
    assign s_apb_pslverr = BusPError;

endmodule