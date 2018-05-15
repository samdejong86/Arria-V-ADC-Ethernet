
vcom -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/waveformGenerator.vhd
vcom -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/trigger.vhd
vcom -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/getSample.vhd
vcom -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/delayVec.vhd
vcom -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/delayArray.vhd
vcom -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/acquireSet.vhd
vcom -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/ADC_handler.vhd
vcom -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/testBenches/ADC_testbench.vhd


vsim -i -l msim_transcript rtl_work.adc_testbench

add wave -position end  sim:/adc_testbench/CLOCK
add wave -position end  sim:/adc_testbench/ADC_handle/delay
add wave -position end  sim:/adc_testbench/ADC_handle/trigSlope
add wave -position end  sim:/adc_testbench/ADC_handle/acquire
add wave -position end  sim:/adc_testbench/ADC_handle/a2da_data
add wave -position end  sim:/adc_testbench/ADC_handle/a2db_data
add wave -position end  sim:/adc_testbench/ADC_handle/triggerSelf
add wave -position end  sim:/adc_testbench/ADC_handle/triggerExt
add wave -position end  sim:/adc_testbench/ADC_handle/trigger
add wave -position end  sim:/adc_testbench/ADC_handle/waveNumber
add wave -position end  sim:/adc_testbench/ADC_handle/lastwavenum
add wave -position end  sim:/adc_testbench/ADC_handle/waveform
add wave -position end  sim:/adc_testbench/ADC_handle/running
add wave -position end  sim:/adc_testbench/ADC_handle/delayedSignal

property wave -radix unsigned /adc_testbench/ADC_handle/trigSlope
property wave -radix unsigned /adc_testbench/ADC_handle/a2da_data
property wave -radix unsigned /adc_testbench/ADC_handle/a2db_data
property wave -radix unsigned /adc_testbench/ADC_handle/waveNumber
property wave -radix unsigned /adc_testbench/ADC_handle/lastwavenum
property wave -radix unsigned /adc_testbench/ADC_handle/waveform
property wave -radix unsigned /adc_testbench/ADC_handle/delayedSignal




restart -f
run 50000 ns