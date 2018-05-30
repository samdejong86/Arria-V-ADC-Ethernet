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


-- This model is based on
-- http://members.aol.com/vhdlcohen/vhdl/vhdlcode/switch1.vhd
-- and therefore the following copyright statement is valid:

------------------------------------------------------------------------
-- Copyright (c) 1997, Ben Cohen.   All rights reserved.
-- This model can be used in conjunction with the Kluwer Academic book
-- "VHDL Coding Styles and Methodologies", ISBN: 0-7923-9598-0
-- "VHDL Amswers to Frequently Asked Questions", Kluwer Academic
-- which discusses guidelines and testbench design issues.
--
-- This source file for the switch model may be used and
-- distributed without restriction provided that this copyright
-- statement is not removed from the file and that any derivative work
-- contains this copyright notice.
------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity altera_inout is
  generic (
    WIDTH_A : POSITIVE;
    WIDTH_B : POSITIVE;
    CHAIN_LENGTH : POSITIVE);
  port (
    a : inout std_logic_vector (WIDTH_A - 1 downto 0);
    b : inout std_logic_vector (WIDTH_B - 1 downto 0));
end altera_inout;

architecture rtl of altera_inout is

begin  -- rtl
-- synthesis translate_off
  process
	variable t: time;
  begin

    wait on a'transaction, b'transaction until t /= now;
    t := now;

    for N in 0 to WIDTH_A - 1 loop
      a(N) <= 'Z';      
    end loop;  -- N
    for N in 0 to WIDTH_B - 1 loop
      b(N) <= 'Z';      
    end loop;  -- N


    for N in 1 to CHAIN_LENGTH*2 loop
	wait for 0 ns;
    end loop;

    for N in 1 to CHAIN_LENGTH*2 loop

      for M in 0 to WIDTH_A - 1 loop
        if(M < WIDTH_A and M < WIDTH_B) then
	  a(M) <= b(M);
        end if;

      end loop;  -- M

      for M in 0 to WIDTH_B - 1 loop
	if(M < WIDTH_A and M < WIDTH_B) then
	  b(M) <= a(M);
        end if;
      end loop;  -- M
 
      wait for 0 ns;
    end loop;


  end process;
-- synthesis translate_on
end rtl;
