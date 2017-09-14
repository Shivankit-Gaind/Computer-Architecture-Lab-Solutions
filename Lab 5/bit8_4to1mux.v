`include "mux4to1.v"

module bit8_4to1mux(out,sel1,sel2,in1,in2,in3,in4);
	input [7:0] in1,in2,in3,in4;
	output [7:0] out;
	input sel1,sel2;
	genvar j;
	//this is the variable that is be used in the generate 
	generate for (j=0; j<8;j=j+1) 
	begin: mux_loop //mux_loop is the name of the loop
		mux4to1 m1(out[j],sel1,sel2,in1[j],in2[j],in3[j],in4[j]);
		//mux3to1 is instantiated every time it is called
	end
	endgenerate
endmodule