`timescale 1 ns / 100 ps

module ADC_testbench();

reg CLOCK;

reg delay;
reg trigSlope;	
reg acquire;	
reg acquireRequest;	
reg [13:0] ADC;
reg [13:0] triggerLevel;

wire running;

assign running = (acquire) ? 1'b0 : CLOCK;

wire trigger;

wire [15:0] waveNumber;	
reg [15:0] lastwavenum;
wire [13:0] DelayVec[100];

wire [13:0] waveform [1000];


wire [13:0] delayedSignal;
wire [13:0] trigSourceData;

delayVec delayModule_tb(
	.clk(CLOCK),
	.ADC_IN(ADC),
	.DelayVec(DelayVec)
);

assign delayedSignal=DelayVec[0];

always @(posedge CLOCK) begin

	if(acquireRequest==1&&waveNumber!=lastwavenum) begin   //acquire  ('A')
		acquire<=1;
	end	
	else
		acquire<=0;

end	



wire [13:0] out;
wire [13:0] lastVal;
wire [13:0] count;

trigger trigModule_tb(
	.clk(CLOCK),
	.ADC_IN(ADC), 
	.trigSlope(trigSlope), 
	.trigLevel(triggerLevel), 
	.trigger(trigger),
	.outPulse(out),
	.lastVal(lastVal), 
	.trigCount(count)
	);
	

waveformGenerator waveGen_tb(
	.clk(running), 
	.triggerIn(trigger), 
	.signal(delayedSignal), 
	.waveform(waveform), 
	.waveNumber(waveNumber)
	);
	
	
	
always
	#12.5 CLOCK= ~CLOCK;


		
		
initial
begin

	$display($time, " << Starting Simulation >> ");
	CLOCK=1'b0;
	ADC=14'd8054;
	delay=1'b0;
	acquireRequest=1'b0;
	acquire=1'b0;
	trigSlope=1'b1;
	triggerLevel=14'd9400;
	
	@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8073;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8078;
 
@(posedge CLOCK);
#25 ADC=14'd8079;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd11054;
 
@(posedge CLOCK);
#25 ADC=14'd13843;
 
@(posedge CLOCK);
#25 ADC=14'd11721;
 
@(posedge CLOCK);
#25 ADC=14'd9367;
 
@(posedge CLOCK);
#25 ADC=14'd8148;
 
@(posedge CLOCK);
#25 ADC=14'd7690;
 
@(posedge CLOCK);
#25 ADC=14'd7545;
 
@(posedge CLOCK);
#25 ADC=14'd7456;
 
@(posedge CLOCK);
#25 ADC=14'd7443;
 
@(posedge CLOCK);
#25 ADC=14'd7439;
 
@(posedge CLOCK);
#25 ADC=14'd7477;
 
@(posedge CLOCK);
#25 ADC=14'd7495;
 
@(posedge CLOCK);
#25 ADC=14'd7518;
 
@(posedge CLOCK);
#25 ADC=14'd7561;
 
@(posedge CLOCK);
#25 ADC=14'd7591;
 
@(posedge CLOCK);
#25 ADC=14'd7636;
 
@(posedge CLOCK);
#25 ADC=14'd7655;
 
@(posedge CLOCK);
#25 ADC=14'd7652;
 
@(posedge CLOCK);
#25 ADC=14'd7700;
 
@(posedge CLOCK);
#25 ADC=14'd7711;
 
@(posedge CLOCK);
#25 ADC=14'd7727;
 
@(posedge CLOCK);
#25 ADC=14'd7749;
 
@(posedge CLOCK);
#25 ADC=14'd7770;
 
@(posedge CLOCK);
#25 ADC=14'd7799;
 
@(posedge CLOCK);
#25 ADC=14'd7780;
 
@(posedge CLOCK);
#25 ADC=14'd7812;
 
@(posedge CLOCK);
#25 ADC=14'd7828;
 
@(posedge CLOCK);
#25 ADC=14'd7841;
 
@(posedge CLOCK);
#25 ADC=14'd7848;
 
@(posedge CLOCK);
#25 ADC=14'd7872;
 
@(posedge CLOCK);
#25 ADC=14'd7887;
 
@(posedge CLOCK);
#25 ADC=14'd7894;
 
@(posedge CLOCK);
#25 ADC=14'd7916;
 
@(posedge CLOCK);
#25 ADC=14'd7919;
 
@(posedge CLOCK);
#25 ADC=14'd7931;
 
@(posedge CLOCK);
#25 ADC=14'd7945;
 
@(posedge CLOCK);
#25 ADC=14'd7959;
 
@(posedge CLOCK);
#25 ADC=14'd7948;
 
@(posedge CLOCK);
#25 ADC=14'd8003;
 
@(posedge CLOCK);
#25 ADC=14'd7998;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8020;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8037;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8076;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8045;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd11004;
 
@(posedge CLOCK);
#25 ADC=14'd13837;
 
@(posedge CLOCK);
#25 ADC=14'd11735;
 
@(posedge CLOCK);
#25 ADC=14'd9374;
 
@(posedge CLOCK);
#25 ADC=14'd8150;
 
@(posedge CLOCK);
#25 ADC=14'd7696;
 
@(posedge CLOCK);
#25 ADC=14'd7544;
 
@(posedge CLOCK);
#25 ADC=14'd7464;
 
@(posedge CLOCK);
#25 ADC=14'd7439;
 
@(posedge CLOCK);
#25 ADC=14'd7438;
 
@(posedge CLOCK);
#25 ADC=14'd7464;
 
@(posedge CLOCK);
#25 ADC=14'd7502;
 
@(posedge CLOCK);
#25 ADC=14'd7523;
 
@(posedge CLOCK);
#25 ADC=14'd7567;
 
@(posedge CLOCK);
#25 ADC=14'd7596;
 
@(posedge CLOCK);
#25 ADC=14'd7618;
 
@(posedge CLOCK);
#25 ADC=14'd7652;
 
@(posedge CLOCK);
#25 ADC=14'd7662;
 
@(posedge CLOCK);
#25 ADC=14'd7692;
 
@(posedge CLOCK);
#25 ADC=14'd7702;
 
@(posedge CLOCK);
#25 ADC=14'd7742;
 
@(posedge CLOCK);
#25 ADC=14'd7741;
 
@(posedge CLOCK);
#25 ADC=14'd7787;
 
@(posedge CLOCK);
#25 ADC=14'd7788;
 
@(posedge CLOCK);
#25 ADC=14'd7803;
 
@(posedge CLOCK);
#25 ADC=14'd7834;
 
@(posedge CLOCK);
#25 ADC=14'd7835;
 
@(posedge CLOCK);
#25 ADC=14'd7844;
 
@(posedge CLOCK);
#25 ADC=14'd7844;
 
@(posedge CLOCK);
#25 ADC=14'd7867;
 
@(posedge CLOCK);
#25 ADC=14'd7885;
 
@(posedge CLOCK);
#25 ADC=14'd7895;
 
@(posedge CLOCK);
#25 ADC=14'd7901;
 
@(posedge CLOCK);
#25 ADC=14'd7924;
 
@(posedge CLOCK);
#25 ADC=14'd7926;
 
@(posedge CLOCK);
#25 ADC=14'd7944;
 
@(posedge CLOCK);
#25 ADC=14'd7962;
 
@(posedge CLOCK);
#25 ADC=14'd7951;
 
@(posedge CLOCK);
#25 ADC=14'd7982;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8078;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8045;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd10974;
 
@(posedge CLOCK);
#25 ADC=14'd13831;
 
@(posedge CLOCK);
#25 ADC=14'd11733;
 
@(posedge CLOCK);
#25 ADC=14'd9370;
 
@(posedge CLOCK);
#25 ADC=14'd8157;
 
@(posedge CLOCK);
#25 ADC=14'd7699;
 
@(posedge CLOCK);
#25 ADC=14'd7531;
 
@(posedge CLOCK);
#25 ADC=14'd7472;
 
@(posedge CLOCK);
#25 ADC=14'd7440;
 
@(posedge CLOCK);
#25 ADC=14'd7463;
 
@(posedge CLOCK);
#25 ADC=14'd7471;
 
@(posedge CLOCK);
#25 ADC=14'd7496;
 
@(posedge CLOCK);
#25 ADC=14'd7539;
 
@(posedge CLOCK);
#25 ADC=14'd7547;
 
@(posedge CLOCK);
#25 ADC=14'd7573;
 
@(posedge CLOCK);
#25 ADC=14'd7619;
 
@(posedge CLOCK);
#25 ADC=14'd7648;
 
@(posedge CLOCK);
#25 ADC=14'd7679;
 
@(posedge CLOCK);
#25 ADC=14'd7686;
 
@(posedge CLOCK);
#25 ADC=14'd7722;
 
@(posedge CLOCK);
#25 ADC=14'd7735;
 
@(posedge CLOCK);
#25 ADC=14'd7745;
 
@(posedge CLOCK);
#25 ADC=14'd7787;
 
@(posedge CLOCK);
#25 ADC=14'd7785;
 
@(posedge CLOCK);
#25 ADC=14'd7797;
 
@(posedge CLOCK);
#25 ADC=14'd7818;
 
@(posedge CLOCK);
#25 ADC=14'd7827;
 
@(posedge CLOCK);
#25 ADC=14'd7832;
 
@(posedge CLOCK);
#25 ADC=14'd7864;
 
@(posedge CLOCK);
#25 ADC=14'd7866;
 
@(posedge CLOCK);
#25 ADC=14'd7875;
 
@(posedge CLOCK);
#25 ADC=14'd7899;
 
@(posedge CLOCK);
#25 ADC=14'd7897;
 
@(posedge CLOCK);
#25 ADC=14'd7917;
 
@(posedge CLOCK);
#25 ADC=14'd7934;
 
@(posedge CLOCK);
#25 ADC=14'd7957;
 
@(posedge CLOCK);
#25 ADC=14'd7961;
 
@(posedge CLOCK);
#25 ADC=14'd7980;

@(posedge CLOCK);
#25 ADC=14'd7984;
 
@(posedge CLOCK);
#25 ADC=14'd7992;
 
@(posedge CLOCK);
#25 ADC=14'd8016;
 
@(posedge CLOCK);
#25 ADC=14'd8023;
 
@(posedge CLOCK);
#25 ADC=14'd8039;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8034;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8045;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8047;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8030;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8080;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8079;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd10954;
 
@(posedge CLOCK);
#25 ADC=14'd13841;
 
@(posedge CLOCK);
#25 ADC=14'd11766;
 
@(posedge CLOCK);
#25 ADC=14'd9394;
 
@(posedge CLOCK);
#25 ADC=14'd8154;
 
@(posedge CLOCK);
#25 ADC=14'd7696;
 
@(posedge CLOCK);
#25 ADC=14'd7547;
 
@(posedge CLOCK);
#25 ADC=14'd7448;
 
@(posedge CLOCK);
#25 ADC=14'd7427;
 
@(posedge CLOCK);
#25 ADC=14'd7446;

@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8073;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8078;
 
@(posedge CLOCK);
#25 ADC=14'd8079;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd11054;
 
@(posedge CLOCK);
#25 ADC=14'd13843;
 
@(posedge CLOCK);
#25 ADC=14'd11721;
 
@(posedge CLOCK);
#25 ADC=14'd9367;
 
@(posedge CLOCK);
#25 ADC=14'd8148;
 
@(posedge CLOCK);
#25 ADC=14'd7690;
 
@(posedge CLOCK);
#25 ADC=14'd7545;
 
@(posedge CLOCK);
#25 ADC=14'd7456;
 
@(posedge CLOCK);
#25 ADC=14'd7443;
 
@(posedge CLOCK);
#25 ADC=14'd7439;
 
@(posedge CLOCK);
#25 ADC=14'd7477;
 
@(posedge CLOCK);
#25 ADC=14'd7495;
 
@(posedge CLOCK);
#25 ADC=14'd7518;
 
@(posedge CLOCK);
#25 ADC=14'd7561;
 
@(posedge CLOCK);
#25 ADC=14'd7591;
 
@(posedge CLOCK);
#25 ADC=14'd7636;
 
@(posedge CLOCK);
#25 ADC=14'd7655;
 
@(posedge CLOCK);
#25 ADC=14'd7652;
 
@(posedge CLOCK);
#25 ADC=14'd7700;
 
@(posedge CLOCK);
#25 ADC=14'd7711;
 
@(posedge CLOCK);
#25 ADC=14'd7727;
 
@(posedge CLOCK);
#25 ADC=14'd7749;
 
@(posedge CLOCK);
#25 ADC=14'd7770;
 
@(posedge CLOCK);
#25 ADC=14'd7799;
 
@(posedge CLOCK);
#25 ADC=14'd7780;
 
@(posedge CLOCK);
#25 ADC=14'd7812;
 
@(posedge CLOCK);
#25 ADC=14'd7828;
 
@(posedge CLOCK);
#25 ADC=14'd7841;
 
@(posedge CLOCK);
#25 ADC=14'd7848;
 
@(posedge CLOCK);
#25 ADC=14'd7872;
 
@(posedge CLOCK);
#25 ADC=14'd7887;
 
@(posedge CLOCK);
#25 ADC=14'd7894;
 
@(posedge CLOCK);
#25 ADC=14'd7916;
 
@(posedge CLOCK);
#25 ADC=14'd7919;
 
@(posedge CLOCK);
#25 ADC=14'd7931;
 
@(posedge CLOCK);
#25 ADC=14'd7945;
 
@(posedge CLOCK);
#25 ADC=14'd7959;
 
@(posedge CLOCK);
#25 ADC=14'd7948;
 
@(posedge CLOCK);
#25 ADC=14'd8003;
 
@(posedge CLOCK);
#25 ADC=14'd7998;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8020;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8037;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8076;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8045;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd11004;
 
@(posedge CLOCK);
#25 ADC=14'd13837;
 
@(posedge CLOCK);
#25 ADC=14'd11735;
 
@(posedge CLOCK);
#25 ADC=14'd9374;
 
@(posedge CLOCK);
#25 ADC=14'd8150;
 
@(posedge CLOCK);
#25 ADC=14'd7696;
 
@(posedge CLOCK);
#25 ADC=14'd7544;
 
@(posedge CLOCK);
#25 ADC=14'd7464;
 
@(posedge CLOCK);
#25 ADC=14'd7439;
 
@(posedge CLOCK);
#25 ADC=14'd7438;
 
@(posedge CLOCK);
#25 ADC=14'd7464;
 
@(posedge CLOCK);
#25 ADC=14'd7502;
 
@(posedge CLOCK);
#25 ADC=14'd7523;
 
@(posedge CLOCK);
#25 ADC=14'd7567;
 
@(posedge CLOCK);
#25 ADC=14'd7596;
 
@(posedge CLOCK);
#25 ADC=14'd7618;
 
@(posedge CLOCK);
#25 ADC=14'd7652;
 
@(posedge CLOCK);
#25 ADC=14'd7662;
 
@(posedge CLOCK);
#25 ADC=14'd7692;
 
@(posedge CLOCK);
#25 ADC=14'd7702;
 
@(posedge CLOCK);
#25 ADC=14'd7742;
 
@(posedge CLOCK);
#25 ADC=14'd7741;
 
@(posedge CLOCK);
#25 ADC=14'd7787;
 
@(posedge CLOCK);
#25 ADC=14'd7788;
 
@(posedge CLOCK);
#25 ADC=14'd7803;
 
@(posedge CLOCK);
#25 ADC=14'd7834;
 
@(posedge CLOCK);
#25 ADC=14'd7835;
 
@(posedge CLOCK);
#25 ADC=14'd7844;
 
@(posedge CLOCK);
#25 ADC=14'd7844;
 
@(posedge CLOCK);
#25 ADC=14'd7867;
 
@(posedge CLOCK);
#25 ADC=14'd7885;
 
@(posedge CLOCK);
#25 ADC=14'd7895;
 
@(posedge CLOCK);
#25 ADC=14'd7901;
 
@(posedge CLOCK);
#25 ADC=14'd7924;
 
@(posedge CLOCK);
#25 ADC=14'd7926;
 
@(posedge CLOCK);
#25 ADC=14'd7944;
 
@(posedge CLOCK);
#25 ADC=14'd7962;
 
@(posedge CLOCK);
#25 ADC=14'd7951;
 
@(posedge CLOCK);
#25 ADC=14'd7982;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8078;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8045;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd10974;
 
@(posedge CLOCK);
#25 ADC=14'd13831;
 
@(posedge CLOCK);
#25 ADC=14'd11733;
 
@(posedge CLOCK);
#25 ADC=14'd9370;
 
@(posedge CLOCK);
#25 ADC=14'd8157;
 
@(posedge CLOCK);
#25 ADC=14'd7699;
 
@(posedge CLOCK);
#25 ADC=14'd7531;
 
@(posedge CLOCK);
#25 ADC=14'd7472;
 
@(posedge CLOCK);
#25 ADC=14'd7440;
 
@(posedge CLOCK);
#25 ADC=14'd7463;
 
@(posedge CLOCK);
#25 ADC=14'd7471;
 
@(posedge CLOCK);
#25 ADC=14'd7496;
 
@(posedge CLOCK);
#25 ADC=14'd7539;
 
@(posedge CLOCK);
#25 ADC=14'd7547;
 
@(posedge CLOCK);
#25 ADC=14'd7573;
 
@(posedge CLOCK);
#25 ADC=14'd7619;
 
@(posedge CLOCK);
#25 ADC=14'd7648;
 
@(posedge CLOCK);
#25 ADC=14'd7679;
 
@(posedge CLOCK);
#25 ADC=14'd7686;
 
@(posedge CLOCK);
#25 ADC=14'd7722;
 
@(posedge CLOCK);
#25 ADC=14'd7735;
 
@(posedge CLOCK);
#25 ADC=14'd7745;
 
@(posedge CLOCK);
#25 ADC=14'd7787;
 
@(posedge CLOCK);
#25 ADC=14'd7785;
 
@(posedge CLOCK);
#25 ADC=14'd7797;
 
@(posedge CLOCK);
#25 ADC=14'd7818;
 
@(posedge CLOCK);
#25 ADC=14'd7827;
 
@(posedge CLOCK);
#25 ADC=14'd7832;
 
@(posedge CLOCK);
#25 ADC=14'd7864;
 
@(posedge CLOCK);
#25 ADC=14'd7866;
 
@(posedge CLOCK);
#25 ADC=14'd7875;
 
@(posedge CLOCK);
#25 ADC=14'd7899;
 
@(posedge CLOCK);
#25 ADC=14'd7897;
 
@(posedge CLOCK);
#25 ADC=14'd7917;
 
@(posedge CLOCK);
#25 ADC=14'd7934;
 
@(posedge CLOCK);
#25 ADC=14'd7957;
 
@(posedge CLOCK);
#25 ADC=14'd7961;
 
@(posedge CLOCK);
#25 ADC=14'd7980;
 
@(posedge CLOCK);
#25 ADC=14'd7984;
 
@(posedge CLOCK);
#25 ADC=14'd7992;
 
@(posedge CLOCK);
#25 ADC=14'd8016;
 
@(posedge CLOCK);
#25 ADC=14'd8023;
 
@(posedge CLOCK);
#25 ADC=14'd8039;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8034;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8045;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8047;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8030;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8080;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8079;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd10954;
 
@(posedge CLOCK);
#25 ADC=14'd13841;
 
@(posedge CLOCK);
#25 ADC=14'd11766;
 
@(posedge CLOCK);
#25 ADC=14'd9394;
 
@(posedge CLOCK);
#25 ADC=14'd8154;
 
@(posedge CLOCK);
#25 ADC=14'd7696;
 
@(posedge CLOCK);
#25 ADC=14'd7547;
 
@(posedge CLOCK);
#25 ADC=14'd7448;
 
@(posedge CLOCK);
#25 ADC=14'd7427;
 
@(posedge CLOCK);
#25 ADC=14'd7446;
 
@(posedge CLOCK);
#25 ADC=14'd7470;
 
@(posedge CLOCK);
#25 ADC=14'd7504;
 
@(posedge CLOCK);
#25 ADC=14'd7526;
 
@(posedge CLOCK);
#25 ADC=14'd7567;
 
@(posedge CLOCK);
#25 ADC=14'd7596;
 
@(posedge CLOCK);
#25 ADC=14'd7606;
 
@(posedge CLOCK);
#25 ADC=14'd7655;
 
@(posedge CLOCK);
#25 ADC=14'd7665;
 
@(posedge CLOCK);
#25 ADC=14'd7702;
 
@(posedge CLOCK);
#25 ADC=14'd7722;
 
@(posedge CLOCK);
#25 ADC=14'd7730;
 
@(posedge CLOCK);
#25 ADC=14'd7752;
 
@(posedge CLOCK);
#25 ADC=14'd7782;
 
@(posedge CLOCK);
#25 ADC=14'd7777;
 
@(posedge CLOCK);
#25 ADC=14'd7807;
 
@(posedge CLOCK);
#25 ADC=14'd7808;
 
@(posedge CLOCK);
#25 ADC=14'd7839;
 
@(posedge CLOCK);
#25 ADC=14'd7833;
 
@(posedge CLOCK);
#25 ADC=14'd7857;
 
@(posedge CLOCK);
#25 ADC=14'd7862;
 
@(posedge CLOCK);
#25 ADC=14'd7866;
 
@(posedge CLOCK);
#25 ADC=14'd7895;
 
@(posedge CLOCK);
#25 ADC=14'd7909;
 
@(posedge CLOCK);
#25 ADC=14'd7923;
 
@(posedge CLOCK);
#25 ADC=14'd7930;
 
@(posedge CLOCK);
#25 ADC=14'd7942;
 
@(posedge CLOCK);
#25 ADC=14'd7954;
 
@(posedge CLOCK);
#25 ADC=14'd7974;
 
@(posedge CLOCK);
#25 ADC=14'd7979;
 
@(posedge CLOCK);
#25 ADC=14'd7998;
 
@(posedge CLOCK);
#25 ADC=14'd7987;
 
@(posedge CLOCK);
#25 ADC=14'd8016;
 
@(posedge CLOCK);
#25 ADC=14'd8035;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8068;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8071;
 
@(posedge CLOCK);
#25 ADC=14'd10900;
 
@(posedge CLOCK);
#25 ADC=14'd13824;
 
@(posedge CLOCK);
#25 ADC=14'd11793;
 
@(posedge CLOCK);
#25 ADC=14'd9403;
 
@(posedge CLOCK);
#25 ADC=14'd8164;
 
@(posedge CLOCK);
#25 ADC=14'd7694;
 
@(posedge CLOCK);
#25 ADC=14'd7544;
 
@(posedge CLOCK);
#25 ADC=14'd7474;
 
@(posedge CLOCK);
#25 ADC=14'd7429;
 
@(posedge CLOCK);
#25 ADC=14'd7436;
 
@(posedge CLOCK);
#25 ADC=14'd7493;
 
@(posedge CLOCK);
#25 ADC=14'd7509;
 
@(posedge CLOCK);
#25 ADC=14'd7540;
 
@(posedge CLOCK);
#25 ADC=14'd7549;
 
@(posedge CLOCK);
#25 ADC=14'd7585;
 
@(posedge CLOCK);
#25 ADC=14'd7613;
 
@(posedge CLOCK);
#25 ADC=14'd7648;
 
@(posedge CLOCK);
#25 ADC=14'd7665;
 
@(posedge CLOCK);
#25 ADC=14'd7695;
 
@(posedge CLOCK);
#25 ADC=14'd7713;
 
@(posedge CLOCK);
#25 ADC=14'd7730;
 
@(posedge CLOCK);
#25 ADC=14'd7746;
 
@(posedge CLOCK);
#25 ADC=14'd7769;
 
@(posedge CLOCK);
#25 ADC=14'd7781;
 
@(posedge CLOCK);
#25 ADC=14'd7812;
 
@(posedge CLOCK);
#25 ADC=14'd7814;
 
@(posedge CLOCK);
#25 ADC=14'd7824;
 
@(posedge CLOCK);
#25 ADC=14'd7840;
 
@(posedge CLOCK);
#25 ADC=14'd7847;
 
@(posedge CLOCK);
#25 ADC=14'd7875;
 
@(posedge CLOCK);
#25 ADC=14'd7876;
 
@(posedge CLOCK);
#25 ADC=14'd7887;
 
@(posedge CLOCK);
#25 ADC=14'd7897;
 
@(posedge CLOCK);
#25 ADC=14'd7909;
 
@(posedge CLOCK);
#25 ADC=14'd7946;
 
@(posedge CLOCK);
#25 ADC=14'd7946;
 
@(posedge CLOCK);
#25 ADC=14'd7965;
 
@(posedge CLOCK);
#25 ADC=14'd7965;
 
@(posedge CLOCK);
#25 ADC=14'd7988;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd7997;
 
@(posedge CLOCK);
#25 ADC=14'd8023;
 
@(posedge CLOCK);
#25 ADC=14'd8039;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8068;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8047;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8068;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd10866;
 
@(posedge CLOCK);
#25 ADC=14'd13833;
 
@(posedge CLOCK);
#25 ADC=14'd11811;
 
@(posedge CLOCK);
#25 ADC=14'd9422;
 
@(posedge CLOCK);
#25 ADC=14'd8163;
 
@(posedge CLOCK);
#25 ADC=14'd7704;
 
@(posedge CLOCK);
#25 ADC=14'd7548;
 
@(posedge CLOCK);
#25 ADC=14'd7476;
 
@(posedge CLOCK);
#25 ADC=14'd7438;
 
@(posedge CLOCK);
#25 ADC=14'd7452;
 
@(posedge CLOCK);
#25 ADC=14'd7490;
 
@(posedge CLOCK);
#25 ADC=14'd7518;
 
@(posedge CLOCK);
#25 ADC=14'd7534;
 
@(posedge CLOCK);
#25 ADC=14'd7559;
 
@(posedge CLOCK);
#25 ADC=14'd7587;
 
@(posedge CLOCK);
#25 ADC=14'd7631;
 
@(posedge CLOCK);
#25 ADC=14'd7641;
 
@(posedge CLOCK);
#25 ADC=14'd7668;
 
@(posedge CLOCK);
#25 ADC=14'd7685;
 
@(posedge CLOCK);
#25 ADC=14'd7695;
 
@(posedge CLOCK);
#25 ADC=14'd7721;
 
@(posedge CLOCK);
#25 ADC=14'd7760;
 
@(posedge CLOCK);
#25 ADC=14'd7752;
 
@(posedge CLOCK);
#25 ADC=14'd7784;
 
@(posedge CLOCK);
#25 ADC=14'd7816;
 
@(posedge CLOCK);
#25 ADC=14'd7832;
 
@(posedge CLOCK);
#25 ADC=14'd7822;
 
@(posedge CLOCK);
#25 ADC=14'd7843;
 
@(posedge CLOCK);
#25 ADC=14'd7858;
 
@(posedge CLOCK);
#25 ADC=14'd7864;
 
@(posedge CLOCK);
#25 ADC=14'd7876;
 
@(posedge CLOCK);
#25 ADC=14'd7887;
 
@(posedge CLOCK);
#25 ADC=14'd7909;
 
@(posedge CLOCK);
#25 ADC=14'd7907;
 
@(posedge CLOCK);
#25 ADC=14'd7932;
 
@(posedge CLOCK);
#25 ADC=14'd7950;
 
@(posedge CLOCK);
#25 ADC=14'd7949;
 
@(posedge CLOCK);
#25 ADC=14'd7962;
 
@(posedge CLOCK);
#25 ADC=14'd7992;
 
@(posedge CLOCK);
#25 ADC=14'd8007;
 
@(posedge CLOCK);
#25 ADC=14'd8002;
 
@(posedge CLOCK);
#25 ADC=14'd8017;
 
@(posedge CLOCK);
#25 ADC=14'd8037;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8068;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8073;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8078;
 
@(posedge CLOCK);
#25 ADC=14'd8079;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd11054;
 
@(posedge CLOCK);
#25 ADC=14'd13843;
 
@(posedge CLOCK);
#25 ADC=14'd11721;
 
@(posedge CLOCK);
#25 ADC=14'd9367;
 
@(posedge CLOCK);
#25 ADC=14'd8148;
 
@(posedge CLOCK);
#25 ADC=14'd7690;
 
@(posedge CLOCK);
#25 ADC=14'd7545;
 
@(posedge CLOCK);
#25 ADC=14'd7456;
 
@(posedge CLOCK);
#25 ADC=14'd7443;
 
@(posedge CLOCK);
#25 ADC=14'd7439;
 
@(posedge CLOCK);
#25 ADC=14'd7477;
 
@(posedge CLOCK);
#25 ADC=14'd7495;
 
@(posedge CLOCK);
#25 ADC=14'd7518;
 
@(posedge CLOCK);
#25 ADC=14'd7561;
 
@(posedge CLOCK);
#25 ADC=14'd7591;
 
@(posedge CLOCK);
#25 ADC=14'd7636;
 
@(posedge CLOCK);
#25 ADC=14'd7655;
 
@(posedge CLOCK);
#25 ADC=14'd7652;
 
@(posedge CLOCK);
#25 ADC=14'd7700;
 
@(posedge CLOCK);
#25 ADC=14'd7711;
 
@(posedge CLOCK);
#25 ADC=14'd7727;
 
@(posedge CLOCK);
#25 ADC=14'd7749;
 
@(posedge CLOCK);
#25 ADC=14'd7770;
 
@(posedge CLOCK);
#25 ADC=14'd7799;
 
@(posedge CLOCK);
#25 ADC=14'd7780;
 
@(posedge CLOCK);
#25 ADC=14'd7812;
 
@(posedge CLOCK);
#25 ADC=14'd7828;
 
@(posedge CLOCK);
#25 ADC=14'd7841;
 
@(posedge CLOCK);
#25 ADC=14'd7848;
 
@(posedge CLOCK);
#25 ADC=14'd7872;
 
@(posedge CLOCK);
#25 ADC=14'd7887;
 
@(posedge CLOCK);
#25 ADC=14'd7894;
 
@(posedge CLOCK);
#25 ADC=14'd7916;
 
@(posedge CLOCK);
#25 ADC=14'd7919;
 
@(posedge CLOCK);
#25 ADC=14'd7931;
 
@(posedge CLOCK);
#25 ADC=14'd7945;
 
@(posedge CLOCK);
#25 ADC=14'd7959;
 
@(posedge CLOCK);
#25 ADC=14'd7948;
 
@(posedge CLOCK);
#25 ADC=14'd8003;
 
@(posedge CLOCK);
#25 ADC=14'd7998;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8020;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8037;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8076;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8045;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd11004;
 
@(posedge CLOCK);
#25 ADC=14'd13837;
 
@(posedge CLOCK);
#25 ADC=14'd11735;
 
@(posedge CLOCK);
#25 ADC=14'd9374;
 
@(posedge CLOCK);
#25 ADC=14'd8150;
 
@(posedge CLOCK);
#25 ADC=14'd7696;
 
@(posedge CLOCK);
#25 ADC=14'd7544;
 
@(posedge CLOCK);
#25 ADC=14'd7464;
 
@(posedge CLOCK);
#25 ADC=14'd7439;
 
@(posedge CLOCK);
#25 ADC=14'd7438;
 
@(posedge CLOCK);
#25 ADC=14'd7464;
 
@(posedge CLOCK);
#25 ADC=14'd7502;
 
@(posedge CLOCK);
#25 ADC=14'd7523;
 
@(posedge CLOCK);
#25 ADC=14'd7567;
 
@(posedge CLOCK);
#25 ADC=14'd7596;
 
@(posedge CLOCK);
#25 ADC=14'd7618;
 
@(posedge CLOCK);
#25 ADC=14'd7652;
 
@(posedge CLOCK);
#25 ADC=14'd7662;
 
@(posedge CLOCK);
#25 ADC=14'd7692;
 
@(posedge CLOCK);
#25 ADC=14'd7702;
 
@(posedge CLOCK);
#25 ADC=14'd7742;
 
@(posedge CLOCK);
#25 ADC=14'd7741;
 
@(posedge CLOCK);
#25 ADC=14'd7787;
 
@(posedge CLOCK);
#25 ADC=14'd7788;
 
@(posedge CLOCK);
#25 ADC=14'd7803;
 
@(posedge CLOCK);
#25 ADC=14'd7834;
 
@(posedge CLOCK);
#25 ADC=14'd7835;
 
@(posedge CLOCK);
#25 ADC=14'd7844;
 
@(posedge CLOCK);
#25 ADC=14'd7844;
 
@(posedge CLOCK);
#25 ADC=14'd7867;
 
@(posedge CLOCK);
#25 ADC=14'd7885;
 
@(posedge CLOCK);
#25 ADC=14'd7895;
 
@(posedge CLOCK);
#25 ADC=14'd7901;
 
@(posedge CLOCK);
#25 ADC=14'd7924;
 
@(posedge CLOCK);
#25 ADC=14'd7926;
 
@(posedge CLOCK);
#25 ADC=14'd7944;
 
@(posedge CLOCK);
#25 ADC=14'd7962;
 
@(posedge CLOCK);
#25 ADC=14'd7951;
 
@(posedge CLOCK);
#25 ADC=14'd7982;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8078;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8045;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd10974;
 
@(posedge CLOCK);
#25 ADC=14'd13831;
 
@(posedge CLOCK);
#25 ADC=14'd11733;
 
@(posedge CLOCK);
#25 ADC=14'd9370;
 
@(posedge CLOCK);
#25 ADC=14'd8157;
 
@(posedge CLOCK);
#25 ADC=14'd7699;
 
@(posedge CLOCK);
#25 ADC=14'd7531;
 
@(posedge CLOCK);
#25 ADC=14'd7472;
 
@(posedge CLOCK);
#25 ADC=14'd7440;
 
@(posedge CLOCK);
#25 ADC=14'd7463;
 
@(posedge CLOCK);
#25 ADC=14'd7471;
 
@(posedge CLOCK);
#25 ADC=14'd7496;
 
@(posedge CLOCK);
#25 ADC=14'd7539;
 
@(posedge CLOCK);
#25 ADC=14'd7547;
 
@(posedge CLOCK);
#25 ADC=14'd7573;
 
@(posedge CLOCK);
#25 ADC=14'd7619;
 
@(posedge CLOCK);
#25 ADC=14'd7648;
 
@(posedge CLOCK);
#25 ADC=14'd7679;
 
@(posedge CLOCK);
#25 ADC=14'd7686;
 
@(posedge CLOCK);
#25 ADC=14'd7722;
 
@(posedge CLOCK);
#25 ADC=14'd7735;
 
@(posedge CLOCK);
#25 ADC=14'd7745;
 
@(posedge CLOCK);
#25 ADC=14'd7787;
 
@(posedge CLOCK);
#25 ADC=14'd7785;
 
@(posedge CLOCK);
#25 ADC=14'd7797;
 
@(posedge CLOCK);
#25 ADC=14'd7818;
 
@(posedge CLOCK);
#25 ADC=14'd7827;
 
@(posedge CLOCK);
#25 ADC=14'd7832;
 
@(posedge CLOCK);
#25 ADC=14'd7864;
 
@(posedge CLOCK);
#25 ADC=14'd7866;
 
@(posedge CLOCK);
#25 ADC=14'd7875;
 
@(posedge CLOCK);
#25 ADC=14'd7899;
 
@(posedge CLOCK);
#25 ADC=14'd7897;
 
@(posedge CLOCK);
#25 ADC=14'd7917;
 
@(posedge CLOCK);
#25 ADC=14'd7934;
 
@(posedge CLOCK);
#25 ADC=14'd7957;
 
@(posedge CLOCK);
#25 ADC=14'd7961;
 
@(posedge CLOCK);
#25 ADC=14'd7980;
 
@(posedge CLOCK);
#25 ADC=14'd7984;
 
@(posedge CLOCK);
#25 ADC=14'd7992;
 
@(posedge CLOCK);
#25 ADC=14'd8016;
 
@(posedge CLOCK);
#25 ADC=14'd8023;
 
@(posedge CLOCK);
#25 ADC=14'd8039;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8034;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8045;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8047;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8030;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8080;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8079;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd10954;
 
@(posedge CLOCK);
#25 ADC=14'd13841;
 
@(posedge CLOCK);
#25 ADC=14'd11766;
 
@(posedge CLOCK);
#25 ADC=14'd9394;
 
@(posedge CLOCK);
#25 ADC=14'd8154;
 
@(posedge CLOCK);
#25 ADC=14'd7696;
 
@(posedge CLOCK);
#25 ADC=14'd7547;
 
@(posedge CLOCK);
#25 ADC=14'd7448;
 
@(posedge CLOCK);
#25 ADC=14'd7427;
 
@(posedge CLOCK);
#25 ADC=14'd7446;
 
@(posedge CLOCK);
#25 ADC=14'd7470;
 
@(posedge CLOCK);
#25 ADC=14'd7504;
 
@(posedge CLOCK);
#25 ADC=14'd7526;
 
@(posedge CLOCK);
#25 ADC=14'd7567;
 
@(posedge CLOCK);
#25 ADC=14'd7596;
 
@(posedge CLOCK);
#25 ADC=14'd7606;
 
@(posedge CLOCK);
#25 ADC=14'd7655;
 
@(posedge CLOCK);
#25 ADC=14'd7665;
 
@(posedge CLOCK);
#25 ADC=14'd7702;
 
@(posedge CLOCK);
#25 ADC=14'd7722;
 
@(posedge CLOCK);
#25 ADC=14'd7730;
 
@(posedge CLOCK);
#25 ADC=14'd7752;
 
@(posedge CLOCK);
#25 ADC=14'd7782;
 
@(posedge CLOCK);
#25 ADC=14'd7777;
 
@(posedge CLOCK);
#25 ADC=14'd7807;
 
@(posedge CLOCK);
#25 ADC=14'd7808;
 
@(posedge CLOCK);
#25 ADC=14'd7839;
 
@(posedge CLOCK);
#25 ADC=14'd7833;
 
@(posedge CLOCK);
#25 ADC=14'd7857;
 
@(posedge CLOCK);
#25 ADC=14'd7862;
 
@(posedge CLOCK);
#25 ADC=14'd7866;
 
@(posedge CLOCK);
#25 ADC=14'd7895;
 
@(posedge CLOCK);
#25 ADC=14'd7909;
 
@(posedge CLOCK);
#25 ADC=14'd7923;
 
@(posedge CLOCK);
#25 ADC=14'd7930;
 
@(posedge CLOCK);
#25 ADC=14'd7942;
 
@(posedge CLOCK);
#25 ADC=14'd7954;
 
@(posedge CLOCK);
#25 ADC=14'd7974;
 
@(posedge CLOCK);
#25 ADC=14'd7979;
 
@(posedge CLOCK);
#25 ADC=14'd7998;
 
@(posedge CLOCK);
#25 ADC=14'd7987;
 
@(posedge CLOCK);
#25 ADC=14'd8016;
 
@(posedge CLOCK);
#25 ADC=14'd8035;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8068;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8071;
 
@(posedge CLOCK);
#25 ADC=14'd10900;
 
@(posedge CLOCK);
#25 ADC=14'd13824;
 
@(posedge CLOCK);
#25 ADC=14'd11793;
 
@(posedge CLOCK);
#25 ADC=14'd9403;
 
@(posedge CLOCK);
#25 ADC=14'd8164;
 
@(posedge CLOCK);
#25 ADC=14'd7694;
 
@(posedge CLOCK);
#25 ADC=14'd7544;
 
@(posedge CLOCK);
#25 ADC=14'd7474;
 
@(posedge CLOCK);
#25 ADC=14'd7429;
 
@(posedge CLOCK);
#25 ADC=14'd7436;
 
@(posedge CLOCK);
#25 ADC=14'd7493;
 
@(posedge CLOCK);
#25 ADC=14'd7509;
 
@(posedge CLOCK);
#25 ADC=14'd7540;
 
@(posedge CLOCK);
#25 ADC=14'd7549;
 
@(posedge CLOCK);
#25 ADC=14'd7585;
 
@(posedge CLOCK);
#25 ADC=14'd7613;
 
@(posedge CLOCK);
#25 ADC=14'd7648;
 
@(posedge CLOCK);
#25 ADC=14'd7665;
 
@(posedge CLOCK);
#25 ADC=14'd7695;
 
@(posedge CLOCK);
#25 ADC=14'd7713;
 
@(posedge CLOCK);
#25 ADC=14'd7730;
 
@(posedge CLOCK);
#25 ADC=14'd7746;
 
@(posedge CLOCK);
#25 ADC=14'd7769;
 
@(posedge CLOCK);
#25 ADC=14'd7781;
 
@(posedge CLOCK);
#25 ADC=14'd7812;
 
@(posedge CLOCK);
#25 ADC=14'd7814;
 
@(posedge CLOCK);
#25 ADC=14'd7824;
 
@(posedge CLOCK);
#25 ADC=14'd7840;
 
@(posedge CLOCK);
#25 ADC=14'd7847;
 
@(posedge CLOCK);
#25 ADC=14'd7875;
 
@(posedge CLOCK);
#25 ADC=14'd7876;
 
@(posedge CLOCK);
#25 ADC=14'd7887;
 
@(posedge CLOCK);
#25 ADC=14'd7897;
 
@(posedge CLOCK);
#25 ADC=14'd7909;
 
@(posedge CLOCK);
#25 ADC=14'd7946;
 
@(posedge CLOCK);
#25 ADC=14'd7946;
 
@(posedge CLOCK);
#25 ADC=14'd7965;
 
@(posedge CLOCK);
#25 ADC=14'd7965;
 
@(posedge CLOCK);
#25 ADC=14'd7988;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd7997;
 
@(posedge CLOCK);
#25 ADC=14'd8023;
 
@(posedge CLOCK);
#25 ADC=14'd8039;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8068;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8047;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8068;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8072;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8049;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8066;
 
@(posedge CLOCK);
#25 ADC=14'd10866;
 
@(posedge CLOCK);
#25 ADC=14'd13833;
 
@(posedge CLOCK);
#25 ADC=14'd11811;
 
@(posedge CLOCK);
#25 ADC=14'd9422;
 
@(posedge CLOCK);
#25 ADC=14'd8163;
 
@(posedge CLOCK);
#25 ADC=14'd7704;
 
@(posedge CLOCK);
#25 ADC=14'd7548;
 
@(posedge CLOCK);
#25 ADC=14'd7476;
 
@(posedge CLOCK);
#25 ADC=14'd7438;
 
@(posedge CLOCK);
#25 ADC=14'd7452;
 
@(posedge CLOCK);
#25 ADC=14'd7490;
 
@(posedge CLOCK);
#25 ADC=14'd7518;
 
@(posedge CLOCK);
#25 ADC=14'd7534;
 
@(posedge CLOCK);
#25 ADC=14'd7559;
 
@(posedge CLOCK);
#25 ADC=14'd7587;
 
@(posedge CLOCK);
#25 ADC=14'd7631;
 
@(posedge CLOCK);
#25 ADC=14'd7641;
 
@(posedge CLOCK);
#25 ADC=14'd7668;
 
@(posedge CLOCK);
#25 ADC=14'd7685;
 
@(posedge CLOCK);
#25 ADC=14'd7695;
 
@(posedge CLOCK);
#25 ADC=14'd7721;
 
@(posedge CLOCK);
#25 ADC=14'd7760;
 
@(posedge CLOCK);
#25 ADC=14'd7752;
 
@(posedge CLOCK);
#25 ADC=14'd7784;
 
@(posedge CLOCK);
#25 ADC=14'd7816;
 
@(posedge CLOCK);
#25 ADC=14'd7832;
 
@(posedge CLOCK);
#25 ADC=14'd7822;
 
@(posedge CLOCK);
#25 ADC=14'd7843;
 
@(posedge CLOCK);
#25 ADC=14'd7858;
 
@(posedge CLOCK);
#25 ADC=14'd7864;
 
@(posedge CLOCK);
#25 ADC=14'd7876;
 
@(posedge CLOCK);
#25 ADC=14'd7887;
 
@(posedge CLOCK);
#25 ADC=14'd7909;
 
@(posedge CLOCK);
#25 ADC=14'd7907;
 
@(posedge CLOCK);
#25 ADC=14'd7932;
 
@(posedge CLOCK);
#25 ADC=14'd7950;
 
@(posedge CLOCK);
#25 ADC=14'd7949;
 
@(posedge CLOCK);
#25 ADC=14'd7962;
 
@(posedge CLOCK);
#25 ADC=14'd7992;
 
@(posedge CLOCK);
#25 ADC=14'd8007;
 
@(posedge CLOCK);
#25 ADC=14'd8002;
 
@(posedge CLOCK);
#25 ADC=14'd8017;
 
@(posedge CLOCK);
#25 ADC=14'd8037;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8068;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd10842;
 
@(posedge CLOCK);
#25 ADC=14'd13839;
 
@(posedge CLOCK);
#25 ADC=14'd11810;
 
@(posedge CLOCK);
#25 ADC=14'd9420;
 
@(posedge CLOCK);
#25 ADC=14'd8179;
 
@(posedge CLOCK);
#25 ADC=14'd7711;
 
@(posedge CLOCK);
#25 ADC=14'd7550;
 
@(posedge CLOCK);
#25 ADC=14'd7460;
 
@(posedge CLOCK);
#25 ADC=14'd7438;
 
@(posedge CLOCK);
#25 ADC=14'd7453;
 
@(posedge CLOCK);
#25 ADC=14'd7459;
 
@(posedge CLOCK);
#25 ADC=14'd7486;
 
@(posedge CLOCK);
#25 ADC=14'd7522;
 
@(posedge CLOCK);
#25 ADC=14'd7552;
 
@(posedge CLOCK);
#25 ADC=14'd7570;
 
@(posedge CLOCK);
#25 ADC=14'd7596;
 
@(posedge CLOCK);
#25 ADC=14'd7634;
 
@(posedge CLOCK);
#25 ADC=14'd7672;
 
@(posedge CLOCK);
#25 ADC=14'd7682;
 
@(posedge CLOCK);
#25 ADC=14'd7702;
 
@(posedge CLOCK);
#25 ADC=14'd7727;
 
@(posedge CLOCK);
#25 ADC=14'd7737;
 
@(posedge CLOCK);
#25 ADC=14'd7773;
 
@(posedge CLOCK);
#25 ADC=14'd7796;
 
@(posedge CLOCK);
#25 ADC=14'd7781;
 
@(posedge CLOCK);
#25 ADC=14'd7818;
 
@(posedge CLOCK);
#25 ADC=14'd7830;
 
@(posedge CLOCK);
#25 ADC=14'd7857;
 
@(posedge CLOCK);
#25 ADC=14'd7854;
 
@(posedge CLOCK);
#25 ADC=14'd7865;
 
@(posedge CLOCK);
#25 ADC=14'd7884;
 
@(posedge CLOCK);
#25 ADC=14'd7888;
 
@(posedge CLOCK);
#25 ADC=14'd7898;
 
@(posedge CLOCK);
#25 ADC=14'd7920;
 
@(posedge CLOCK);
#25 ADC=14'd7925;
 
@(posedge CLOCK);
#25 ADC=14'd7945;
 
@(posedge CLOCK);
#25 ADC=14'd7968;
 
@(posedge CLOCK);
#25 ADC=14'd7956;
 
@(posedge CLOCK);
#25 ADC=14'd7999;
 
@(posedge CLOCK);
#25 ADC=14'd8018;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8024;
 
@(posedge CLOCK);
#25 ADC=14'd8032;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8071;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8038;
 
@(posedge CLOCK);
#25 ADC=14'd8047;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd10796;
 
@(posedge CLOCK);
#25 ADC=14'd13835;
 
@(posedge CLOCK);
#25 ADC=14'd11838;
 
@(posedge CLOCK);
#25 ADC=14'd9432;
 
@(posedge CLOCK);
#25 ADC=14'd8167;
 
@(posedge CLOCK);
#25 ADC=14'd7708;
 
@(posedge CLOCK);
#25 ADC=14'd7541;
 
@(posedge CLOCK);
#25 ADC=14'd7469;
 
@(posedge CLOCK);
#25 ADC=14'd7442;
 
@(posedge CLOCK);
#25 ADC=14'd7449;
 
@(posedge CLOCK);
#25 ADC=14'd7475;
 
@(posedge CLOCK);
#25 ADC=14'd7508;
 
@(posedge CLOCK);
#25 ADC=14'd7528;
 
@(posedge CLOCK);
#25 ADC=14'd7559;
 
@(posedge CLOCK);
#25 ADC=14'd7575;

@(posedge CLOCK);
#25 ADC=14'd8054;
acquireRequest=1'b1; 
 
@(posedge CLOCK);
#25 ADC=14'd8053;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8065;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8069;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8050;
 
@(posedge CLOCK);
#25 ADC=14'd8070;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8063;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8042;
 
@(posedge CLOCK);
#25 ADC=14'd8044;
 
@(posedge CLOCK);
#25 ADC=14'd10842;
 
@(posedge CLOCK);
#25 ADC=14'd13839;
 
@(posedge CLOCK);
#25 ADC=14'd11810;
 
@(posedge CLOCK);
#25 ADC=14'd9420;
 
@(posedge CLOCK);
#25 ADC=14'd8179;
 
@(posedge CLOCK);
#25 ADC=14'd7711;
 
@(posedge CLOCK);
#25 ADC=14'd7550;
 
@(posedge CLOCK);
#25 ADC=14'd7460;
 
@(posedge CLOCK);
#25 ADC=14'd7438;
 
@(posedge CLOCK);
#25 ADC=14'd7453;
 
@(posedge CLOCK);
#25 ADC=14'd7459;
 
@(posedge CLOCK);
#25 ADC=14'd7486;
 
@(posedge CLOCK);
#25 ADC=14'd7522;
 
@(posedge CLOCK);
#25 ADC=14'd7552;
 
@(posedge CLOCK);
#25 ADC=14'd7570;
 
@(posedge CLOCK);
#25 ADC=14'd7596;
 
@(posedge CLOCK);
#25 ADC=14'd7634;
 
@(posedge CLOCK);
#25 ADC=14'd7672;
 
@(posedge CLOCK);
#25 ADC=14'd7682;
 
@(posedge CLOCK);
#25 ADC=14'd7702;
 
@(posedge CLOCK);
#25 ADC=14'd7727;
 
@(posedge CLOCK);
#25 ADC=14'd7737;
 
@(posedge CLOCK);
#25 ADC=14'd7773;
 
@(posedge CLOCK);
#25 ADC=14'd7796;
 
@(posedge CLOCK);
#25 ADC=14'd7781;
 
@(posedge CLOCK);
#25 ADC=14'd7818;
 
@(posedge CLOCK);
#25 ADC=14'd7830;
 
@(posedge CLOCK);
#25 ADC=14'd7857;
 
@(posedge CLOCK);
#25 ADC=14'd7854;
 
@(posedge CLOCK);
#25 ADC=14'd7865;
 
@(posedge CLOCK);
#25 ADC=14'd7884;
 
@(posedge CLOCK);
#25 ADC=14'd7888;
 
@(posedge CLOCK);
#25 ADC=14'd7898;
 
@(posedge CLOCK);
#25 ADC=14'd7920;
 
@(posedge CLOCK);
#25 ADC=14'd7925;
 
@(posedge CLOCK);
#25 ADC=14'd7945;
 
@(posedge CLOCK);
#25 ADC=14'd7968;
 
@(posedge CLOCK);
#25 ADC=14'd7956;
 
@(posedge CLOCK);
#25 ADC=14'd7999;
 
@(posedge CLOCK);
#25 ADC=14'd8018;
 
@(posedge CLOCK);
#25 ADC=14'd8006;
 
@(posedge CLOCK);
#25 ADC=14'd8024;
 
@(posedge CLOCK);
#25 ADC=14'd8032;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8043;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8064;
 
@(posedge CLOCK);
#25 ADC=14'd8067;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8040;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8059;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8055;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8071;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8057;
 
@(posedge CLOCK);
#25 ADC=14'd8054;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8051;
 
@(posedge CLOCK);
#25 ADC=14'd8058;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8038;
 
@(posedge CLOCK);
#25 ADC=14'd8047;
 
@(posedge CLOCK);
#25 ADC=14'd8056;
 
@(posedge CLOCK);
#25 ADC=14'd8046;
 
@(posedge CLOCK);
#25 ADC=14'd8041;
 
@(posedge CLOCK);
#25 ADC=14'd8060;
 
@(posedge CLOCK);
#25 ADC=14'd8062;
 
@(posedge CLOCK);
#25 ADC=14'd8048;
 
@(posedge CLOCK);
#25 ADC=14'd8061;
 
@(posedge CLOCK);
#25 ADC=14'd8052;
 
@(posedge CLOCK);
#25 ADC=14'd10796;
 
@(posedge CLOCK);
#25 ADC=14'd13835;
 
@(posedge CLOCK);
#25 ADC=14'd11838;
 
@(posedge CLOCK);
#25 ADC=14'd9432;
 
@(posedge CLOCK);
#25 ADC=14'd8167;
 
@(posedge CLOCK);
#25 ADC=14'd7708;
 
@(posedge CLOCK);
#25 ADC=14'd7541;
 
@(posedge CLOCK);
#25 ADC=14'd7469;
 
@(posedge CLOCK);
#25 ADC=14'd7442;
 
@(posedge CLOCK);
#25 ADC=14'd7449;
 
@(posedge CLOCK);
#25 ADC=14'd7475;
 
@(posedge CLOCK);
#25 ADC=14'd7508;
 
@(posedge CLOCK);
#25 ADC=14'd7528;
 
@(posedge CLOCK);
#25 ADC=14'd7559;
 
@(posedge CLOCK);
#25 ADC=14'd7575;
	
	#10		
	$display($time, "<< Simulation Complete >>");
	$stop;
	
end

endmodule

		