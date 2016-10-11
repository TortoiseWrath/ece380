-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Standard Edition"

-- DATE "10/11/2016 19:16:28"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adder4c IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : BUFFER std_logic_vector(3 DOWNTO 0);
	Cout : BUFFER std_logic
	);
END adder4c;

-- Design Ports Information
-- S[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder4c IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \C~1_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL P : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_C~1_combout\ : std_logic;
SIGNAL \ALT_INV_C~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_C~1_combout\ <= NOT \C~1_combout\;
\ALT_INV_C~0_combout\ <= NOT \C~0_combout\;

-- Location: IOOBUF_X80_Y0_N2
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => P(0),
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X60_Y0_N19
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X80_Y0_N19
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X84_Y0_N2
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X52_Y0_N2
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOIBUF_X4_Y0_N35
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X10_Y2_N0
\P[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- P(0) = ( !\A[0]~input_o\ & ( \B[0]~input_o\ ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => P(0));

-- Location: IOIBUF_X4_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X10_Y2_N39
\S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \A[0]~input_o\ & ( \B[1]~input_o\ & ( !\B[0]~input_o\ $ (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[1]~input_o\ & ( !\A[1]~input_o\ ) ) ) # ( \A[0]~input_o\ & ( !\B[1]~input_o\ & ( !\B[0]~input_o\ $ (!\A[1]~input_o\) ) ) ) # ( 
-- !\A[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010110100101101011110000111100001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X10_Y2_N12
\S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (((\B[1]~input_o\) # (\A[1]~input_o\)))) ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (((\A[1]~input_o\ & 
-- \B[1]~input_o\)))) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (((\A[1]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (((\A[1]~input_o\ & 
-- \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101011010011010010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X2_Y0_N58
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X10_Y2_N18
\C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C~0_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[2]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\) # (\A[2]~input_o\)) # (\A[1]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( 
-- \B[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[1]~input_o\ & (\A[2]~input_o\ & \B[1]~input_o\))) # (\B[2]~input_o\ & (((\A[1]~input_o\ & \B[1]~input_o\)) # (\A[2]~input_o\))) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[1]~input_o\ & 
-- (\A[2]~input_o\ & \B[1]~input_o\))) # (\B[2]~input_o\ & (((\A[1]~input_o\ & \B[1]~input_o\)) # (\A[2]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[1]~input_o\ & (\A[2]~input_o\ & \B[1]~input_o\))) # (\B[2]~input_o\ 
-- & (((\A[1]~input_o\ & \B[1]~input_o\)) # (\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100000101000101110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \C~0_combout\);

-- Location: LABCELL_X10_Y2_N57
\S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \B[3]~input_o\ & ( \C~0_combout\ & ( \A[3]~input_o\ ) ) ) # ( !\B[3]~input_o\ & ( \C~0_combout\ & ( !\A[3]~input_o\ ) ) ) # ( \B[3]~input_o\ & ( !\C~0_combout\ & ( !\A[3]~input_o\ ) ) ) # ( !\B[3]~input_o\ & ( !\C~0_combout\ & ( 
-- \A[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_C~0_combout\,
	combout => \S~2_combout\);

-- Location: LABCELL_X10_Y2_N30
\C~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C~1_combout\ = ( \A[0]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[1]~input_o\ & ( \A[1]~input_o\ ) ) ) # ( \A[0]~input_o\ & ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \C~1_combout\);

-- Location: LABCELL_X10_Y2_N6
\Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = ( \B[2]~input_o\ & ( \C~1_combout\ & ( (\A[3]~input_o\) # (\B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \C~1_combout\ & ( (!\A[2]~input_o\ & (\B[3]~input_o\ & \A[3]~input_o\)) # (\A[2]~input_o\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) 
-- ) ) ) # ( \B[2]~input_o\ & ( !\C~1_combout\ & ( (!\A[2]~input_o\ & (\B[3]~input_o\ & \A[3]~input_o\)) # (\A[2]~input_o\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) ) ) ) # ( !\B[2]~input_o\ & ( !\C~1_combout\ & ( (\B[3]~input_o\ & \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000101110001011100010111000101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_C~1_combout\,
	combout => \Cout~0_combout\);

-- Location: LABCELL_X57_Y13_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


