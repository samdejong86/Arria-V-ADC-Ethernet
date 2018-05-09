library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity acquireSet_vhdl is
	port(
		acquireRequest : in std_logic;
		clk			: in std_logic;
		waveNumber  :	 in unsigned (15 DOWNTO 0);
		lastwavenum  :	 in unsigned (15 DOWNTO 0);
		acquire : out std_logic
	);
end acquireSet_vhdl;

architecture rtl of acquireSet_vhdl is

begin
	acquireProc : process(clk) is
	begin
		if rising_edge(clk) then
			if (acquireRequest='1') and not (waveNumber = lastwavenum) then
				acquire<='1';
			else
				acquire<='0';
			end if;
		end if;
	end process acquireProc;

end rtl;