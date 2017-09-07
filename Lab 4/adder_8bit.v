`include "fadder.v"
module adder_8bit(cout,out,in1,in2,cin);
	input [7:0] in1;
	input [7:0] in2;
	input cin;
	output cout;
	output [7:0] out;
	wire [6:0]ca;
	
	fadder a1(out[0],ca[0],in1[0],in2[0],cin);
	fadder a2(out[1],ca[1],in1[1],in2[1],ca[0]);
	fadder a3(out[2],ca[2],in1[2],in2[2],ca[1]);
	fadder a4(out[3],ca[3],in1[3],in2[3],ca[2]);
	fadder a5(out[4],ca[4],in1[4],in2[4],ca[3]);
	fadder a6(out[5],ca[5],in1[5],in2[5],ca[4]);
	fadder a7(out[6],ca[6],in1[6],in2[6],ca[5]);
	fadder a8(out[7],cout,in1[7],in2[7],ca[6]);
endmodule