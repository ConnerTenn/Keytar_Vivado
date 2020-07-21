`timescale 1ns / 1ps


module HDMIController (
    Clock,
    Red, Green, Blue,
    HSync, VSync,
    PClk, De
);
    input Clock;
    output [4:0] Red;
    output [5:0] Green;
    output [4:0] Blue;
    output reg HSync = 1, VSync = 1;
    output PClk;
    output reg De;

    assign PClk = Clock;

    parameter HSYNC = 44;
    parameter LMARGIN = 148;
    parameter XRES = 1920;
    parameter RMARGIN = 88;

    parameter VSYNC = 5;
    parameter TMARGIN = 36;
    parameter YRES = 1080;
    parameter BMARGIN = 4;


    reg [4:0] red = 0;
    reg [5:0] green = 0;
    reg [4:0] blue = 0;
    wire [11:0] xpos;
    wire [11:0] ypos;

    assign Red = vblank|hblank ? 5'h0 : red;
    assign Green = vblank|hblank ? 6'h0 : green;
    assign Blue = vblank|hblank ? 5'h0 : blue;

    always @(negedge PClk)
    begin
        red <= (xpos>>5);
        green <= (xpos>>9);
        blue <= (ypos>>6);
    end

    reg [11:0] Hcounter = 0;
    reg [11:0] Vcounter = 0;
    reg hblank = 1;
    reg vblank = 1;

    assign xpos = Hcounter-HSYNC-LMARGIN;
    assign ypos = Vcounter-VSYNC-TMARGIN;

    always @(negedge PClk)
    begin
        //End of Sync
        if (Hcounter == HSYNC-1)
        begin
            HSync <= 0;
        end
        //End of Back Porch
        if (Hcounter == HSYNC+LMARGIN-1)
        begin
            De <= 1;
            hblank <= 0;
        end
        //End of Active
        if (Hcounter == HSYNC+LMARGIN+XRES-1)
        begin
            De <= 0;
            hblank <= 0;
        end
        //End of Front Porch
        if (Hcounter == HSYNC+LMARGIN+XRES+RMARGIN-1)
        begin
            HSync <= 1;
        end
        
        //End of Sync
        if (Vcounter == VSYNC-1)
        begin
            VSync <= 0;
        end
        //End of Back Porch
        if (Vcounter == VSYNC+TMARGIN-1)
        begin
            vblank <= 0;
        end
        //End of Active
        if (Hcounter == VSYNC+TMARGIN+YRES-1)
        begin
            vblank <= 1;
        end
        //End of Front Porch
        if (Hcounter == VSYNC+TMARGIN+YRES+BMARGIN-1)
        begin
            VSync <= 1;
        end


        //Counters
        if (Hcounter < HSYNC+LMARGIN+XRES+RMARGIN-1)
        begin
            Hcounter <= Hcounter+1;
            
        end
        else
        begin
            //End of Line
            Hcounter <= 0;

            if (Vcounter < VSYNC+TMARGIN+YRES+BMARGIN-1)
            begin
                Vcounter <= Vcounter+1;
            end
            else
            begin
                //End of Frame
                Vcounter <= 0;
            end
        end
    end
    
    
endmodule