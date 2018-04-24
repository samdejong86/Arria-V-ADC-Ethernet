
module a5gx_starter_fpga_bup_qsys (
	cfi_flash_atb_bridge_0_out_tcm_address_out,
	cfi_flash_atb_bridge_0_out_tcm_read_n_out,
	cfi_flash_atb_bridge_0_out_tcm_write_n_out,
	cfi_flash_atb_bridge_0_out_tcm_data_out,
	cfi_flash_atb_bridge_0_out_tcm_chipselect_n_out,
	clk_clk,
	enet_pll_locked_export,
	enet_pll_outclk0_clk,
	enet_pll_outclk1_clk,
	enet_pll_outclk2_clk,
	enet_pll_reset_reset,
	lcd_external_RS,
	lcd_external_RW,
	lcd_external_data,
	lcd_external_E,
	merged_resets_in_reset_reset_n,
	tse_mac_mac_mdio_connection_mdc,
	tse_mac_mac_mdio_connection_mdio_in,
	tse_mac_mac_mdio_connection_mdio_out,
	tse_mac_mac_mdio_connection_mdio_oen,
	tse_mac_mac_rgmii_connection_rgmii_in,
	tse_mac_mac_rgmii_connection_rgmii_out,
	tse_mac_mac_rgmii_connection_rx_control,
	tse_mac_mac_rgmii_connection_tx_control,
	tse_mac_mac_status_connection_set_10,
	tse_mac_mac_status_connection_set_1000,
	tse_mac_mac_status_connection_eth_mode,
	tse_mac_mac_status_connection_ena_10,
	tse_mac_pcs_mac_rx_clock_connection_clk,
	tse_mac_pcs_mac_tx_clock_connection_clk,
	adc_control_out_export,
	samplenum_out_export,
	wavesample_in_export);	

	output	[26:0]	cfi_flash_atb_bridge_0_out_tcm_address_out;
	output	[0:0]	cfi_flash_atb_bridge_0_out_tcm_read_n_out;
	output	[0:0]	cfi_flash_atb_bridge_0_out_tcm_write_n_out;
	inout	[15:0]	cfi_flash_atb_bridge_0_out_tcm_data_out;
	output	[0:0]	cfi_flash_atb_bridge_0_out_tcm_chipselect_n_out;
	input		clk_clk;
	output		enet_pll_locked_export;
	output		enet_pll_outclk0_clk;
	output		enet_pll_outclk1_clk;
	output		enet_pll_outclk2_clk;
	input		enet_pll_reset_reset;
	output		lcd_external_RS;
	output		lcd_external_RW;
	inout	[7:0]	lcd_external_data;
	output		lcd_external_E;
	input		merged_resets_in_reset_reset_n;
	output		tse_mac_mac_mdio_connection_mdc;
	input		tse_mac_mac_mdio_connection_mdio_in;
	output		tse_mac_mac_mdio_connection_mdio_out;
	output		tse_mac_mac_mdio_connection_mdio_oen;
	input	[3:0]	tse_mac_mac_rgmii_connection_rgmii_in;
	output	[3:0]	tse_mac_mac_rgmii_connection_rgmii_out;
	input		tse_mac_mac_rgmii_connection_rx_control;
	output		tse_mac_mac_rgmii_connection_tx_control;
	input		tse_mac_mac_status_connection_set_10;
	input		tse_mac_mac_status_connection_set_1000;
	output		tse_mac_mac_status_connection_eth_mode;
	output		tse_mac_mac_status_connection_ena_10;
	input		tse_mac_pcs_mac_rx_clock_connection_clk;
	input		tse_mac_pcs_mac_tx_clock_connection_clk;
	output	[7:0]	adc_control_out_export;
	output	[15:0]	samplenum_out_export;
	input	[15:0]	wavesample_in_export;
endmodule
