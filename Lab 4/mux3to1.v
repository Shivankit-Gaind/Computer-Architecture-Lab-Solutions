module mux3to1(out,sel1,sel2,in1,in2,in3);
	input in1,in2,in3,sel1,sel2;
	output out;
	wire not_sel1,not_sel2,a1,a2,a3;
	not (not_sel1,sel1);
	not (not_sel2,sel2);
	and (a1,not_sel1,not_sel2,in1);
	and (a1,not_sel1,sel2,in2);
	and (a1,sel1,not_sel2,in3);	
	or(out,a1,a2,a3);
endmodule


