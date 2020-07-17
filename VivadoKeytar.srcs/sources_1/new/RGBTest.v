`timescale 1ns / 1ps

module RGBTest(
    Clock,
    RGB
);
    input Clock;
    output reg[2:0] RGB = 3'b011;

    reg[32:0] clockdiv = 0;

    always @(posedge Clock)
    begin
        if (clockdiv==50_000_000-1)
        begin
            case (RGB)
                3'b011: begin RGB <= 3'b101; end
                3'b101: begin RGB <= 3'b110; end
                3'b110: begin RGB <= 3'b011; end
                default: begin RGB <= 3'b011; end
            endcase
            clockdiv <= 0;
        end
        else
        begin
            clockdiv <= clockdiv + 1;
        end
    end

endmodule
