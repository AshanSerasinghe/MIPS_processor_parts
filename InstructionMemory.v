module instructionMem(reset , addr_in, instruc_out);

    input reset;
    input [31:0] addr_in;
    output reg [31:0] instruc_out;
    
    reg[7:0] mem [4096:0]; // (4*1024) x 1 byte registers
    
    // concatinate nearby registers and output
    always @(addr_in)
        instruc_out =  {mem[addr_in+4] , mem[addr_in+3] , mem[addr_in+2] , mem[addr_in]};
       
endmodule