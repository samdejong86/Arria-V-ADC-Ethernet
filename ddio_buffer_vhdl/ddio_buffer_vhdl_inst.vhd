ddio_buffer_vhdl_inst : ddio_buffer_vhdl PORT MAP (
		aclr	 => aclr_sig,
		datain_h	 => datain_h_sig,
		datain_l	 => datain_l_sig,
		outclock	 => outclock_sig,
		dataout	 => dataout_sig
	);
