`include "adder_8bit.v"

module adder_32bit(in1,in2,out,cout);
	input [31:0]in1;
	input [31:0]in2;
	output [31:0]out;
	output cout;
	wire [2:0]ca;
	
	adder_8bit a1(ca[0],out[7:0],in1[7:0],in2[7:0],1'b0);
	adder_8bit a2(ca[1],out[15:8],in1[15:8],in2[15:8],ca[0]);
	adder_8bit a3(ca[2],out[23:16],in1[23:16],in2[23:16],ca[1]);
	adder_8bit a4(cout,out[31:24],in1[31:24],in2[31:24],ca[2]);

endmodule

