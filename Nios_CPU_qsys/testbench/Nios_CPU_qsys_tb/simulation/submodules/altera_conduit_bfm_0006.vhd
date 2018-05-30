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
-- output_name:                  altera_conduit_bfm_0006
-- role:width:direction:         rgmii_in:4:output,rgmii_out:4:input,rx_control:1:output,tx_control:1:input
-- clocked                       0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;
use work.altera_conduit_bfm_0006_vhdl_pkg.all;

entity altera_conduit_bfm_0006 is
   port (
      sig_rgmii_in     : out   std_logic_vector(3 downto 0);
      sig_rgmii_out    : in    std_logic_vector(3 downto 0);
      sig_rx_control   : out   std_logic_vector(0 downto 0);
      sig_tx_control   : in    std_logic_vector(0 downto 0)
   );
end altera_conduit_bfm_0006;

architecture altera_conduit_bfm_0006_arch of altera_conduit_bfm_0006 is 

      signal update : std_logic := '0';

   begin
      process begin
         wait for 1 ps;
         update <= not update;
      end process;

      process (update) begin
         sig_rgmii_in     <= out_trans.sig_rgmii_in_out after 1 ps;
         sig_rgmii_out_in <= sig_rgmii_out;
         sig_rx_control   <= out_trans.sig_rx_control_out after 1 ps;
         sig_tx_control_in <= sig_tx_control;
      end process;

end altera_conduit_bfm_0006_arch;

