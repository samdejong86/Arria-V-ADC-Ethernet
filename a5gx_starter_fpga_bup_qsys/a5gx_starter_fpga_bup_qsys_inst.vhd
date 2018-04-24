	component a5gx_starter_fpga_bup_qsys is
		port (
			cfi_flash_atb_bridge_0_out_tcm_address_out      : out   std_logic_vector(26 downto 0);                    -- tcm_address_out
			cfi_flash_atb_bridge_0_out_tcm_read_n_out       : out   std_logic_vector(0 downto 0);                     -- tcm_read_n_out
			cfi_flash_atb_bridge_0_out_tcm_write_n_out      : out   std_logic_vector(0 downto 0);                     -- tcm_write_n_out
			cfi_flash_atb_bridge_0_out_tcm_data_out         : inout std_logic_vector(15 downto 0) := (others => 'X'); -- tcm_data_out
			cfi_flash_atb_bridge_0_out_tcm_chipselect_n_out : out   std_logic_vector(0 downto 0);                     -- tcm_chipselect_n_out
			clk_clk                                         : in    std_logic                     := 'X';             -- clk
			enet_pll_locked_export                          : out   std_logic;                                        -- export
			enet_pll_outclk0_clk                            : out   std_logic;                                        -- clk
			enet_pll_outclk1_clk                            : out   std_logic;                                        -- clk
			enet_pll_outclk2_clk                            : out   std_logic;                                        -- clk
			enet_pll_reset_reset                            : in    std_logic                     := 'X';             -- reset
			lcd_external_RS                                 : out   std_logic;                                        -- RS
			lcd_external_RW                                 : out   std_logic;                                        -- RW
			lcd_external_data                               : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- data
			lcd_external_E                                  : out   std_logic;                                        -- E
			merged_resets_in_reset_reset_n                  : in    std_logic                     := 'X';             -- reset_n
			tse_mac_mac_mdio_connection_mdc                 : out   std_logic;                                        -- mdc
			tse_mac_mac_mdio_connection_mdio_in             : in    std_logic                     := 'X';             -- mdio_in
			tse_mac_mac_mdio_connection_mdio_out            : out   std_logic;                                        -- mdio_out
			tse_mac_mac_mdio_connection_mdio_oen            : out   std_logic;                                        -- mdio_oen
			tse_mac_mac_rgmii_connection_rgmii_in           : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- rgmii_in
			tse_mac_mac_rgmii_connection_rgmii_out          : out   std_logic_vector(3 downto 0);                     -- rgmii_out
			tse_mac_mac_rgmii_connection_rx_control         : in    std_logic                     := 'X';             -- rx_control
			tse_mac_mac_rgmii_connection_tx_control         : out   std_logic;                                        -- tx_control
			tse_mac_mac_status_connection_set_10            : in    std_logic                     := 'X';             -- set_10
			tse_mac_mac_status_connection_set_1000          : in    std_logic                     := 'X';             -- set_1000
			tse_mac_mac_status_connection_eth_mode          : out   std_logic;                                        -- eth_mode
			tse_mac_mac_status_connection_ena_10            : out   std_logic;                                        -- ena_10
			tse_mac_pcs_mac_rx_clock_connection_clk         : in    std_logic                     := 'X';             -- clk
			tse_mac_pcs_mac_tx_clock_connection_clk         : in    std_logic                     := 'X';             -- clk
			adc_control_out_export                          : out   std_logic_vector(7 downto 0);                     -- export
			samplenum_out_export                            : out   std_logic_vector(15 downto 0);                    -- export
			wavesample_in_export                            : in    std_logic_vector(15 downto 0) := (others => 'X')  -- export
		);
	end component a5gx_starter_fpga_bup_qsys;

	u0 : component a5gx_starter_fpga_bup_qsys
		port map (
			cfi_flash_atb_bridge_0_out_tcm_address_out      => CONNECTED_TO_cfi_flash_atb_bridge_0_out_tcm_address_out,      --          cfi_flash_atb_bridge_0_out.tcm_address_out
			cfi_flash_atb_bridge_0_out_tcm_read_n_out       => CONNECTED_TO_cfi_flash_atb_bridge_0_out_tcm_read_n_out,       --                                    .tcm_read_n_out
			cfi_flash_atb_bridge_0_out_tcm_write_n_out      => CONNECTED_TO_cfi_flash_atb_bridge_0_out_tcm_write_n_out,      --                                    .tcm_write_n_out
			cfi_flash_atb_bridge_0_out_tcm_data_out         => CONNECTED_TO_cfi_flash_atb_bridge_0_out_tcm_data_out,         --                                    .tcm_data_out
			cfi_flash_atb_bridge_0_out_tcm_chipselect_n_out => CONNECTED_TO_cfi_flash_atb_bridge_0_out_tcm_chipselect_n_out, --                                    .tcm_chipselect_n_out
			clk_clk                                         => CONNECTED_TO_clk_clk,                                         --                                 clk.clk
			enet_pll_locked_export                          => CONNECTED_TO_enet_pll_locked_export,                          --                     enet_pll_locked.export
			enet_pll_outclk0_clk                            => CONNECTED_TO_enet_pll_outclk0_clk,                            --                    enet_pll_outclk0.clk
			enet_pll_outclk1_clk                            => CONNECTED_TO_enet_pll_outclk1_clk,                            --                    enet_pll_outclk1.clk
			enet_pll_outclk2_clk                            => CONNECTED_TO_enet_pll_outclk2_clk,                            --                    enet_pll_outclk2.clk
			enet_pll_reset_reset                            => CONNECTED_TO_enet_pll_reset_reset,                            --                      enet_pll_reset.reset
			lcd_external_RS                                 => CONNECTED_TO_lcd_external_RS,                                 --                        lcd_external.RS
			lcd_external_RW                                 => CONNECTED_TO_lcd_external_RW,                                 --                                    .RW
			lcd_external_data                               => CONNECTED_TO_lcd_external_data,                               --                                    .data
			lcd_external_E                                  => CONNECTED_TO_lcd_external_E,                                  --                                    .E
			merged_resets_in_reset_reset_n                  => CONNECTED_TO_merged_resets_in_reset_reset_n,                  --              merged_resets_in_reset.reset_n
			tse_mac_mac_mdio_connection_mdc                 => CONNECTED_TO_tse_mac_mac_mdio_connection_mdc,                 --         tse_mac_mac_mdio_connection.mdc
			tse_mac_mac_mdio_connection_mdio_in             => CONNECTED_TO_tse_mac_mac_mdio_connection_mdio_in,             --                                    .mdio_in
			tse_mac_mac_mdio_connection_mdio_out            => CONNECTED_TO_tse_mac_mac_mdio_connection_mdio_out,            --                                    .mdio_out
			tse_mac_mac_mdio_connection_mdio_oen            => CONNECTED_TO_tse_mac_mac_mdio_connection_mdio_oen,            --                                    .mdio_oen
			tse_mac_mac_rgmii_connection_rgmii_in           => CONNECTED_TO_tse_mac_mac_rgmii_connection_rgmii_in,           --        tse_mac_mac_rgmii_connection.rgmii_in
			tse_mac_mac_rgmii_connection_rgmii_out          => CONNECTED_TO_tse_mac_mac_rgmii_connection_rgmii_out,          --                                    .rgmii_out
			tse_mac_mac_rgmii_connection_rx_control         => CONNECTED_TO_tse_mac_mac_rgmii_connection_rx_control,         --                                    .rx_control
			tse_mac_mac_rgmii_connection_tx_control         => CONNECTED_TO_tse_mac_mac_rgmii_connection_tx_control,         --                                    .tx_control
			tse_mac_mac_status_connection_set_10            => CONNECTED_TO_tse_mac_mac_status_connection_set_10,            --       tse_mac_mac_status_connection.set_10
			tse_mac_mac_status_connection_set_1000          => CONNECTED_TO_tse_mac_mac_status_connection_set_1000,          --                                    .set_1000
			tse_mac_mac_status_connection_eth_mode          => CONNECTED_TO_tse_mac_mac_status_connection_eth_mode,          --                                    .eth_mode
			tse_mac_mac_status_connection_ena_10            => CONNECTED_TO_tse_mac_mac_status_connection_ena_10,            --                                    .ena_10
			tse_mac_pcs_mac_rx_clock_connection_clk         => CONNECTED_TO_tse_mac_pcs_mac_rx_clock_connection_clk,         -- tse_mac_pcs_mac_rx_clock_connection.clk
			tse_mac_pcs_mac_tx_clock_connection_clk         => CONNECTED_TO_tse_mac_pcs_mac_tx_clock_connection_clk,         -- tse_mac_pcs_mac_tx_clock_connection.clk
			adc_control_out_export                          => CONNECTED_TO_adc_control_out_export,                          --                     adc_control_out.export
			samplenum_out_export                            => CONNECTED_TO_samplenum_out_export,                            --                       samplenum_out.export
			wavesample_in_export                            => CONNECTED_TO_wavesample_in_export                             --                       wavesample_in.export
		);

