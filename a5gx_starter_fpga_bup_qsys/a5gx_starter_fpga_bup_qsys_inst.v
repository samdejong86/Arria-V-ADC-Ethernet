	a5gx_starter_fpga_bup_qsys u0 (
		.adc_control_out_export                          (<connected-to-adc_control_out_export>),                          //                     adc_control_out.export
		.cfi_flash_atb_bridge_0_out_tcm_address_out      (<connected-to-cfi_flash_atb_bridge_0_out_tcm_address_out>),      //          cfi_flash_atb_bridge_0_out.tcm_address_out
		.cfi_flash_atb_bridge_0_out_tcm_read_n_out       (<connected-to-cfi_flash_atb_bridge_0_out_tcm_read_n_out>),       //                                    .tcm_read_n_out
		.cfi_flash_atb_bridge_0_out_tcm_write_n_out      (<connected-to-cfi_flash_atb_bridge_0_out_tcm_write_n_out>),      //                                    .tcm_write_n_out
		.cfi_flash_atb_bridge_0_out_tcm_data_out         (<connected-to-cfi_flash_atb_bridge_0_out_tcm_data_out>),         //                                    .tcm_data_out
		.cfi_flash_atb_bridge_0_out_tcm_chipselect_n_out (<connected-to-cfi_flash_atb_bridge_0_out_tcm_chipselect_n_out>), //                                    .tcm_chipselect_n_out
		.clk_clk                                         (<connected-to-clk_clk>),                                         //                                 clk.clk
		.enet_pll_locked_export                          (<connected-to-enet_pll_locked_export>),                          //                     enet_pll_locked.export
		.enet_pll_outclk0_clk                            (<connected-to-enet_pll_outclk0_clk>),                            //                    enet_pll_outclk0.clk
		.enet_pll_outclk1_clk                            (<connected-to-enet_pll_outclk1_clk>),                            //                    enet_pll_outclk1.clk
		.enet_pll_outclk2_clk                            (<connected-to-enet_pll_outclk2_clk>),                            //                    enet_pll_outclk2.clk
		.enet_pll_reset_reset                            (<connected-to-enet_pll_reset_reset>),                            //                      enet_pll_reset.reset
		.lcd_external_RS                                 (<connected-to-lcd_external_RS>),                                 //                        lcd_external.RS
		.lcd_external_RW                                 (<connected-to-lcd_external_RW>),                                 //                                    .RW
		.lcd_external_data                               (<connected-to-lcd_external_data>),                               //                                    .data
		.lcd_external_E                                  (<connected-to-lcd_external_E>),                                  //                                    .E
		.merged_resets_in_reset_reset_n                  (<connected-to-merged_resets_in_reset_reset_n>),                  //              merged_resets_in_reset.reset_n
		.samplenum_out_export                            (<connected-to-samplenum_out_export>),                            //                       samplenum_out.export
		.tse_mac_mac_mdio_connection_mdc                 (<connected-to-tse_mac_mac_mdio_connection_mdc>),                 //         tse_mac_mac_mdio_connection.mdc
		.tse_mac_mac_mdio_connection_mdio_in             (<connected-to-tse_mac_mac_mdio_connection_mdio_in>),             //                                    .mdio_in
		.tse_mac_mac_mdio_connection_mdio_out            (<connected-to-tse_mac_mac_mdio_connection_mdio_out>),            //                                    .mdio_out
		.tse_mac_mac_mdio_connection_mdio_oen            (<connected-to-tse_mac_mac_mdio_connection_mdio_oen>),            //                                    .mdio_oen
		.tse_mac_mac_rgmii_connection_rgmii_in           (<connected-to-tse_mac_mac_rgmii_connection_rgmii_in>),           //        tse_mac_mac_rgmii_connection.rgmii_in
		.tse_mac_mac_rgmii_connection_rgmii_out          (<connected-to-tse_mac_mac_rgmii_connection_rgmii_out>),          //                                    .rgmii_out
		.tse_mac_mac_rgmii_connection_rx_control         (<connected-to-tse_mac_mac_rgmii_connection_rx_control>),         //                                    .rx_control
		.tse_mac_mac_rgmii_connection_tx_control         (<connected-to-tse_mac_mac_rgmii_connection_tx_control>),         //                                    .tx_control
		.tse_mac_mac_status_connection_set_10            (<connected-to-tse_mac_mac_status_connection_set_10>),            //       tse_mac_mac_status_connection.set_10
		.tse_mac_mac_status_connection_set_1000          (<connected-to-tse_mac_mac_status_connection_set_1000>),          //                                    .set_1000
		.tse_mac_mac_status_connection_eth_mode          (<connected-to-tse_mac_mac_status_connection_eth_mode>),          //                                    .eth_mode
		.tse_mac_mac_status_connection_ena_10            (<connected-to-tse_mac_mac_status_connection_ena_10>),            //                                    .ena_10
		.tse_mac_pcs_mac_rx_clock_connection_clk         (<connected-to-tse_mac_pcs_mac_rx_clock_connection_clk>),         // tse_mac_pcs_mac_rx_clock_connection.clk
		.tse_mac_pcs_mac_tx_clock_connection_clk         (<connected-to-tse_mac_pcs_mac_tx_clock_connection_clk>),         // tse_mac_pcs_mac_tx_clock_connection.clk
		.wavesample_in_export                            (<connected-to-wavesample_in_export>)                             //                       wavesample_in.export
	);

