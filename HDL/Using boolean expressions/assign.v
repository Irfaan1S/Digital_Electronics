module Simple_Circuit_prop_delay(A,B,C,D,E);

input A,B,C;
output D,E;

wire w1;

assign E = ~C;
assign D = (A & B) | ~C;

endmodule
