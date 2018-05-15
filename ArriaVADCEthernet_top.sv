module ArriaVADCEthernet_top
(
   input                clkin_50,
	input						clkin_50_adc,
   input                cpu_resetn,
   
   output               enet_mdc,
   inout                enet_mdio,
   output               enet_resetn, 
   input                enet_rx_clk,
   input                enet_rx_dv,
   input    [  3 : 0 ]  enet_rx_d,
   output               enet_gtx_clk,
   output               enet_tx_en,
   output   [  3 : 0 ]  enet_tx_d,
   
   output   [  1 : 0	]  flash_cen,
   output               flash_oen,
   output               flash_resetn,
   output               flash_wen,
   output   [ 26 : 0 ]  fm_a,
   inout    [ 15 : 0 ]  fm_d,
   output               flash_advn,
   output               flash_clk,

   output               lcd_wen,
   inout    [  7 : 0]   lcd_data,
   output               lcd_en,
   output               lcd_d_cn,  
   
	
	input						ada_dco,
	input						adb_dco,
	
	inout 					fpga_clk_a_p,
	inout 					fpga_clk_a_n,
	inout 					fpga_clk_b_p,
	inout 					fpga_clk_b_n, 
	
	output					ad_sclk,
	output					ad_sdio,
	output					ada_spi_cs,
	output					adb_spi_cs,
	
	input		[ 13 : 0 ]	adc_da,
	input		[ 13 : 0 ]	adc_db,
	
	output					ada_oe,
	output					adb_oe
   
);


	wire              	locked_from_the_enet_pll;
	wire              	mdio_oen_from_the_tse_mac;
	wire              	mdio_out_from_the_tse_mac;
	wire              	eth_mode_from_the_tse_mac;
	wire              	ena_10_from_the_tse_mac;
	wire              	enet_tx_125;
	wire              	enet_tx_25;
	wire              	enet_tx_2p5;
	wire              	tx_clk_to_the_tse_mac;
	wire              	global_resetn;


	assign flash_resetn = cpu_resetn;
	assign flash_advn   = 1'b0;
	assign flash_clk    = 1'b0;
	assign flash_cen[1] = 1'b1;
	
	

	

