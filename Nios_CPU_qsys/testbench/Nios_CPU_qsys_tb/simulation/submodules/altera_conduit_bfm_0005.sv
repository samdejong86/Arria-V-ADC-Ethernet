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
// output_name:                                       altera_conduit_bfm_0005
// role:width:direction:                              mdc:1:input,mdio_in:1:output,mdio_out:1:input,mdio_oen:1:input
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module altera_conduit_bfm_0005
(
   sig_mdc,
   sig_mdio_in,
   sig_mdio_out,
   sig_mdio_oen
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input sig_mdc;
   output sig_mdio_in;
   input sig_mdio_out;
   input sig_mdio_oen;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_mdc_t;
   typedef logic ROLE_mdio_in_t;
   typedef logic ROLE_mdio_out_t;
   typedef logic ROLE_mdio_oen_t;

   logic [0 : 0] sig_mdc_in;
   logic [0 : 0] sig_mdc_local;
   reg sig_mdio_in_temp;
   reg sig_mdio_in_out;
   logic [0 : 0] sig_mdio_out_in;
   logic [0 : 0] sig_mdio_out_local;
   logic [0 : 0] sig_mdio_oen_in;
   logic [0 : 0] sig_mdio_oen_local;

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
   
   event signal_input_mdc_change;
   event signal_input_mdio_out_change;
   event signal_input_mdio_oen_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "16.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // mdc
   // -------------------------------------------------------
   function automatic ROLE_mdc_t get_mdc();
   
      // Gets the mdc input value.
      $sformat(message, "%m: called get_mdc");
      print(VERBOSITY_DEBUG, message);
      return sig_mdc_in;
      
   endfunction

   // -------------------------------------------------------
   // mdio_in
   // -------------------------------------------------------

   function automatic void set_mdio_in (
      ROLE_mdio_in_t new_value
   );
      // Drive the new value to mdio_in.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_mdio_in_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // mdio_out
   // -------------------------------------------------------
   function automatic ROLE_mdio_out_t get_mdio_out();
   
      // Gets the mdio_out input value.
      $sformat(message, "%m: called get_mdio_out");
      print(VERBOSITY_DEBUG, message);
      return sig_mdio_out_in;
      
   endfunction

   // -------------------------------------------------------
   // mdio_oen
   // -------------------------------------------------------
   function automatic ROLE_mdio_oen_t get_mdio_oen();
   
      // Gets the mdio_oen input value.
      $sformat(message, "%m: called get_mdio_oen");
      print(VERBOSITY_DEBUG, message);
      return sig_mdio_oen_in;
      
   endfunction

   assign sig_mdc_in = sig_mdc;
   assign sig_mdio_in = sig_mdio_in_temp;
   assign sig_mdio_out_in = sig_mdio_out;
   assign sig_mdio_oen_in = sig_mdio_oen;


   always @(sig_mdc_in) begin
      if (sig_mdc_local != sig_mdc_in)
         -> signal_input_mdc_change;
      sig_mdc_local = sig_mdc_in;
   end
   
   always @(sig_mdio_out_in) begin
      if (sig_mdio_out_local != sig_mdio_out_in)
         -> signal_input_mdio_out_change;
      sig_mdio_out_local = sig_mdio_out_in;
   end
   
   always @(sig_mdio_oen_in) begin
      if (sig_mdio_oen_local != sig_mdio_oen_in)
         -> signal_input_mdio_oen_change;
      sig_mdio_oen_local = sig_mdio_oen_in;
   end
   


// synthesis translate_on

endmodule

