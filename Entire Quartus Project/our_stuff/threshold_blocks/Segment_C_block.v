module Segment_C_block (D, out); 
  input [3:0] D;
  output out;

/*
The inputs D3, D2, D1, D0 are reperesented as D[3], D[2], D[1], D[0] respectively.

Boolean operation symbols:
   & = AND   e.g. (A & B)
   | = OR    e.g. (A | B)
   ~ = NOT   e.g. ( ~A)
*/

assign out = (~D[3] & ~D[2] & ~D[1] & ~D[0]) |  
				 (~D[3] & ~D[2] & ~D[1] & D[0]) | 
				 (~D[3] & ~D[2] & D[1] & D[0]) | 
				 (~D[3] & D[2] & ~D[1] & ~D[0]) | 
				 (~D[3] & D[2] & ~D[1] & D[0]) | 
				 (~D[3] & D[2] & D[1] & ~D[0]) | 
				 (~D[3] & D[2] & D[1] & D[0]) | 
				 (D[3] & ~D[2] & ~D[1] & ~D[0]) | 
				 (D[3] & ~D[2] & ~D[1] & D[0]) | 
				 (D[3] & ~D[2] & D[1] & ~D[0]) | 
				 (D[3] & ~D[2] & D[1] & D[0]) | 
				 (D[3] & D[2] & ~D[1] & D[0]) ;

//e.g. (D[0] | ~D[1]) & ~(D[2] | D[3])

endmodule