enet_gtx_clk_ddio_buffer   enet_gtx_clk_ddio_buffer_inst (
   .aclr       ( !cpu_resetn ),
   .datain_h   ( 1'b1 ),
   .datain_l   ( 1'b0 ),
   .outclock   ( tx_clk_to_the_tse_mac ),
   .dataout    ( enet_gtx_clk )
);
    
assign tx_clk_to_the_tse_mac =   ( eth_mode_from_the_tse_mac ) ? ( enet_tx_125 ) :  // GbE Mode = 125MHz clock
                                 ( ena_10_from_the_tse_mac ) ? ( enet_tx_2p5 ) :    // 10Mb Mode = 2.5MHz clock
                                 ( enet_tx_25 );                                    // 100Mb Mode = 25MHz clock
                        
assign enet_mdio = ( !mdio_oen_from_the_tse_mac ) ? ( mdio_out_from_the_tse_mac ) : ( 1'bz );

// PHY interface: need minimum 10ms delay for POR

    reg [19:0] epcount; 
    
    always @(posedge clkin_50)
    begin 
     if (cpu_resetn == 1'b0)
        epcount <= 20'd19 + 20'b0;
      else
		if (epcount[19] == 1'b0)
			epcount <= epcount + 20'b1;
		else
			epcount <= epcount;
    end
    
assign enet_resetn = !epcount[19-1];

wire [7:0] adcControl;
wire [15:0] waveSample;
wire [15:0] SampleNum;


 Nios_CPU_qsys u0 (
		  .clk_clk                                         (clkin_50),        
        .enet_pll_outclk0_clk                            (enet_tx_125),      
        .enet_pll_outclk1_clk                            (enet_tx_25),    
        .enet_pll_outclk2_clk                            (enet_tx_2p5),  
        .merged_resets_in_reset_reset_n                  (cpu_resetn),

		  .samplenum_out_export                            (SampleNum),
        .wavesample_in_export                            (waveSample),
        .adc_control_out_export                          (adcControl),
		  
        .lcd_external_E                                  (lcd_en),            
		  .lcd_external_RS                                 (lcd_d_cn),          
        .lcd_external_RW                                 (lcd_wen),                 
        .lcd_external_data                               (lcd_data),              
  
        .cfi_flash_atb_bridge_0_out_tcm_address_out      (fm_a),      
        .cfi_flash_atb_bridge_0_out_tcm_read_n_out       (flash_oen),    
        .cfi_flash_atb_bridge_0_out_tcm_write_n_out      (flash_wen),   
        .cfi_flash_atb_bridge_0_out_tcm_data_out         (fm_d),        
        .cfi_flash_atb_bridge_0_out_tcm_chipselect_n_out (flash_cen), 

        .enet_pll_locked_export                          (locked_from_the_enet_pll),                 
        .enet_pll_reset_reset                            (!cpu_resetn),   

        .tse_mac_mac_status_connection_ena_10            (ena_10_from_the_tse_mac),
        .tse_mac_mac_status_connection_eth_mode          (eth_mode_from_the_tse_mac),
        .tse_mac_mac_mdio_connection_mdc                 (enet_mdc),
        .tse_mac_mac_mdio_connection_mdio_in             (enet_mdio),
        .tse_mac_mac_mdio_connection_mdio_oen            (mdio_oen_from_the_tse_mac),
        .tse_mac_mac_mdio_connection_mdio_out            (mdio_out_from_the_tse_mac),
        .tse_mac_mac_rgmii_connection_rgmii_in           (enet_rx_d),
        .tse_mac_mac_rgmii_connection_rgmii_out          (enet_tx_d),
        .tse_mac_pcs_mac_rx_clock_connection_clk         (enet_rx_clk),
        .tse_mac_mac_rgmii_connection_rx_control         (enet_rx_dv),
        .tse_mac_mac_status_connection_set_1000          (),
        .tse_mac_mac_status_connection_set_10            (),
        .tse_mac_pcs_mac_tx_clock_connection_clk         (tx_clk_to_the_tse_mac),
        .tse_mac_mac_rgmii_connection_tx_control         (enet_tx_en)
    );





	assign ada_oe = 1'b0;
	assign adb_oe = 1'b0;
	assign ad_sclk = 1'b0;
	assign ad_sdio = 1'b1;
	assign ada_spi_cs = 1'b1;
	assign adb_spi_cs = 1'b1;
	
wire						      reset_n;
wire						      sys_clk;
wire						      sys_clk_90deg;
wire						      sys_clk_180deg;
wire						      sys_clk_270deg;
wire						      pll_locked;	


assign	fpga_clk_a_p	=  sys_clk_180deg;
assign	fpga_clk_a_n	= ~sys_clk_180deg;
assign	fpga_clk_b_p	=  sys_clk_270deg;
assign	fpga_clk_b_n	= ~sys_clk_270deg;	

assign reset_n = 1'b0;
	

adc_pll		adc_pll(
		.refclk(clkin_50_adc),
		.outclk_0(sys_clk),
		.outclk_1(sys_clk_90deg),
		.outclk_2(sys_clk_180deg),
		.outclk_3(sys_clk_270deg),
		.locked(pll_locked),
		.rst(reset_n)
		);
		
		
wire			[13:0]			a2da_data;
wire			[13:0]			a2db_data;		
				
		
adcSync sync_a(
	.sys_clk(sys_clk), 
	.DCO(ada_dco), 
	.ADCin(adc_da), 
	.ADCout(a2da_data)
);		
	
adcSync sync_b(
	.sys_clk(sys_clk), 
	.DCO(adb_dco), 
	.ADCin(adc_db), 
	.ADCout(a2db_data)
);		
			

ADC_handler adcHandle(
	.adcControl(adcControl),
	.a2da_data(a2da_data),
	.a2db_data(a2db_data),	
	.sys_clk(sys_clk),
	.SampleNum(SampleNum),
	.waveSample(waveSample)

);			
			
			
			
			
			
		
endmodule 