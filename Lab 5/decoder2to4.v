module decoder2to4(x,y,d0,d1,d2,d3);
	input x,y;
	output d0,d1,d2,d3;
	wire x0,y0;
	not n1(x0,x);
	not n2(y0,y);
	
	and a0(d0,x0,y0);
	and a1(d1,x0,y);
	and a2(d2,x,y0);
	and a3(d3,x,y);
	
endmodule