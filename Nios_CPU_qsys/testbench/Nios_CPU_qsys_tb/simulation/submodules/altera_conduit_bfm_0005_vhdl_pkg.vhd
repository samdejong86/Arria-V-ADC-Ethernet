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
-- This is a Bus Functional Model (BFM) VHDL package for a Standard Conduit Master.
-- This package provides the API that will be used to get the value of the sampled
-- input/bidirection port or set the value to be driven to the output ports.
-- This BFM's HDL is been generated through terp file in Qsys/SOPC Builder.
-- Generation parameters:
-- output_name:                  altera_conduit_bfm_0005
-- role:width:direction:         mdc:1:input,mdio_in:1:output,mdio_out:1:input,mdio_oen:1:input
-- clocked                       0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;





package altera_conduit_bfm_0005_vhdl_pkg is

   -- output signal register
   type altera_conduit_bfm_0005_out_trans_t is record
      sig_mdio_in_out      : std_logic_vector(0 downto 0);
   end record;
   
   shared variable out_trans        : altera_conduit_bfm_0005_out_trans_t;

   -- input signal register
   signal sig_mdc_in           : std_logic_vector(0 downto 0);
   signal sig_mdio_out_in      : std_logic_vector(0 downto 0);
   signal sig_mdio_oen_in      : std_logic_vector(0 downto 0);

   -- VHDL Procedure API
   
   -- get mdc value
   procedure get_mdc                  (signal_value : out std_logic_vector(0 downto 0));
   
   -- set mdio_in value
   procedure set_mdio_in              (signal_value : in std_logic_vector(0 downto 0));
   
   -- get mdio_out value
   procedure get_mdio_out             (signal_value : out std_logic_vector(0 downto 0));
   
   -- get mdio_oen value
   procedure get_mdio_oen             (signal_value : out std_logic_vector(0 downto 0));
   
   -- VHDL Event API

   procedure event_mdc_change;   

   procedure event_mdio_out_change;   

   procedure event_mdio_oen_change;   

end altera_conduit_bfm_0005_vhdl_pkg;

package body altera_conduit_bfm_0005_vhdl_pkg is
   
   procedure get_mdc                  (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_mdc_in;
   
   end procedure get_mdc;
   
   procedure set_mdio_in              (signal_value : in std_logic_vector(0 downto 0)) is
   begin
      
      out_trans.sig_mdio_in_out := signal_value;
      
   end procedure set_mdio_in;
   
   procedure get_mdio_out             (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_mdio_out_in;
   
   end procedure get_mdio_out;
   
   procedure get_mdio_oen             (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_mdio_oen_in;
   
   end procedure get_mdio_oen;
   
   procedure event_mdc_change is
   begin

      wait until (sig_mdc_in'event);

   end event_mdc_change;
   procedure event_mdio_out_change is
   begin

      wait until (sig_mdio_out_in'event);

   end event_mdio_out_change;
   procedure event_mdio_oen_change is
   begin

      wait until (sig_mdio_oen_in'event);

   end event_mdio_oen_change;

end altera_conduit_bfm_0005_vhdl_pkg;

