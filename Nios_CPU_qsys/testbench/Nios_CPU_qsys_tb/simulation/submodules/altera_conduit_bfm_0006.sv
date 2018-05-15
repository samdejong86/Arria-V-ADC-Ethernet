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
// output_name:                                       altera_conduit_bfm_0006
// role:width:direction:                              rgmii_in:4:output,rgmii_out:4:input,rx_control:1:output,tx_control:1:input
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module altera_conduit_bfm_0006
(
   sig_rgmii_in,
   sig_rgmii_out,
   sig_rx_control,
   sig_tx_control
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output [3 : 0] sig_rgmii_in;
   input [3 : 0] sig_rgmii_out;
   output sig_rx_control;
   input sig_tx_control;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic [3 : 0] ROLE_rgmii_in_t;
   typedef logic [3 : 0] ROLE_rgmii_out_t;
   typedef logic ROLE_rx_control_t;
   typedef logic ROLE_tx_control_t;

   reg [3 : 0] sig_rgmii_in_temp;
   reg [3 : 0] sig_rgmii_in_out;
   logic [3 : 0] sig_rgmii_out_in;
   logic [3 : 0] sig_rgmii_out_local;
   reg sig_rx_control_temp;
   reg sig_rx_control_out;
   logic [0 : 0] sig_tx_control_in;
   logic [0 : 0] sig_tx_control_local;

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
   
   event signal_input_rgmii_out_change;
   event signal_input_tx_control_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "16.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // rgmii_in
   // -------------------------------------------------------

   function automatic void set_rgmii_in (
      ROLE_rgmii_in_t new_value
   );
      // Drive the new value to rgmii_in.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_rgmii_in_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // rgmii_out
   // -------------------------------------------------------
   function automatic ROLE_rgmii_out_t get_rgmii_out();
   
      // Gets the rgmii_out input value.
      $sformat(message, "%m: called get_rgmii_out");
      print(VERBOSITY_DEBUG, message);
      return sig_rgmii_out_in;
      
   endfunction

   // -------------------------------------------------------
   // rx_control
   // -------------------------------------------------------

   function automatic void set_rx_control (
      ROLE_rx_control_t new_value
   );
      // Drive the new value to rx_control.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_rx_control_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // tx_control
   // -------------------------------------------------------
   function automatic ROLE_tx_control_t get_tx_control();
   
      // Gets the tx_control input value.
      $sformat(message, "%m: called get_tx_control");
      print(VERBOSITY_DEBUG, message);
      return sig_tx_control_in;
      
   endfunction

   assign sig_rgmii_in = sig_rgmii_in_temp;
   assign sig_rgmii_out_in = sig_rgmii_out;
   assign sig_rx_control = sig_rx_control_temp;
   assign sig_tx_control_in = sig_tx_control;


   always @(sig_rgmii_out_in) begin
      if (sig_rgmii_out_local != sig_rgmii_out_in)
         -> signal_input_rgmii_out_change;
      sig_rgmii_out_local = sig_rgmii_out_in;
   end
   
   always @(sig_tx_control_in) begin
      if (sig_tx_control_local != sig_tx_control_in)
         -> signal_input_tx_control_change;
      sig_tx_control_local = sig_tx_control_in;
   end
   


// synthesis translate_on

endmodule

