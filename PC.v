/*
module program_counter(clock , PC_next);
input clock;
output PC_next;

reg[31:0] PC_now = -32'd4;
reg[31:0] PC_next;

initial
    begin
        PC_next = PC_now;
    end


always @(posedge clock)
    begin
        PC_next = PC_now + 32'd4;
        PC_now = PC_next;
    end


endmodule
*/

module PC(in_wire, out_wire, clock, reset);
    input in_wire, clock, reset;
    output out_wire;
    
    reg[31:0] PC_val = 32'd0;
    wire[31:0] in_wire , out_wire;
    
    assign  out_wire = PC_val; // if PC_val changed it is assigen to the out_wire
    
    always @(posedge reset)
        begin
            PC_val = 32'd0;
        end

    always @(posedge clock)
        begin
            PC_val = in_wire;
        end

endmodule



module add_4_32bit(addr_in , addr_out);
    input addr_in;
    output addr_out;
    
    wire[31:0] addr_in , addr_out;
    
    
    //assign addr_out = ADD_out;
    assign addr_out = addr_in + 32'd4;
    

        
endmodule

/*
module instructionMem(PC_in1 , content, clock , reset);
    input PC_in1, clock, reset; 
    output content;
    wire[31:0] content, PC_in1, content;
    
    reg[7:0][1023:0] mem ;
    
    
    always @(posedge clock)
        begin
           //content =  mem[PC_in1:PC_in1+32'd4];
        end 
    
  
endmodule
*/

