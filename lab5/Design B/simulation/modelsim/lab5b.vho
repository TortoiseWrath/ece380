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

-- DATE "10/04/2016 19:04:44"

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

ENTITY 	lab5b IS
    PORT (
	Cin : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	S : BUFFER std_logic_vector(3 DOWNTO 0);
	Cout : BUFFER std_logic;
	Over : BUFFER std_logic
	);
END lab5b;

-- Design Ports Information
-- S[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Over	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Over : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \fulladd1|S~combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \fulladd2|S~combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \fulladd2|Cout~combout\ : std_logic;
SIGNAL \fulladd3|S~combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \fulladd4|S~combout\ : std_logic;
SIGNAL \fulladd4|Cout~combout\ : std_logic;
SIGNAL \Over~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \fulladd2|ALT_INV_Cout~combout\ : std_logic;

BEGIN

ww_Cin <= Cin;
ww_X <= X;
ww_Y <= Y;
S <= ww_S;
Cout <= ww_Cout;
Over <= ww_Over;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Y[3]~input_o\ <= NOT \Y[3]~input_o\;
\ALT_INV_X[3]~input_o\ <= NOT \X[3]~input_o\;
\ALT_INV_Y[2]~input_o\ <= NOT \Y[2]~input_o\;
\ALT_INV_X[2]~input_o\ <= NOT \X[2]~input_o\;
\ALT_INV_Y[1]~input_o\ <= NOT \Y[1]~input_o\;
\ALT_INV_X[1]~input_o\ <= NOT \X[1]~input_o\;
\ALT_INV_Y[0]~input_o\ <= NOT \Y[0]~input_o\;
\ALT_INV_X[0]~input_o\ <= NOT \X[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\fulladd2|ALT_INV_Cout~combout\ <= NOT \fulladd2|Cout~combout\;

-- Location: IOOBUF_X84_Y0_N2
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fulladd1|S~combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X89_Y6_N5
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fulladd2|S~combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X89_Y8_N5
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fulladd3|S~combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X89_Y6_N22
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fulladd4|S~combout\,
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
	i => \fulladd4|Cout~combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOOBUF_X52_Y0_N19
\Over~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Over~0_combout\,
	devoe => ww_devoe,
	o => ww_Over);

-- Location: IOIBUF_X2_Y0_N58
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\Y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LABCELL_X13_Y1_N30
\fulladd1|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladd1|S~combout\ = ( \Y[0]~input_o\ & ( !\Cin~input_o\ $ (\X[0]~input_o\) ) ) # ( !\Y[0]~input_o\ & ( !\Cin~input_o\ $ (!\X[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_X[0]~input_o\,
	datae => \ALT_INV_Y[0]~input_o\,
	combout => \fulladd1|S~combout\);

