`include "dff_async_clear.v"
`include "dff_sync_clear.v"
module Testing;
	reg d, clk, rst;
	wire q;
	dff_sync_clear dff (d, clk, rst, q); // Or dff_async_clear dff (d, clk, rst, q);
	//Always at rising edge of clock display the signals
	always @(posedge clk)
	begin
		$display("d=%b, clk=%b, rst=%b, q=%b\n", d, clk, rst, q);
	end
	//Module to generate clock with period 10 time units
	initial begin
		forever begin
			clk=0;
			#5	clk=1;
			#5	clk=0;
		end
	end
	
	initial begin
		d=0; rst=1;
		#4
		d=1; rst=0;
		#50
		d=1; rst=1;
		#20
		d=0; rst=0;	
	end
	
endmodule