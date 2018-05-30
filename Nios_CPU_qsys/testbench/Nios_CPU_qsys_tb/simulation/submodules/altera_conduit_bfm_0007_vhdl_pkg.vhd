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
-- output_name:                  altera_conduit_bfm_0007
-- role:width:direction:         set_10:1:output,set_1000:1:output,eth_mode:1:input,ena_10:1:input
-- clocked                       0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;





package altera_conduit_bfm_0007_vhdl_pkg is

   -- output signal register
   type altera_conduit_bfm_0007_out_trans_t is record
      sig_set_10_out       : std_logic_vector(0 downto 0);
      sig_set_1000_out     : std_logic_vector(0 downto 0);
   end record;
   
   shared variable out_trans        : altera_conduit_bfm_0007_out_trans_t;

   -- input signal register
   signal sig_eth_mode_in      : std_logic_vector(0 downto 0);
   signal sig_ena_10_in        : std_logic_vector(0 downto 0);

   -- VHDL Procedure API
   
   -- set set_10 value
   procedure set_set_10               (signal_value : in std_logic_vector(0 downto 0));
   
   -- set set_1000 value
   procedure set_set_1000             (signal_value : in std_logic_vector(0 downto 0));
   
   -- get eth_mode value
   procedure get_eth_mode             (signal_value : out std_logic_vector(0 downto 0));
   
   -- get ena_10 value
   procedure get_ena_10               (signal_value : out std_logic_vector(0 downto 0));
   
   -- VHDL Event API

   procedure event_eth_mode_change;   

   procedure event_ena_10_change;   

end altera_conduit_bfm_0007_vhdl_pkg;

package body altera_conduit_bfm_0007_vhdl_pkg is
   
   procedure set_set_10               (signal_value : in std_logic_vector(0 downto 0)) is
   begin
      
      out_trans.sig_set_10_out := signal_value;
      
   end procedure set_set_10;
   
   procedure set_set_1000             (signal_value : in std_logic_vector(0 downto 0)) is
   begin
      
      out_trans.sig_set_1000_out := signal_value;
      
   end procedure set_set_1000;
   
   procedure get_eth_mode             (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_eth_mode_in;
   
   end procedure get_eth_mode;
   
   procedure get_ena_10               (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_ena_10_in;
   
   end procedure get_ena_10;
   
   procedure event_eth_mode_change is
   begin

      wait until (sig_eth_mode_in'event);

   end event_eth_mode_change;
   procedure event_ena_10_change is
   begin

      wait until (sig_ena_10_in'event);

   end event_ena_10_change;

end altera_conduit_bfm_0007_vhdl_pkg;

