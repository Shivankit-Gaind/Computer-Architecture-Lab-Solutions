module decoder2_4 (register_data,reg_no);
	input [31:0] register_data;
	input [1:0] reg_no;
	wire [3:0] decoder_output;

	decoder2to4 decoder(reg_no[1],reg_no[0],rdecoder_output[0],decoder_output[1],decoder_output[2],decoder_output[3]);
	
	reg_32bit reg1();
	reg_32bit reg2();
	reg_32bit reg3();
	reg_32bit reg4();
	
endmodule