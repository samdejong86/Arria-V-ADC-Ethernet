vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/delayVec.sv

vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/testBenches/delayTB.sv

vsim -i -l msim_transcript rtl_work.delay_tb

add wave -position end  sim:/delay_tb/CLOCK
add wave -position end  sim:/delay_tb/ADC
add wave -position end  sim:/delay_tb/delay




vlog -reportprogress 300 -work work ../../testBenches/delayTB.sv
restart -f
run -all