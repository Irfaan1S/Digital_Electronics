// Verilog model: Circuit with Boolean expressions
//E = A + BC + B'D   
//F = B'C + BC'D' 

module Circuit_Boolean_CA (E, F, A, B, C, D);
output E, F;
input  A, B, C, D;
assign E =  A || (B && C) || ((!B) && D);            //use bitwise instead of logical operators,they are used for conditional statements : if ,else...
assign F =  ((!B) && C) || (B && (!C) && (!D));
endmodule

//use this 
//assign E = A | (B & C) | (~B & D);
//assign F = (~B & C) | (B & ~C ~D);
