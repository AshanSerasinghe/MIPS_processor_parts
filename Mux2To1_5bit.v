module MUX_2to1_5bit(  in_1, in_2, select,  out);

    input [4:0] in_1 , in_2;
    input select;
    output [4:0] out;
    
    // assign according to select
    assign out = select ? in_2 : in_1;
    
endmodule