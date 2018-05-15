library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--my custom modules
library work;
use work.my_types_pkg.all;


--NIOS processor
library Nios_CPU_qsys;
use Nios_CPU_qsys.all;

--PLL for adc
library adc_pll;
use adc_pll.all;


entity ArriaVADCEthernet_top is 
	port(
		-- clocks
		clkin_50			: in std_logic;
		clkin_50_adc	: in std_logic;
		cpu_resetn		: in std_logic;
   
		--ethernet interface
		enet_mdc			: out std_logic;
		enet_mdio		: inout std_logic;
		enet_resetn		: out std_logic; 
		enet_rx_clk		: in std_logic;
		enet_rx_dv		: in std_logic;
		enet_rx_d 		: in STD_LOGIC_VECTOR (3 DOWNTO 0);
		enet_gtx_clk	: out std_logic;
		enet_tx_en		: out std_logic;
		enet_tx_d 		: out STD_LOGIC_VECTOR (3 DOWNTO 0);
   
		--flash interface
		flash_cen		: out STD_LOGIC_VECTOR (0 DOWNTO 0);
		flash_cen2		: out STD_LOGIC_VECTOR (0 DOWNTO 0);
		flash_oen		: out STD_LOGIC_VECTOR (0 DOWNTO 0);
		flash_resetn	: out std_logic;
		flash_wen		: out STD_LOGIC_VECTOR (0 DOWNTO 0);
		fm_a 				: out STD_LOGIC_VECTOR (26 DOWNTO 0);
		fm_d				: inout STD_LOGIC_VECTOR (15 DOWNTO 0);
		flash_advn		: out std_logic;
		flash_clk		: out std_logic;

		--lcd interface
		lcd_wen			: out std_logic;
		lcd_data			: inout STD_LOGIC_VECTOR (7 DOWNTO 0);
		lcd_en			: out std_logic;
		lcd_d_cn			: out std_logic;

		--adc interface
		ada_dco			: in std_logic;
		adb_dco			: in std_logic;
	
		fpga_clk_a_p	: inout std_logic;
		fpga_clk_a_n	: inout std_logic;
		fpga_clk_b_p	: inout std_logic;
		fpga_clk_b_n	: inout std_logic;
	
		ad_sclk			: out std_logic;
		ad_sdio			: out std_logic;
		ada_spi_cs		: out std_logic;
		adb_spi_cs		: out std_logic;
	
		adc_da			: in unsigned (13 DOWNTO 0);
		adc_db			: in unsigned (13 DOWNTO 0);
	
		ada_oe			: out std_logic;
		adb_oe			: out std_logic		
	);	
end ArriaVADCEthernet_top;

architecture rtl of ArriaVADCEthernet_top is

	--ethernet signals
	signal locked_from_the_enet_pll 	: std_logic;
	signal mdio_oen_from_the_tse_mac : std_logic;
	signal mdio_out_from_the_tse_mac : std_logic;
	signal eth_mode_from_the_tse_mac : std_logic;
	signal ena_10_from_the_tse_mac 	: std_logic;
	signal enet_tx_125 					: std_logic;
	signal enet_tx_25 					: std_logic;
	signal enet_tx_2p5 					: std_logic;
	signal tx_clk_to_the_tse_mac 		: std_logic;
	signal global_resetn 				: std_logic;

	--pios from the NIOS processor
	signal adcControl						: STD_LOGIC_VECTOR (7 DOWNTO 0):="00000000";
	signal waveSample						: unsigned (15 DOWNTO 0);
	signal SampleNum						: STD_LOGIC_VECTOR (15 DOWNTO 0);

	--adc pll signals
	signal reset_n 						: std_logic;
	signal sys_clk 						: std_logic;
	signal sys_clk_90deg 				: std_logic;
	signal sys_clk_180deg 				: std_logic;
	signal sys_clk_270deg 				: std_logic;
	signal pll_locked 					: std_logic;	


	--synced adc signals
	signal a2da_data 						: unsigned (13 DOWNTO 0);
	signal a2db_data 						: unsigned (13 DOWNTO 0);	



	signal gtx_clk_temp 					: std_logic_vector (0 downto 0) := "0";
	
	signal epcount 						: unsigned (19 DOWNTO 0);
	
	signal std_waveSample 				: std_logic_vector (15 downto 0) := "0000000000000000";
	
	
