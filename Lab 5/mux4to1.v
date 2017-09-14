module mux4to1(out,sel1,sel2,in1,in2,in3,in4);
	input in1,in2,in3,in4,sel1,sel2;
	output out;
	wire not_sel1,not_sel2,a1,a2,a3,a4;
	not (not_sel1,sel1);
	not (not_sel2,sel2);
	and (a1,not_sel1,not_sel2,in1);
	and (a2,not_sel1,sel2,in2);
	and (a3,sel1,not_sel2,in3);	
	and (a4,sel1,sel2,in4);
	or(out,a1,a2,a3,a4);
endmodule


