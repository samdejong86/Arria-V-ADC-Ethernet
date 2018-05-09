library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity trigger is
	port(
	clk			: in std_logic;
	ADC_IN		: in unsigned (13 DOWNTO 0);
	trigSlope	: in std_logic;
	trigLevel	: in unsigned (13 DOWNTO 0);  
	trigger 		: out std_logic
	);
end trigger;

architecture rtl of trigger is 
	--signal lastVal : unsigned (13 DOWNTO 0)   :="00000000000000";
	--signal trigCount : unsigned (13 DOWNTO 0) :="00000000000000";
	--signal trigCount : natural range 0 to 99:=0;
	
begin


trigProc : process(clk) is
	variable  lastVal : unsigned (13 DOWNTO 0)   :="00000000000000";
	variable trigCount : natural range 0 to 999:=0;

	begin
		if rising_edge(clk) then
			if trigSlope = '1' then
				if ADC_IN > trigLevel and ADC_IN>=lastVal then
					trigCount:=trigCount+1;
					if trigCount=2 then
						trigger <= '1';
					else
						trigger <= '0';
					end if;
				else					
					trigCount:=0;
					trigger <= '0';
					
				end if;	
			else 
				if ADC_IN < trigLevel and ADC_IN<=lastVal then
						trigCount:=trigCount+1;
					if trigCount=2 then
						trigger <= '1';
					else
						trigger <= '0';
					end if;
				else					
					trigCount:=0;
					trigger <= '0';
					
				end if;	
			end if;
			lastVal:=ADC_IN;
		end if;
			
end process trigProc;
	

end rtl;	