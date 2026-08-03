// Gate-level description of four-bit ripple carry adder
// Description of half adder

// module half_adder (S, C, x, y);                 // Verilog 1995 syntax
// output  S, C;
// input   x, y;

module half_adder (output S, C, input x, y);      // Verilog 2001, 2005 syntax

// Instantiate primitive gates
    xor (S, x, y);
    and (C, x, y);

endmodule

// Description of full adder

// module full_adder (S, C, x, y, z);              // Verilog 1995 syntax
// output  S, C;
// input   x, y, z;

module full_adder (output S, C, input x, y, z);

    wire S1, C1, C2;

    // Instantiate half adders
    half_adder HA1 (S1, C1, x, y);
    half_adder HA2 (S, C2, S1, z);
    or G1 (C, C2, C1);

endmodule


// Description of four-bit adder

// module ripple_carry_4_bit_adder (Sum, C4, A, B, C0);   // Verilog 1995 syntax
// output [3:0] Sum;
// output       C4;
// input  [3:0] A, B;
// input        C0;

// Alternative Verilog 2001, 2005 syntax:

module ripple_carry_4_bit_adder (
    output [3:0] Sum,
    output C4,
    input  [3:0] A, B,
    input  C0
);

    wire C1, C2, C3;        // Intermediate carries

    // Instantiate chain of full adders
    full_adder FA0 (Sum[0], C1, A[0], B[0], C0),
               FA1 (Sum[1], C2, A[1], B[1], C1),
               FA2 (Sum[2], C3, A[2], B[2], C2),
               FA3 (Sum[3], C4, A[3], B[3], C3);

endmodule
