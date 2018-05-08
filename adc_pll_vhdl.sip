set_global_assignment -entity "adc_pll_vhdl" -library "lib_adc_pll_vhdl" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "adc_pll_vhdl" -library "lib_adc_pll_vhdl" -name IP_TOOL_VERSION "16.1"
set_global_assignment -entity "adc_pll_vhdl" -library "lib_adc_pll_vhdl" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_adc_pll_vhdl" -name SPD_FILE [file join $::quartus(sip_path) "adc_pll_vhdl.spd"]

set_global_assignment -library "lib_adc_pll_vhdl" -name MISC_FILE [file join $::quartus(sip_path) "adc_pll_vhdl_sim/adc_pll_vhdl.vho"]
