module MUX_2to1_32bit(  in_1, in_2, select,  out);

    input [31:0] in_1 , in_2;
    input select;
    output [31:0] out;
    
    // assign according to select
    assign out = select ? in_2 : in_1;
    
endmodule