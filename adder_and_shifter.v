module Adder_and_leftShifter(  in_1,  in2_shift, out );
    // add two inputs 
    // second input is seding through a 2x left shifter prior to do the adition.
    
    input [31:0] in_1 , in2_shift;
    output [31:0] out;
    
    assign out = in_1 + (in2_shift << 2);

endmodule