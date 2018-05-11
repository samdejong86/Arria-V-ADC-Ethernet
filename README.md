
# Arria V ADC to Ethernet - VHDL branch

## Description

This project reads an ADC and sends waveforms to a PC via an ethernet connection


It was designed for the [Arria V starter kit](https://www.altera.com/products/boards_and_kits/dev-kits/altera/kit-arria-v-starter.html), and uses the Terasic [Data Conversion Card](https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=360) in the HSMC slot.

The code in this branch of this project was written in VHDL. The master branch of this repository contains the same project, but written in verilog.

   
## Submodules

   The project contains two submodules: Arria-V-ADC-Ethernet-software (as the software/ subdirectory) and Arria-V-ADC-Ethernet-scripts (as the scripts/ subdirectory

## Contents

* The top level file is ArriaVADCEthernet_top.vhd. This file references other modules described in src/:
   1. acquireSet.vhd: handles an acquire request
   1. adcSync.vhd: Syncs the ADC
   3. delayArray.vhd: contains the definition of an array of ADC values
   2. delayVec.vhd: generates an array of delayed signals 
   3. getSample.vhd: gets the requested sample
   4. trigger.vhd: generates a trigger
   5. waveformGenerator.vhd: generates a waveform

* ArriaVADCEthernet_top.sdc contains the timing constraints for the project, and references other sdc files in src/:
   1. commentOutSDCFile.sdc: Comments out an SDC file so it is ignored by the fitter<sup>*</sup>
   2. rgmii_clocks.sdc: sets up the clocks for the RGMII interface<sup>*</sup>
   3. rgmii_input.sdc: sets up the restraints for the RGMII input clocks<sup>*</sup>
   4. rgmii_output.sdc: sets up the restraints for the RGMII output clocks<sup>*</sup>


* To control the ethernet interface, a Nios II system is used. This is described in Nios\_CPU_qsys.qsys

* Several IP modules are used:
   1. adc_pll: A pll clock for the ADC
   2. adc_mux: A mux for switching between two 14 bit buses
   3. ddio_buffer: a DDIO buffer for the ethernet TX clock

* ArriaVADCEthernet_top.stp is a signal tap instance for debugging

<sup>*</sup> These files are from the Arria V Board Update Portal example

## Acknowledgements

I could not have built this without looking at the Board Update Portal for the Arria V Starter Kit.