`include "adder_32bit.v"

module test_adder_32bit;
	reg [31:0] in_1;
	reg [31:0] in_2;
	wire [31:0] out_put;
	wire carry_out;
	
	adder_32bit adder(in_1,in_2,out_put,carry_out);
	
	initial
	begin
	$monitor ("in1 :%b | in2 :%b | out :%b | cout :%b",in_1,in_2,out_put,carry_out);
	end
	
	initial
	begin
	
	   in_1= 32'b00000000000000000000000000000001; in_2= 32'b00000000000000000000000000000001;
	#3 in_1= 32'b00000000000000000000000000000001; in_2= 32'b00000000000000000000000000000010;	
	end
	
endmodule