
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
                default: begin StepSel = 0;end
            endcase
        end
    endfunction

    wire [23:0] nextenvolope = EnvolopeSel(ADSRstate, Envelope, step);
    function automatic [23:0] EnvolopeSel;
        input [1:0] adsrstate;
        input [23:0] envolope; input [23:0] step;
        begin
            if (adsrstate==2'b00)
            begin
                EnvolopeSel = envolope+step;
            end
            else
            begin
                EnvolopeSel = envolope-step;
            end
        end
    endfunction

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
                    if (Envelope>=WAVE_MAX-step)
                    begin
                        ADSRstate <= 2'b01;
                    end
                    else 
                    begin
                        Envelope <= nextenvolope;//Envelope + step;
                    end
                end
                
            2'b01: //Decay
                begin
                    if (Envelope<=Sustain+step)
                    begin
                        ADSRstate <= 2'b10;
                    end
                    else
                    begin
                        Envelope <= nextenvolope;//Envelope - step;
                    end
                end
            // 2'b10: //Sustain
            // 2'b11: //Release
            endcase
        end
        else //Release
        begin
            if (Envelope <= 0+step)
            begin
                Running <= 0;
                Envelope <= 0;
            end
            else
            begin
                Envelope <= nextenvolope;//Envelope - step;
            end
        end
    end

endmodule