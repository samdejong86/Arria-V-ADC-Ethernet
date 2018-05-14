
vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/delayVec.sv
vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/trigger.v
vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/waveformGenerator.sv



vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/testBenches/ADC_testbench.sv

vsim -i -l msim_transcript rtl_work.ADC_testbench

add wave -position end  sim:/ADC_testbench/CLOCK
add wave -position end  sim:/ADC_testbench/delay
add wave -position end  sim:/ADC_testbench/trigSlope
add wave -position end  sim:/ADC_testbench/acquire
add wave -position end  sim:/ADC_testbench/ADC 
add wave -position end  sim:/ADC_testbench/trigger
add wave -position end  sim:/ADC_testbench/waveNumber
add wave -position end  sim:/ADC_testbench/lastwavenum
add wave -position end  sim:/ADC_testbench/waveform
add wave -position end  sim:/ADC_testbench/running

property wave -radix unsigned /ADC_testbench/trigSlope
property wave -radix unsigned /ADC_testbench/ADC
property wave -radix unsigned /ADC_testbench/waveNumber
property wave -radix unsigned /ADC_testbench/lastwavenum
property wave -radix unsigned /ADC_testbench/waveform




restart -f
run -all