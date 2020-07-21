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
    output HSync, VSync;
    output PClk;
    output reg De;

    assign PClk = Clock;


    reg [4:0] red = 0;
    reg [5:0] green = 0;
    reg [4:0] blue = 0;
    wire [10:0] xpos;
    wire [10:0] ypos;

    assign Red = vblank|hblank ? 5'h0 : red;
    assign Green = vblank|hblank ? 6'h0 : green;
    assign Blue = vblank|hblank ? 5'h0 : blue;

    always @(negedge PClk)
    begin
        red <= (xpos>>5);
        green <= (xpos>>9);
        blue <= (ypos>>6);
    end

    reg [10:0] Hcounter = 0;
    reg [10:0] Vcounter = 0;
    reg hblank = 1;
    reg vblank = 1;

    assign xpos = Hcounter-40;
    assign ypos = Vcounter-6;

    always @(negedge PClk)
    begin
        //End of Back Porch
        if (Hcounter == 40-1)
        begin
            De <= 1;
            hblank <= 0;
        end
        //End of Active
        if (Hcounter == 40+1920-1)
        begin
            De <= 0;
            hblank <= 0;
        end

        //End of Back Porch
        if (Vcounter == 6-1)
        begin
            vblank <= 0;
        end
        //End of Active
        if (Hcounter == 6+1080-1)
        begin
            vblank <= 1;
        end


        //Counters
        if (Hcounter == 2000)
        begin
            Hcounter <= Hcounter+1;
            
        end
        else
        begin
            //End of Line
            Hcounter <= 0;

            if (Vcounter < 1111)
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