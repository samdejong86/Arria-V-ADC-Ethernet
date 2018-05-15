// (C) 2001-2016 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/main/ip/sopc/components/verification/altera_tristate_conduit_bfm/altera_tristate_conduit_bfm.sv.terp#7 $
// $Revision: #7 $
// $Date: 2010/08/05 $
// $Author: klong $
//-----------------------------------------------------------------------------
// =head1 NAME
// altera_conduit_bfm
// =head1 SYNOPSIS
// Bus Functional Model (BFM) for a Standard Conduit BFM
//-----------------------------------------------------------------------------
// =head1 DESCRIPTION
// This is a Bus Functional Model (BFM) for a Standard Conduit Master.
// This BFM sampled the input/bidirection port value or driving user's value to 
// output ports when user call the API.  
// This BFM's HDL is been generated through terp file in Qsys/SOPC Builder.
// Generation parameters:
// output_name:                                       altera_conduit_bfm_0007
// role:width:direction:                              set_10:1:output,set_1000:1:output,eth_mode:1:input,ena_10:1:input
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module altera_conduit_bfm_0007
(
   sig_set_10,
   sig_set_1000,
   sig_eth_mode,
   sig_ena_10
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output sig_set_10;
   output sig_set_1000;
   input sig_eth_mode;
   input sig_ena_10;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_set_10_t;
   typedef logic ROLE_set_1000_t;
   typedef logic ROLE_eth_mode_t;
   typedef logic ROLE_ena_10_t;

   reg sig_set_10_temp;
   reg sig_set_10_out;
   reg sig_set_1000_temp;
   reg sig_set_1000_out;
   logic [0 : 0] sig_eth_mode_in;
   logic [0 : 0] sig_eth_mode_local;
   logic [0 : 0] sig_ena_10_in;
   logic [0 : 0] sig_ena_10_local;

   //--------------------------------------------------------------------------
   // =head1 Public Methods API
   // =pod
   // This section describes the public methods in the application programming
   // interface (API). The application program interface provides methods for 
   // a testbench which instantiates, controls and queries state in this BFM 
   // component. Test programs must only use these public access methods and 
   // events to communicate with this BFM component. The API and module pins
   // are the only interfaces of this component that are guaranteed to be
   // stable. The API will be maintained for the life of the product. 
   // While we cannot prevent a test program from directly accessing internal
   // tasks, functions, or data private to the BFM, there is no guarantee that
   // these will be present in the future. In fact, it is best for the user
   // to assume that the underlying implementation of this component can 
   // and will change.
   // =cut
   //--------------------------------------------------------------------------
   
   event signal_input_eth_mode_change;
   event signal_input_ena_10_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "16.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // set_10
   // -------------------------------------------------------

   function automatic void set_set_10 (
      ROLE_set_10_t new_value
   );
      // Drive the new value to set_10.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_set_10_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // set_1000
   // -------------------------------------------------------

   function automatic void set_set_1000 (
      ROLE_set_1000_t new_value
   );
      // Drive the new value to set_1000.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_set_1000_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // eth_mode
   // -------------------------------------------------------
   function automatic ROLE_eth_mode_t get_eth_mode();
   
      // Gets the eth_mode input value.
      $sformat(message, "%m: called get_eth_mode");
      print(VERBOSITY_DEBUG, message);
      return sig_eth_mode_in;
      
   endfunction

   // -------------------------------------------------------
   // ena_10
   // -------------------------------------------------------
   function automatic ROLE_ena_10_t get_ena_10();
   
      // Gets the ena_10 input value.
      $sformat(message, "%m: called get_ena_10");
      print(VERBOSITY_DEBUG, message);
      return sig_ena_10_in;
      
   endfunction

   assign sig_set_10 = sig_set_10_temp;
   assign sig_set_1000 = sig_set_1000_temp;
   assign sig_eth_mode_in = sig_eth_mode;
   assign sig_ena_10_in = sig_ena_10;


   always @(sig_eth_mode_in) begin
      if (sig_eth_mode_local != sig_eth_mode_in)
         -> signal_input_eth_mode_change;
      sig_eth_mode_local = sig_eth_mode_in;
   end
   
   always @(sig_ena_10_in) begin
      if (sig_ena_10_local != sig_ena_10_in)
         -> signal_input_ena_10_change;
      sig_ena_10_local = sig_ena_10_in;
   end
   


// synthesis translate_on

endmodule

