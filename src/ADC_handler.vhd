library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--my custom modules
library work;
use work.my_types_pkg.all;




entity ADC_handler is 
	port(
		adcControl	: in STD_LOGIC_VECTOR (7 DOWNTO 0);
		a2da_data	: in unsigned (13 DOWNTO 0);
		a2db_data	: in unsigned (13 DOWNTO 0);
		sys_clk		: in std_logic;
		SampleNum	: in STD_LOGIC_VECTOR (15 DOWNTO 0);
		waveSample	: out unsigned (15 DOWNTO 0)
	);
end ADC_handler;


architecture rtl of ADC_handler is
	--daq controls
	signal delay 							: std_logic := '0';
	signal trigSource 					: std_logic;
	signal trigSlope 						: std_logic;	
	signal acquire 						: std_logic := '0';		
	signal acquireRequest 				: std_logic;
	
	signal waveNumber 					: unsigned (15 DOWNTO 0);	
	signal lastwavenum 					: unsigned (15 DOWNTO 0) := "1111111111111111";
	
		
	--triggering and delay
	signal DelayVec						: adcArray (0 to 99);
	signal DelayVecVHDL 					: adcArray (0 to 99);
	signal triggerSelf 					: std_logic;
	signal triggerExt 					: std_logic;
	signal trigger 						: std_logic;
	signal waveform 						: adcArray (0 to 999);
	signal delayedSignal 				: unsigned (13 DOWNTO 0);
	signal triggerLevel 					: unsigned (13 DOWNTO 0);
	signal trigSourceData 				: unsigned (13 DOWNTO 0);
	
		
	signal delayedSignal_std 			: STD_LOGIC_VECTOR (13 DOWNTO 0);
	signal triggerLevel_std 			: STD_LOGIC_VECTOR (13 DOWNTO 0);

	signal running 						: std_logic;

	--negative and positive trigger thresholds
	constant negVal 						: STD_LOGIC_VECTOR (13 DOWNTO 0) := "01101101011000";
	constant posVal 						: STD_LOGIC_VECTOR (13 DOWNTO 0) := "10010010111000";

begin
	
	--connect delay and trigger settings with the nios processor
	delay <= adcControl(3);
	trigSlope <= adcControl(2);
	trigSource <= adcControl(1);
	acquireRequest <= adcControl(0);
	
	--handle an acquire request
	setAcquire : entity work.acquireSet PORT MAP(
		acquireRequest => acquireRequest,
		clk => sys_clk,
		waveNumber => waveNumber,
		lastwavenum => lastwavenum,
		acquire => acquire	
	);
	
	
	running <= sys_clk when acquire = '0' else '0';
	
	
	--create a vector of delayed signals
	delayModule : entity work.delayVec PORT MAP (
		clk => sys_clk,
		ADC_IN => a2db_data,
		DelayVec => DelayVec
	);
	
	--mux controls delay
	delayMux : entity work.adc_mux PORT MAP (
		data0x	 => std_logic_vector(DelayVec(0)),
		data1x	 => std_logic_vector(DelayVec(99)),
		sel	 => delay,
		result	 => delayedSignal_std
	);

	--mux controls trigger slope
	triggerSlopeMux : entity work.adc_mux PORT MAP (
		data0x	 => std_logic_vector(negVal),
		data1x	 => std_logic_vector(posVal),
		sel	 => trigSlope,
		result	 => triggerLevel_std
	);

	
	triggerLevel <= unsigned(triggerLevel_std);
	delayedSignal <= unsigned(delayedSignal_std);


	--self trigger
	trigModuleSelf : entity work.trigger PORT MAP (
		clk => sys_clk,
		ADC_IN => a2db_data, 
		trigSlope => trigSlope, 
		trigLevel => triggerLevel, 
		trigger => triggerSelf
	);
	
	--external trigger	
	trigModuleExt : entity work.trigger PORT MAP (
		clk => sys_clk,
		ADC_IN => a2da_data, 
		trigSlope => trigSlope, 
		trigLevel => triggerLevel, 
		trigger => triggerExt
	);

	--mux for trigger source
	trigger <= triggerSelf when trigSource = '1' else triggerExt;
	
	--generate a waveform
	waveGen : entity work.waveformGenerator PORT MAP (
		clk => running, 
		triggerIn => trigger, 
		signal_in => delayedSignal, 
		waveform => waveform, 
		waveNumber => waveNumber
	);

	--get a sample from the waveform
	samplerModule : entity work.getSample PORT MAP(
		clk => sys_clk, 
		sampleNum => unsigned(SampleNum), 
		waveform => waveform, 
		wavenum => waveNumber, 
		acquire => acquire, 
		waveSample => waveSample,
		lastwavenum => lastwavenum
	);	



end rtl;