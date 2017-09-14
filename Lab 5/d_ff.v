module d_ff(q,d,clk,reset);
	input d, reset, clk;
	output q;
	reg q;
	always @ (posedge clk)
	begin
		if (!reset) q <= 1'b0;
		else q <= d;
	end
endmodule