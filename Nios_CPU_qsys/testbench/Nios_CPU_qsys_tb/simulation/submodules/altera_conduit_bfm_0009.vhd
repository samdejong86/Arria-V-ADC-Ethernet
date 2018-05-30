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
-- output_name:                  altera_conduit_bfm_0009
-- role:width:direction:         tcm_address_out:27:input,tcm_read_n_out:1:input,tcm_write_n_out:1:input,tcm_data_out:16:bidir,tcm_chipselect_n_out:1:input
-- clocked                       0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;
use work.altera_conduit_bfm_0009_vhdl_pkg.all;

entity altera_conduit_bfm_0009 is
   port (
      sig_tcm_address_out        : in    std_logic_vector(26 downto 0);
      sig_tcm_read_n_out         : in    std_logic_vector(0 downto 0);
      sig_tcm_write_n_out        : in    std_logic_vector(0 downto 0);
      sig_tcm_data_out           : inout std_logic_vector(15 downto 0);
      sig_tcm_chipselect_n_out   : in    std_logic_vector(0 downto 0)
   );
end altera_conduit_bfm_0009;

architecture altera_conduit_bfm_0009_arch of altera_conduit_bfm_0009 is 

      signal update : std_logic := '0';

   begin
      process begin
         wait for 1 ps;
         update <= not update;
      end process;

      process (update) begin
         sig_tcm_address_out_in     <= sig_tcm_address_out;
         sig_tcm_read_n_out_in      <= sig_tcm_read_n_out;
         sig_tcm_write_n_out_in     <= sig_tcm_write_n_out;

         if out_trans.sig_tcm_data_out_oe = '1' then
            sig_tcm_data_out           <= out_trans.sig_tcm_data_out_out after 1 ps;
            sig_tcm_data_out_in        <= (others => 'Z');
         else
            sig_tcm_data_out           <= (others => 'Z');
            sig_tcm_data_out_in        <= sig_tcm_data_out;
         end if;
         sig_tcm_chipselect_n_out_in <= sig_tcm_chipselect_n_out;
      end process;

end altera_conduit_bfm_0009_arch;

