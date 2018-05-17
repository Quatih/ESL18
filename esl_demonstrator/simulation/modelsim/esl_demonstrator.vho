-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/17/2018 11:36:44"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	esl_demonstrator IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	slave_address : IN std_logic_vector(7 DOWNTO 0);
	slave_read : IN std_logic;
	slave_write : IN std_logic;
	slave_readdata : BUFFER std_logic_vector(31 DOWNTO 0);
	slave_writedata : IN std_logic_vector(31 DOWNTO 0);
	slave_byteenable : IN std_logic_vector(3 DOWNTO 0);
	inputs : IN std_logic_vector(1 DOWNTO 0)
	);
END esl_demonstrator;

-- Design Ports Information
-- reset	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- slave_address[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_address[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_address[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_address[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_address[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_address[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_address[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_address[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_write	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[8]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[9]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[10]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[11]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[12]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[13]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[14]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[15]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[16]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[17]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[18]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[19]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[20]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[21]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[22]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[23]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[24]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[25]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[26]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[27]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[28]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[29]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[30]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_readdata[31]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[8]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[10]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[11]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[12]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[13]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[14]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[16]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[17]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[18]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[19]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[20]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[21]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[22]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[23]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[24]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[25]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[26]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[27]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[28]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[29]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[30]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_writedata[31]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_byteenable[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_byteenable[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_byteenable[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_byteenable[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[0]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputs[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slave_read	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF esl_demonstrator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_slave_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_slave_read : std_logic;
SIGNAL ww_slave_write : std_logic;
SIGNAL ww_slave_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_slave_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_slave_byteenable : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inputs : std_logic_vector(1 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \slave_address[0]~input_o\ : std_logic;
SIGNAL \slave_address[1]~input_o\ : std_logic;
SIGNAL \slave_address[2]~input_o\ : std_logic;
SIGNAL \slave_address[3]~input_o\ : std_logic;
SIGNAL \slave_address[4]~input_o\ : std_logic;
SIGNAL \slave_address[5]~input_o\ : std_logic;
SIGNAL \slave_address[6]~input_o\ : std_logic;
SIGNAL \slave_address[7]~input_o\ : std_logic;
SIGNAL \slave_write~input_o\ : std_logic;
SIGNAL \slave_writedata[0]~input_o\ : std_logic;
SIGNAL \slave_writedata[1]~input_o\ : std_logic;
SIGNAL \slave_writedata[2]~input_o\ : std_logic;
SIGNAL \slave_writedata[3]~input_o\ : std_logic;
SIGNAL \slave_writedata[4]~input_o\ : std_logic;
SIGNAL \slave_writedata[5]~input_o\ : std_logic;
SIGNAL \slave_writedata[6]~input_o\ : std_logic;
SIGNAL \slave_writedata[7]~input_o\ : std_logic;
SIGNAL \slave_writedata[8]~input_o\ : std_logic;
SIGNAL \slave_writedata[9]~input_o\ : std_logic;
SIGNAL \slave_writedata[10]~input_o\ : std_logic;
SIGNAL \slave_writedata[11]~input_o\ : std_logic;
SIGNAL \slave_writedata[12]~input_o\ : std_logic;
SIGNAL \slave_writedata[13]~input_o\ : std_logic;
SIGNAL \slave_writedata[14]~input_o\ : std_logic;
SIGNAL \slave_writedata[15]~input_o\ : std_logic;
SIGNAL \slave_writedata[16]~input_o\ : std_logic;
SIGNAL \slave_writedata[17]~input_o\ : std_logic;
SIGNAL \slave_writedata[18]~input_o\ : std_logic;
SIGNAL \slave_writedata[19]~input_o\ : std_logic;
SIGNAL \slave_writedata[20]~input_o\ : std_logic;
SIGNAL \slave_writedata[21]~input_o\ : std_logic;
SIGNAL \slave_writedata[22]~input_o\ : std_logic;
SIGNAL \slave_writedata[23]~input_o\ : std_logic;
SIGNAL \slave_writedata[24]~input_o\ : std_logic;
SIGNAL \slave_writedata[25]~input_o\ : std_logic;
SIGNAL \slave_writedata[26]~input_o\ : std_logic;
SIGNAL \slave_writedata[27]~input_o\ : std_logic;
SIGNAL \slave_writedata[28]~input_o\ : std_logic;
SIGNAL \slave_writedata[29]~input_o\ : std_logic;
SIGNAL \slave_writedata[30]~input_o\ : std_logic;
SIGNAL \slave_writedata[31]~input_o\ : std_logic;
SIGNAL \slave_byteenable[0]~input_o\ : std_logic;
SIGNAL \slave_byteenable[1]~input_o\ : std_logic;
SIGNAL \slave_byteenable[2]~input_o\ : std_logic;
SIGNAL \slave_byteenable[3]~input_o\ : std_logic;
SIGNAL \inputs[0]~input_o\ : std_logic;
SIGNAL \inputs[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \slave_read~input_o\ : std_logic;
SIGNAL \slave_readdata[0]~output_o\ : std_logic;
SIGNAL \slave_readdata[1]~output_o\ : std_logic;
SIGNAL \slave_readdata[2]~output_o\ : std_logic;
SIGNAL \slave_readdata[3]~output_o\ : std_logic;
SIGNAL \slave_readdata[4]~output_o\ : std_logic;
SIGNAL \slave_readdata[5]~output_o\ : std_logic;
SIGNAL \slave_readdata[6]~output_o\ : std_logic;
SIGNAL \slave_readdata[7]~output_o\ : std_logic;
SIGNAL \slave_readdata[8]~output_o\ : std_logic;
SIGNAL \slave_readdata[9]~output_o\ : std_logic;
SIGNAL \slave_readdata[10]~output_o\ : std_logic;
SIGNAL \slave_readdata[11]~output_o\ : std_logic;
SIGNAL \slave_readdata[12]~output_o\ : std_logic;
SIGNAL \slave_readdata[13]~output_o\ : std_logic;
SIGNAL \slave_readdata[14]~output_o\ : std_logic;
SIGNAL \slave_readdata[15]~output_o\ : std_logic;
SIGNAL \slave_readdata[16]~output_o\ : std_logic;
SIGNAL \slave_readdata[17]~output_o\ : std_logic;
SIGNAL \slave_readdata[18]~output_o\ : std_logic;
SIGNAL \slave_readdata[19]~output_o\ : std_logic;
SIGNAL \slave_readdata[20]~output_o\ : std_logic;
SIGNAL \slave_readdata[21]~output_o\ : std_logic;
SIGNAL \slave_readdata[22]~output_o\ : std_logic;
SIGNAL \slave_readdata[23]~output_o\ : std_logic;
SIGNAL \slave_readdata[24]~output_o\ : std_logic;
SIGNAL \slave_readdata[25]~output_o\ : std_logic;
SIGNAL \slave_readdata[26]~output_o\ : std_logic;
SIGNAL \slave_readdata[27]~output_o\ : std_logic;
SIGNAL \slave_readdata[28]~output_o\ : std_logic;
SIGNAL \slave_readdata[29]~output_o\ : std_logic;
SIGNAL \slave_readdata[30]~output_o\ : std_logic;
SIGNAL \slave_readdata[31]~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_slave_address <= slave_address;
ww_slave_read <= slave_read;
ww_slave_write <= slave_write;
slave_readdata <= ww_slave_readdata;
ww_slave_writedata <= slave_writedata;
ww_slave_byteenable <= slave_byteenable;
ww_inputs <= inputs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X38_Y34_N2
\slave_readdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\slave_readdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\slave_readdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\slave_readdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[3]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\slave_readdata[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\slave_readdata[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\slave_readdata[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[6]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\slave_readdata[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\slave_readdata[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[8]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\slave_readdata[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[9]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\slave_readdata[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[10]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\slave_readdata[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[11]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\slave_readdata[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[12]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\slave_readdata[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[13]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\slave_readdata[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\slave_readdata[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[15]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\slave_readdata[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[16]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\slave_readdata[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[17]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\slave_readdata[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[18]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\slave_readdata[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[19]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\slave_readdata[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[20]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\slave_readdata[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[21]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\slave_readdata[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[22]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\slave_readdata[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[23]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\slave_readdata[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[24]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\slave_readdata[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[25]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\slave_readdata[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[26]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\slave_readdata[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[27]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\slave_readdata[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[28]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\slave_readdata[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[29]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\slave_readdata[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[30]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\slave_readdata[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \slave_readdata[31]~output_o\);

-- Location: IOIBUF_X0_Y16_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\slave_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_address(0),
	o => \slave_address[0]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\slave_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_address(1),
	o => \slave_address[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\slave_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_address(2),
	o => \slave_address[2]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\slave_address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_address(3),
	o => \slave_address[3]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\slave_address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_address(4),
	o => \slave_address[4]~input_o\);

-- Location: IOIBUF_X49_Y34_N8
\slave_address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_address(5),
	o => \slave_address[5]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\slave_address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_address(6),
	o => \slave_address[6]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\slave_address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_address(7),
	o => \slave_address[7]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\slave_write~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_write,
	o => \slave_write~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\slave_writedata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(0),
	o => \slave_writedata[0]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\slave_writedata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(1),
	o => \slave_writedata[1]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\slave_writedata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(2),
	o => \slave_writedata[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\slave_writedata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(3),
	o => \slave_writedata[3]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\slave_writedata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(4),
	o => \slave_writedata[4]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\slave_writedata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(5),
	o => \slave_writedata[5]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\slave_writedata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(6),
	o => \slave_writedata[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\slave_writedata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(7),
	o => \slave_writedata[7]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\slave_writedata[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(8),
	o => \slave_writedata[8]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\slave_writedata[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(9),
	o => \slave_writedata[9]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\slave_writedata[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(10),
	o => \slave_writedata[10]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\slave_writedata[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(11),
	o => \slave_writedata[11]~input_o\);

-- Location: IOIBUF_X25_Y34_N1
\slave_writedata[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(12),
	o => \slave_writedata[12]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\slave_writedata[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(13),
	o => \slave_writedata[13]~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\slave_writedata[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(14),
	o => \slave_writedata[14]~input_o\);

-- Location: IOIBUF_X25_Y34_N15
\slave_writedata[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(15),
	o => \slave_writedata[15]~input_o\);

-- Location: IOIBUF_X25_Y34_N22
\slave_writedata[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(16),
	o => \slave_writedata[16]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\slave_writedata[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(17),
	o => \slave_writedata[17]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\slave_writedata[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(18),
	o => \slave_writedata[18]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\slave_writedata[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(19),
	o => \slave_writedata[19]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\slave_writedata[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(20),
	o => \slave_writedata[20]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\slave_writedata[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(21),
	o => \slave_writedata[21]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\slave_writedata[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(22),
	o => \slave_writedata[22]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\slave_writedata[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(23),
	o => \slave_writedata[23]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\slave_writedata[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(24),
	o => \slave_writedata[24]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\slave_writedata[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(25),
	o => \slave_writedata[25]~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\slave_writedata[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(26),
	o => \slave_writedata[26]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\slave_writedata[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(27),
	o => \slave_writedata[27]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\slave_writedata[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(28),
	o => \slave_writedata[28]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\slave_writedata[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(29),
	o => \slave_writedata[29]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\slave_writedata[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(30),
	o => \slave_writedata[30]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\slave_writedata[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_writedata(31),
	o => \slave_writedata[31]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\slave_byteenable[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_byteenable(0),
	o => \slave_byteenable[0]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\slave_byteenable[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_byteenable(1),
	o => \slave_byteenable[1]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\slave_byteenable[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_byteenable(2),
	o => \slave_byteenable[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\slave_byteenable[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_byteenable(3),
	o => \slave_byteenable[3]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\inputs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(0),
	o => \inputs[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\inputs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(1),
	o => \inputs[1]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\slave_read~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slave_read,
	o => \slave_read~input_o\);

ww_slave_readdata(0) <= \slave_readdata[0]~output_o\;

ww_slave_readdata(1) <= \slave_readdata[1]~output_o\;

ww_slave_readdata(2) <= \slave_readdata[2]~output_o\;

ww_slave_readdata(3) <= \slave_readdata[3]~output_o\;

ww_slave_readdata(4) <= \slave_readdata[4]~output_o\;

ww_slave_readdata(5) <= \slave_readdata[5]~output_o\;

ww_slave_readdata(6) <= \slave_readdata[6]~output_o\;

ww_slave_readdata(7) <= \slave_readdata[7]~output_o\;

ww_slave_readdata(8) <= \slave_readdata[8]~output_o\;

ww_slave_readdata(9) <= \slave_readdata[9]~output_o\;

ww_slave_readdata(10) <= \slave_readdata[10]~output_o\;

ww_slave_readdata(11) <= \slave_readdata[11]~output_o\;

ww_slave_readdata(12) <= \slave_readdata[12]~output_o\;

ww_slave_readdata(13) <= \slave_readdata[13]~output_o\;

ww_slave_readdata(14) <= \slave_readdata[14]~output_o\;

ww_slave_readdata(15) <= \slave_readdata[15]~output_o\;

ww_slave_readdata(16) <= \slave_readdata[16]~output_o\;

ww_slave_readdata(17) <= \slave_readdata[17]~output_o\;

ww_slave_readdata(18) <= \slave_readdata[18]~output_o\;

ww_slave_readdata(19) <= \slave_readdata[19]~output_o\;

ww_slave_readdata(20) <= \slave_readdata[20]~output_o\;

ww_slave_readdata(21) <= \slave_readdata[21]~output_o\;

ww_slave_readdata(22) <= \slave_readdata[22]~output_o\;

ww_slave_readdata(23) <= \slave_readdata[23]~output_o\;

ww_slave_readdata(24) <= \slave_readdata[24]~output_o\;

ww_slave_readdata(25) <= \slave_readdata[25]~output_o\;

ww_slave_readdata(26) <= \slave_readdata[26]~output_o\;

ww_slave_readdata(27) <= \slave_readdata[27]~output_o\;

ww_slave_readdata(28) <= \slave_readdata[28]~output_o\;

ww_slave_readdata(29) <= \slave_readdata[29]~output_o\;

ww_slave_readdata(30) <= \slave_readdata[30]~output_o\;

ww_slave_readdata(31) <= \slave_readdata[31]~output_o\;
END structure;


