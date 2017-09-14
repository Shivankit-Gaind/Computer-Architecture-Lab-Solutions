`include "bit32_4to1mux.v"
module mux4_1(regData,q1,q2,q3,q4,reg_no);
	input [31:0] q1,q2,q3,q4;
	input [1:0] reg_no;
	output [31:0] regData;
	
	bit32_4to1mux mux(regData,reg_no[1],reg_no[0],q1,q2,q3,q4);

endmodule