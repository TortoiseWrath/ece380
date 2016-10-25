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

-- DATE "10/25/2016 19:05:34"

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

ENTITY 	lab7a IS
    PORT (
	f : OUT std_logic;
	gn : IN std_logic;
	z : IN std_logic;
	y : IN std_logic;
	x : IN std_logic;
	w : IN std_logic;
	nf : OUT std_logic
	);
END lab7a;

-- Design Ports Information
-- f	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nf	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gn	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7a IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_gn : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_nf : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \gn~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \inst|sub|85~0_combout\ : std_logic;
SIGNAL \ALT_INV_w~input_o\ : std_logic;
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_y~input_o\ : std_logic;
SIGNAL \ALT_INV_z~input_o\ : std_logic;
SIGNAL \ALT_INV_gn~input_o\ : std_logic;
SIGNAL \inst|sub|ALT_INV_85~0_combout\ : std_logic;

BEGIN

f <= ww_f;
ww_gn <= gn;
ww_z <= z;
ww_y <= y;
ww_x <= x;
ww_w <= w;
nf <= ww_nf;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_w~input_o\ <= NOT \w~input_o\;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_y~input_o\ <= NOT \y~input_o\;
\ALT_INV_z~input_o\ <= NOT \z~input_o\;
\ALT_INV_gn~input_o\ <= NOT \gn~input_o\;
\inst|sub|ALT_INV_85~0_combout\ <= NOT \inst|sub|85~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\f~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|85~0_combout\,
	devoe => ww_devoe,
	o => ww_f);

-- Location: IOOBUF_X52_Y0_N19
\nf~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|ALT_INV_85~0_combout\,
	devoe => ww_devoe,
	o => ww_nf);

-- Location: IOIBUF_X12_Y0_N18
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\z~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\w~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\gn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gn,
	o => \gn~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\y~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: LABCELL_X9_Y1_N0
\inst|sub|85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|sub|85~0_combout\ = ( \y~input_o\ & ( (!\gn~input_o\ & (!\x~input_o\ $ (!\z~input_o\ $ (!\w~input_o\)))) ) ) # ( !\y~input_o\ & ( (!\gn~input_o\ & (!\x~input_o\ $ (!\z~input_o\ $ (\w~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000000100101100000000001101001000000001001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~input_o\,
	datab => \ALT_INV_z~input_o\,
	datac => \ALT_INV_w~input_o\,
	datad => \ALT_INV_gn~input_o\,
	datae => \ALT_INV_y~input_o\,
	combout => \inst|sub|85~0_combout\);

-- Location: MLABCELL_X6_Y75_N0
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


