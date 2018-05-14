`timescale 1 ns / 100 ps

// Delay testbench

module delay_tb();

	reg CLOCK;
	reg [13:0] ADC;
	wire [13:0] delay[100];
	
	delayVec test1(
		.clk(CLOCK),
		.ADC_IN(ADC),
		.DelayVec(delay)	
	);
	
always
	#12.5 CLOCK= ~CLOCK;
		
		
initial
begin
	$display($time, " << Starting Simulation >> ");
	CLOCK=1'b0;
	ADC=14'd8054;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8062;

	@(posedge CLOCK);		
	#25.0 ADC=14'd8051;
	
	@(posedge CLOCK);	
	#25.0 ADC=14'd8042;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8070;
	
	@(posedge CLOCK);		
	#25.0; ADC=14'd8053;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8050;
		
	@(posedge CLOCK);		
	#25.0 ADC=14'd8055;
	
	@(posedge CLOCK);		
	#25.0; ADC=14'd8072;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8062;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8050;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8072;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8073;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8056;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8051;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8061;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8063;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8078;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8079;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd8067;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd11054;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd13843;
	
	@(posedge CLOCK);		
	#25.0 ADC=14'd11721;
	
	#10		
	$display($time, "<< Simulation Complete >>");
	$stop;
	
end

endmodule

	