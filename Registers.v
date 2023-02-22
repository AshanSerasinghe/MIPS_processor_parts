module RegisterFiles( Read_reg1 ,Read_reg2, Write_reg, Write_data, RegWrite,clock, Read_data1, Read_data2 );
    
     input clock , RegWrite;
     input [4:0] Read_reg1 , Read_reg2 , Write_reg;
     input [31:0] Write_data;
     output reg [31:0] Read_data1 , Read_data2; 
     reg [31:0] Registers[31:0];
    
    
     //initial   Registers <= '{ default: 32'd0 }; <-- only valid in system verilog
     integer i;
     initial for (i=0; i<32; i=i+1) Registers[i] <= 32'd0;
    
    
     // latched at positive edge of the clock
     always @(negedge Read_reg1 or negedge  Read_reg2)
     begin
        Read_data1 <= Registers[Read_reg1];
        Read_data2 <= Registers[Read_reg2];
     end

     always @(posedge clock)
     begin
        if (RegWrite) Registers[Write_reg] <= Write_data; // write if regWrite is 1
     end
  
endmodule