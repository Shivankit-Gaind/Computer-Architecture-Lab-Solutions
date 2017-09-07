`include "bit8_3to1mux.v"

module bit32_3to1mux(out,sel1,sel2,in1,in2,in3);
	input [31:0] in1,in2,in3;
	output [31:0] out;
	input sel1,sel2;
	genvar j;
	
	generate for (j=3; j>=0;j=j-1) 
	begin: mux_loop 
		 bit8_3to1mux m1(out[j*8+7:j*8],sel1,sel2,in1[j*8+7:j*8],in2[j*8+7:j*8],in3[j*8+7:j*8]);		
	end
	endgenerate
endmodule