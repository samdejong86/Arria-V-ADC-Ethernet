
# (C) 2001-2018 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 16.1 196 linux 2018.05.15.12:22:41

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     Nios_CPU_qsys_tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If Nios_CPU_qsys_tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 16.1 196 linux 2018.05.15.12:22:41
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="Nios_CPU_qsys_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/home/srdejong/intelFPGA/16.1/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_onchip_ram.hex ./
  cp -f $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_descriptor_memory.hex ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/arriav_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/arriav_hmi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/arriav_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/arriav_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/arriav_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/arriav_pcie_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/arriav_pcie_hip_atoms.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/verbosity_pkg.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_avalon_st_adapter_008_error_adapter_0.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_avalon_st_adapter_timing_adapter_0.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_avalon_st_adapter_timing_adapter_0_fifo.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_1_rsp_mux.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_1_rsp_demux.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_1_cmd_mux.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_1_cmd_demux.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_1_router_001.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_1_router.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_avalon_st_adapter_008.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_avalon_st_adapter.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_width_adapter.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_address_alignment.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_rsp_mux_004.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_rsp_mux_002.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_rsp_mux_001.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_rsp_mux.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_rsp_demux_006.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_rsp_demux_005.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_cmd_mux_006.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_cmd_mux_005.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_cmd_mux_003.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_cmd_mux.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_cmd_demux_004.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_cmd_demux_003.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_cmd_demux_002.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_cmd_demux_001.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_cmd_demux.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_burst_adapter.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_burst_adapter_uncmpr.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_burst_adapter_13_1.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_burst_adapter_new.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_incr_burst_converter.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_wrap_burst_converter.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_default_burst_converter.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_avalon_st_pipeline_stage.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_avalon_st_pipeline_base.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_traffic_limiter.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_reorder_memory.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_router_016.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_router_014.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_router_013.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_router_011.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_router_008.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_router_004.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_router_002.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_router_001.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0_router.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_eth_tse_mac.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_clk_cntl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_crc328checker.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_crc328generator.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_crc32ctl8.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_crc32galois8.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_gmii_io.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_lb_read_cntl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_lb_wrt_cntl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_hashing.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_host_control.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_host_control_small.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_mac_control.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_register_map.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_register_map_small.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rx_counter_cntl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_shared_mac_control.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_shared_register_map.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_tx_counter_cntl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_lfsr_10.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_loopback_ff.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_altshifttaps.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_fifoless_mac_rx.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_mac_rx.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_fifoless_mac_tx.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_mac_tx.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_magic_detection.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_mdio.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_mdio_clk_gen.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_mdio_cntl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_top_mdio.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_mii_rx_if.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_mii_tx_if.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_pipeline_base.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_pipeline_stage.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_dpram_16x32.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_dpram_8x32.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_dpram_ecc_16x32.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_fifoless_retransmit_cntl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_retransmit_cntl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rgmii_in1.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rgmii_in4.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_nf_rgmii_module.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rgmii_module.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rgmii_out1.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rgmii_out4.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rx_ff.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rx_min_ff.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rx_ff_cntrl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rx_ff_cntrl_32.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rx_ff_cntrl_32_shift16.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rx_ff_length.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_rx_stat_extract.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_timing_adapter32.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_timing_adapter8.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_timing_adapter_fifo32.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_timing_adapter_fifo8.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_top_1geth.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_top_fifoless_1geth.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_top_w_fifo.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_top_w_fifo_10_100_1000.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_top_wo_fifo.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_top_wo_fifo_10_100_1000.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_top_gen_host.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_tx_ff.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_tx_min_ff.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_tx_ff_cntrl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_tx_ff_cntrl_32.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_tx_ff_cntrl_32_shift16.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_tx_ff_length.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_tx_ff_read_cntl.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_tx_stat_extract.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_eth_tse_std_synchronizer.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_eth_tse_std_synchronizer_bundle.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_eth_tse_ptp_std_synchronizer.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_false_path_marker.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_reset_synchronizer.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_clock_crosser.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_a_fifo_13.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_a_fifo_24.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_a_fifo_34.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_a_fifo_opt_1246.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_a_fifo_opt_14_44.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_a_fifo_opt_36_10.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_gray_cnt.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_sdpm_altsyncram.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_altsyncram_dpm_fifo.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_bin_cnt.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ph_calculator.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_sdpm_gen.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_dec_x10.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x10.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x10_wrapper.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_dec_x14.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x14.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x14_wrapper.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_dec_x2.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x2.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x2_wrapper.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_dec_x23.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x23.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x23_wrapper.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_dec_x36.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x36.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x36_wrapper.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_dec_x40.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x40.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x40_wrapper.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_dec_x30.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x30.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_enc_x30_wrapper.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/synopsys/altera_tse_ecc_status_crosser.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_std_synchronizer_nocut.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_tristate_controller_aggregator.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_tristate_controller_translator.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_debug_slave_sysclk.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_test_bench.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu.vo \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_mult_cell.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_debug_slave_tck.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu_cpu_debug_slave_wrapper.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_reset_controller.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_avalon_st_adapter.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_irq_mapper.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_1.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_mm_interconnect_0.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_waveSample.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_tse_mac.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_sysid.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_sys_clk_timer.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_sgdma_tx.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_sgdma_rx.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_sampleNum.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_avalon_mm_bridge.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_onchip_ram.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_lcd.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_jtag_uart_0.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_high_res_timer.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_ext_flash.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_enet_pll.vo \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_descriptor_memory.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cpu.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_cfi_flash_atb_bridge_0.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys_adc_control.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_conduit_bfm_0009.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_inout.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_tristate_conduit_bridge_translator.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_conduit_bfm_0008.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_conduit_bfm_0007.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_conduit_bfm_0006.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_conduit_bfm_0005.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_conduit_bfm_0004.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_conduit_bfm_0003.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_avalon_reset_source.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_conduit_bfm_0002.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_avalon_clock_source.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/altera_conduit_bfm.sv \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/submodules/Nios_CPU_qsys.v \
  $QSYS_SIMDIR/Nios_CPU_qsys_tb/simulation/Nios_CPU_qsys_tb.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
