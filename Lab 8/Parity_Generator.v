module Parity_Generator(in, out);

	input[3:0] in;
	output out;
	
	assign out1 = (~in[0]&in[1])|(in[0]&~in[1]);
	assign out2 = (~out1&in[2])|(out1&~in[2]);
	assign out = (~out2&in[3])|(out2&~in[3]);
	
endmodule

