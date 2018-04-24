module flipSwitch(clk, char, trigChar, out);

input clk;
input [7:0] char;
input [7:0] trigChar;
reg temp;




always @(posedge clk) begin

	if(char==trigChar)
		temp=1;
	else
		temp=0;

end


output reg out=0;

always @(posedge temp) begin

	out<=~out;

end


endmodule
