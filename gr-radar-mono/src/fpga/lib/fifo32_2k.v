// megafunction wizard: %FIFO%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: scfifo 

// ============================================================
// File Name: fifo32_2k.v
// Megafunction Name(s):
// 			scfifo
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 7.1 Build 178 06/25/2007 SP 1 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2007 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module fifo32_2k (
	clock,
	data,
	rdreq,
	sclr,
	wrreq,
	empty,
	q);

	input	  clock;
	input	[31:0]  data;
	input	  rdreq;
	input	  sclr;
	input	  wrreq;
	output	  empty;
	output	[31:0]  q;

	wire  sub_wire0;
	wire [31:0] sub_wire1;
	wire  empty = sub_wire0;
	wire [31:0] q = sub_wire1[31:0];

	scfifo	scfifo_component (
				.rdreq (rdreq),
				.sclr (sclr),
				.clock (clock),
				.wrreq (wrreq),
				.data (data),
				.empty (sub_wire0),
				.q (sub_wire1)
				// synopsys translate_off
				,
				.aclr (),
				.almost_empty (),
				.almost_full (),
				.full (),
				.usedw ()
				// synopsys translate_on
				);
	defparam
		scfifo_component.add_ram_output_register = "OFF",
		scfifo_component.intended_device_family = "Cyclone",
		scfifo_component.lpm_numwords = 2048,
		scfifo_component.lpm_showahead = "OFF",
		scfifo_component.lpm_type = "scfifo",
		scfifo_component.lpm_width = 32,
		scfifo_component.lpm_widthu = 11,
		scfifo_component.overflow_checking = "OFF",
		scfifo_component.underflow_checking = "OFF",
		scfifo_component.use_eab = "ON";


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AlmostEmpty NUMERIC "0"
// Retrieval info: PRIVATE: AlmostEmptyThr NUMERIC "-1"
// Retrieval info: PRIVATE: AlmostFull NUMERIC "0"
// Retrieval info: PRIVATE: AlmostFullThr NUMERIC "-1"
// Retrieval info: PRIVATE: CLOCKS_ARE_SYNCHRONIZED NUMERIC "0"
// Retrieval info: PRIVATE: Clock NUMERIC "0"
// Retrieval info: PRIVATE: Depth NUMERIC "2048"
// Retrieval info: PRIVATE: Empty NUMERIC "1"
// Retrieval info: PRIVATE: Full NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone"
// Retrieval info: PRIVATE: LE_BasedFIFO NUMERIC "0"
// Retrieval info: PRIVATE: LegacyRREQ NUMERIC "1"
// Retrieval info: PRIVATE: MAX_DEPTH_BY_9 NUMERIC "0"
// Retrieval info: PRIVATE: OVERFLOW_CHECKING NUMERIC "1"
// Retrieval info: PRIVATE: Optimize NUMERIC "2"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: UNDERFLOW_CHECKING NUMERIC "1"
// Retrieval info: PRIVATE: UsedW NUMERIC "0"
// Retrieval info: PRIVATE: Width NUMERIC "32"
// Retrieval info: PRIVATE: dc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: diff_widths NUMERIC "0"
// Retrieval info: PRIVATE: msb_usedw NUMERIC "0"
// Retrieval info: PRIVATE: output_width NUMERIC "32"
// Retrieval info: PRIVATE: rsEmpty NUMERIC "1"
// Retrieval info: PRIVATE: rsFull NUMERIC "0"
// Retrieval info: PRIVATE: rsUsedW NUMERIC "0"
// Retrieval info: PRIVATE: sc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: sc_sclr NUMERIC "1"
// Retrieval info: PRIVATE: wsEmpty NUMERIC "0"
// Retrieval info: PRIVATE: wsFull NUMERIC "1"
// Retrieval info: PRIVATE: wsUsedW NUMERIC "0"
// Retrieval info: CONSTANT: ADD_RAM_OUTPUT_REGISTER STRING "OFF"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone"
// Retrieval info: CONSTANT: LPM_NUMWORDS NUMERIC "2048"
// Retrieval info: CONSTANT: LPM_SHOWAHEAD STRING "OFF"
// Retrieval info: CONSTANT: LPM_TYPE STRING "scfifo"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
// Retrieval info: CONSTANT: LPM_WIDTHU NUMERIC "11"
// Retrieval info: CONSTANT: OVERFLOW_CHECKING STRING "OFF"
// Retrieval info: CONSTANT: UNDERFLOW_CHECKING STRING "OFF"
// Retrieval info: CONSTANT: USE_EAB STRING "ON"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: data 0 0 32 0 INPUT NODEFVAL data[31..0]
// Retrieval info: USED_PORT: empty 0 0 0 0 OUTPUT NODEFVAL empty
// Retrieval info: USED_PORT: q 0 0 32 0 OUTPUT NODEFVAL q[31..0]
// Retrieval info: USED_PORT: rdreq 0 0 0 0 INPUT NODEFVAL rdreq
// Retrieval info: USED_PORT: sclr 0 0 0 0 INPUT NODEFVAL sclr
// Retrieval info: USED_PORT: wrreq 0 0 0 0 INPUT NODEFVAL wrreq
// Retrieval info: CONNECT: @data 0 0 32 0 data 0 0 32 0
// Retrieval info: CONNECT: q 0 0 32 0 @q 0 0 32 0
// Retrieval info: CONNECT: @wrreq 0 0 0 0 wrreq 0 0 0 0
// Retrieval info: CONNECT: @rdreq 0 0 0 0 rdreq 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: empty 0 0 0 0 @empty 0 0 0 0
// Retrieval info: CONNECT: @sclr 0 0 0 0 sclr 0 0 0 0
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo32_2k.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo32_2k.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo32_2k.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo32_2k.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo32_2k_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo32_2k_bb.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo32_2k_waveforms.html FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo32_2k_wave*.jpg FALSE
// Retrieval info: LIB_FILE: altera_mf
