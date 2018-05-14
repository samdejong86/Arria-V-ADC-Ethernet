vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/src/trigger.v

vlog -reportprogress 300 -work work /home/srdejong/Arria-V-ADC-Ethernet/testBenches/triggerTB.v

vsim -i -l msim_transcript rtl_work.triggerTB

add wave -position end  sim:/triggerTB/CLOCK
add wave -position end  sim:/triggerTB/ADC
add wave -position end  sim:/triggerTB/trigSlope
add wave -position end  sim:/triggerTB/trigLevel
add wave -position end  sim:/triggerTB/trigger



vlog -reportprogress 300 -work work ../../testBenches/triggerTB.v
restart -f
run -all