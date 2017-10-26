module ALU(in_A, in_B, out, select);

	input[3:0] in_A, in_B;
	input[2:0] select;
	
	output[3:0] out;
	assign out = 	( select == 0 )? in_A+in_B : 
					( select == 1 )? in_A-in_B : 
					( select == 2 )? ((in_A)&(~in_B))|((~in_A)&(in_B)) : 
					( select == 3 )? in_A|in_B : ( select == 4 )? in_A&in_B : 
					( select == 5 )? ~(in_A|in_B) : 
					( select == 6 )? ~(in_A&in_B) : 
					~((in_A)&(~in_B))|((~in_A)&(in_B));

endmodule

