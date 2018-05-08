
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.my_types_pkg.all;

entity getSample_vhdl is 
	port(
		clk 			: in std_logic;
		sampleNum	: in unsigned (15 DOWNTO 0);
		wavenum		: in unsigned (15 DOWNTO 0);
		waveform 	: in adcArray (0 to 999);
		acquire 		: in std_logic;
		waveSample	: out unsigned (15 DOWNTO 0);
		lastwavenum	: out unsigned (15 DOWNTO 0)	
	);
end getSample_vhdl;

architecture rtl of getSample_vhdl is
	signal addOne : unsigned (15 DOWNTO 0) :=to_unsigned(1, 16);
	--signal temp : unsigned (15 downto 0);
	


begin 
	
	--temp <= sampleNum - addOne;

	getSampleProc : process(clk) is
	begin
		if rising_edge(clk) then
			if sampleNum  >= 1 and sampleNum <= 1000 and acquire = '1' then
				waveSample <= "00" & waveform(to_integer(sampleNum));				
			elsif sampleNum = 1001 and acquire = '1' then
				waveSample<=wavenum;
				lastwavenum<=wavenum;
			end if;		
		end if;
end process getSampleProc;


end rtl;
