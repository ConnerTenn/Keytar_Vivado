`timescale 1ns / 1ps

module WaveGen(
    Clock,
    Run,
    Increment,
    WaveType,
    Waveform
);
    parameter WAVE_MAX = 24'hFFFFFF;
    parameter WAVE_HIGH = 24'h7FFFFF;
    parameter WAVE_LOW = 24'h800000;
    
    input Clock;
    input Run;
    input signed [23:0] Increment;
    input [1:0] WaveType;
    output signed [23:0] Waveform;

    reg signed [23:0] counter = 0;

    wire signed [23:0] triangleCompHigh = (24'hFFFFFF*1/4);
    wire signed [23:0] triangleCompLow = (24'hFFFFFF*3/4);
    assign Waveform = WaveTypeSelect(1, WaveType, counter, 24'h000000);
    function automatic [23:0] WaveTypeSelect(
        input run,
        input [1:0] wavetype,
        input signed [23:0] cntr,
        input signed [23:0] pulsewidth
    );
        if (run == 0)
        begin
            WaveTypeSelect = 24'sd0;
        end
        else
        begin
            case(wavetype)
                //Raw
                2'b00 : WaveTypeSelect = cntr;
                //Square
                2'b01 : WaveTypeSelect = (cntr>=pulsewidth ? WAVE_HIGH : WAVE_LOW);
                //Triangle
                2'b10 : WaveTypeSelect = (triangleCompLow<=cntr && cntr<=triangleCompHigh ? cntr : WAVE_HIGH-cntr)<<1;
                //Sample
                2'b11 : WaveTypeSelect =  24'sd0; //TODO: Implement
                //Catch all
                default : WaveTypeSelect = 24'sd0;
            endcase
        end
    endfunction

    always @(posedge Clock)
    begin
        if (Run)
        begin
            counter <= counter + Increment;
        end
    end

endmodule
