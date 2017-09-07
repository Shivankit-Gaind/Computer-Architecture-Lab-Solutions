`include "bit8_2to1mux.v"

module bit32_2to1mux(out,sel,in1,in2);
	input [31:0] in1,in2;
	output [31:0] out;
	input sel;
	genvar j;	
	//this is the variable that is be used in the generate 
	generate for (j=3; j>=0;j=j-1) 
	begin: mux_loop 
		 bit8_2to1mux m1(out[j*8+7:j*8],sel,in1[j*8+7:j*8],in2[j*8+7:j*8]);		
	end
	endgenerate
endmodule