
`ifndef MATH_V
`define MATH_V

function integer clog2;
    input integer value;
    begin
        value = value-1;
        for (clog2=0; value>0; clog2=clog2+1)
        begin
            value = value>>1;
        end
    end
endfunction

`endif
