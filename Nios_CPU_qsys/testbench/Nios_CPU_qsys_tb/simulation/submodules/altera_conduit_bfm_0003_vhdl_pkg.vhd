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
-- output_name:                  altera_conduit_bfm_0003
-- role:width:direction:         RS:1:input,RW:1:input,data:8:bidir,E:1:input
-- clocked                       0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;





package altera_conduit_bfm_0003_vhdl_pkg is

   -- output signal register
   type altera_conduit_bfm_0003_out_trans_t is record
      sig_data_out     : std_logic_vector(7 downto 0);
      sig_data_oe      : std_logic;
   end record;
   
   shared variable out_trans        : altera_conduit_bfm_0003_out_trans_t;

   -- input signal register
   signal sig_RS_in        : std_logic_vector(0 downto 0);
   signal sig_RW_in        : std_logic_vector(0 downto 0);
   signal sig_data_in      : std_logic_vector(7 downto 0);
   signal sig_E_in         : std_logic_vector(0 downto 0);

   -- VHDL Procedure API
   
   -- get RS value
   procedure get_RS               (signal_value : out std_logic_vector(0 downto 0));
   
   -- get RW value
   procedure get_RW               (signal_value : out std_logic_vector(0 downto 0));
   
   -- get data value
   procedure get_data             (signal_value : out std_logic_vector(7 downto 0));
   
   -- set data value
   procedure set_data             (signal_value : in std_logic_vector(7 downto 0));
   
   -- set data input / output direction
   procedure set_data_oe          (signal_value : in std_logic);
   
   -- get E value
   procedure get_E                (signal_value : out std_logic_vector(0 downto 0));
   
   -- VHDL Event API

   procedure event_RS_change;   

   procedure event_RW_change;   

   procedure event_data_change;   

   procedure event_E_change;   

end altera_conduit_bfm_0003_vhdl_pkg;

package body altera_conduit_bfm_0003_vhdl_pkg is
   
   procedure get_RS               (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_RS_in;
   
   end procedure get_RS;
   
   procedure get_RW               (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_RW_in;
   
   end procedure get_RW;
   
   procedure get_data             (signal_value : out std_logic_vector(7 downto 0)) is
   begin

      signal_value := sig_data_in;
   
   end procedure get_data;
   
   procedure set_data             (signal_value : in std_logic_vector(7 downto 0)) is
   begin
      
      out_trans.sig_data_out := signal_value;
      
   end procedure set_data;
   
   procedure set_data_oe          (signal_value : in std_logic) is
   begin
   
      out_trans.sig_data_oe := signal_value;
   
   end procedure set_data_oe;
   
   procedure get_E                (signal_value : out std_logic_vector(0 downto 0)) is
   begin

      signal_value := sig_E_in;
   
   end procedure get_E;
   
   procedure event_RS_change is
   begin

      wait until (sig_RS_in'event);

   end event_RS_change;
   procedure event_RW_change is
   begin

      wait until (sig_RW_in'event);

   end event_RW_change;
   procedure event_data_change is
   begin

      wait until (sig_data_in'event and out_trans.sig_data_oe = '0');

   end event_data_change;
   procedure event_E_change is
   begin

      wait until (sig_E_in'event);

   end event_E_change;

end altera_conduit_bfm_0003_vhdl_pkg;

