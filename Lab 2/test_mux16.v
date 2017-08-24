`include "mux16to1.v"
module test_mux16;
	reg [0:15] in;
	reg [0:3]sel;
	wire out;
	
	mux16to1 mux(out,in,sel);

	initial
	begin
	$monitor("in :%b | sel : %b | out: %b",in,sel,out);
	end
	
	initial
	begin
	
	   in=16'b0100000000000000; sel=4'b0000;
	#3 in=16'b0100000000000000; sel=4'b0001;
	#3 in=16'b0010000000000000; sel=4'b0010;
	#3 in=16'b0001000000000000; sel=4'b0011;
	#3 in=16'b0000100000000000; sel=4'b0100;
	#3 in=16'b0000010000000000; sel=4'b0101;
	#3 in=16'b0000001000000000; sel=4'b0110;
	#3 in=16'b0000000100000000; sel=4'b0111;
	#3 in=16'b0000000010000000; sel=4'b1000;
	#3 in=16'b0000000001000000; sel=4'b1001;
	#3 in=16'b0000000000100000; sel=4'b1010;
	#3 in=16'b0000000000010000; sel=4'b1011;
	#3 in=16'b0000000000001000; sel=4'b1100;
	#3 in=16'b0000000000000100; sel=4'b1101;
	#3 in=16'b0000000000000010; sel=4'b1110;
	#3 in=16'b0000000000000001; sel=4'b1111;
	end
endmodule