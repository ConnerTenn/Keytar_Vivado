
module RegsiterBank # 
(
    parameter BASE_ADDR = 32'hFFFFFFFF
)
(
    input Clock, input ResetN,

    //== Read Channel ==
    input [31:0] ReadAddress,
    output reg [63:0] ReadData,
    input ReadEN,
    //== Write Channel ==
    input [31:0] WriteAddress,
    input [63:0] WriteData,
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
                    BASE_ADDR+8*0: ReadData <= {0,Activate};
                    BASE_ADDR+8*1: ReadData <= {0,FB1Addr};
                    BASE_ADDR+8*2: ReadData <= {0,FB2Addr};
                    BASE_ADDR+8*3: ReadData <= {0,FBSize};
                    BASE_ADDR+8*4: ReadData <= {0,CurrentFB};
                endcase
            end
            if (WriteEN)
            begin
                case (WriteAddress)
                    BASE_ADDR+8*0: Activate <= ReadData[0];
                    BASE_ADDR+8*0: FB1Addr <= ReadData[31:0];
                    BASE_ADDR+8*0: FB2Addr <= ReadData[31:0];
                    BASE_ADDR+8*0: FBSize <= ReadData[31:0];
                    BASE_ADDR+8*4: FBselect <= ReadData[0];
                endcase
            end
        end
    end

endmodule