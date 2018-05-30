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


-- $Id: //acds/main/ip/sopc/components/verification/altera_tristate_conduit_bfm/altera_tristate_conduit_bfm.sv.terp#7 $
-- $Revision: #7 $
-- $Date: 2010/08/05 $
-- $Author: klong $
-------------------------------------------------------------------------------
-- =head1 NAME
-- altera_conduit_bfm
-- =head1 SYNOPSIS
-- Bus Functional Model (BFM) for a Standard Conduit BFM
-------------------------------------------------------------------------------
-- =head1 DESCRIPTION
-- This is a Bus Functional Model (BFM) for a Standard Conduit Master.
-- This BFM sampled the input/bidirection port value or driving user's value to 
-- output ports when user call the API.  
-- This BFM's HDL is been generated through terp file in Qsys/SOPC Builder.
-- Generation parameters:
-- output_name:                  altera_conduit_bfm_0007
-- role:width:direction:         set_10:1:output,set_1000:1:output,eth_mode:1:input,ena_10:1:input
-- clocked                       0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;
use work.altera_conduit_bfm_0007_vhdl_pkg.all;

entity altera_conduit_bfm_0007 is
   port (
      sig_set_10     : out   std_logic_vector(0 downto 0);
      sig_set_1000   : out   std_logic_vector(0 downto 0);
      sig_eth_mode   : in    std_logic_vector(0 downto 0);
      sig_ena_10     : in    std_logic_vector(0 downto 0)
   );
end altera_conduit_bfm_0007;

architecture altera_conduit_bfm_0007_arch of altera_conduit_bfm_0007 is 

      signal update : std_logic := '0';

   begin
      process begin
         wait for 1 ps;
         update <= not update;
      end process;

      process (update) begin
         sig_set_10     <= out_trans.sig_set_10_out after 1 ps;
         sig_set_1000   <= out_trans.sig_set_1000_out after 1 ps;
         sig_eth_mode_in <= sig_eth_mode;
         sig_ena_10_in  <= sig_ena_10;
      end process;

end altera_conduit_bfm_0007_arch;

