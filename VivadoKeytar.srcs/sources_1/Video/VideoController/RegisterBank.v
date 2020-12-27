
module RegsiterBank # 
(
    parameter BASE_ADDR = 32'h00000000
)
(
    input Clock, input ResetN,

    //== Read Channel ==
    input [31:0] ReadAddress,
    output reg [31:0] ReadData = 32'h00000000,
    input ReadEN,
    //== Write Channel ==
    input [31:0] WriteAddress,
    input [31:0] WriteData,
    input WriteEN,

    //== Registers ==
    output reg Activate = 0,
    output reg [31:0] FB1Addr = 0, output reg [31:0] FB2Addr = 0,
    output reg [31:0] FBSize = 0,
    output reg FBselect = 0, input CurrentFB
);

    always @(posedge Clock)
    begin
        if (ResetN==0)
        begin
            Activate <= 0;
            FB1Addr <= 0; FB2Addr <= 0;
            FBSize <= 0;
            FBselect <= 0;
        end
        else 
        begin
            if (ReadEN)
            begin
                case (ReadAddress)
                    BASE_ADDR+4*0: ReadData <= {{31{1'b0}},Activate};
                    BASE_ADDR+4*1: ReadData <= FB1Addr;
                    BASE_ADDR+4*2: ReadData <= FB2Addr;
                    BASE_ADDR+4*3: ReadData <= FBSize;
                    BASE_ADDR+4*4: ReadData <= {{31{1'b0}},CurrentFB};
                    default: ReadData <= 32'h00000000;
                endcase
            end
            if (WriteEN)
            begin
                case (WriteAddress)
                    BASE_ADDR+4*0: Activate <= WriteData[0];
                    BASE_ADDR+4*1: FB1Addr <= WriteData;
                    BASE_ADDR+4*2: FB2Addr <= WriteData;
                    BASE_ADDR+4*3: FBSize <= WriteData;
                    BASE_ADDR+4*4: FBselect <= WriteData[0];
                    default:;
                endcase
            end
        end
    end

endmodule