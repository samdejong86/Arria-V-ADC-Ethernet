
module ADC_handler(
	input 	[7:0] 	adcControl,
	input 	[13:0] 	a2da_data,
	input		[13:0]	a2db_data,	
	input 				sys_clk,
	input		[15:0]	SampleNum,
	output	[15:0]	waveSample
);



		
		
reg delay;
reg trigSource;
reg trigSlope;	
reg acquire;		

assign delay = adcControl[3];
assign trigSlope = adcControl[2];
assign trigSource = adcControl[1];
wire acquireRequest;
assign acquireRequest = adcControl[0];



wire [15:0] waveNumber;	
wire [15:0] lastwavenum;
		
always @(posedge sys_clk) begin

	if(acquireRequest==1&&waveNumber!=lastwavenum) begin   //acquire  ('A')
		acquire<=1;
	end	
	else
		acquire<=0;

end	
			

		
	

wire [13:0] DelayVec [100];
wire triggerSelf;
wire triggerExt;
wire trigger;
wire [13:0] waveform [1000];


wire [13:0] delayedSignal;
wire [13:0] triggerLevel;
wire [13:0] trigSourceData;


ADC_Mux	delayMux (
	.data0x ( DelayVec[0] ),
	.data1x ( DelayVec[99] ),
	.sel ( delay ),
	.result ( delayedSignal )
	);
	
ADC_Mux	triggerSlopeMux (
	.data0x ( 14'd7000 ),
	.data1x ( 14'd9400 ),
	.sel ( trigSlope ),
	.result ( triggerLevel )
	);
	
	


	
	

wire running;

assign running = (acquire) ? 1'b0 : sys_clk;

delayVec delayModule(
	.clk(sys_clk),
	.ADC_IN(a2db_data),
	.DelayVec(DelayVec)
);

wire [13:0] triggerBus;

ADC_Mux	triggerSourceMux (
	.data0x (a2da_data),
	.data1x (a2db_data),
	.sel ( trigSource ),
	.result ( triggerBus)
	);



trigger trigModule(
	.clk(sys_clk),
	.ADC_IN(triggerBus), 
	.trigSlope(trigSlope), 
	.trigLevel(triggerLevel), 
	.trigger(trigger)
	);
	

waveformGenerator waveGen(
	.clk(running), 
	.triggerIn(trigger), 
	.signal(delayedSignal), 
	.waveform(waveform), 
	.waveNumber(waveNumber)
	);

	
getSample samplerModule(
	.clk(sys_clk), 
	.sampleNum(SampleNum), 
	.waveform(waveform), 
	.wavenum(waveNumber), 
	.acquire(acquire), 
	.waveSample(waveSample),
	.lastwavenum(lastwavenum)
	);	
	
	


endmodule 