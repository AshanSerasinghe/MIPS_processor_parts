module ALU(  in_1, in_2, operation_alu, result, flag);
    
    input [31:0] in_1 , in_2 ; 
    input [3:0] operation_alu;
    output reg flag;
    output reg [31:0] result;
    
   
    always @(in_1 , in_2, operation_alu)
    begin
        case(operation_alu)
            4'b0000: 
                result <= in_1 & in_2; // and operaton 
            4'b0001: 
                result <= in_1 | in_2; // or operation
            4'b0010: 
                result <= in_1 + in_2; // add
            4'b0110: 
                result <= in_1 + (~in_2 + 1); // sub
            4'b0111: 
                result <= (in_1 < in_2) ? 32'd1 : 32'd0; //set on less than
            4'b1100: 
                result <= ~(in_1 | in_2); // NOR operaton 
        endcase
    end
    
    // output flag as 0 if the ALU result is zero. otherwise flag will be 1
    always @(result)
    begin
        if(result == 32'd0) flag <= 1'b0;
        else flag <= 1'b1;
    end
endmodule