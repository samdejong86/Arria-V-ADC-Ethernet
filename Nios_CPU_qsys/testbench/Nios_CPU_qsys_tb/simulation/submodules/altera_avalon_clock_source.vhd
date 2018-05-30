-- (C) 2001-2016 Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions and other 
-- software and tools, and its AMPP partner logic functions, and any output 
-- files any of the foregoing (including device programming or simulation 
-- files), and any associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License Subscription 
-- Agreement, Intel MegaCore Function License Agreement, or other applicable 
-- license agreement, including, without limitation, that your use is for the 
-- sole purpose of programming logic devices manufactured by Intel and sold by 
-- Intel or its authorized distributors.  Please refer to the applicable 
-- agreement for further details.


-- $File: //acds/main/ip/sopc/app/sopc_scripts/tbgen.tcl $
-- $Author: wkleong $
-- $Revision: #24 $
-- $Date: 2010/10/31 $
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity altera_avalon_clock_source is
   -- default clock rate 10 MHz (100ns)
   generic (CLOCK_RATE     : integer :=10;         -- clock rate
            CLOCK_UNIT     : integer :=1000000);   -- clock rate unit MHz / kHz / Hz
   port    (clk            : out std_logic);
end altera_avalon_clock_source;

architecture behavioral of altera_avalon_clock_source is 
   
   signal      clk_temp       : std_logic := '0';
   
   constant    CLOCK_PERIOD   : time := 1 sec / CLOCK_RATE / CLOCK_UNIT;
   constant    HALF_PERIOD    : time := CLOCK_PERIOD / 2;
   
begin   
   clk <= clk_temp;
   
   internal_clock: process (clk_temp)
   begin
      clk_temp <= not clk_temp after HALF_PERIOD;
   end process internal_clock;   
end behavioral;