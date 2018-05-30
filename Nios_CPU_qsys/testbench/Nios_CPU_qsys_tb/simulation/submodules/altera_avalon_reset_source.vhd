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


library ieee;
use ieee.std_logic_1164.all;

entity altera_avalon_reset_source is
   generic ( ASSERT_HIGH_RESET       : integer  := 1;
             INITIAL_RESET_CYCLES    : integer  := 0
            );
   port    ( clk           : in std_logic;
             reset         : out std_logic
            );
end altera_avalon_reset_source;

architecture behavioral of altera_avalon_reset_source is 
   
   signal      reset_active      : std_logic := '1';
   signal      clk_counter       : integer   := INITIAL_RESET_CYCLES;
   
begin
   reset <= reset_active when (ASSERT_HIGH_RESET = 1) else not reset_active;
      
   initial_reset: process (clk, clk_counter) -- initial reset process
   begin
      if (clk_counter = 0) then
         reset_active <= '0';
      end if;
      
      if rising_edge (clk) then
         clk_counter <= clk_counter - 1;
      end if;
   end process initial_reset;   
end behavioral;
