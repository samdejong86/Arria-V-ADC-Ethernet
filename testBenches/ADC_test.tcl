
vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/ADC_handler.sv
vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/delayVec.sv
vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/trigger.v
vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/waveformGenerator.sv
vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/getSample.sv
vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/adc_mux/ADC_Mux_syn.v


vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/testBenches/ADC_testbench.sv

vsim -i -l msim_transcript rtl_work.ADC_testbench

add wave -position end  sim:/ADC_testbench/CLOCK
add wave -position end  sim:/ADC_testbench/adcHandle/delay
add wave -position end  sim:/ADC_testbench/adcHandle/trigSlope
add wave -position end  sim:/ADC_testbench/adcHandle/acquire
add wave -position end  sim:/ADC_testbench/adcHandle/a2da_data
add wave -position end  sim:/ADC_testbench/adcHandle/a2db_data
add wave -position end  sim:/ADC_testbench/adcHandle/trigger
add wave -position end  sim:/ADC_testbench/adcHandle/waveNumber
add wave -position end  sim:/ADC_testbench/adcHandle/lastwavenum
add wave -position end  sim:/ADC_testbench/adcHandle/waveform
add wave -position end  sim:/ADC_testbench/adcHandle/running
add wave -position end  sim:/ADC_testbench/adcHandle/delayedSignal

property wave -radix unsigned /ADC_testbench/adcHandle/trigSlope
property wave -radix unsigned /ADC_testbench/adcHandle/a2da_data
property wave -radix unsigned /ADC_testbench/adcHandle/a2db_data
property wave -radix unsigned /ADC_testbench/adcHandle/waveNumber
property wave -radix unsigned /ADC_testbench/adcHandle/lastwavenum
property wave -radix unsigned /ADC_testbench/adcHandle/waveform
property wave -radix unsigned /ADC_testbench/adcHandle/delayedSignal




restart -f
run -all