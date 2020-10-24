
module VideoBreakout (
    PClock,
    vid_active_video, vid_data,
    vid_field_id,
    vid_hblank, vid_hsync, vid_vblank, vid_vsync,
    Red, Green, Blue,
    HSync, VSync,
    PClk, De
);
    input PClock;

    input vid_active_video;
    input [15:0] vid_data;
    input vid_field_id;
    input vid_hblank, vid_hsync, vid_vblank, vid_vsync;

    output [4:0] Red;
    output [5:0] Green;
    output [4:0] Blue;
    output HSync, VSync;
    output PClk;
    output De;

    //23 22 21 20 19 18 17 16 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
    // -  -  -  R  R  R  R  R  -  -  G  G  G  G  G  G  -  -  -  B  B  B  B  B
    
    //15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
    // R  R  R  R  R  G  G  G  G  G  G  B  B  B  B  B
    
    assign Red = vid_data[15:11];
    assign Green = vid_data[10:5];
    assign Blue = vid_data[4:0];
    assign HSync = vid_hsync;
    assign VSync = vid_vsync;
    assign PClk = PClock;
    assign De = vid_active_video;

endmodule

