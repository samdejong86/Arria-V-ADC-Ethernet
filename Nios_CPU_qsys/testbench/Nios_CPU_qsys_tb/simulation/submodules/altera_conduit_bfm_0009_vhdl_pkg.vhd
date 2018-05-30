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
-- output_name:                  altera_conduit_bfm_0009
-- role:width:direction:         tcm_address_out:27:input,tcm_read_n_out:1:input,tcm_write_n_out:1:input,tcm_data_out:16:bidir,tcm_chipselect_n_out:1:input
-- clocked                       0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;






package altera_conduit_bfm_0009_vhdl_pkg is

   -- output signal register
   type altera_conduit_bfm_0009_out_trans_t is record
      sig_tcm_data_out_out             : std_logic_vector(15 downto 0);
      sig_tcm_data_out_oe              : std_logic;
   end record;
   
   shared variable out_trans        : altera_conduit_bfm_0009_out_trans_t;

   -- input signal register
   signal sig_tcm_address_out_in           : std_logic_vector(26 downto 0);
   signal sig_tcm_read_n_out_in            : std_logic_vector(0 downto 0);
   signal sig_tcm_write_n_out_in           : std_logic_vector(0 downto 0);
   signal sig_tcm_data_out_in              : std_logic_vector(15 downto 0);
   signal sig_tcm_chipselect_n_out_in      : std_logic_vector(0 downto 0);

   -- VHDL Procedure API
   
   -- get tcm_address_out value
   procedure get_tcm_address_out                  (signal_value : out std_logic_vector(26 downto 0));
   
   -- get tcm_read_n_out value
   procedure get_tcm_read_n_out                   (signal_value : out std_logic_vector(0 downto 0));
   
   -- get tcm_write_n_out value
   procedure get_tcm_write_n_out                  (signal_value : out std_logic_vector(0 downto 0));
   
   -- get tcm_data_out value
   procedure get_tcm_data_out                     (signal_value : out std_logic_vector(15 downto 0));
   
   -- set tcm_data_out value
   procedure set_tcm_data_out                     (signal_value : in std_logic_vector(15 downto 0));
   
   -- set tcm_data_out input / output direction
   procedure set_tcm_data_out_oe                  (signal_value : in std_logic);
   
   -- get tcm_chipselect_n_out value
   procedure get_tcm_chipselect_n_out             (signal_value : out std_logic_vector(0 downto 0));
   
   -- VHDL Event API

   procedure event_tcm_address_out_change;   

   procedure event_tcm_read_n_out_change;   

   procedure event_tcm_write_n_out_change;   

   procedure event_tcm_data_out_change;   

   procedure event_tcm_chipselect_n_out_change;   

end altera_conduit_bfm_0009_vhdl_pkg;

package body altera_conduit_bfm_0009_vhdl_pkg is
   
   procedure get_tcm_address_out                  (signal_value : out std_logic_vector(26 downto 0)) is
   begin

      signal_value := sig_tcm_address_out_in;
   
   end procedure get_tcm_address_out;
   
   procedure get_tcm_read_n_out                   (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_tcm_read_n_out_in;
   
   end procedure get_tcm_read_n_out;
   
   procedure get_tcm_write_n_out                  (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_tcm_write_n_out_in;
   
   end procedure get_tcm_write_n_out;
   
   procedure get_tcm_data_out                     (signal_value : out std_logic_vector(15 downto 0)) is
   begin

      signal_value := sig_tcm_data_out_in;
   
   end procedure get_tcm_data_out;
   
   procedure set_tcm_data_out                     (signal_value : in std_logic_vector(15 downto 0)) is
   begin
      
      out_trans.sig_tcm_data_out_out := signal_value;
      
   end procedure set_tcm_data_out;
   
   procedure set_tcm_data_out_oe                  (signal_value : in std_logic) is
   begin
   
      out_trans.sig_tcm_data_out_oe := signal_value;
   
   end procedure set_tcm_data_out_oe;
   
   procedure get_tcm_chipselect_n_out             (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_tcm_chipselect_n_out_in;
   
   end procedure get_tcm_chipselect_n_out;
   
   procedure event_tcm_address_out_change is
   begin

      wait until (sig_tcm_address_out_in'event);

   end event_tcm_address_out_change;
   procedure event_tcm_read_n_out_change is
   begin

      wait until (sig_tcm_read_n_out_in'event);

   end event_tcm_read_n_out_change;
   procedure event_tcm_write_n_out_change is
   begin

      wait until (sig_tcm_write_n_out_in'event);

   end event_tcm_write_n_out_change;
   procedure event_tcm_data_out_change is
   begin

      wait until (sig_tcm_data_out_in'event and out_trans.sig_tcm_data_out_oe = '0');

   end event_tcm_data_out_change;
   procedure event_tcm_chipselect_n_out_change is
   begin

      wait until (sig_tcm_chipselect_n_out_in'event);

   end event_tcm_chipselect_n_out_change;

end altera_conduit_bfm_0009_vhdl_pkg;

