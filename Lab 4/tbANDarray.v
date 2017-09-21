`include "ANDarray.v"
module tbANDarray;
	
	wire RegDst,ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite,Branch,ALUOp0,ALUOp1;
	reg [5:0] op;	
	
	ANDarray pla_array(RegDst,ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite,Branch,ALUOp0,ALUOp1,op);
	
	initial
	begin
		$monitor ("op :%b | RegDst :%b | ALUSrc: %b | MemtoReg: %b | RegWrite: %b | MemRead: %b | MemWrite: %b | Branch: %b | ALUOp0: %b | ALUOp1: %b",op,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,ALUOp0,ALUOp1);
	end
	
	
	initial
	begin
		op = 6'b000000;
		#100 op = 6'b100011;
		#100 op = 6'b101011;
		#100 op = 6'b000100;
		#200 $finish;
	end
endmodule