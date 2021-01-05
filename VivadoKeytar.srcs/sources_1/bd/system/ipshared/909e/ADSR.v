
module ADSR
(
    Clock,
    Gate,
    Running,
    ADSRstate,
    Attack, Decay, Sustain, Release,
    Envelope
);
    parameter WAVE_MAX = 24'hFFFFFF;

    input Clock;
    input Gate;
    output reg Running = 0;
    output reg [1:0] ADSRstate = 2'b00;
    input [23:0] Attack, Decay, Sustain, Release;
    output reg [23:0] Envelope = 0;

    wire [23:0] step = StepSel(ADSRstate, Attack, Decay, Release);
    function automatic [23:0] StepSel;
        input [1:0] adsrstate;
        input [23:0] attack; input [23:0] decay; input [23:0] releas;
        begin
            case (adsrstate)
                2'b00: begin StepSel = attack; end
                2'b01: begin StepSel = decay;  end
                2'b11: begin StepSel = releas; end
                default: begin StepSel = 0;    end
            endcase
        end
    endfunction

    wire [23:0] nextattackenvolope = Envelope + step;
    wire [23:0] nextdecayenvolope = Envelope - step;
    wire [23:0] nextreleaseenvolope = Envelope - step;

    wire attackcompare = Envelope>=WAVE_MAX-step;
    wire decaycompare = Envelope<=Sustain+step;
    wire releasecompare = Envelope <= 0+step;

    reg gateprev = 0;

    always @(posedge Clock)
    begin
        //Gate Triggered
        if (gateprev==0 && Gate==1)
        begin
            ADSRstate <= 2'b00;
            Running <= 1;
            gateprev <= 1;
        end
        //Gate Released
        else if (gateprev==1 && Gate==0)
        begin
            ADSRstate <= 2'b11;
            gateprev <= 0;
        end
        //Running
        else if (Gate == 1)
        begin
            case (ADSRstate)
            2'b00: //Attack
                // if (Running == 1)
                begin
                    if (attackcompare) //(Envelope>=WAVE_MAX-step)
                    begin
                        ADSRstate <= 2'b01;
                        Envelope <= Attack;
                    end
                    else 
                    begin
                        Envelope <= nextattackenvolope; //envolope+step
                    end
                end
                
            2'b01: //Decay
                begin
                    if (decaycompare) //(Envelope<=Sustain+step)
                    begin
                        ADSRstate <= 2'b10;
                        Envelope <= Decay;
                    end
                    else
                    begin
                        Envelope <= nextdecayenvolope; //envolope-step
                    end
                end
            2'b10: //Sustain
                begin
                    Envelope <= Sustain;
                end
            // 2'b11: //Release
            endcase
        end
        else //Release
        begin
            if (releasecompare) //(Envelope <= 0+step)
            begin
                Running <= 0;
                Envelope <= 0;
            end
            else
            begin
                Envelope <= nextreleaseenvolope; //envolope-step
            end
        end
    end

endmodule