module sign_extender(  addr_in, addr_out);
    
    input [15:0] addr_in;
    output reg [31:0] addr_out;

    //16 bit addresses are taken as input and 32 bit addresses are gives as outputs
    //the sign bit is copy 16 times at the begening of the input number
    
    always @(addr_in)
    begin
        // $signed keyword  can also be used in sign extending
        //extended <= $signed(unextended); 
        addr_out[31:0] <= { {16{addr_in[15]}}, addr_in };
    end
    
endmodule