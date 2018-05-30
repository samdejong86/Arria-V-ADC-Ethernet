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
-- output_name:                  altera_conduit_bfm_0006
-- role:width:direction:         rgmii_in:4:output,rgmii_out:4:input,rx_control:1:output,tx_control:1:input
-- clocked                       0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;





package altera_conduit_bfm_0006_vhdl_pkg is

   -- output signal register
   type altera_conduit_bfm_0006_out_trans_t is record
      sig_rgmii_in_out       : std_logic_vector(3 downto 0);
      sig_rx_control_out     : std_logic_vector(0 downto 0);
   end record;
   
   shared variable out_trans        : altera_conduit_bfm_0006_out_trans_t;

   -- input signal register
   signal sig_rgmii_out_in       : std_logic_vector(3 downto 0);
   signal sig_tx_control_in      : std_logic_vector(0 downto 0);

   -- VHDL Procedure API
   
   -- set rgmii_in value
   procedure set_rgmii_in               (signal_value : in std_logic_vector(3 downto 0));
   
   -- get rgmii_out value
   procedure get_rgmii_out              (signal_value : out std_logic_vector(3 downto 0));
   
   -- set rx_control value
   procedure set_rx_control             (signal_value : in std_logic_vector(0 downto 0));
   
   -- get tx_control value
   procedure get_tx_control             (signal_value : out std_logic_vector(0 downto 0));
   
   -- VHDL Event API

   procedure event_rgmii_out_change;   

   procedure event_tx_control_change;   

end altera_conduit_bfm_0006_vhdl_pkg;

package body altera_conduit_bfm_0006_vhdl_pkg is
   
   procedure set_rgmii_in               (signal_value : in std_logic_vector(3 downto 0)) is
   begin
      
      out_trans.sig_rgmii_in_out := signal_value;
      
   end procedure set_rgmii_in;
   
   procedure get_rgmii_out              (signal_value : out std_logic_vector(3 downto 0)) is
   begin

      signal_value := sig_rgmii_out_in;
   
   end procedure get_rgmii_out;
   
   procedure set_rx_control             (signal_value : in std_logic_vector(0 downto 0)) is
   begin
      
      out_trans.sig_rx_control_out := signal_value;
      
   end procedure set_rx_control;
   
   procedure get_tx_control             (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_tx_control_in;
   
   end procedure get_tx_control;
   
   procedure event_rgmii_out_change is
   begin

      wait until (sig_rgmii_out_in'event);

   end event_rgmii_out_change;
   procedure event_tx_control_change is
   begin

      wait until (sig_tx_control_in'event);

   end event_tx_control_change;

end altera_conduit_bfm_0006_vhdl_pkg;

