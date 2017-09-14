`include "d_ff.v"
module reg_32bit(q,d,clk,reset); 
	input [31:0] d;
	input reset, clk;
	output [31:0] q;	
	
	genvar j;	
	generate for (j=31; j>=0;j=j-1) 
		begin: loop 
			 d_ff dlipflop(q[j],d[j],clk,reset);
		end
	endgenerate		

endmodule