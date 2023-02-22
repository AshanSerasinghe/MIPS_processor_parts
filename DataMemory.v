module dataMem();
/*
Page 34
There are separate read and write controls, although only one of these may be asserted on 
any given clock. Th e memory unit needs a read signal, since, unlike the register fi le, reading the value of 
an invalid address can cause problems, as we will see in Chapter 5. Th e sign extension unit has a 16-bit 
input that is sign-extended into a 32-bit result appearing on the output (see Chapter 2). We assume the 
data memory is edge-triggered for writes. Standard memory chips actually have a write enable signal that is 
used for writes. 
*/

endmodule