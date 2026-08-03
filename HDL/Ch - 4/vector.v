output  [0: 3] D;
wire  [7: 0] SUM;
/*The first statement declares an output vector  D  with four bits, 0 through 3. The second 
declares a wire vector  SUM  with eight bits numbered 7 through 0. ( Note : The first (left
most) number (array index) listed is always the most significant bit of the vector.) The 
individual bits are specified within square brackets, so  D[2]  specifies bit 2 of  D . It is also 
possible to address parts (contiguous bits) of vectors. For example,  SUM[2: 0]  specifies 
the three least significant bits of vector  SUM . */
