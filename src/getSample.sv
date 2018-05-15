module getSample(clk, sampleNum, waveform, wavenum, acquire, waveSample, lastwavenum);

input clk;
input [15:0] sampleNum;
input [15:0] wavenum;
input [13:0] waveform [1000];
input acquire;
output reg [15:0] waveSample;
output reg [15:0] lastwavenum=16'd65535;

always @(posedge clk) begin

	if(sampleNum>=1&&sampleNum<=1000&&acquire==1) begin
		waveSample = waveform[sampleNum-1];	
	end
	else if(sampleNum==1001&&acquire==1) begin
		waveSample=wavenum;
		lastwavenum=wavenum;
	end


end



endmodule
