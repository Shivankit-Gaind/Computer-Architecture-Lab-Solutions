`include "bit32_2to1mux.v"
`include "bit32_3to1mux.v"
`include "bit32AND.v"
`include "bit32OR.v"
`include "adder_32bit.v"

module ALU(a,b,Binvert,Carryin,Operation,Result,CarryOut);
	input Binvert, Carryin;
	input [1:0] Operation;
	input [31:0] a,b;
	output [31:0] Result;
	output CarryOut;
	wire [31:0] and_output,or_output, add_output;
	wire [31:0] b_final,not_b;
	
	assign not_b = ~b;	
	
	bit32_2to1mux m1(b_final,Binvert,b,not_b);
	bit32AND and_op(and_output, a, b_final);
	bit32OR or_op(or_output, a, b_final);
	adder_32bit add_op(a,b_final,Carryin,add_output,CarryOut);
	
	bit32_3to1mux m2(Result,Operation[1],Operation[0],and_output,or_output,add_output);
	
endmodule