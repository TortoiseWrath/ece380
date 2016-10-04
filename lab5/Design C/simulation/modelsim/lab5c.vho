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

-- DATE "10/04/2016 19:19:46"

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

ENTITY 	lab5c IS
    PORT (
	Over : OUT std_logic;
	Cin : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	Cout : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab5c;

-- Design Ports Information
-- Over	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5c IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Over : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst|auto_generated|op_1~22_cout\ : std_logic;
SIGNAL \inst|auto_generated|op_1~18\ : std_logic;
SIGNAL \inst|auto_generated|op_1~14\ : std_logic;
SIGNAL \inst|auto_generated|op_1~10\ : std_logic;
SIGNAL \inst|auto_generated|op_1~1_sumout\ : std_logic;
SIGNAL \inst|auto_generated|overflow~combout\ : std_logic;
SIGNAL \inst|auto_generated|op_1~2\ : std_logic;
SIGNAL \inst|auto_generated|op_1~5_sumout\ : std_logic;
SIGNAL \inst|auto_generated|op_1~9_sumout\ : std_logic;
SIGNAL \inst|auto_generated|op_1~13_sumout\ : std_logic;
SIGNAL \inst|auto_generated|op_1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_X[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[3]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|ALT_INV_overflow~combout\ : std_logic;
SIGNAL \inst|auto_generated|ALT_INV_op_1~1_sumout\ : std_logic;

BEGIN

Over <= ww_Over;
ww_Cin <= Cin;
ww_X <= X;
ww_Y <= Y;
Cout <= ww_Cout;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_X[0]~input_o\ <= NOT \X[0]~input_o\;
\ALT_INV_Y[0]~input_o\ <= NOT \Y[0]~input_o\;
\ALT_INV_X[1]~input_o\ <= NOT \X[1]~input_o\;
\ALT_INV_Y[1]~input_o\ <= NOT \Y[1]~input_o\;
\ALT_INV_X[2]~input_o\ <= NOT \X[2]~input_o\;
\ALT_INV_Y[2]~input_o\ <= NOT \Y[2]~input_o\;
\ALT_INV_Y[3]~input_o\ <= NOT \Y[3]~input_o\;
\ALT_INV_X[3]~input_o\ <= NOT \X[3]~input_o\;
\inst|auto_generated|ALT_INV_overflow~combout\ <= NOT \inst|auto_generated|overflow~combout\;
\inst|auto_generated|ALT_INV_op_1~1_sumout\ <= NOT \inst|auto_generated|op_1~1_sumout\;

-- Location: IOOBUF_X52_Y0_N19
\Over~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|ALT_INV_overflow~combout\,
	devoe => ww_devoe,
	o => ww_Over);

-- Location: IOOBUF_X52_Y0_N2
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|op_1~5_sumout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOOBUF_X89_Y6_N22
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|op_1~1_sumout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X89_Y8_N5
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|op_1~9_sumout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X89_Y6_N5
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|op_1~13_sumout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X84_Y0_N2
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|op_1~17_sumout\,
	devoe => ww_devoe,
	o => ww_S(0));

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

-- Location: LABCELL_X16_Y2_N0
\inst|auto_generated|op_1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|auto_generated|op_1~22_cout\ = CARRY(( \Cin~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	cin => GND,
	cout => \inst|auto_generated|op_1~22_cout\);

-- Location: LABCELL_X16_Y2_N3
\inst|auto_generated|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|auto_generated|op_1~17_sumout\ = SUM(( \Y[0]~input_o\ ) + ( \X[0]~input_o\ ) + ( \inst|auto_generated|op_1~22_cout\ ))
-- \inst|auto_generated|op_1~18\ = CARRY(( \Y[0]~input_o\ ) + ( \X[0]~input_o\ ) + ( \inst|auto_generated|op_1~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y[0]~input_o\,
	dataf => \ALT_INV_X[0]~input_o\,
	cin => \inst|auto_generated|op_1~22_cout\,
	sumout => \inst|auto_generated|op_1~17_sumout\,
	cout => \inst|auto_generated|op_1~18\);

-- Location: LABCELL_X16_Y2_N6
\inst|auto_generated|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|auto_generated|op_1~13_sumout\ = SUM(( \X[1]~input_o\ ) + ( \Y[1]~input_o\ ) + ( \inst|auto_generated|op_1~18\ ))
-- \inst|auto_generated|op_1~14\ = CARRY(( \X[1]~input_o\ ) + ( \Y[1]~input_o\ ) + ( \inst|auto_generated|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y[1]~input_o\,
	datad => \ALT_INV_X[1]~input_o\,
	cin => \inst|auto_generated|op_1~18\,
	sumout => \inst|auto_generated|op_1~13_sumout\,
	cout => \inst|auto_generated|op_1~14\);

-- Location: LABCELL_X16_Y2_N9
\inst|auto_generated|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|auto_generated|op_1~9_sumout\ = SUM(( \Y[2]~input_o\ ) + ( \X[2]~input_o\ ) + ( \inst|auto_generated|op_1~14\ ))
-- \inst|auto_generated|op_1~10\ = CARRY(( \Y[2]~input_o\ ) + ( \X[2]~input_o\ ) + ( \inst|auto_generated|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_Y[2]~input_o\,
	cin => \inst|auto_generated|op_1~14\,
	sumout => \inst|auto_generated|op_1~9_sumout\,
	cout => \inst|auto_generated|op_1~10\);

-- Location: LABCELL_X16_Y2_N12
\inst|auto_generated|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|auto_generated|op_1~1_sumout\ = SUM(( \Y[3]~input_o\ ) + ( \X[3]~input_o\ ) + ( \inst|auto_generated|op_1~10\ ))
-- \inst|auto_generated|op_1~2\ = CARRY(( \Y[3]~input_o\ ) + ( \X[3]~input_o\ ) + ( \inst|auto_generated|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y[3]~input_o\,
	datac => \ALT_INV_X[3]~input_o\,
	cin => \inst|auto_generated|op_1~10\,
	sumout => \inst|auto_generated|op_1~1_sumout\,
	cout => \inst|auto_generated|op_1~2\);

-- Location: LABCELL_X16_Y2_N18
\inst|auto_generated|overflow\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|auto_generated|overflow~combout\ = ( \Y[3]~input_o\ & ( \inst|auto_generated|op_1~1_sumout\ ) ) # ( !\Y[3]~input_o\ & ( \inst|auto_generated|op_1~1_sumout\ & ( \X[3]~input_o\ ) ) ) # ( \Y[3]~input_o\ & ( !\inst|auto_generated|op_1~1_sumout\ & ( 
-- !\X[3]~input_o\ ) ) ) # ( !\Y[3]~input_o\ & ( !\inst|auto_generated|op_1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[3]~input_o\,
	datae => \ALT_INV_Y[3]~input_o\,
	dataf => \inst|auto_generated|ALT_INV_op_1~1_sumout\,
	combout => \inst|auto_generated|overflow~combout\);

-- Location: LABCELL_X16_Y2_N15
\inst|auto_generated|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|auto_generated|op_1~5_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|auto_generated|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|auto_generated|op_1~2\,
	sumout => \inst|auto_generated|op_1~5_sumout\);

-- Location: LABCELL_X13_Y55_N3
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


