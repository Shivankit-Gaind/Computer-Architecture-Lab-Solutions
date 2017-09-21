module ALU_control(ALUop,funct_field,operation);
	input [1:0] ALUop;
	input [5:0] funct_field;
	
	output [2:0] operation;
	
	assign operation[2] = (ALUop[0]) | (ALUop[1]&funct_field[1]);
	assign operation[1] = (~ALUop[1])|(~funct_field[2]);
	assign operation[0] = (ALUop[1])&(funct_field[3]|funct_field[0]);

endmodule