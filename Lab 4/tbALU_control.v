`include "ALU_control.v"
module tbALU_control;
	
	reg [1:0] ALUop;
	reg [5:0] funct_field;
	wire [2:0] operation;
	
	ALU_control alu_control(ALUop,funct_field,operation);
	
	initial
	begin
		$monitor ("ALUop :%b | funct_field :%b | operation: %b",ALUop,funct_field,operation);
	end
	
	
	initial
	begin
		ALUop=2'b00; funct_field=6'bxxxxxx;				
		#100 ALUop=2'b01; funct_field=6'bxxxxxx;
		#100 ALUop=2'b1x; funct_field=6'bxx0000;
		#100 ALUop=2'b1x; funct_field=6'bxx0010;
		#100 ALUop=2'b1x; funct_field=6'bxx0100;
		#100 ALUop=2'b1x; funct_field=6'bxx0101;
		#100 ALUop=2'b1x; funct_field=6'bxx1010;
		
		#200 $finish;
	end
endmodule