begin

	--setup flash
	flash_resetn <= cpu_resetn;
	flash_advn <= '0';
	flash_clk <= '0';
	flash_cen2(0) <= '1';
	
	--use a ddio for the ethernet tx clock
	ddio_buffer_inst : entity work.ddio_buffer PORT MAP (
		aclr     => not cpu_resetn,
		datain_h         => "1",
		datain_l         => "0",
		outclock         => tx_clk_to_the_tse_mac,
		dataout  => gtx_clk_temp
	);
	enet_gtx_clk <= gtx_clk_temp(0);


	--chose the correct clock based on the ethernet mode
	tx_clk_to_the_tse_mac <= enet_tx_125 when eth_mode_from_the_tse_mac = '1' else
									 enet_tx_2p5 when ena_10_from_the_tse_mac   = '1' else 
									 enet_tx_25;
		
	enet_mdio <= mdio_out_from_the_tse_mac when mdio_oen_from_the_tse_mac = '0' else 'Z';

	--needs to be a delay before the ethernet is enables
	enetResteProc : process(clkin_50) is
	begin
		if rising_edge(clkin_50) then
			if cpu_resetn = '0' then
				epcount <= "00000000000000010011";
			elsif epcount(19) = '0' then
				epcount <= epcount+"00000000000000000001";
			else
				epcount <= epcount;
			end if;
		end if;
	end process enetResteProc;
	
	enet_resetn <= not epcount(18);
		
	
	std_waveSample <= std_logic_vector(waveSample);
	
	--The NIOS processor
   u0 : entity Nios_CPU_qsys.Nios_CPU_qsys port map (
				clk_clk                                         => clkin_50,                                         
            enet_pll_outclk0_clk                            => enet_tx_125,                            
            enet_pll_outclk1_clk                            => enet_tx_25,                            
            enet_pll_outclk2_clk                            => enet_tx_2p5,  
            merged_resets_in_reset_reset_n                  => cpu_resetn,                  

            samplenum_out_export                            => SampleNum,                            
            wavesample_in_export                            => std_waveSample,
            adc_control_out_export                          => adcControl,                        
				
            lcd_external_E                                  => lcd_en,                                  
            lcd_external_RS                                 => lcd_d_cn,                                 
            lcd_external_RW                                 => lcd_wen,                                 
            lcd_external_data                               => lcd_data,                               

            cfi_flash_atb_bridge_0_out_tcm_address_out      => fm_a,     
            cfi_flash_atb_bridge_0_out_tcm_read_n_out       => flash_oen,      
            cfi_flash_atb_bridge_0_out_tcm_write_n_out      => flash_wen,      
            cfi_flash_atb_bridge_0_out_tcm_data_out         => fm_d,         
            cfi_flash_atb_bridge_0_out_tcm_chipselect_n_out => flash_cen, 
			
            enet_pll_locked_export                          => locked_from_the_enet_pll,                          
            enet_pll_reset_reset                            => not cpu_resetn,                            
      
            tse_mac_mac_status_connection_ena_10            => ena_10_from_the_tse_mac,            
            tse_mac_mac_status_connection_eth_mode          => eth_mode_from_the_tse_mac,          
            tse_mac_mac_mdio_connection_mdc                 => enet_mdc,                 
            tse_mac_mac_mdio_connection_mdio_in             => enet_mdio,             
            tse_mac_mac_mdio_connection_mdio_oen            => mdio_oen_from_the_tse_mac,            
            tse_mac_mac_mdio_connection_mdio_out            => mdio_out_from_the_tse_mac,            
            tse_mac_mac_rgmii_connection_rgmii_in           => enet_rx_d,           
            tse_mac_mac_rgmii_connection_rgmii_out          => enet_tx_d,          
            tse_mac_pcs_mac_rx_clock_connection_clk         => enet_rx_clk,         
            tse_mac_mac_rgmii_connection_rx_control         => enet_rx_dv,         
            tse_mac_pcs_mac_tx_clock_connection_clk         => tx_clk_to_the_tse_mac,         
            tse_mac_mac_rgmii_connection_tx_control         => enet_tx_en        
         );
 

	--setup the ADC
	ada_oe <= '0';
	adb_oe <= '0';
	ad_sclk <= '0';
	ad_sdio <= '1';
	ada_spi_cs <= '1';
	adb_spi_cs <= '1';

	--apply the ADC clocks
	fpga_clk_a_p <=  sys_clk_180deg;
	fpga_clk_a_n <= not sys_clk_180deg;
	fpga_clk_b_p <=  sys_clk_270deg;
	fpga_clk_b_n <= not sys_clk_270deg;	

	reset_n <= '0';
	
	--initialize the adc pll
	adc_pll_inst : entity adc_pll.adc_pll PORT MAP (
		refclk => clkin_50_adc,
		outclk_0 => sys_clk,
		outclk_1 => sys_clk_90deg,
		outclk_2 => sys_clk_180deg,
		outclk_3 => sys_clk_270deg,
		locked => pll_locked,
		rst => reset_n
	);
	
	--sync for channel a
	sync_a : entity work.adc_sync PORT MAP (
		sys_clk => sys_clk,
		DCO => ada_dco, 
		ADCin => adc_da, 
		ADCout => a2da_data	
	);
	
	--sync for channel b
	sync_b : entity work.adc_sync PORT MAP (
		sys_clk => sys_clk,
		DCO => adb_dco, 
		ADCin => adc_db, 
		ADCout => a2db_data	
	);
	
	
	ADC_handle : entity work.ADC_handler PORT MAP (
		adcControl=>adcControl,
		a2da_data=>a2da_data,
		a2db_data=>a2db_data,
		sys_clk=>sys_clk,
		SampleNum=>SampleNum,
		waveSample=>waveSample
	);
	
	

end rtl;

	 
	 