-- Location: IOIBUF_X16_Y0_N1
\X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\Y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LABCELL_X13_Y1_N39
\fulladd2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladd2|S~combout\ = ( \Y[0]~input_o\ & ( \Y[1]~input_o\ & ( !\X[1]~input_o\ $ (((\Cin~input_o\) # (\X[0]~input_o\))) ) ) ) # ( !\Y[0]~input_o\ & ( \Y[1]~input_o\ & ( !\X[1]~input_o\ $ (((\X[0]~input_o\ & \Cin~input_o\))) ) ) ) # ( \Y[0]~input_o\ & ( 
-- !\Y[1]~input_o\ & ( !\X[1]~input_o\ $ (((!\X[0]~input_o\ & !\Cin~input_o\))) ) ) ) # ( !\Y[0]~input_o\ & ( !\Y[1]~input_o\ & ( !\X[1]~input_o\ $ (((!\X[0]~input_o\) # (!\Cin~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010010111111010000011111010000001011010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_X[1]~input_o\,
	datae => \ALT_INV_Y[0]~input_o\,
	dataf => \ALT_INV_Y[1]~input_o\,
	combout => \fulladd2|S~combout\);

-- Location: IOIBUF_X8_Y0_N35
\X[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\Y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LABCELL_X13_Y1_N42
\fulladd2|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladd2|Cout~combout\ = ( \Y[0]~input_o\ & ( \Y[1]~input_o\ & ( ((\X[0]~input_o\) # (\Cin~input_o\)) # (\X[1]~input_o\) ) ) ) # ( !\Y[0]~input_o\ & ( \Y[1]~input_o\ & ( ((\Cin~input_o\ & \X[0]~input_o\)) # (\X[1]~input_o\) ) ) ) # ( \Y[0]~input_o\ & ( 
-- !\Y[1]~input_o\ & ( (\X[1]~input_o\ & ((\X[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( !\Y[0]~input_o\ & ( !\Y[1]~input_o\ & ( (\X[1]~input_o\ & (\Cin~input_o\ & \X[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000101010001010101010111010101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[1]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_X[0]~input_o\,
	datae => \ALT_INV_Y[0]~input_o\,
	dataf => \ALT_INV_Y[1]~input_o\,
	combout => \fulladd2|Cout~combout\);

-- Location: LABCELL_X13_Y1_N21
\fulladd3|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladd3|S~combout\ = ( \Y[2]~input_o\ & ( \fulladd2|Cout~combout\ & ( \X[2]~input_o\ ) ) ) # ( !\Y[2]~input_o\ & ( \fulladd2|Cout~combout\ & ( !\X[2]~input_o\ ) ) ) # ( \Y[2]~input_o\ & ( !\fulladd2|Cout~combout\ & ( !\X[2]~input_o\ ) ) ) # ( 
-- !\Y[2]~input_o\ & ( !\fulladd2|Cout~combout\ & ( \X[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_Y[2]~input_o\,
	dataf => \fulladd2|ALT_INV_Cout~combout\,
	combout => \fulladd3|S~combout\);

-- Location: IOIBUF_X4_Y0_N1
\Y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\X[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LABCELL_X13_Y1_N24
\fulladd4|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladd4|S~combout\ = ( \Y[2]~input_o\ & ( \fulladd2|Cout~combout\ & ( !\Y[3]~input_o\ $ (\X[3]~input_o\) ) ) ) # ( !\Y[2]~input_o\ & ( \fulladd2|Cout~combout\ & ( !\Y[3]~input_o\ $ (!\X[3]~input_o\ $ (\X[2]~input_o\)) ) ) ) # ( \Y[2]~input_o\ & ( 
-- !\fulladd2|Cout~combout\ & ( !\Y[3]~input_o\ $ (!\X[3]~input_o\ $ (\X[2]~input_o\)) ) ) ) # ( !\Y[2]~input_o\ & ( !\fulladd2|Cout~combout\ & ( !\Y[3]~input_o\ $ (!\X[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111001100001100111100110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y[3]~input_o\,
	datac => \ALT_INV_X[3]~input_o\,
	datad => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_Y[2]~input_o\,
	dataf => \fulladd2|ALT_INV_Cout~combout\,
	combout => \fulladd4|S~combout\);

-- Location: LABCELL_X13_Y1_N3
\fulladd4|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladd4|Cout~combout\ = ( \Y[2]~input_o\ & ( \fulladd2|Cout~combout\ & ( (\Y[3]~input_o\) # (\X[3]~input_o\) ) ) ) # ( !\Y[2]~input_o\ & ( \fulladd2|Cout~combout\ & ( (!\X[3]~input_o\ & (\X[2]~input_o\ & \Y[3]~input_o\)) # (\X[3]~input_o\ & 
-- ((\Y[3]~input_o\) # (\X[2]~input_o\))) ) ) ) # ( \Y[2]~input_o\ & ( !\fulladd2|Cout~combout\ & ( (!\X[3]~input_o\ & (\X[2]~input_o\ & \Y[3]~input_o\)) # (\X[3]~input_o\ & ((\Y[3]~input_o\) # (\X[2]~input_o\))) ) ) ) # ( !\Y[2]~input_o\ & ( 
-- !\fulladd2|Cout~combout\ & ( (\X[3]~input_o\ & \Y[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000101110001011100010111000101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[3]~input_o\,
	datab => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_Y[3]~input_o\,
	datae => \ALT_INV_Y[2]~input_o\,
	dataf => \fulladd2|ALT_INV_Cout~combout\,
	combout => \fulladd4|Cout~combout\);

-- Location: LABCELL_X13_Y1_N6
\Over~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Over~0_combout\ = ( \Y[2]~input_o\ & ( \fulladd2|Cout~combout\ & ( (!\Y[3]~input_o\ & !\X[3]~input_o\) ) ) ) # ( !\Y[2]~input_o\ & ( \fulladd2|Cout~combout\ & ( (!\Y[3]~input_o\ & (!\X[3]~input_o\ & \X[2]~input_o\)) # (\Y[3]~input_o\ & (\X[3]~input_o\ & 
-- !\X[2]~input_o\)) ) ) ) # ( \Y[2]~input_o\ & ( !\fulladd2|Cout~combout\ & ( (!\Y[3]~input_o\ & (!\X[3]~input_o\ & \X[2]~input_o\)) # (\Y[3]~input_o\ & (\X[3]~input_o\ & !\X[2]~input_o\)) ) ) ) # ( !\Y[2]~input_o\ & ( !\fulladd2|Cout~combout\ & ( 
-- (\Y[3]~input_o\ & \X[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111100000000000011110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y[3]~input_o\,
	datac => \ALT_INV_X[3]~input_o\,
	datad => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_Y[2]~input_o\,
	dataf => \fulladd2|ALT_INV_Cout~combout\,
	combout => \Over~0_combout\);

-- Location: MLABCELL_X21_Y20_N3
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


