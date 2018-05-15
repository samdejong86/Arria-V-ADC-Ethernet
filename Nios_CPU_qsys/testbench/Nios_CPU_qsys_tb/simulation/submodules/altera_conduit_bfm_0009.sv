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
// output_name:                                       altera_conduit_bfm_0009
// role:width:direction:                              tcm_address_out:27:input,tcm_read_n_out:1:input,tcm_write_n_out:1:input,tcm_data_out:16:bidir,tcm_chipselect_n_out:1:input
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module altera_conduit_bfm_0009
(
   sig_tcm_address_out,
   sig_tcm_read_n_out,
   sig_tcm_write_n_out,
   sig_tcm_data_out,
   sig_tcm_chipselect_n_out
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input [26 : 0] sig_tcm_address_out;
   input sig_tcm_read_n_out;
   input sig_tcm_write_n_out;
   inout wire [15 : 0] sig_tcm_data_out;
   input sig_tcm_chipselect_n_out;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic [26 : 0] ROLE_tcm_address_out_t;
   typedef logic ROLE_tcm_read_n_out_t;
   typedef logic ROLE_tcm_write_n_out_t;
   typedef logic [15 : 0] ROLE_tcm_data_out_t;
   typedef logic ROLE_tcm_chipselect_n_out_t;

   logic [26 : 0] sig_tcm_address_out_in;
   logic [26 : 0] sig_tcm_address_out_local;
   logic [0 : 0] sig_tcm_read_n_out_in;
   logic [0 : 0] sig_tcm_read_n_out_local;
   logic [0 : 0] sig_tcm_write_n_out_in;
   logic [0 : 0] sig_tcm_write_n_out_local;
   logic sig_tcm_data_out_oe;
   logic sig_tcm_data_out_oe_temp = 0;
   reg [15 : 0] sig_tcm_data_out_temp;
   reg [15 : 0] sig_tcm_data_out_out;
   logic [15 : 0] sig_tcm_data_out_in;
   logic [15 : 0] sig_tcm_data_out_local;
   logic [0 : 0] sig_tcm_chipselect_n_out_in;
   logic [0 : 0] sig_tcm_chipselect_n_out_local;

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
   
   event signal_input_tcm_address_out_change;
   event signal_input_tcm_read_n_out_change;
   event signal_input_tcm_write_n_out_change;
   event signal_input_tcm_data_out_change;
   event signal_input_tcm_chipselect_n_out_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "16.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // tcm_address_out
   // -------------------------------------------------------
   function automatic ROLE_tcm_address_out_t get_tcm_address_out();
   
      // Gets the tcm_address_out input value.
      $sformat(message, "%m: called get_tcm_address_out");
      print(VERBOSITY_DEBUG, message);
      return sig_tcm_address_out_in;
      
   endfunction

   // -------------------------------------------------------
   // tcm_read_n_out
   // -------------------------------------------------------
   function automatic ROLE_tcm_read_n_out_t get_tcm_read_n_out();
   
      // Gets the tcm_read_n_out input value.
      $sformat(message, "%m: called get_tcm_read_n_out");
      print(VERBOSITY_DEBUG, message);
      return sig_tcm_read_n_out_in;
      
   endfunction

   // -------------------------------------------------------
   // tcm_write_n_out
   // -------------------------------------------------------
   function automatic ROLE_tcm_write_n_out_t get_tcm_write_n_out();
   
      // Gets the tcm_write_n_out input value.
      $sformat(message, "%m: called get_tcm_write_n_out");
      print(VERBOSITY_DEBUG, message);
      return sig_tcm_write_n_out_in;
      
   endfunction

   // -------------------------------------------------------
   // tcm_data_out
   // -------------------------------------------------------
   function automatic ROLE_tcm_data_out_t get_tcm_data_out();
   
      // Gets the tcm_data_out input value.
      $sformat(message, "%m: called get_tcm_data_out");
      print(VERBOSITY_DEBUG, message);
      return sig_tcm_data_out_in;
      
   endfunction

   function automatic void set_tcm_data_out (
      ROLE_tcm_data_out_t new_value
   );
      // Drive the new value to tcm_data_out.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_tcm_data_out_temp = new_value;
   endfunction
   
   function automatic void set_tcm_data_out_oe (
      bit enable
   );
      // bidir port tcm_data_out will work as output port when set to 1.
      // bidir port tcm_data_out will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_tcm_data_out_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // tcm_chipselect_n_out
   // -------------------------------------------------------
   function automatic ROLE_tcm_chipselect_n_out_t get_tcm_chipselect_n_out();
   
      // Gets the tcm_chipselect_n_out input value.
      $sformat(message, "%m: called get_tcm_chipselect_n_out");
      print(VERBOSITY_DEBUG, message);
      return sig_tcm_chipselect_n_out_in;
      
   endfunction

   assign sig_tcm_address_out_in = sig_tcm_address_out;
   assign sig_tcm_read_n_out_in = sig_tcm_read_n_out;
   assign sig_tcm_write_n_out_in = sig_tcm_write_n_out;
   assign sig_tcm_data_out_oe = sig_tcm_data_out_oe_temp;
   assign sig_tcm_data_out = (sig_tcm_data_out_oe == 1)? sig_tcm_data_out_temp:'z;
   assign sig_tcm_data_out_in = (sig_tcm_data_out_oe == 0)? sig_tcm_data_out:'z;
   assign sig_tcm_chipselect_n_out_in = sig_tcm_chipselect_n_out;


   always @(sig_tcm_address_out_in) begin
      if (sig_tcm_address_out_local != sig_tcm_address_out_in)
         -> signal_input_tcm_address_out_change;
      sig_tcm_address_out_local = sig_tcm_address_out_in;
   end
   
   always @(sig_tcm_read_n_out_in) begin
      if (sig_tcm_read_n_out_local != sig_tcm_read_n_out_in)
         -> signal_input_tcm_read_n_out_change;
      sig_tcm_read_n_out_local = sig_tcm_read_n_out_in;
   end
   
   always @(sig_tcm_write_n_out_in) begin
      if (sig_tcm_write_n_out_local != sig_tcm_write_n_out_in)
         -> signal_input_tcm_write_n_out_change;
      sig_tcm_write_n_out_local = sig_tcm_write_n_out_in;
   end
   
   always @(sig_tcm_data_out_in) begin
      if (sig_tcm_data_out_oe == 0) begin
         if (sig_tcm_data_out_local != sig_tcm_data_out_in)
            -> signal_input_tcm_data_out_change;
         sig_tcm_data_out_local = sig_tcm_data_out_in;
      end
   end
   
   always @(sig_tcm_chipselect_n_out_in) begin
      if (sig_tcm_chipselect_n_out_local != sig_tcm_chipselect_n_out_in)
         -> signal_input_tcm_chipselect_n_out_change;
      sig_tcm_chipselect_n_out_local = sig_tcm_chipselect_n_out_in;
   end
   


// synthesis translate_on

endmodule

