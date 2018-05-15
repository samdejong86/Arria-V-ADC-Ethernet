`timescale 1 ns / 100 ps

module ADC_testbench();

reg CLOCK;
reg 	[7:0] 	adcControl;
reg 	[13:0] 	a2da_data;
reg	[13:0]	a2db_data;	
reg	[15:0]	SampleNum;


wire	[15:0]	waveSample;
	
	
	
ADC_handler adcHandle(
	.adcControl(adcControl),
	.a2da_data(a2da_data),
	.a2db_data(a2db_data),	
	.sys_clk(CLOCK),
	.SampleNum(SampleNum),
	.waveSample(waveSample)

);			
			
	
always
	#12.5 CLOCK= ~CLOCK;


		
		
initial
begin

	$display($time, " << Starting Simulation >> ");
	CLOCK=1'b0;
	a2db_data=14'd8054;
	a2da_data=14'd0;
	adcControl=8'b00001110;
	SampleNum=16'd1001;
	
	@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8073;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8078;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8079;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd11054;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13843;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11721;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9367;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8148;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7690;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7545;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7456;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7443;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7439;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7477;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7495;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7518;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7561;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7591;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7636;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7655;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7652;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7700;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7711;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7727;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7749;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7770;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7799;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7780;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7812;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7828;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7841;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7848;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7872;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7887;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7894;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7916;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7919;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7931;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7945;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7959;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7948;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8003;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7998;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8020;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8037;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8076;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd11004;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13837;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11735;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9374;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8150;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7696;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7544;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7464;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7439;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7438;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7464;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7502;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7523;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7567;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7596;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7618;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7652;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7662;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7692;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7702;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7742;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7741;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7787;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7788;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7803;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7834;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7835;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7844;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7844;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7867;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7885;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7895;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7901;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7924;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7926;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7944;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7962;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7951;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7982;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8078;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10974;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13831;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11733;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9370;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8157;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7699;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7531;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7472;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7440;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7463;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7471;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7496;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7539;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7547;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7573;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7619;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7648;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7679;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7686;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7735;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7745;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7787;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7785;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7797;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7818;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7827;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7832;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7864;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7866;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7875;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7899;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7897;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7917;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7934;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7957;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7961;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7980;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7984;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7992;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8016;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8023;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8034;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8030;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8080;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8079;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10954;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13841;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11766;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9394;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8154;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7696;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7547;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7448;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7427;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7446;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7470;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7504;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7526;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7567;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7596;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7606;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7655;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7665;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7702;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7730;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7752;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7782;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7777;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7807;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7808;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7839;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7833;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7857;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7862;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7866;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7895;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7909;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7923;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7930;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7942;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7954;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7974;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7979;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7998;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7987;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8016;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8035;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10900;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13824;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11793;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9403;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8164;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7694;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7544;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7474;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7429;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7436;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7493;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7509;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7540;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7549;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7585;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7613;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7648;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7665;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7695;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7713;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7730;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7746;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7769;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7781;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7812;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7814;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7824;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7840;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7847;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7875;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7876;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7887;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7897;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7909;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7946;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7946;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7988;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7997;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8023;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10866;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13833;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11811;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9422;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8163;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7704;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7548;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7476;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7438;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7452;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7490;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7518;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7534;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7559;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7587;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7631;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7641;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7668;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7685;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7695;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7721;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7760;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7752;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7784;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7816;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7832;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7822;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7843;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7858;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7864;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7876;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7887;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7909;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7907;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7932;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7950;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7949;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7962;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7992;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8007;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8002;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8017;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8037;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10842;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13839;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11810;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9420;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8179;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7711;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7550;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7460;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7438;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7453;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7459;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7486;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7522;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7552;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7570;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7596;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7634;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7672;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7682;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7702;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7727;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7737;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7773;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7796;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7781;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7818;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7830;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7857;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7854;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7865;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7884;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7888;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7898;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7920;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7925;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7945;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7968;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7956;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7999;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8018;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8024;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8032;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8038;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10796;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13835;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11838;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9432;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8167;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7708;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7541;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7469;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7442;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7449;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7475;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7508;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7528;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7559;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7575;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7611;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7631;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7654;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7691;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7716;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7751;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7779;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7791;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7798;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7819;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7829;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7836;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7856;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7872;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7883;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7898;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7903;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7924;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7927;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7950;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7952;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7973;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8000;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8007;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8034;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8032;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8076;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10760;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13837;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11863;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9455;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8172;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7704;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7552;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7476;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7452;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7432;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7484;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7490;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7527;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7564;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7582;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7612;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7636;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7664;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7676;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7710;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7724;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7738;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7763;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7775;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7798;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7821;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7839;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7845;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7857;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7872;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7865;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7884;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7914;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7907;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7926;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7942;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7956;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7967;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7966;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8002;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8004;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8024;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8038;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8035;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8074;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10749;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13840;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11870;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9461;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8175;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7694;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7548;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7482;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7442;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7434;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7490;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7514;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7526;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7556;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7583;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7618;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7652;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7666;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7688;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7709;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7734;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7755;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7764;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7794;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7815;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7808;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7850;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7855;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7859;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7873;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7878;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7900;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7904;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7921;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7929;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7941;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7961;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7967;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7969;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7986;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8003;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8016;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8037;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10697;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13848;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11887;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9467;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8202;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7711;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7562;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7452;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7431;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7444;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7494;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7508;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7553;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7547;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7594;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7612;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7635;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7676;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7684;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7704;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7743;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7740;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7770;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7779;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7803;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7812;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7836;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7840;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7842;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7855;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7876;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7882;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7901;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7927;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7936;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7924;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7966;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7985;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7995;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8015;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8074;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10670;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13843;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11905;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9483;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8197;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7549;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7470;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7439;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7468;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7467;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7503;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7528;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7555;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7580;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7614;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7636;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7656;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7681;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7705;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7735;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7759;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7768;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7779;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7802;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7823;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7825;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7840;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7864;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7880;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7884;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7882;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7905;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7922;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7921;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7952;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7966;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7970;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7980;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7998;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8031;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8038;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8077;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10637;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13840;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11931;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9495;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8200;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7732;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7544;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7464;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7442;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7446;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7470;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7500;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7526;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7554;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7586;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7628;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7653;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7659;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7687;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7712;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8073;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8078;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8079;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd11054;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13843;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11721;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9367;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8148;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7690;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7545;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7456;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7443;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7439;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7477;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7495;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7518;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7561;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7591;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7636;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7655;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7652;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7700;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7711;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7727;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7749;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7770;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7799;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7780;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7812;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7828;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7841;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7848;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7872;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7887;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7894;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7916;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7919;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7931;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7945;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7959;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7948;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8003;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7998;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8020;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8037;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8076;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd11004;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13837;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11735;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9374;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8150;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7696;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7544;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7464;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7439;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7438;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7464;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7502;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7523;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7567;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7596;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7618;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7652;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7662;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7692;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7702;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7742;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7741;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7787;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7788;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7803;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7834;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7835;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7844;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7844;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7867;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7885;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7895;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7901;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7924;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7926;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7944;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7962;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7951;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7982;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8078;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10974;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13831;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11733;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9370;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8157;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7699;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7531;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7472;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7440;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7463;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7471;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7496;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7539;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7547;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7573;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7619;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7648;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7679;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7686;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7735;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7745;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7787;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7785;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7797;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7818;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7827;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7832;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7864;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7866;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7875;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7899;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7897;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7917;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7934;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7957;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7961;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7980;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7984;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7992;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8016;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8023;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8034;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8030;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8080;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8079;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10954;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13841;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11766;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9394;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8154;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7696;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7547;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7448;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7427;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7446;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7470;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7504;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7526;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7567;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7596;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7606;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7655;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7665;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7702;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7730;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7752;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7782;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7777;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7807;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7808;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7839;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7833;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7857;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7862;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7866;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7895;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7909;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7923;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7930;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7942;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7954;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7974;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7979;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7998;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7987;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8016;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8035;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10900;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13824;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11793;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9403;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8164;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7694;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7544;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7474;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7429;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7436;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7493;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7509;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7540;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7549;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7585;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7613;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7648;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7665;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7695;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7713;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7730;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7746;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7769;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7781;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7812;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7814;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7824;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7840;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7847;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7875;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7876;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7887;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7897;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7909;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7946;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7946;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7988;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7997;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8023;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10866;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13833;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11811;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9422;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8163;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7704;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7548;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7476;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7438;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7452;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7490;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7518;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7534;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7559;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7587;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7631;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7641;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7668;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7685;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7695;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7721;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7760;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7752;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7784;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7816;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7832;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7822;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7843;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7858;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7864;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7876;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7887;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7909;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7907;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7932;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7950;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7949;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7962;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7992;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8007;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8002;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8017;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8037;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10842;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13839;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11810;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9420;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8179;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7711;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7550;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7460;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7438;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7453;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7459;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7486;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7522;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7552;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7570;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7596;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7634;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7672;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7682;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7702;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7727;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7737;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7773;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7796;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7781;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7818;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7830;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7857;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7854;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7865;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7884;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7888;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7898;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7920;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7925;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7945;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7968;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7956;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7999;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8018;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8024;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8032;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8038;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10796;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13835;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11838;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9432;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8167;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7708;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7541;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7469;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7442;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7449;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7475;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7508;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7528;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7559;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7575;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7611;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7631;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7654;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7691;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7716;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7751;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7779;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7791;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7798;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7819;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7829;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7836;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7856;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7872;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7883;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7898;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7903;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7924;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7927;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7950;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7952;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7973;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8000;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8007;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8034;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8032;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8076;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10760;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13837;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11863;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9455;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8172;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7704;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7552;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7476;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7452;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7432;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7484;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7490;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7527;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7564;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7582;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7612;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7636;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7664;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7676;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7710;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7724;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7738;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7763;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7775;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7798;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7821;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7839;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7845;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7857;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7872;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7865;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7884;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7914;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7907;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7926;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7942;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7956;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7967;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7966;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8002;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8004;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8024;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8038;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8035;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8074;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10749;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13840;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11870;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9461;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8175;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7694;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7548;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7482;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7442;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7434;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7490;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7514;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7526;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7556;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7583;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7618;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7652;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7666;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7688;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7709;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7734;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7755;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7764;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7794;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7815;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7808;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7850;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7855;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7859;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7873;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7878;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7900;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7904;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7921;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7929;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7941;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7961;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7967;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7969;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7986;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8003;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8016;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8037;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10697;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13848;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11887;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9467;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8202;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7711;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7562;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7452;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7431;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7444;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7494;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7508;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7553;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7547;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7594;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7612;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7635;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7676;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7684;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7704;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7743;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7740;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7770;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7779;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7803;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7812;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7836;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7840;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7842;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7855;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7876;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7882;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7901;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7927;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7936;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7924;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7966;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7985;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7995;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8015;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8074;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10670;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13843;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11905;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9483;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8197;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7549;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7470;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7439;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7468;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7467;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7503;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7528;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7555;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7580;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7614;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7636;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7656;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7681;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7705;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7735;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7759;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7768;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7779;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7802;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7823;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7825;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7840;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7864;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7880;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7884;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7882;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7905;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7922;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7921;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7952;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7966;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7970;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7980;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7998;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8031;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8038;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

adcControl=8'b00001111;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8077;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10637;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13840;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11931;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9495;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8200;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7732;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7544;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7464;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7442;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7446;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7470;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7500;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7526;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7554;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7586;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7628;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7653;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7659;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7687;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7712;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

adcControl=8'b00001110;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8073;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8078;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8079;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd11054;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13843;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11721;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9367;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8148;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7690;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7545;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7456;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7443;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7439;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7477;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7495;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7518;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7561;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7591;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7636;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7655;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7652;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7700;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7711;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7727;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7749;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7770;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7799;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7780;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7812;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7828;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7841;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7848;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7872;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7887;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7894;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7916;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7919;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7931;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7945;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7959;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7948;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8003;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7998;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8020;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8037;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8076;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd11004;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13837;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11735;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9374;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8150;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7696;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7544;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7464;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7439;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7438;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7464;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7502;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7523;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7567;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7596;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7618;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7652;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7662;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7692;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7702;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7742;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7741;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7787;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7788;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7803;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7834;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7835;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7844;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7844;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7867;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7885;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7895;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7901;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7924;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7926;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7944;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7962;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7951;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7982;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8078;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10974;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13831;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11733;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9370;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8157;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7699;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7531;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7472;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7440;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7463;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7471;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7496;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7539;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7547;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7573;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7619;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7648;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7679;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7686;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7735;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7745;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7787;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7785;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7797;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7818;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7827;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7832;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7864;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7866;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7875;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7899;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7897;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7917;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7934;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7957;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7961;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7980;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7984;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7992;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8016;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8023;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8034;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8030;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8080;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8079;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10954;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13841;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11766;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9394;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8154;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7696;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7547;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7448;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7427;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7446;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7470;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7504;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7526;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7567;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7596;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7606;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7655;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7665;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7702;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7730;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7752;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7782;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7777;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7807;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7808;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7839;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7833;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7857;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7862;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7866;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7895;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7909;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7923;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7930;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7942;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7954;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7974;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7979;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7998;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7987;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8016;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8035;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

adcControl=8'b00000000;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10900;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13824;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11793;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9403;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8164;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7694;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7544;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7474;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7429;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7436;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7493;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7509;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7540;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7549;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7585;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7613;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7648;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7665;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7695;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7713;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7730;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7746;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7769;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7781;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7812;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7814;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7824;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7840;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7847;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7875;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7876;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7887;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7897;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7909;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7946;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7946;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7988;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7997;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8023;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10866;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13833;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11811;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9422;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8163;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7704;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7548;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7476;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7438;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7452;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7490;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7518;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7534;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7559;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7587;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7631;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7641;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7668;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7685;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7695;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7721;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7760;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7752;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7784;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7816;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7832;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7822;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7843;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7858;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7864;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7876;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7887;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7909;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7907;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7932;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7950;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7949;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7962;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7992;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8007;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8002;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8017;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8037;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10842;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13839;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11810;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9420;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8179;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7711;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7550;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7460;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7438;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7453;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7459;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7486;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7522;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7552;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7570;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7596;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7634;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7672;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7682;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7702;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7727;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7737;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7773;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7796;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7781;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7818;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7830;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7857;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7854;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7865;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7884;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7888;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7898;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7920;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7925;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7945;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7968;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7956;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7999;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8018;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8024;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8032;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8038;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8041;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10796;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13835;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11838;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9432;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8167;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7708;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7541;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7469;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7442;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7449;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7475;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7508;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7528;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7559;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7575;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7611;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7631;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7654;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7691;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7716;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7751;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7779;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7791;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7798;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7819;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7829;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7836;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7856;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7872;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7883;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7898;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7903;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7924;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7927;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7950;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7952;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7973;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8000;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8007;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8034;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8032;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8076;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10760;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13837;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11863;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9455;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8172;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7704;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7552;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7476;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7452;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7432;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7484;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7490;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7527;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7564;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7582;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7612;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7636;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7664;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7676;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7710;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7724;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7738;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7763;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7775;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7798;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7821;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7839;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7845;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7857;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7872;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7865;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7884;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7914;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7907;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7926;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7942;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7956;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7967;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7966;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8002;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8004;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8024;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8038;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8035;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8040;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8074;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10749;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13840;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11870;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9461;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8175;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7694;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7548;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7482;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7442;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7434;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7490;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7514;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7526;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7556;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7583;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7618;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7652;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7666;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7688;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7709;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7734;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7755;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7764;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7794;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7815;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7808;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7850;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7855;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7859;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7873;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7878;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7900;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7904;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7921;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7929;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7941;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7961;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7967;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7969;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7986;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8003;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8016;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8037;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8063;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8067;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8045;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8072;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8042;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10697;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13848;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11887;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9467;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8202;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7711;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7562;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7452;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7431;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7444;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7494;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7508;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7553;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7547;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7594;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7612;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7635;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7676;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7684;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7704;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7743;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7740;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7770;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7779;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7803;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7812;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7836;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7840;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7842;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7855;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7876;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7882;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7901;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7927;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7936;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7924;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7965;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7966;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7985;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7995;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8015;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8006;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8039;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8054;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8051;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8052;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8074;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8069;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10670;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13843;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11905;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9483;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8197;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7722;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7549;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7470;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7439;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7468;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7467;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7503;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7528;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7555;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7580;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7614;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7636;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7656;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7681;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7705;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7735;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7759;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7768;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7779;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7802;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7823;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7825;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7840;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7864;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7880;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7884;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7882;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7905;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7922;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7921;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7952;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7966;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7970;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7980;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7998;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8031;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8038;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8066;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8062;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8047;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8064;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8056;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8043;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8060;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8068;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8061;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8055;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8046;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8070;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8057;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8071;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8053;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8059;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8077;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8058;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8049;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8065;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8044;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8048;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd8050;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd10637;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd13840;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd11931;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd9495;
a2da_data=14'd16383;

@(posedge CLOCK);
#25 a2db_data=14'd8200;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7732;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7544;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7464;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7442;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7446;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7470;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7500;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7526;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7554;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7586;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7628;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7653;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7659;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7687;
a2da_data=14'd0;

@(posedge CLOCK);
#25 a2db_data=14'd7712;
a2da_data=14'd0;


	
	
	
	
	#10		
	$display($time, "<< Simulation Complete >>");
	$stop;
	
end

endmodule

		