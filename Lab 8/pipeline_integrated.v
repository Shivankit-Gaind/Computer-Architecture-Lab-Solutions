`include "Parity_Generator.v"
`include "ALU.v"
`include "encoder8_3.v"

module pipeline_integrated();
	
	always@(clk)
	begin
		encoder8_3 encoder(in, encoder_output);			
	end
	
	always@(clk)
	begin
		ALU alu(pipeline_register_A, pipeline_register_B, ALU_output, encoder_output);
	end
	
	always@(clk)
	begin
		Parity_Generator pg(ALU_output, Result);
	end

end module