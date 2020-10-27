
module DataFIFO #
(
    DATA_WIDTH = 16,
    FIFO_DEPTH = 5
)
(
    input Clock,

    //== Read Channel ==
    input Read,
    output reg [DATA_WIDTH-1:0] DataOut,

    //== Write Channel ==
    input Write,
    input [DATA_WIDTH-1:0] DataIn
);

    reg [DATA_WIDTH-1:0] fifoMem [2**FIFO_DEPTH-1:0];

    reg [FIFO_DEPTH-1:0] headI = 0;
    reg [FIFO_DEPTH-1:0] tailI = 0;
    wire [FIFO_DEPTH-1:0] headIincr = (headI+1);
    wire [FIFO_DEPTH-1:0] tailIincr = (tailI+1);

    wire empty = (headI==tailI);
    wire overwrite = (headIincr==tailI);

    always @(posedge Clock)
    begin
        if (Read && Write && empty)
        begin
            //Straight pass through if read and write to head
            DataOut <= DataIn;
        end
        else 
        begin
            if (Read)
            begin
                //Read from fifo
                DataOut <= empty ? 0 : fifoMem[tailI];
            end

            if (Write)
            begin
                //write to fifo
                fifoMem[headI] <= DataIn;
            end
        end
        
        if (Write)
        begin
            //Increment head
            headI <= headIincr;
        end
        if (Read || (Write && overwrite))
        begin
            //Increment Read
            //Also increment if overwrite is occuring
            tailI <= tailIincr;
        end
    end

endmodule