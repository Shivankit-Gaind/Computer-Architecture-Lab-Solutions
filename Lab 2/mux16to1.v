`include "mux4to1_gate.v"
module mux16to1(out,in,sel);
	input [0:3] sel;
	input [0:15] in;
	output out;
	wire [0:3] m;
	
	not n(n1,sel[0]);
	not nn(n2,sel[1]);
	
	mux4to1_gate mux1(m[0],in[0:3],sel[2:3]);
	mux4to1_gate mux2(m[1],in[4:7],sel[2:3]);
	mux4to1_gate mux3(m[2],in[8:11],sel[2:3]);
	mux4to1_gate mux4(m[3],in[12:15],sel[2:3]);
	
	mux4to1_gate mux5(out,m,sel[0:1]);
endmodule