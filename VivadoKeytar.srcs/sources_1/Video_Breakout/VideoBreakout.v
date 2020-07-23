
module VideoBreakout (
    PClock,
    vid_active_video, vid_data,
    vid_field_id,
    vid_hblank, vid_hsync, vid_vblank, vid_vsync,
    Red, Green, Blue,
    HSync, VSync,
    PClk, De,
    FramePTR,
    BusClock, BusPAddr, BusPWriteData, BusPReadData, 
    BusPWrite, BusPReady, 
    BusPEnable, BusPSel, BusPError
);
    parameter ADDRESS = 32'h4010_0000;

    input PClock;

    output reg [5:0] FramePTR = 0;

    input vid_active_video;
    input [31:0] vid_data;
    input vid_field_id;
    input vid_hblank, vid_hsync, vid_vblank, vid_vsync;

    output [4:0] Red;
    output [5:0] Green;
    output [4:0] Blue;
    output HSync, VSync;
    output PClk;
    output De;

    input BusClock;
    input [31:0] BusPAddr, BusPWriteData;
    output reg [31:0] BusPReadData = 0;
    input BusPWrite;
    output reg BusPReady = 0;
    input BusPEnable, BusPSel;
    output BusPError;

    //31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
    // -  -  -  R  R  R  R  R  -  -  G  G  G  G  G  G  -  -  -  B  B  B  B  B  -  -  -  -  -  -  -  -
    assign Red = vid_data[28:24];
    assign Green = vid_data[21:16];
    assign Blue = vid_data[12:8];
    assign HSync = vid_hsync;
    assign VSync = vid_vsync;
    assign PClk = PClock;
    assign De = vid_active_video;


    always @(posedge BusClock)
    begin

        if (BusPSel)
        begin
            if (ADDRESS <= BusPAddr && BusPAddr <= ADDRESS+32'hFF)
            begin
                BusPReady <= 1;
            end
        end

        if (BusPSel && BusPReady && BusPEnable)
        begin
            if (!BusPWrite)
            begin
                //Read
                case (BusPAddr)
                    ADDRESS+4*0: BusPReadData <= {26'h0, FramePTR};
                endcase
            end
            else
            begin
                //Write
                case (BusPAddr)
                    ADDRESS+4*0: FramePTR <= BusPWriteData[5:0];
                endcase
            end

            BusPReady <= 0;
        end
    end

endmodule

