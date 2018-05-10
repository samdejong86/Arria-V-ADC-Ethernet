--This module gets the requested sample
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.my_types_pkg.all;

entity getSample is 
	port(
		clk 			: in std_logic;
		sampleNum	: in unsigned (15 DOWNTO 0);
		wavenum		: in unsigned (15 DOWNTO 0);
		waveform 	: in adcArray (0 to 999);
		acquire 		: in std_logic;
		waveSample	: out unsigned (15 DOWNTO 0);
		lastwavenum	: out unsigned (15 DOWNTO 0)	
	);
end getSample;

architecture rtl of getSample is

begin 

	getSampleProc : process(clk) is
	begin
		if rising_edge(clk) then
			if sampleNum  >= 1 and sampleNum <= 1000 and acquire = '1' then  -- if the sample number is between 1 and 1000, send the sample
				waveSample <= "00" & waveform(to_integer(sampleNum)-1);				
			elsif sampleNum = 1001 and acquire = '1' then  --send the wavenumber last
				waveSample<=wavenum;
				lastwavenum<=wavenum;  --set the lastwavenum to the current wavenum, since this waveform has been sent.
			end if;		
		end if;
end process getSampleProc;


end rtl;
