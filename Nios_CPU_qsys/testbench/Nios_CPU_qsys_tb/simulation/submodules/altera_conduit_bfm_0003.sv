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
// output_name:                                       altera_conduit_bfm_0003
// role:width:direction:                              RS:1:input,RW:1:input,data:8:bidir,E:1:input
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module altera_conduit_bfm_0003
(
   sig_RS,
   sig_RW,
   sig_data,
   sig_E
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input sig_RS;
   input sig_RW;
   inout wire [7 : 0] sig_data;
   input sig_E;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_RS_t;
   typedef logic ROLE_RW_t;
   typedef logic [7 : 0] ROLE_data_t;
   typedef logic ROLE_E_t;

   logic [0 : 0] sig_RS_in;
   logic [0 : 0] sig_RS_local;
   logic [0 : 0] sig_RW_in;
   logic [0 : 0] sig_RW_local;
   logic sig_data_oe;
   logic sig_data_oe_temp = 0;
   reg [7 : 0] sig_data_temp;
   reg [7 : 0] sig_data_out;
   logic [7 : 0] sig_data_in;
   logic [7 : 0] sig_data_local;
   logic [0 : 0] sig_E_in;
   logic [0 : 0] sig_E_local;

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
   
   event signal_input_RS_change;
   event signal_input_RW_change;
   event signal_input_data_change;
   event signal_input_E_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "16.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // RS
   // -------------------------------------------------------
   function automatic ROLE_RS_t get_RS();
   
      // Gets the RS input value.
      $sformat(message, "%m: called get_RS");
      print(VERBOSITY_DEBUG, message);
      return sig_RS_in;
      
   endfunction

   // -------------------------------------------------------
   // RW
   // -------------------------------------------------------
   function automatic ROLE_RW_t get_RW();
   
      // Gets the RW input value.
      $sformat(message, "%m: called get_RW");
      print(VERBOSITY_DEBUG, message);
      return sig_RW_in;
      
   endfunction

   // -------------------------------------------------------
   // data
   // -------------------------------------------------------
   function automatic ROLE_data_t get_data();
   
      // Gets the data input value.
      $sformat(message, "%m: called get_data");
      print(VERBOSITY_DEBUG, message);
      return sig_data_in;
      
   endfunction

   function automatic void set_data (
      ROLE_data_t new_value
   );
      // Drive the new value to data.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_data_temp = new_value;
   endfunction
   
   function automatic void set_data_oe (
      bit enable
   );
      // bidir port data will work as output port when set to 1.
      // bidir port data will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_data_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // E
   // -------------------------------------------------------
   function automatic ROLE_E_t get_E();
   
      // Gets the E input value.
      $sformat(message, "%m: called get_E");
      print(VERBOSITY_DEBUG, message);
      return sig_E_in;
      
   endfunction

   assign sig_RS_in = sig_RS;
   assign sig_RW_in = sig_RW;
   assign sig_data_oe = sig_data_oe_temp;
   assign sig_data = (sig_data_oe == 1)? sig_data_temp:'z;
   assign sig_data_in = (sig_data_oe == 0)? sig_data:'z;
   assign sig_E_in = sig_E;


   always @(sig_RS_in) begin
      if (sig_RS_local != sig_RS_in)
         -> signal_input_RS_change;
      sig_RS_local = sig_RS_in;
   end
   
   always @(sig_RW_in) begin
      if (sig_RW_local != sig_RW_in)
         -> signal_input_RW_change;
      sig_RW_local = sig_RW_in;
   end
   
   always @(sig_data_in) begin
      if (sig_data_oe == 0) begin
         if (sig_data_local != sig_data_in)
            -> signal_input_data_change;
         sig_data_local = sig_data_in;
      end
   end
   
   always @(sig_E_in) begin
      if (sig_E_local != sig_E_in)
         -> signal_input_E_change;
      sig_E_local = sig_E_in;
   end
   


// synthesis translate_on

endmodule

