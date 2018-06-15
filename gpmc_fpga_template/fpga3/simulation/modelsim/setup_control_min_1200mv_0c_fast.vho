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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/15/2018 17:51:11"

-- 
-- Device: Altera EP3C40Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	setup_control IS
    PORT (
	CLOCK_50 : IN std_logic;
	GPMC_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	GPMC_ADDR : IN std_logic_vector(10 DOWNTO 1);
	GPMC_nPWE : IN std_logic;
	GPMC_nOE : IN std_logic;
	GPMC_FPGA_IRQ : IN std_logic;
	GPMC_nCS6 : IN std_logic;
	GPMC_CLK : IN std_logic;
	F_IN : IN std_logic_vector(15 DOWNTO 0);
	F_OUT : OUT std_logic_vector(15 DOWNTO 0);
	PWM3A : OUT std_logic;
	PWM3B : OUT std_logic;
	PWM3C : OUT std_logic;
	PWM4A : OUT std_logic;
	PWM4B : OUT std_logic;
	PWM4C : OUT std_logic;
	ENC3A : IN std_logic;
	ENC3B : IN std_logic;
	ENC3I : IN std_logic;
	ENC4A : IN std_logic;
	ENC4B : IN std_logic;
	ENC4I : IN std_logic
	);
END setup_control;

-- Design Ports Information
-- GPMC_FPGA_IRQ	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_CLK	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_IN[0]	=>  Location: PIN_240,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[1]	=>  Location: PIN_239,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[2]	=>  Location: PIN_236,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[3]	=>  Location: PIN_235,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[4]	=>  Location: PIN_232,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[5]	=>  Location: PIN_231,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[6]	=>  Location: PIN_230,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[7]	=>  Location: PIN_226,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[8]	=>  Location: PIN_224,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[9]	=>  Location: PIN_223,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[10]	=>  Location: PIN_221,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[11]	=>  Location: PIN_219,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[12]	=>  Location: PIN_218,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[13]	=>  Location: PIN_217,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[14]	=>  Location: PIN_216,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_IN[15]	=>  Location: PIN_214,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F_OUT[0]	=>  Location: PIN_207,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[1]	=>  Location: PIN_203,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[2]	=>  Location: PIN_202,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[3]	=>  Location: PIN_201,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[4]	=>  Location: PIN_200,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[5]	=>  Location: PIN_197,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[6]	=>  Location: PIN_196,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[7]	=>  Location: PIN_195,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[8]	=>  Location: PIN_194,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[9]	=>  Location: PIN_189,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[10]	=>  Location: PIN_188,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[11]	=>  Location: PIN_187,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[12]	=>  Location: PIN_186,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[13]	=>  Location: PIN_185,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[14]	=>  Location: PIN_184,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F_OUT[15]	=>  Location: PIN_183,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM3A	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM3B	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM3C	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM4A	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM4B	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM4C	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ENC3I	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC4I	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPMC_DATA[0]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[1]	=>  Location: PIN_94,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[2]	=>  Location: PIN_95,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[4]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[6]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[8]	=>  Location: PIN_107,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[9]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[10]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[11]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[12]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[13]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[14]	=>  Location: PIN_117,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[15]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPMC_nOE	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_nCS6	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[4]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[10]	=>  Location: PIN_139,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[7]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[8]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[9]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_nPWE	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENC4A	=>  Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC4B	=>  Location: PIN_177,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC3A	=>  Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC3B	=>  Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF setup_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_GPMC_ADDR : std_logic_vector(10 DOWNTO 1);
SIGNAL ww_GPMC_nPWE : std_logic;
SIGNAL ww_GPMC_nOE : std_logic;
SIGNAL ww_GPMC_FPGA_IRQ : std_logic;
SIGNAL ww_GPMC_nCS6 : std_logic;
SIGNAL ww_GPMC_CLK : std_logic;
SIGNAL ww_F_IN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_F_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PWM3A : std_logic;
SIGNAL ww_PWM3B : std_logic;
SIGNAL ww_PWM3C : std_logic;
SIGNAL ww_PWM4A : std_logic;
SIGNAL ww_PWM4B : std_logic;
SIGNAL ww_PWM4C : std_logic;
SIGNAL ww_ENC3A : std_logic;
SIGNAL ww_ENC3B : std_logic;
SIGNAL ww_ENC3I : std_logic;
SIGNAL ww_ENC4A : std_logic;
SIGNAL ww_ENC4B : std_logic;
SIGNAL ww_ENC4I : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPMC_FPGA_IRQ~input_o\ : std_logic;
SIGNAL \GPMC_CLK~input_o\ : std_logic;
SIGNAL \F_IN[0]~input_o\ : std_logic;
SIGNAL \F_IN[1]~input_o\ : std_logic;
SIGNAL \F_IN[2]~input_o\ : std_logic;
SIGNAL \F_IN[3]~input_o\ : std_logic;
SIGNAL \F_IN[4]~input_o\ : std_logic;
SIGNAL \F_IN[5]~input_o\ : std_logic;
SIGNAL \F_IN[6]~input_o\ : std_logic;
SIGNAL \F_IN[7]~input_o\ : std_logic;
SIGNAL \F_IN[8]~input_o\ : std_logic;
SIGNAL \F_IN[9]~input_o\ : std_logic;
SIGNAL \F_IN[10]~input_o\ : std_logic;
SIGNAL \F_IN[11]~input_o\ : std_logic;
SIGNAL \F_IN[12]~input_o\ : std_logic;
SIGNAL \F_IN[13]~input_o\ : std_logic;
SIGNAL \F_IN[14]~input_o\ : std_logic;
SIGNAL \F_IN[15]~input_o\ : std_logic;
SIGNAL \ENC3I~input_o\ : std_logic;
SIGNAL \ENC4I~input_o\ : std_logic;
SIGNAL \GPMC_DATA[0]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[1]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[2]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[3]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[4]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[5]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[6]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[7]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[8]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[9]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[10]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[11]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[12]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[13]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[14]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[15]~output_o\ : std_logic;
SIGNAL \F_OUT[0]~output_o\ : std_logic;
SIGNAL \F_OUT[1]~output_o\ : std_logic;
SIGNAL \F_OUT[2]~output_o\ : std_logic;
SIGNAL \F_OUT[3]~output_o\ : std_logic;
SIGNAL \F_OUT[4]~output_o\ : std_logic;
SIGNAL \F_OUT[5]~output_o\ : std_logic;
SIGNAL \F_OUT[6]~output_o\ : std_logic;
SIGNAL \F_OUT[7]~output_o\ : std_logic;
SIGNAL \F_OUT[8]~output_o\ : std_logic;
SIGNAL \F_OUT[9]~output_o\ : std_logic;
SIGNAL \F_OUT[10]~output_o\ : std_logic;
SIGNAL \F_OUT[11]~output_o\ : std_logic;
SIGNAL \F_OUT[12]~output_o\ : std_logic;
SIGNAL \F_OUT[13]~output_o\ : std_logic;
SIGNAL \F_OUT[14]~output_o\ : std_logic;
SIGNAL \F_OUT[15]~output_o\ : std_logic;
SIGNAL \PWM3A~output_o\ : std_logic;
SIGNAL \PWM3B~output_o\ : std_logic;
SIGNAL \PWM3C~output_o\ : std_logic;
SIGNAL \PWM4A~output_o\ : std_logic;
SIGNAL \PWM4B~output_o\ : std_logic;
SIGNAL \PWM4C~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GPMC_ADDR[10]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[5]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[6]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[9]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_addr_in[8]~feeder_combout\ : std_logic;
SIGNAL \GPMC_ADDR[8]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[7]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_addr_in[6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|LessThan0~0_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][0]~0_combout\ : std_logic;
SIGNAL \GPMC_ADDR[2]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[4]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[3]~input_o\ : std_logic;
SIGNAL \GPMC_DATA[0]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[23][0]~feeder_combout\ : std_logic;
SIGNAL \GPMC_ADDR[1]~input_o\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~13_combout\ : std_logic;
SIGNAL \GPMC_nPWE~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_nwe~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][0]~3_combout\ : std_logic;
SIGNAL \GPMC_nCS6~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_ncs~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][0]~17_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~14_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[19][0]~18_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[19][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~7_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~15_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][0]~19_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~12_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][0]~16_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~8_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~5_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][0]~8_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~8_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][0]~11_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~7_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[17][0]~10_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[17][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~6_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][0]~9_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~2_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~3_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~0_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][0]~12_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~11_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][0]~15_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~9_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][0]~13_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~10_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[16][0]~14_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[16][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~4_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~5_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~6_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~4_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][0]~7_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~1_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][0]~4_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~3_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[18][0]~6_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[18][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~2_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][0]~5_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~0_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~1_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~9_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][0]~34_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][0]~37_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][0]~35_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][0]~36_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[12][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~17_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~18_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][0]~20_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][0]~23_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][0]~21_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][0]~22_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[8][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~10_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~11_combout\ : std_logic;
SIGNAL \QD2|counter[0]~32_combout\ : std_logic;
SIGNAL \ENC4A~input_o\ : std_logic;
SIGNAL \QD2|flipflop[0]~feeder_combout\ : std_logic;
SIGNAL \QD2|GPIO_0_IN_old[0]~feeder_combout\ : std_logic;
SIGNAL \ENC4B~input_o\ : std_logic;
SIGNAL \QD2|counter[0]~34_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~26_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][5]~27_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][0]~q\ : std_logic;
SIGNAL \QD2|counter[0]~33\ : std_logic;
SIGNAL \QD2|counter[1]~35_combout\ : std_logic;
SIGNAL \QD2|counter[1]~36\ : std_logic;
SIGNAL \QD2|counter[2]~37_combout\ : std_logic;
SIGNAL \QD2|counter[2]~38\ : std_logic;
SIGNAL \QD2|counter[3]~39_combout\ : std_logic;
SIGNAL \QD2|counter[3]~40\ : std_logic;
SIGNAL \QD2|counter[4]~41_combout\ : std_logic;
SIGNAL \QD2|counter[4]~42\ : std_logic;
SIGNAL \QD2|counter[5]~43_combout\ : std_logic;
SIGNAL \QD2|counter[5]~44\ : std_logic;
SIGNAL \QD2|counter[6]~45_combout\ : std_logic;
SIGNAL \QD2|counter[6]~46\ : std_logic;
SIGNAL \QD2|counter[7]~47_combout\ : std_logic;
SIGNAL \QD2|counter[7]~48\ : std_logic;
SIGNAL \QD2|counter[8]~49_combout\ : std_logic;
SIGNAL \QD2|counter[8]~50\ : std_logic;
SIGNAL \QD2|counter[9]~51_combout\ : std_logic;
SIGNAL \QD2|counter[9]~52\ : std_logic;
SIGNAL \QD2|counter[10]~53_combout\ : std_logic;
SIGNAL \QD2|counter[10]~54\ : std_logic;
SIGNAL \QD2|counter[11]~55_combout\ : std_logic;
SIGNAL \QD2|counter[11]~56\ : std_logic;
SIGNAL \QD2|counter[12]~57_combout\ : std_logic;
SIGNAL \QD2|counter[12]~58\ : std_logic;
SIGNAL \QD2|counter[13]~59_combout\ : std_logic;
SIGNAL \QD2|counter[13]~60\ : std_logic;
SIGNAL \QD2|counter[14]~61_combout\ : std_logic;
SIGNAL \QD2|counter[14]~62\ : std_logic;
SIGNAL \QD2|counter[15]~63_combout\ : std_logic;
SIGNAL \QD2|counter[15]~64\ : std_logic;
SIGNAL \QD2|counter[16]~65_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~32_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][4]~33_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][0]~q\ : std_logic;
SIGNAL \qd1|position[0]~32_combout\ : std_logic;
SIGNAL \qd1|Add3~0_combout\ : std_logic;
SIGNAL \qd1|position[0]~33\ : std_logic;
SIGNAL \qd1|position[1]~34_combout\ : std_logic;
SIGNAL \qd1|Add3~1\ : std_logic;
SIGNAL \qd1|Add3~2_combout\ : std_logic;
SIGNAL \qd1|Add3~39_combout\ : std_logic;
SIGNAL \qd1|LessThan0~4_combout\ : std_logic;
SIGNAL \qd1|LessThan0~1_combout\ : std_logic;
SIGNAL \qd1|LessThan0~2_combout\ : std_logic;
SIGNAL \qd1|LessThan0~3_combout\ : std_logic;
SIGNAL \qd1|LessThan0~5_combout\ : std_logic;
SIGNAL \qd1|LessThan0~6_combout\ : std_logic;
SIGNAL \qd1|LessThan0~0_combout\ : std_logic;
SIGNAL \qd1|LessThan0~7_combout\ : std_logic;
SIGNAL \qd1|LessThan0~8_combout\ : std_logic;
SIGNAL \qd1|LessThan0~9_combout\ : std_logic;
SIGNAL \ENC3A~input_o\ : std_logic;
SIGNAL \qd1|a_new[1]~feeder_combout\ : std_logic;
SIGNAL \ENC3B~input_o\ : std_logic;
SIGNAL \qd1|b_new[0]~feeder_combout\ : std_logic;
SIGNAL \qd1|b_new[1]~feeder_combout\ : std_logic;
SIGNAL \qd1|b_prev~feeder_combout\ : std_logic;
SIGNAL \qd1|process_0~3_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[0]~14_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[0]~15\ : std_logic;
SIGNAL \qd1|debounce_cnt[1]~16_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[1]~17\ : std_logic;
SIGNAL \qd1|debounce_cnt[2]~18_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[2]~19\ : std_logic;
SIGNAL \qd1|debounce_cnt[3]~20_combout\ : std_logic;
SIGNAL \qd1|Equal1~2_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[3]~21\ : std_logic;
SIGNAL \qd1|debounce_cnt[4]~22_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[4]~23\ : std_logic;
SIGNAL \qd1|debounce_cnt[5]~24_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[5]~25\ : std_logic;
SIGNAL \qd1|debounce_cnt[6]~26_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[6]~27\ : std_logic;
SIGNAL \qd1|debounce_cnt[7]~28_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[7]~29\ : std_logic;
SIGNAL \qd1|debounce_cnt[8]~30_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[8]~31\ : std_logic;
SIGNAL \qd1|debounce_cnt[9]~32_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[9]~33\ : std_logic;
SIGNAL \qd1|debounce_cnt[10]~34_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[10]~35\ : std_logic;
SIGNAL \qd1|debounce_cnt[11]~36_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[11]~37\ : std_logic;
SIGNAL \qd1|debounce_cnt[12]~38_combout\ : std_logic;
SIGNAL \qd1|debounce_cnt[12]~39\ : std_logic;
SIGNAL \qd1|debounce_cnt[13]~40_combout\ : std_logic;
SIGNAL \qd1|Equal1~1_combout\ : std_logic;
SIGNAL \qd1|Equal1~0_combout\ : std_logic;
SIGNAL \qd1|Equal1~3_combout\ : std_logic;
SIGNAL \qd1|Equal1~4_combout\ : std_logic;
SIGNAL \qd1|b_prev~0_combout\ : std_logic;
SIGNAL \qd1|b_prev~q\ : std_logic;
SIGNAL \qd1|direction~0_combout\ : std_logic;
SIGNAL \qd1|position[23]~66_combout\ : std_logic;
SIGNAL \qd1|a_prev~q\ : std_logic;
SIGNAL \qd1|process_0~0_combout\ : std_logic;
SIGNAL \qd1|process_0~1_combout\ : std_logic;
SIGNAL \qd1|process_0~2_combout\ : std_logic;
SIGNAL \qd1|position[1]~35\ : std_logic;
SIGNAL \qd1|position[2]~36_combout\ : std_logic;
SIGNAL \qd1|Add3~3\ : std_logic;
SIGNAL \qd1|Add3~4_combout\ : std_logic;
SIGNAL \qd1|Add3~43_combout\ : std_logic;
SIGNAL \qd1|position[2]~37\ : std_logic;
SIGNAL \qd1|position[3]~38_combout\ : std_logic;
SIGNAL \qd1|Add3~5\ : std_logic;
SIGNAL \qd1|Add3~6_combout\ : std_logic;
SIGNAL \qd1|Add3~47_combout\ : std_logic;
SIGNAL \qd1|position[3]~39\ : std_logic;
SIGNAL \qd1|position[4]~40_combout\ : std_logic;
SIGNAL \qd1|Add3~7\ : std_logic;
SIGNAL \qd1|Add3~8_combout\ : std_logic;
SIGNAL \qd1|Add3~51_combout\ : std_logic;
SIGNAL \qd1|position[4]~41\ : std_logic;
SIGNAL \qd1|position[5]~42_combout\ : std_logic;
SIGNAL \qd1|Add3~9\ : std_logic;
SIGNAL \qd1|Add3~10_combout\ : std_logic;
SIGNAL \qd1|Add3~55_combout\ : std_logic;
SIGNAL \qd1|position[5]~43\ : std_logic;
SIGNAL \qd1|position[6]~44_combout\ : std_logic;
SIGNAL \qd1|Add3~11\ : std_logic;
SIGNAL \qd1|Add3~12_combout\ : std_logic;
SIGNAL \qd1|Add3~59_combout\ : std_logic;
SIGNAL \qd1|position[6]~45\ : std_logic;
SIGNAL \qd1|position[7]~46_combout\ : std_logic;
SIGNAL \qd1|Add3~13\ : std_logic;
SIGNAL \qd1|Add3~14_combout\ : std_logic;
SIGNAL \qd1|Add3~63_combout\ : std_logic;
SIGNAL \qd1|position[7]~47\ : std_logic;
SIGNAL \qd1|position[8]~48_combout\ : std_logic;
SIGNAL \qd1|Add3~15\ : std_logic;
SIGNAL \qd1|Add3~16_combout\ : std_logic;
SIGNAL \qd1|Add3~67_combout\ : std_logic;
SIGNAL \qd1|position[8]~49\ : std_logic;
SIGNAL \qd1|position[9]~50_combout\ : std_logic;
SIGNAL \qd1|Add3~17\ : std_logic;
SIGNAL \qd1|Add3~18_combout\ : std_logic;
SIGNAL \qd1|Add3~71_combout\ : std_logic;
SIGNAL \qd1|position[9]~51\ : std_logic;
SIGNAL \qd1|position[10]~52_combout\ : std_logic;
SIGNAL \qd1|Add3~19\ : std_logic;
SIGNAL \qd1|Add3~20_combout\ : std_logic;
SIGNAL \qd1|Add3~75_combout\ : std_logic;
SIGNAL \qd1|position[10]~53\ : std_logic;
SIGNAL \qd1|position[11]~54_combout\ : std_logic;
SIGNAL \qd1|Add3~21\ : std_logic;
SIGNAL \qd1|Add3~22_combout\ : std_logic;
SIGNAL \qd1|Add3~79_combout\ : std_logic;
SIGNAL \qd1|position[11]~55\ : std_logic;
SIGNAL \qd1|position[12]~56_combout\ : std_logic;
SIGNAL \qd1|Add3~23\ : std_logic;
SIGNAL \qd1|Add3~24_combout\ : std_logic;
SIGNAL \qd1|Add3~83_combout\ : std_logic;
SIGNAL \qd1|position[12]~57\ : std_logic;
SIGNAL \qd1|position[13]~58_combout\ : std_logic;
SIGNAL \qd1|Add3~25\ : std_logic;
SIGNAL \qd1|Add3~26_combout\ : std_logic;
SIGNAL \qd1|Add3~87_combout\ : std_logic;
SIGNAL \qd1|position[13]~59\ : std_logic;
SIGNAL \qd1|position[14]~60_combout\ : std_logic;
SIGNAL \qd1|Add3~27\ : std_logic;
SIGNAL \qd1|Add3~28_combout\ : std_logic;
SIGNAL \qd1|Add3~91_combout\ : std_logic;
SIGNAL \qd1|position[14]~61\ : std_logic;
SIGNAL \qd1|position[15]~62_combout\ : std_logic;
SIGNAL \qd1|Add3~29\ : std_logic;
SIGNAL \qd1|Add3~30_combout\ : std_logic;
SIGNAL \qd1|Add3~95_combout\ : std_logic;
SIGNAL \qd1|position[15]~63\ : std_logic;
SIGNAL \qd1|position[16]~64_combout\ : std_logic;
SIGNAL \qd1|Add3~31\ : std_logic;
SIGNAL \qd1|Add3~32_combout\ : std_logic;
SIGNAL \qd1|Add3~34_combout\ : std_logic;
SIGNAL \qd1|position[16]~65\ : std_logic;
SIGNAL \qd1|position[17]~67_combout\ : std_logic;
SIGNAL \qd1|Add3~33\ : std_logic;
SIGNAL \qd1|Add3~36_combout\ : std_logic;
SIGNAL \qd1|Add3~38_combout\ : std_logic;
SIGNAL \qd1|position[17]~68\ : std_logic;
SIGNAL \qd1|position[18]~69_combout\ : std_logic;
SIGNAL \qd1|Add3~37\ : std_logic;
SIGNAL \qd1|Add3~40_combout\ : std_logic;
SIGNAL \qd1|Add3~42_combout\ : std_logic;
SIGNAL \qd1|position[18]~70\ : std_logic;
SIGNAL \qd1|position[19]~71_combout\ : std_logic;
SIGNAL \qd1|Add3~41\ : std_logic;
SIGNAL \qd1|Add3~44_combout\ : std_logic;
SIGNAL \qd1|Add3~46_combout\ : std_logic;
SIGNAL \qd1|position[19]~72\ : std_logic;
SIGNAL \qd1|position[20]~73_combout\ : std_logic;
SIGNAL \qd1|Add3~45\ : std_logic;
SIGNAL \qd1|Add3~48_combout\ : std_logic;
SIGNAL \qd1|Add3~50_combout\ : std_logic;
SIGNAL \qd1|position[20]~74\ : std_logic;
SIGNAL \qd1|position[21]~75_combout\ : std_logic;
SIGNAL \qd1|Add3~49\ : std_logic;
SIGNAL \qd1|Add3~52_combout\ : std_logic;
SIGNAL \qd1|Add3~54_combout\ : std_logic;
SIGNAL \qd1|position[21]~76\ : std_logic;
SIGNAL \qd1|position[22]~77_combout\ : std_logic;
SIGNAL \qd1|Add3~53\ : std_logic;
SIGNAL \qd1|Add3~56_combout\ : std_logic;
SIGNAL \qd1|Add3~58_combout\ : std_logic;
SIGNAL \qd1|position[22]~78\ : std_logic;
SIGNAL \qd1|position[23]~79_combout\ : std_logic;
SIGNAL \qd1|Add3~57\ : std_logic;
SIGNAL \qd1|Add3~60_combout\ : std_logic;
SIGNAL \qd1|Add3~62_combout\ : std_logic;
SIGNAL \qd1|position[23]~80\ : std_logic;
SIGNAL \qd1|position[24]~81_combout\ : std_logic;
SIGNAL \qd1|Add3~61\ : std_logic;
SIGNAL \qd1|Add3~64_combout\ : std_logic;
SIGNAL \qd1|Add3~66_combout\ : std_logic;
SIGNAL \qd1|position[24]~82\ : std_logic;
SIGNAL \qd1|position[25]~83_combout\ : std_logic;
SIGNAL \qd1|Add3~65\ : std_logic;
SIGNAL \qd1|Add3~68_combout\ : std_logic;
SIGNAL \qd1|Add3~70_combout\ : std_logic;
SIGNAL \qd1|position[25]~84\ : std_logic;
SIGNAL \qd1|position[26]~85_combout\ : std_logic;
SIGNAL \qd1|Add3~69\ : std_logic;
SIGNAL \qd1|Add3~72_combout\ : std_logic;
SIGNAL \qd1|Add3~74_combout\ : std_logic;
SIGNAL \qd1|position[26]~86\ : std_logic;
SIGNAL \qd1|position[27]~87_combout\ : std_logic;
SIGNAL \qd1|Add3~73\ : std_logic;
SIGNAL \qd1|Add3~76_combout\ : std_logic;
SIGNAL \qd1|Add3~78_combout\ : std_logic;
SIGNAL \qd1|position[27]~88\ : std_logic;
SIGNAL \qd1|position[28]~89_combout\ : std_logic;
SIGNAL \qd1|Add3~77\ : std_logic;
SIGNAL \qd1|Add3~80_combout\ : std_logic;
SIGNAL \qd1|Add3~82_combout\ : std_logic;
SIGNAL \qd1|position[28]~90\ : std_logic;
SIGNAL \qd1|position[29]~91_combout\ : std_logic;
SIGNAL \qd1|Add3~81\ : std_logic;
SIGNAL \qd1|Add3~84_combout\ : std_logic;
SIGNAL \qd1|Add3~86_combout\ : std_logic;
SIGNAL \qd1|position[29]~92\ : std_logic;
SIGNAL \qd1|position[30]~93_combout\ : std_logic;
SIGNAL \qd1|Add3~85\ : std_logic;
SIGNAL \qd1|Add3~88_combout\ : std_logic;
SIGNAL \qd1|Add3~90_combout\ : std_logic;
SIGNAL \qd1|position[30]~94\ : std_logic;
SIGNAL \qd1|position[31]~95_combout\ : std_logic;
SIGNAL \qd1|Add3~89\ : std_logic;
SIGNAL \qd1|Add3~92_combout\ : std_logic;
SIGNAL \qd1|Add3~94_combout\ : std_logic;
SIGNAL \qd1|LessThan1~2_combout\ : std_logic;
SIGNAL \qd1|LessThan1~3_combout\ : std_logic;
SIGNAL \qd1|LessThan1~0_combout\ : std_logic;
SIGNAL \qd1|LessThan1~1_combout\ : std_logic;
SIGNAL \qd1|LessThan1~4_combout\ : std_logic;
SIGNAL \qd1|Add3~35_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~30_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][9]~31_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~28_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][1]~29_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~14_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~15_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][0]~24_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][0]~25_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][8]~2_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][8]~1_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[4][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~12_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~13_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~16_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~19_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~20_combout\ : std_logic;
SIGNAL \GPMC_nOE~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_nre~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[0]~21_combout\ : std_logic;
SIGNAL \gpmc_driver|GPMC_DATA~16_combout\ : std_logic;
SIGNAL \GPMC_DATA[1]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[4][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[4][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~32_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~33_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[12][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~39_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~40_combout\ : std_logic;
SIGNAL \QD2|counter[16]~66\ : std_logic;
SIGNAL \QD2|counter[17]~67_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~41_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~38_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~40_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~39_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~36_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~37_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~34_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~35_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~38_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~41_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~22_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~23_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~29_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~30_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[16][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~26_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~27_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~24_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~25_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~28_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~31_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~42_combout\ : std_logic;
SIGNAL \GPMC_DATA[2]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~60_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~61_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~53_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~54_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~55_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~56_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~42_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][2]~q\ : std_logic;
SIGNAL \QD2|counter[17]~68\ : std_logic;
SIGNAL \QD2|counter[18]~69_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~45_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~44_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~43_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~57_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~58_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~59_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~62_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~43_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~44_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~50_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~51_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~47_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~48_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~45_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~46_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~49_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~52_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~63_combout\ : std_logic;
SIGNAL \GPMC_DATA[3]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~81_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~82_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[4][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~74_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~75_combout\ : std_logic;
SIGNAL \QD2|counter[18]~70\ : std_logic;
SIGNAL \QD2|counter[19]~71_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~49_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~46_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~47_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~48_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~78_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~79_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~76_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~77_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~80_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~83_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~71_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~72_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[16][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~68_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~69_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~66_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~67_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~70_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~64_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~65_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~73_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~84_combout\ : std_logic;
SIGNAL \GPMC_DATA[4]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~95_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~96_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~102_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~103_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~51_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~52_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~99_combout\ : std_logic;
SIGNAL \QD2|counter[19]~72\ : std_logic;
SIGNAL \QD2|counter[20]~73_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~53_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~50_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~100_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[4][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~97_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~98_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~101_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~104_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~85_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~86_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~89_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~90_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~87_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~88_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~91_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~92_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~93_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~94_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~105_combout\ : std_logic;
SIGNAL \GPMC_DATA[5]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~106_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~107_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~113_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~114_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~108_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~109_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~110_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~111_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~112_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~115_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[4][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~116_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~117_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~123_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~124_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[8][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~118_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~119_combout\ : std_logic;
SIGNAL \QD2|counter[20]~74\ : std_logic;
SIGNAL \QD2|counter[21]~75_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~57_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~54_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~56_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~55_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~120_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~121_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~122_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~125_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~126_combout\ : std_logic;
SIGNAL \GPMC_DATA[6]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~127_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~128_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~134_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~135_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~129_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~130_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~131_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~132_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~133_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~136_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~137_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~138_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~144_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~145_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~58_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][6]~q\ : std_logic;
SIGNAL \QD2|counter[21]~76\ : std_logic;
SIGNAL \QD2|counter[22]~77_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~61_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~59_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~60_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~141_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~142_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~139_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~140_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~143_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~146_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~147_combout\ : std_logic;
SIGNAL \GPMC_DATA[7]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~155_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~156_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~152_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~153_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~150_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~151_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~154_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~148_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~149_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~157_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[4][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~158_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~159_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~165_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~166_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~62_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][7]~q\ : std_logic;
SIGNAL \QD2|counter[22]~78\ : std_logic;
SIGNAL \QD2|counter[23]~79_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~65_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~64_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~63_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~162_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~163_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~160_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~161_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~164_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~167_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~168_combout\ : std_logic;
SIGNAL \GPMC_DATA[8]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~169_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~170_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~176_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~177_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[17][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~171_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~172_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~173_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~174_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~175_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~178_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~179_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~180_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~181_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~182_combout\ : std_logic;
SIGNAL \QD2|counter[23]~80\ : std_logic;
SIGNAL \QD2|counter[24]~81_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~69_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~66_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~68_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~67_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~183_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~184_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~185_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~186_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~187_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~188_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~189_combout\ : std_logic;
SIGNAL \GPMC_DATA[9]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[9]~feeder_combout\ : std_logic;
SIGNAL \QD2|counter[24]~82\ : std_logic;
SIGNAL \QD2|counter[25]~83_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~73_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~70_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~71_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~72_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~204_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~205_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~202_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~203_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~206_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[4][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~200_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~201_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~207_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~208_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~209_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~197_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~198_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~194_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~195_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~192_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~193_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~196_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~190_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~191_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~199_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~210_combout\ : std_logic;
SIGNAL \GPMC_DATA[10]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~221_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~222_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~223_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~224_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~74_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][10]~q\ : std_logic;
SIGNAL \QD2|counter[25]~84\ : std_logic;
SIGNAL \QD2|counter[26]~85_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~77_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~75_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~76_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~225_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~226_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~227_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~228_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~229_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~230_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~215_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~216_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~213_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~214_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~217_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~211_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~212_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~218_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~219_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~220_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~231_combout\ : std_logic;
SIGNAL \GPMC_DATA[11]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~242_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~243_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~249_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~250_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~78_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][11]~q\ : std_logic;
SIGNAL \QD2|counter[26]~86\ : std_logic;
SIGNAL \QD2|counter[27]~87_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~81_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~79_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~80_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~246_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~247_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~244_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~245_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~248_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~251_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~239_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~240_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~234_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~235_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~236_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~237_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~238_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~232_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~233_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~241_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~252_combout\ : std_logic;
SIGNAL \GPMC_DATA[12]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~253_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~254_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~257_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~258_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~255_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~256_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~259_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~260_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~261_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~262_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~265_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~266_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~84_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~83_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~267_combout\ : std_logic;
SIGNAL \QD2|counter[27]~88\ : std_logic;
SIGNAL \QD2|counter[28]~89_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~85_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~82_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~268_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~269_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~270_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~271_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~263_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~264_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~272_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~273_combout\ : std_logic;
SIGNAL \GPMC_DATA[13]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~291_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~292_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~86_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][13]~q\ : std_logic;
SIGNAL \QD2|counter[28]~90\ : std_logic;
SIGNAL \QD2|counter[29]~91_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~89_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~88_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~87_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~288_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~289_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~286_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~287_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~290_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~284_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~285_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~293_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~281_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~282_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~274_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~275_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~276_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~277_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[16][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~278_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~279_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~280_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~283_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~294_combout\ : std_logic;
SIGNAL \GPMC_DATA[14]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~312_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~313_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~305_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~306_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~307_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~308_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~90_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][14]~q\ : std_logic;
SIGNAL \QD2|counter[29]~92\ : std_logic;
SIGNAL \QD2|counter[30]~93_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~93_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~91_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~92_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~309_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~310_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~311_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~314_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~295_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~296_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~302_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~303_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~299_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~300_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~297_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~298_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~301_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~304_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~315_combout\ : std_logic;
SIGNAL \GPMC_DATA[15]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~323_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~324_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~316_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~317_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~320_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~321_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~318_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~319_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~322_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~325_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~333_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~334_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~326_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~327_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~328_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~329_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~94_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][15]~q\ : std_logic;
SIGNAL \QD2|counter[30]~94\ : std_logic;
SIGNAL \QD2|counter[31]~95_combout\ : std_logic;
SIGNAL \gpmc_driver|ram~97_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~95_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram~96_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~330_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~331_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~332_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~335_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~336_combout\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[8]~feeder_combout\ : std_logic;
SIGNAL \MC1|INA~feeder_combout\ : std_logic;
SIGNAL \MC1|INA~q\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[9]~feeder_combout\ : std_logic;
SIGNAL \MC1|INB~feeder_combout\ : std_logic;
SIGNAL \MC1|INB~q\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[7]~feeder_combout\ : std_logic;
SIGNAL \MC1|dc[7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[6]~feeder_combout\ : std_logic;
SIGNAL \MC1|dc[6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[5]~feeder_combout\ : std_logic;
SIGNAL \MC1|dc[5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[4]~feeder_combout\ : std_logic;
SIGNAL \MC1|dc[4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[3]~feeder_combout\ : std_logic;
SIGNAL \MC1|dc[3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[2]~feeder_combout\ : std_logic;
SIGNAL \MC1|dc[2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[1]~feeder_combout\ : std_logic;
SIGNAL \MC1|dc[1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg4_out[0]~feeder_combout\ : std_logic;
SIGNAL \MC1|dc[0]~feeder_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[3]~10\ : std_logic;
SIGNAL \MC1|pulsehigh[4]~12\ : std_logic;
SIGNAL \MC1|pulsehigh[5]~14\ : std_logic;
SIGNAL \MC1|pulsehigh[6]~16\ : std_logic;
SIGNAL \MC1|pulsehigh[7]~18\ : std_logic;
SIGNAL \MC1|pulsehigh[8]~20\ : std_logic;
SIGNAL \MC1|pulsehigh[9]~22\ : std_logic;
SIGNAL \MC1|pulsehigh[10]~24\ : std_logic;
SIGNAL \MC1|pulsehigh[11]~25_combout\ : std_logic;
SIGNAL \MC1|dc_old[5]~feeder_combout\ : std_logic;
SIGNAL \MC1|Equal0~2_combout\ : std_logic;
SIGNAL \MC1|dc_old[7]~feeder_combout\ : std_logic;
SIGNAL \MC1|Equal0~3_combout\ : std_logic;
SIGNAL \MC1|dc_old[3]~feeder_combout\ : std_logic;
SIGNAL \MC1|Equal0~1_combout\ : std_logic;
SIGNAL \MC1|dc_old[1]~feeder_combout\ : std_logic;
SIGNAL \MC1|Equal0~0_combout\ : std_logic;
SIGNAL \MC1|Equal0~4_combout\ : std_logic;
SIGNAL \MC1|Add1~0_combout\ : std_logic;
SIGNAL \MC1|cyclecount~5_combout\ : std_logic;
SIGNAL \MC1|Add1~1\ : std_logic;
SIGNAL \MC1|Add1~2_combout\ : std_logic;
SIGNAL \MC1|Add1~3\ : std_logic;
SIGNAL \MC1|Add1~5\ : std_logic;
SIGNAL \MC1|Add1~6_combout\ : std_logic;
SIGNAL \MC1|Add1~7\ : std_logic;
SIGNAL \MC1|Add1~8_combout\ : std_logic;
SIGNAL \MC1|Add1~9\ : std_logic;
SIGNAL \MC1|Add1~10_combout\ : std_logic;
SIGNAL \MC1|Add1~11\ : std_logic;
SIGNAL \MC1|Add1~12_combout\ : std_logic;
SIGNAL \MC1|cyclecount~3_combout\ : std_logic;
SIGNAL \MC1|Add1~13\ : std_logic;
SIGNAL \MC1|Add1~14_combout\ : std_logic;
SIGNAL \MC1|cyclecount~2_combout\ : std_logic;
SIGNAL \MC1|Equal1~1_combout\ : std_logic;
SIGNAL \MC1|Add1~4_combout\ : std_logic;
SIGNAL \MC1|cyclecount~4_combout\ : std_logic;
SIGNAL \MC1|Equal1~2_combout\ : std_logic;
SIGNAL \MC1|Add1~15\ : std_logic;
SIGNAL \MC1|Add1~16_combout\ : std_logic;
SIGNAL \MC1|cyclecount~1_combout\ : std_logic;
SIGNAL \MC1|Add1~17\ : std_logic;
SIGNAL \MC1|Add1~18_combout\ : std_logic;
SIGNAL \MC1|Add1~19\ : std_logic;
SIGNAL \MC1|Add1~20_combout\ : std_logic;
SIGNAL \MC1|Equal1~0_combout\ : std_logic;
SIGNAL \MC1|Add1~21\ : std_logic;
SIGNAL \MC1|Add1~22_combout\ : std_logic;
SIGNAL \MC1|cyclecount~0_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[10]~23_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[9]~21_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[8]~19_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[7]~17_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[6]~15_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[5]~13_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[4]~11_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[3]~9_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[2]~feeder_combout\ : std_logic;
SIGNAL \MC1|pulsehigh[1]~feeder_combout\ : std_logic;
SIGNAL \MC1|LessThan0~1_cout\ : std_logic;
SIGNAL \MC1|LessThan0~3_cout\ : std_logic;
SIGNAL \MC1|LessThan0~5_cout\ : std_logic;
SIGNAL \MC1|LessThan0~7_cout\ : std_logic;
SIGNAL \MC1|LessThan0~9_cout\ : std_logic;
SIGNAL \MC1|LessThan0~11_cout\ : std_logic;
SIGNAL \MC1|LessThan0~13_cout\ : std_logic;
SIGNAL \MC1|LessThan0~15_cout\ : std_logic;
SIGNAL \MC1|LessThan0~17_cout\ : std_logic;
SIGNAL \MC1|LessThan0~19_cout\ : std_logic;
SIGNAL \MC1|LessThan0~20_combout\ : std_logic;
SIGNAL \MC1|process_0~0_combout\ : std_logic;
SIGNAL \MC1|C~q\ : std_logic;
SIGNAL \gpmc_driver|reg6_out[8]~feeder_combout\ : std_logic;
SIGNAL \MC2|INA~feeder_combout\ : std_logic;
SIGNAL \MC2|INA~q\ : std_logic;
SIGNAL \gpmc_driver|reg6_out[9]~feeder_combout\ : std_logic;
SIGNAL \MC2|INB~feeder_combout\ : std_logic;
SIGNAL \MC2|INB~q\ : std_logic;
SIGNAL \gpmc_driver|reg6_out[7]~feeder_combout\ : std_logic;
SIGNAL \MC2|dc[7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg6_out[6]~feeder_combout\ : std_logic;
SIGNAL \MC2|dc[6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg6_out[5]~feeder_combout\ : std_logic;
SIGNAL \MC2|dc[5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg6_out[4]~feeder_combout\ : std_logic;
SIGNAL \MC2|dc[4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg6_out[3]~feeder_combout\ : std_logic;
SIGNAL \MC2|dc[3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg6_out[2]~feeder_combout\ : std_logic;
SIGNAL \MC2|dc[2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|reg6_out[1]~feeder_combout\ : std_logic;
SIGNAL \MC2|dc[1]~feeder_combout\ : std_logic;
SIGNAL \MC2|pulsehigh[3]~10\ : std_logic;
SIGNAL \MC2|pulsehigh[4]~12\ : std_logic;
SIGNAL \MC2|pulsehigh[5]~14\ : std_logic;
SIGNAL \MC2|pulsehigh[6]~16\ : std_logic;
SIGNAL \MC2|pulsehigh[7]~18\ : std_logic;
SIGNAL \MC2|pulsehigh[8]~20\ : std_logic;
SIGNAL \MC2|pulsehigh[9]~22\ : std_logic;
SIGNAL \MC2|pulsehigh[10]~24\ : std_logic;
SIGNAL \MC2|pulsehigh[11]~25_combout\ : std_logic;
SIGNAL \MC2|dc_old[2]~feeder_combout\ : std_logic;
SIGNAL \MC2|Equal0~1_combout\ : std_logic;
SIGNAL \MC2|dc_old[5]~feeder_combout\ : std_logic;
SIGNAL \MC2|Equal0~2_combout\ : std_logic;
SIGNAL \MC2|dc_old[1]~feeder_combout\ : std_logic;
SIGNAL \MC2|Equal0~0_combout\ : std_logic;
SIGNAL \MC2|dc_old[7]~feeder_combout\ : std_logic;
SIGNAL \MC2|Equal0~3_combout\ : std_logic;
SIGNAL \MC2|Equal0~4_combout\ : std_logic;
SIGNAL \MC2|pulsehigh[10]~23_combout\ : std_logic;
SIGNAL \MC2|pulsehigh[9]~21_combout\ : std_logic;
SIGNAL \MC2|pulsehigh[8]~19_combout\ : std_logic;
SIGNAL \MC2|pulsehigh[7]~17_combout\ : std_logic;
SIGNAL \MC2|pulsehigh[6]~15_combout\ : std_logic;
SIGNAL \MC2|pulsehigh[5]~13_combout\ : std_logic;
SIGNAL \MC2|pulsehigh[4]~11_combout\ : std_logic;
SIGNAL \MC2|pulsehigh[3]~9_combout\ : std_logic;
SIGNAL \MC2|LessThan0~1_cout\ : std_logic;
SIGNAL \MC2|LessThan0~3_cout\ : std_logic;
SIGNAL \MC2|LessThan0~5_cout\ : std_logic;
SIGNAL \MC2|LessThan0~7_cout\ : std_logic;
SIGNAL \MC2|LessThan0~9_cout\ : std_logic;
SIGNAL \MC2|LessThan0~11_cout\ : std_logic;
SIGNAL \MC2|LessThan0~13_cout\ : std_logic;
SIGNAL \MC2|LessThan0~15_cout\ : std_logic;
SIGNAL \MC2|LessThan0~17_cout\ : std_logic;
SIGNAL \MC2|LessThan0~19_cout\ : std_logic;
SIGNAL \MC2|LessThan0~20_combout\ : std_logic;
SIGNAL \MC2|process_0~0_combout\ : std_logic;
SIGNAL \MC2|C~q\ : std_logic;
SIGNAL \MC1|pulsehigh\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MC1|dc_old\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MC1|dc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MC1|cyclecount\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \qd1|position\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \qd1|debounce_cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \qd1|b_new\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \qd1|a_new\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \QD2|flipflop\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \QD2|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \QD2|GPIO_0_IN_old\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \gpmc_driver|reg6_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpmc_driver|reg4_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpmc_driver|gpmc_data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpmc_driver|gpmc_data_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpmc_driver|gpmc_addr_in\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \MC2|dc_old\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MC2|dc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MC2|pulsehigh\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \qd1|ALT_INV_b_prev~0_combout\ : std_logic;
SIGNAL \qd1|ALT_INV_direction~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_GPMC_ADDR <= GPMC_ADDR;
ww_GPMC_nPWE <= GPMC_nPWE;
ww_GPMC_nOE <= GPMC_nOE;
ww_GPMC_FPGA_IRQ <= GPMC_FPGA_IRQ;
ww_GPMC_nCS6 <= GPMC_nCS6;
ww_GPMC_CLK <= GPMC_CLK;
ww_F_IN <= F_IN;
F_OUT <= ww_F_OUT;
PWM3A <= ww_PWM3A;
PWM3B <= ww_PWM3B;
PWM3C <= ww_PWM3C;
PWM4A <= ww_PWM4A;
PWM4B <= ww_PWM4B;
PWM4C <= ww_PWM4C;
ww_ENC3A <= ENC3A;
ww_ENC3B <= ENC3B;
ww_ENC3I <= ENC3I;
ww_ENC4A <= ENC4A;
ww_ENC4B <= ENC4B;
ww_ENC4I <= ENC4I;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\qd1|ALT_INV_b_prev~0_combout\ <= NOT \qd1|b_prev~0_combout\;
\qd1|ALT_INV_direction~0_combout\ <= NOT \qd1|direction~0_combout\;

-- Location: IOOBUF_X38_Y0_N30
\GPMC_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(0),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\GPMC_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(1),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\GPMC_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(2),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N30
\GPMC_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(3),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\GPMC_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(4),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[4]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\GPMC_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(5),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\GPMC_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(6),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[6]~output_o\);

-- Location: IOOBUF_X48_Y0_N30
\GPMC_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(7),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[7]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\GPMC_DATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(8),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\GPMC_DATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(9),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[9]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\GPMC_DATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(10),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[10]~output_o\);

-- Location: IOOBUF_X59_Y0_N30
\GPMC_DATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(11),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[11]~output_o\);

-- Location: IOOBUF_X61_Y0_N30
\GPMC_DATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(12),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[12]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\GPMC_DATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(13),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[13]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\GPMC_DATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(14),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[14]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\GPMC_DATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(15),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[15]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\F_OUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[0]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\F_OUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[1]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\F_OUT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[2]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\F_OUT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[3]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\F_OUT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[4]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\F_OUT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[5]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\F_OUT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[6]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\F_OUT[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[7]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\F_OUT[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[8]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\F_OUT[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[9]~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\F_OUT[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[10]~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\F_OUT[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[11]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\F_OUT[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[12]~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\F_OUT[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[13]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\F_OUT[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[14]~output_o\);

-- Location: IOOBUF_X63_Y43_N30
\F_OUT[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F_OUT[15]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\PWM3A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MC1|INA~q\,
	devoe => ww_devoe,
	o => \PWM3A~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\PWM3B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MC1|INB~q\,
	devoe => ww_devoe,
	o => \PWM3B~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\PWM3C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MC1|C~q\,
	devoe => ww_devoe,
	o => \PWM3C~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\PWM4A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MC2|INA~q\,
	devoe => ww_devoe,
	o => \PWM4A~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\PWM4B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MC2|INB~q\,
	devoe => ww_devoe,
	o => \PWM4B~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\PWM4C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MC2|C~q\,
	devoe => ww_devoe,
	o => \PWM4C~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X67_Y10_N22
\GPMC_ADDR[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(10),
	o => \GPMC_ADDR[10]~input_o\);

-- Location: FF_X54_Y10_N13
\gpmc_driver|gpmc_addr_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(9));

-- Location: IOIBUF_X67_Y5_N15
\GPMC_ADDR[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(5),
	o => \GPMC_ADDR[5]~input_o\);

-- Location: FF_X54_Y10_N3
\gpmc_driver|gpmc_addr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(4));

-- Location: IOIBUF_X67_Y5_N8
\GPMC_ADDR[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(6),
	o => \GPMC_ADDR[6]~input_o\);

-- Location: FF_X54_Y10_N11
\gpmc_driver|gpmc_addr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(5));

-- Location: IOIBUF_X67_Y9_N8
\GPMC_ADDR[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(9),
	o => \GPMC_ADDR[9]~input_o\);

-- Location: LCCOMB_X54_Y10_N28
\gpmc_driver|gpmc_addr_in[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_addr_in[8]~feeder_combout\ = \GPMC_ADDR[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_ADDR[9]~input_o\,
	combout => \gpmc_driver|gpmc_addr_in[8]~feeder_combout\);

-- Location: FF_X54_Y10_N29
\gpmc_driver|gpmc_addr_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_addr_in[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(8));

-- Location: IOIBUF_X67_Y7_N22
\GPMC_ADDR[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(8),
	o => \GPMC_ADDR[8]~input_o\);

-- Location: FF_X54_Y10_N7
\gpmc_driver|gpmc_addr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(7));

-- Location: IOIBUF_X67_Y6_N15
\GPMC_ADDR[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(7),
	o => \GPMC_ADDR[7]~input_o\);

-- Location: LCCOMB_X54_Y10_N20
\gpmc_driver|gpmc_addr_in[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_addr_in[6]~feeder_combout\ = \GPMC_ADDR[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_ADDR[7]~input_o\,
	combout => \gpmc_driver|gpmc_addr_in[6]~feeder_combout\);

-- Location: FF_X54_Y10_N21
\gpmc_driver|gpmc_addr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_addr_in[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(6));

-- Location: LCCOMB_X54_Y10_N6
\gpmc_driver|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|LessThan0~0_combout\ = (\gpmc_driver|gpmc_addr_in\(5)) # ((\gpmc_driver|gpmc_addr_in\(8)) # ((\gpmc_driver|gpmc_addr_in\(7)) # (\gpmc_driver|gpmc_addr_in\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(5),
	datab => \gpmc_driver|gpmc_addr_in\(8),
	datac => \gpmc_driver|gpmc_addr_in\(7),
	datad => \gpmc_driver|gpmc_addr_in\(6),
	combout => \gpmc_driver|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y10_N26
\gpmc_driver|ram[15][0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[15][0]~0_combout\ = (!\gpmc_driver|gpmc_addr_in\(9) & (!\gpmc_driver|gpmc_addr_in\(4) & !\gpmc_driver|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(9),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|LessThan0~0_combout\,
	combout => \gpmc_driver|ram[15][0]~0_combout\);

-- Location: IOIBUF_X67_Y3_N15
\GPMC_ADDR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(2),
	o => \GPMC_ADDR[2]~input_o\);

-- Location: FF_X53_Y8_N27
\gpmc_driver|gpmc_addr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(1));

-- Location: IOIBUF_X67_Y5_N22
\GPMC_ADDR[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(4),
	o => \GPMC_ADDR[4]~input_o\);

-- Location: FF_X53_Y8_N7
\gpmc_driver|gpmc_addr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(3));

-- Location: IOIBUF_X67_Y3_N1
\GPMC_ADDR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(3),
	o => \GPMC_ADDR[3]~input_o\);

-- Location: FF_X53_Y8_N1
\gpmc_driver|gpmc_addr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(2));

-- Location: IOIBUF_X38_Y0_N29
\GPMC_DATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(0),
	o => \GPMC_DATA[0]~input_o\);

-- Location: FF_X49_Y6_N11
\gpmc_driver|gpmc_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(0));

-- Location: LCCOMB_X53_Y11_N20
\gpmc_driver|ram[23][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[23][0]~feeder_combout\);

-- Location: IOIBUF_X67_Y3_N22
\GPMC_ADDR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(1),
	o => \GPMC_ADDR[1]~input_o\);

-- Location: FF_X53_Y8_N13
\gpmc_driver|gpmc_addr_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(0));

-- Location: LCCOMB_X52_Y10_N30
\gpmc_driver|Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~13_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1) & !\gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~13_combout\);

-- Location: IOIBUF_X67_Y17_N15
\GPMC_nPWE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_nPWE,
	o => \GPMC_nPWE~input_o\);

-- Location: FF_X54_Y10_N27
\gpmc_driver|gpmc_nwe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_nPWE~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_nwe~q\);

-- Location: LCCOMB_X54_Y10_N12
\gpmc_driver|ram[31][0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[31][0]~3_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(9) & !\gpmc_driver|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(9),
	datad => \gpmc_driver|LessThan0~0_combout\,
	combout => \gpmc_driver|ram[31][0]~3_combout\);

-- Location: IOIBUF_X67_Y19_N8
\GPMC_nCS6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_nCS6,
	o => \GPMC_nCS6~input_o\);

-- Location: FF_X54_Y10_N17
\gpmc_driver|gpmc_ncs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_nCS6~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_ncs~q\);

-- Location: LCCOMB_X52_Y10_N0
\gpmc_driver|ram[23][0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][0]~17_combout\ = (\gpmc_driver|Decoder0~13_combout\ & (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|ram[31][0]~3_combout\ & !\gpmc_driver|gpmc_ncs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~13_combout\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram[23][0]~17_combout\);

-- Location: FF_X53_Y11_N21
\gpmc_driver|ram[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][0]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][0]~q\);

-- Location: LCCOMB_X53_Y10_N10
\gpmc_driver|Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~14_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(0) & !\gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~14_combout\);

-- Location: LCCOMB_X53_Y10_N16
\gpmc_driver|ram[19][0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[19][0]~18_combout\ = (\gpmc_driver|Decoder0~14_combout\ & (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|ram[31][0]~3_combout\ & !\gpmc_driver|gpmc_ncs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~14_combout\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram[19][0]~18_combout\);

-- Location: FF_X53_Y11_N15
\gpmc_driver|ram[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][0]~q\);

-- Location: LCCOMB_X53_Y11_N14
\gpmc_driver|gpmc_data_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~7_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[23][0]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[19][0]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][0]~q\,
	datac => \gpmc_driver|ram[19][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~7_combout\);

-- Location: LCCOMB_X53_Y8_N26
\gpmc_driver|Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~15_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(1) & \gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~15_combout\);

-- Location: LCCOMB_X52_Y11_N22
\gpmc_driver|ram[31][0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[31][0]~19_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|Decoder0~15_combout\ & \gpmc_driver|ram[31][0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|Decoder0~15_combout\,
	datad => \gpmc_driver|ram[31][0]~3_combout\,
	combout => \gpmc_driver|ram[31][0]~19_combout\);

-- Location: FF_X52_Y11_N5
\gpmc_driver|ram[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][0]~q\);

-- Location: LCCOMB_X51_Y12_N8
\gpmc_driver|ram[27][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[27][0]~feeder_combout\);

-- Location: LCCOMB_X53_Y9_N4
\gpmc_driver|Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~12_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(3) & !\gpmc_driver|gpmc_addr_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|Decoder0~12_combout\);

-- Location: LCCOMB_X53_Y9_N10
\gpmc_driver|ram[27][0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][0]~16_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|Decoder0~12_combout\ & (\gpmc_driver|ram[31][0]~3_combout\ & !\gpmc_driver|gpmc_nwe~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|Decoder0~12_combout\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_nwe~q\,
	combout => \gpmc_driver|ram[27][0]~16_combout\);

-- Location: FF_X51_Y12_N9
\gpmc_driver|ram[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][0]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][0]~q\);

-- Location: LCCOMB_X52_Y11_N4
\gpmc_driver|gpmc_data_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~8_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~7_combout\ & (\gpmc_driver|ram[31][0]~q\)) # (!\gpmc_driver|gpmc_data_out~7_combout\ & ((\gpmc_driver|ram[27][0]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~7_combout\,
	datac => \gpmc_driver|ram[31][0]~q\,
	datad => \gpmc_driver|ram[27][0]~q\,
	combout => \gpmc_driver|gpmc_data_out~8_combout\);

-- Location: LCCOMB_X56_Y7_N20
\gpmc_driver|ram[25][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[25][0]~feeder_combout\);

-- Location: LCCOMB_X54_Y10_N4
\gpmc_driver|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~5_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(0) & \gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~5_combout\);

-- Location: LCCOMB_X54_Y10_N30
\gpmc_driver|ram[25][0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][0]~8_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|Decoder0~5_combout\ & \gpmc_driver|ram[31][0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|Decoder0~5_combout\,
	datad => \gpmc_driver|ram[31][0]~3_combout\,
	combout => \gpmc_driver|ram[25][0]~8_combout\);

-- Location: FF_X56_Y7_N21
\gpmc_driver|ram[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][0]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][0]~q\);

-- Location: LCCOMB_X52_Y9_N20
\gpmc_driver|Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~8_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~8_combout\);

-- Location: LCCOMB_X53_Y7_N24
\gpmc_driver|ram[29][0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[29][0]~11_combout\ = (\gpmc_driver|Decoder0~8_combout\ & (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|ram[31][0]~3_combout\ & !\gpmc_driver|gpmc_ncs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~8_combout\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram[29][0]~11_combout\);

-- Location: FF_X55_Y7_N15
\gpmc_driver|ram[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][0]~q\);

-- Location: LCCOMB_X53_Y8_N0
\gpmc_driver|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~7_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(2) & !\gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~7_combout\);

-- Location: LCCOMB_X54_Y10_N0
\gpmc_driver|ram[17][0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[17][0]~10_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|Decoder0~7_combout\ & \gpmc_driver|ram[31][0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|Decoder0~7_combout\,
	datad => \gpmc_driver|ram[31][0]~3_combout\,
	combout => \gpmc_driver|ram[17][0]~10_combout\);

-- Location: FF_X55_Y7_N25
\gpmc_driver|ram[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][0]~q\);

-- Location: LCCOMB_X55_Y6_N14
\gpmc_driver|ram[21][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[21][0]~feeder_combout\);

-- Location: LCCOMB_X55_Y8_N6
\gpmc_driver|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~6_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(1) & !\gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~6_combout\);

-- Location: LCCOMB_X54_Y8_N8
\gpmc_driver|ram[21][0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][0]~9_combout\ = (\gpmc_driver|Decoder0~6_combout\ & (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nwe~q\ & \gpmc_driver|ram[31][0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~6_combout\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_nwe~q\,
	datad => \gpmc_driver|ram[31][0]~3_combout\,
	combout => \gpmc_driver|ram[21][0]~9_combout\);

-- Location: FF_X55_Y6_N15
\gpmc_driver|ram[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][0]~feeder_combout\,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][0]~q\);

-- Location: LCCOMB_X55_Y7_N24
\gpmc_driver|gpmc_data_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~2_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|ram[21][0]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[17][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[17][0]~q\,
	datad => \gpmc_driver|ram[21][0]~q\,
	combout => \gpmc_driver|gpmc_data_out~2_combout\);

-- Location: LCCOMB_X55_Y7_N14
\gpmc_driver|gpmc_data_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~3_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~2_combout\ & ((\gpmc_driver|ram[29][0]~q\))) # (!\gpmc_driver|gpmc_data_out~2_combout\ & (\gpmc_driver|ram[25][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][0]~q\,
	datac => \gpmc_driver|ram[29][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~2_combout\,
	combout => \gpmc_driver|gpmc_data_out~3_combout\);

-- Location: LCCOMB_X50_Y6_N16
\gpmc_driver|ram[20][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[20][0]~feeder_combout\);

-- Location: LCCOMB_X53_Y9_N28
\gpmc_driver|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~0_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|gpmc_addr_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|Decoder0~0_combout\);

-- Location: LCCOMB_X52_Y9_N26
\gpmc_driver|ram[20][0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][0]~12_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|Decoder0~0_combout\,
	combout => \gpmc_driver|ram[20][0]~12_combout\);

-- Location: FF_X50_Y6_N17
\gpmc_driver|ram[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][0]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][0]~q\);

-- Location: LCCOMB_X52_Y9_N16
\gpmc_driver|Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~11_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~11_combout\);

-- Location: LCCOMB_X52_Y9_N14
\gpmc_driver|ram[28][0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[28][0]~15_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|Decoder0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|Decoder0~11_combout\,
	combout => \gpmc_driver|ram[28][0]~15_combout\);

-- Location: FF_X51_Y7_N3
\gpmc_driver|ram[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][0]~q\);

-- Location: LCCOMB_X51_Y6_N22
\gpmc_driver|ram[24][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[24][0]~feeder_combout\);

-- Location: LCCOMB_X53_Y8_N6
\gpmc_driver|Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~9_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3) & !\gpmc_driver|gpmc_addr_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|Decoder0~9_combout\);

-- Location: LCCOMB_X51_Y10_N16
\gpmc_driver|ram[24][0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][0]~13_combout\ = (\gpmc_driver|ram[31][0]~3_combout\ & (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nwe~q\ & \gpmc_driver|Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[31][0]~3_combout\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_nwe~q\,
	datad => \gpmc_driver|Decoder0~9_combout\,
	combout => \gpmc_driver|ram[24][0]~13_combout\);

-- Location: FF_X51_Y6_N23
\gpmc_driver|ram[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][0]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][0]~q\);

-- Location: LCCOMB_X51_Y10_N14
\gpmc_driver|Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~10_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(2) & !\gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~10_combout\);

-- Location: LCCOMB_X51_Y10_N12
\gpmc_driver|ram[16][0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[16][0]~14_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|Decoder0~10_combout\ & \gpmc_driver|ram[31][0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|Decoder0~10_combout\,
	datad => \gpmc_driver|ram[31][0]~3_combout\,
	combout => \gpmc_driver|ram[16][0]~14_combout\);

-- Location: FF_X51_Y7_N25
\gpmc_driver|ram[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][0]~q\);

-- Location: LCCOMB_X51_Y7_N24
\gpmc_driver|gpmc_data_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~4_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][0]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][0]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~4_combout\);

-- Location: LCCOMB_X51_Y7_N2
\gpmc_driver|gpmc_data_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~5_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~4_combout\ & ((\gpmc_driver|ram[28][0]~q\))) # (!\gpmc_driver|gpmc_data_out~4_combout\ & (\gpmc_driver|ram[20][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[28][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~4_combout\,
	combout => \gpmc_driver|gpmc_data_out~5_combout\);

-- Location: LCCOMB_X52_Y7_N22
\gpmc_driver|gpmc_data_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~6_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~3_combout\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|gpmc_data_out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~3_combout\,
	datad => \gpmc_driver|gpmc_data_out~5_combout\,
	combout => \gpmc_driver|gpmc_data_out~6_combout\);

-- Location: LCCOMB_X54_Y6_N8
\gpmc_driver|ram[30][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[30][0]~feeder_combout\);

-- Location: LCCOMB_X53_Y8_N12
\gpmc_driver|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~4_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(0) & \gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~4_combout\);

-- Location: LCCOMB_X53_Y9_N14
\gpmc_driver|ram[30][0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][0]~7_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|Decoder0~4_combout\ & (\gpmc_driver|ram[31][0]~3_combout\ & !\gpmc_driver|gpmc_nwe~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|Decoder0~4_combout\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_nwe~q\,
	combout => \gpmc_driver|ram[30][0]~7_combout\);

-- Location: FF_X54_Y6_N9
\gpmc_driver|ram[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[30][0]~feeder_combout\,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][0]~q\);

-- Location: LCCOMB_X52_Y8_N30
\gpmc_driver|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~1_combout\ = (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(1) & !\gpmc_driver|gpmc_addr_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|Decoder0~1_combout\);

-- Location: LCCOMB_X53_Y7_N30
\gpmc_driver|ram[22][0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][0]~4_combout\ = (\gpmc_driver|Decoder0~1_combout\ & (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|ram[31][0]~3_combout\ & !\gpmc_driver|gpmc_ncs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~1_combout\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram[22][0]~4_combout\);

-- Location: FF_X53_Y6_N1
\gpmc_driver|ram[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][0]~q\);

-- Location: LCCOMB_X53_Y10_N30
\gpmc_driver|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~3_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(2) & !\gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~3_combout\);

-- Location: LCCOMB_X53_Y10_N20
\gpmc_driver|ram[18][0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[18][0]~6_combout\ = (\gpmc_driver|Decoder0~3_combout\ & (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|ram[31][0]~3_combout\ & !\gpmc_driver|gpmc_ncs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~3_combout\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram[18][0]~6_combout\);

-- Location: FF_X52_Y6_N21
\gpmc_driver|ram[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][0]~q\);

-- Location: LCCOMB_X51_Y6_N8
\gpmc_driver|ram[26][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[26][0]~feeder_combout\);

-- Location: LCCOMB_X52_Y9_N28
\gpmc_driver|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~2_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~2_combout\);

-- Location: LCCOMB_X52_Y9_N2
\gpmc_driver|ram[26][0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][0]~5_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|Decoder0~2_combout\,
	combout => \gpmc_driver|ram[26][0]~5_combout\);

-- Location: FF_X51_Y6_N9
\gpmc_driver|ram[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][0]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][0]~q\);

-- Location: LCCOMB_X52_Y6_N20
\gpmc_driver|gpmc_data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~0_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[26][0]~q\))) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- (\gpmc_driver|ram[18][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[18][0]~q\,
	datad => \gpmc_driver|ram[26][0]~q\,
	combout => \gpmc_driver|gpmc_data_out~0_combout\);

-- Location: LCCOMB_X53_Y6_N0
\gpmc_driver|gpmc_data_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~1_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~0_combout\ & (\gpmc_driver|ram[30][0]~q\)) # (!\gpmc_driver|gpmc_data_out~0_combout\ & ((\gpmc_driver|ram[22][0]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[30][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[22][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~0_combout\,
	combout => \gpmc_driver|gpmc_data_out~1_combout\);

-- Location: LCCOMB_X52_Y7_N0
\gpmc_driver|gpmc_data_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~9_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~6_combout\ & (\gpmc_driver|gpmc_data_out~8_combout\)) # (!\gpmc_driver|gpmc_data_out~6_combout\ & ((\gpmc_driver|gpmc_data_out~1_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~8_combout\,
	datac => \gpmc_driver|gpmc_data_out~6_combout\,
	datad => \gpmc_driver|gpmc_data_out~1_combout\,
	combout => \gpmc_driver|gpmc_data_out~9_combout\);

-- Location: LCCOMB_X50_Y7_N20
\gpmc_driver|ram[13][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[13][0]~feeder_combout\);

-- Location: LCCOMB_X53_Y7_N26
\gpmc_driver|ram[13][0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][0]~34_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|Decoder0~8_combout\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|Decoder0~8_combout\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[13][0]~34_combout\);

-- Location: FF_X50_Y7_N21
\gpmc_driver|ram[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][0]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][0]~q\);

-- Location: LCCOMB_X51_Y10_N2
\gpmc_driver|ram[15][0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[15][0]~37_combout\ = (\gpmc_driver|Decoder0~15_combout\ & (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nwe~q\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~15_combout\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_nwe~q\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[15][0]~37_combout\);

-- Location: FF_X49_Y7_N31
\gpmc_driver|ram[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][0]~q\);

-- Location: LCCOMB_X49_Y7_N8
\gpmc_driver|ram[14][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[14][0]~feeder_combout\);

-- Location: LCCOMB_X49_Y10_N28
\gpmc_driver|ram[14][0]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][0]~35_combout\ = (\gpmc_driver|Decoder0~4_combout\ & (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~4_combout\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[14][0]~35_combout\);

-- Location: FF_X49_Y7_N9
\gpmc_driver|ram[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][0]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][0]~q\);

-- Location: LCCOMB_X51_Y7_N14
\gpmc_driver|ram[12][0]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[12][0]~36_combout\ = (\gpmc_driver|Decoder0~11_combout\ & (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nwe~q\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~11_combout\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_nwe~q\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[12][0]~36_combout\);

-- Location: FF_X50_Y7_N23
\gpmc_driver|ram[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][0]~q\);

-- Location: LCCOMB_X50_Y7_N22
\gpmc_driver|gpmc_data_out~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~17_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[14][0]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[12][0]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~17_combout\);

-- Location: LCCOMB_X49_Y7_N30
\gpmc_driver|gpmc_data_out~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~18_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~17_combout\ & ((\gpmc_driver|ram[15][0]~q\))) # (!\gpmc_driver|gpmc_data_out~17_combout\ & (\gpmc_driver|ram[13][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~17_combout\,
	combout => \gpmc_driver|gpmc_data_out~18_combout\);

-- Location: LCCOMB_X56_Y8_N24
\gpmc_driver|ram[10][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[10][0]~feeder_combout\);

-- Location: LCCOMB_X54_Y9_N8
\gpmc_driver|ram[10][0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][0]~20_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|ram[15][0]~0_combout\ & (\gpmc_driver|Decoder0~2_combout\ & !\gpmc_driver|gpmc_ncs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|ram[15][0]~0_combout\,
	datac => \gpmc_driver|Decoder0~2_combout\,
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram[10][0]~20_combout\);

-- Location: FF_X56_Y8_N25
\gpmc_driver|ram[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][0]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][0]~q\);

-- Location: LCCOMB_X53_Y9_N6
\gpmc_driver|ram[11][0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][0]~23_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|Decoder0~12_combout\ & (\gpmc_driver|ram[15][0]~0_combout\ & !\gpmc_driver|gpmc_nwe~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|Decoder0~12_combout\,
	datac => \gpmc_driver|ram[15][0]~0_combout\,
	datad => \gpmc_driver|gpmc_nwe~q\,
	combout => \gpmc_driver|ram[11][0]~23_combout\);

-- Location: FF_X55_Y8_N31
\gpmc_driver|ram[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][0]~q\);

-- Location: LCCOMB_X56_Y8_N2
\gpmc_driver|ram[9][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[9][0]~feeder_combout\);

-- Location: LCCOMB_X54_Y10_N22
\gpmc_driver|ram[9][0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][0]~21_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|Decoder0~5_combout\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|Decoder0~5_combout\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[9][0]~21_combout\);

-- Location: FF_X56_Y8_N3
\gpmc_driver|ram[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][0]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][0]~q\);

-- Location: LCCOMB_X53_Y9_N0
\gpmc_driver|ram[8][0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[8][0]~22_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|ram[15][0]~0_combout\ & \gpmc_driver|Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|ram[15][0]~0_combout\,
	datad => \gpmc_driver|Decoder0~9_combout\,
	combout => \gpmc_driver|ram[8][0]~22_combout\);

-- Location: FF_X55_Y8_N25
\gpmc_driver|ram[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][0]~q\);

-- Location: LCCOMB_X55_Y8_N24
\gpmc_driver|gpmc_data_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~10_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[9][0]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[9][0]~q\,
	datac => \gpmc_driver|ram[8][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~10_combout\);

-- Location: LCCOMB_X55_Y8_N30
\gpmc_driver|gpmc_data_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~11_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~10_combout\ & ((\gpmc_driver|ram[11][0]~q\))) # (!\gpmc_driver|gpmc_data_out~10_combout\ & (\gpmc_driver|ram[10][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][0]~q\,
	datac => \gpmc_driver|ram[11][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~10_combout\,
	combout => \gpmc_driver|gpmc_data_out~11_combout\);

-- Location: LCCOMB_X56_Y11_N0
\QD2|counter[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[0]~32_combout\ = \QD2|counter\(0) $ (VCC)
-- \QD2|counter[0]~33\ = CARRY(\QD2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \QD2|counter\(0),
	datad => VCC,
	combout => \QD2|counter[0]~32_combout\,
	cout => \QD2|counter[0]~33\);

-- Location: IOIBUF_X67_Y35_N1
\ENC4A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC4A,
	o => \ENC4A~input_o\);

-- Location: LCCOMB_X59_Y11_N4
\QD2|flipflop[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|flipflop[0]~feeder_combout\ = \ENC4A~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ENC4A~input_o\,
	combout => \QD2|flipflop[0]~feeder_combout\);

-- Location: FF_X59_Y11_N5
\QD2|flipflop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|flipflop[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|flipflop\(0));

-- Location: LCCOMB_X59_Y11_N0
\QD2|GPIO_0_IN_old[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|GPIO_0_IN_old[0]~feeder_combout\ = \QD2|flipflop\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QD2|flipflop\(0),
	combout => \QD2|GPIO_0_IN_old[0]~feeder_combout\);

-- Location: FF_X59_Y11_N1
\QD2|GPIO_0_IN_old[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|GPIO_0_IN_old[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|GPIO_0_IN_old\(0));

-- Location: IOIBUF_X67_Y40_N22
\ENC4B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC4B,
	o => \ENC4B~input_o\);

-- Location: FF_X59_Y11_N7
\QD2|flipflop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ENC4B~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|flipflop\(1));

-- Location: FF_X59_Y11_N31
\QD2|GPIO_0_IN_old[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \QD2|flipflop\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|GPIO_0_IN_old\(1));

-- Location: LCCOMB_X59_Y11_N30
\QD2|counter[0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[0]~34_combout\ = (!\QD2|GPIO_0_IN_old\(0) & (!\QD2|GPIO_0_IN_old\(1) & (\QD2|flipflop\(0) $ (\QD2|flipflop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|GPIO_0_IN_old\(0),
	datac => \QD2|GPIO_0_IN_old\(1),
	datad => \QD2|flipflop\(1),
	combout => \QD2|counter[0]~34_combout\);

-- Location: FF_X56_Y11_N1
\QD2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[0]~32_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(0));

-- Location: LCCOMB_X52_Y10_N12
\gpmc_driver|ram~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~26_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\QD2|counter\(0))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \QD2|counter\(0),
	datac => \gpmc_driver|gpmc_data_in\(0),
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~26_combout\);

-- Location: LCCOMB_X52_Y10_N6
\gpmc_driver|ram[2][5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][5]~27_combout\ = (\gpmc_driver|gpmc_ncs~q\) # ((\gpmc_driver|ram[15][0]~0_combout\ & (!\gpmc_driver|gpmc_nwe~q\ & \gpmc_driver|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|Decoder0~3_combout\,
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram[2][5]~27_combout\);

-- Location: FF_X52_Y10_N13
\gpmc_driver|ram[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~26_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][0]~q\);

-- Location: LCCOMB_X56_Y11_N2
\QD2|counter[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[1]~35_combout\ = (\QD2|flipflop\(0) & ((\QD2|counter\(1) & (\QD2|counter[0]~33\ & VCC)) # (!\QD2|counter\(1) & (!\QD2|counter[0]~33\)))) # (!\QD2|flipflop\(0) & ((\QD2|counter\(1) & (!\QD2|counter[0]~33\)) # (!\QD2|counter\(1) & 
-- ((\QD2|counter[0]~33\) # (GND)))))
-- \QD2|counter[1]~36\ = CARRY((\QD2|flipflop\(0) & (!\QD2|counter\(1) & !\QD2|counter[0]~33\)) # (!\QD2|flipflop\(0) & ((!\QD2|counter[0]~33\) # (!\QD2|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(1),
	datad => VCC,
	cin => \QD2|counter[0]~33\,
	combout => \QD2|counter[1]~35_combout\,
	cout => \QD2|counter[1]~36\);

-- Location: FF_X56_Y11_N3
\QD2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[1]~35_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(1));

-- Location: LCCOMB_X56_Y11_N4
\QD2|counter[2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[2]~37_combout\ = ((\QD2|flipflop\(0) $ (\QD2|counter\(2) $ (!\QD2|counter[1]~36\)))) # (GND)
-- \QD2|counter[2]~38\ = CARRY((\QD2|flipflop\(0) & ((\QD2|counter\(2)) # (!\QD2|counter[1]~36\))) # (!\QD2|flipflop\(0) & (\QD2|counter\(2) & !\QD2|counter[1]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(2),
	datad => VCC,
	cin => \QD2|counter[1]~36\,
	combout => \QD2|counter[2]~37_combout\,
	cout => \QD2|counter[2]~38\);

-- Location: FF_X56_Y11_N5
\QD2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[2]~37_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(2));

-- Location: LCCOMB_X56_Y11_N6
\QD2|counter[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[3]~39_combout\ = (\QD2|flipflop\(0) & ((\QD2|counter\(3) & (\QD2|counter[2]~38\ & VCC)) # (!\QD2|counter\(3) & (!\QD2|counter[2]~38\)))) # (!\QD2|flipflop\(0) & ((\QD2|counter\(3) & (!\QD2|counter[2]~38\)) # (!\QD2|counter\(3) & 
-- ((\QD2|counter[2]~38\) # (GND)))))
-- \QD2|counter[3]~40\ = CARRY((\QD2|flipflop\(0) & (!\QD2|counter\(3) & !\QD2|counter[2]~38\)) # (!\QD2|flipflop\(0) & ((!\QD2|counter[2]~38\) # (!\QD2|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(3),
	datad => VCC,
	cin => \QD2|counter[2]~38\,
	combout => \QD2|counter[3]~39_combout\,
	cout => \QD2|counter[3]~40\);

-- Location: FF_X56_Y11_N7
\QD2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[3]~39_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(3));

-- Location: LCCOMB_X56_Y11_N8
\QD2|counter[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[4]~41_combout\ = ((\QD2|flipflop\(0) $ (\QD2|counter\(4) $ (!\QD2|counter[3]~40\)))) # (GND)
-- \QD2|counter[4]~42\ = CARRY((\QD2|flipflop\(0) & ((\QD2|counter\(4)) # (!\QD2|counter[3]~40\))) # (!\QD2|flipflop\(0) & (\QD2|counter\(4) & !\QD2|counter[3]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(4),
	datad => VCC,
	cin => \QD2|counter[3]~40\,
	combout => \QD2|counter[4]~41_combout\,
	cout => \QD2|counter[4]~42\);

-- Location: FF_X56_Y11_N9
\QD2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[4]~41_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(4));

-- Location: LCCOMB_X56_Y11_N10
\QD2|counter[5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[5]~43_combout\ = (\QD2|flipflop\(0) & ((\QD2|counter\(5) & (\QD2|counter[4]~42\ & VCC)) # (!\QD2|counter\(5) & (!\QD2|counter[4]~42\)))) # (!\QD2|flipflop\(0) & ((\QD2|counter\(5) & (!\QD2|counter[4]~42\)) # (!\QD2|counter\(5) & 
-- ((\QD2|counter[4]~42\) # (GND)))))
-- \QD2|counter[5]~44\ = CARRY((\QD2|flipflop\(0) & (!\QD2|counter\(5) & !\QD2|counter[4]~42\)) # (!\QD2|flipflop\(0) & ((!\QD2|counter[4]~42\) # (!\QD2|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(5),
	datad => VCC,
	cin => \QD2|counter[4]~42\,
	combout => \QD2|counter[5]~43_combout\,
	cout => \QD2|counter[5]~44\);

-- Location: FF_X56_Y11_N11
\QD2|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[5]~43_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(5));

-- Location: LCCOMB_X56_Y11_N12
\QD2|counter[6]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[6]~45_combout\ = ((\QD2|counter\(6) $ (\QD2|flipflop\(0) $ (!\QD2|counter[5]~44\)))) # (GND)
-- \QD2|counter[6]~46\ = CARRY((\QD2|counter\(6) & ((\QD2|flipflop\(0)) # (!\QD2|counter[5]~44\))) # (!\QD2|counter\(6) & (\QD2|flipflop\(0) & !\QD2|counter[5]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(6),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[5]~44\,
	combout => \QD2|counter[6]~45_combout\,
	cout => \QD2|counter[6]~46\);

-- Location: FF_X56_Y11_N13
\QD2|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[6]~45_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(6));

-- Location: LCCOMB_X56_Y11_N14
\QD2|counter[7]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[7]~47_combout\ = (\QD2|flipflop\(0) & ((\QD2|counter\(7) & (\QD2|counter[6]~46\ & VCC)) # (!\QD2|counter\(7) & (!\QD2|counter[6]~46\)))) # (!\QD2|flipflop\(0) & ((\QD2|counter\(7) & (!\QD2|counter[6]~46\)) # (!\QD2|counter\(7) & 
-- ((\QD2|counter[6]~46\) # (GND)))))
-- \QD2|counter[7]~48\ = CARRY((\QD2|flipflop\(0) & (!\QD2|counter\(7) & !\QD2|counter[6]~46\)) # (!\QD2|flipflop\(0) & ((!\QD2|counter[6]~46\) # (!\QD2|counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(7),
	datad => VCC,
	cin => \QD2|counter[6]~46\,
	combout => \QD2|counter[7]~47_combout\,
	cout => \QD2|counter[7]~48\);

-- Location: FF_X56_Y11_N15
\QD2|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[7]~47_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(7));

-- Location: LCCOMB_X56_Y11_N16
\QD2|counter[8]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[8]~49_combout\ = ((\QD2|flipflop\(0) $ (\QD2|counter\(8) $ (!\QD2|counter[7]~48\)))) # (GND)
-- \QD2|counter[8]~50\ = CARRY((\QD2|flipflop\(0) & ((\QD2|counter\(8)) # (!\QD2|counter[7]~48\))) # (!\QD2|flipflop\(0) & (\QD2|counter\(8) & !\QD2|counter[7]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(8),
	datad => VCC,
	cin => \QD2|counter[7]~48\,
	combout => \QD2|counter[8]~49_combout\,
	cout => \QD2|counter[8]~50\);

-- Location: FF_X56_Y11_N17
\QD2|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[8]~49_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(8));

-- Location: LCCOMB_X56_Y11_N18
\QD2|counter[9]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[9]~51_combout\ = (\QD2|flipflop\(0) & ((\QD2|counter\(9) & (\QD2|counter[8]~50\ & VCC)) # (!\QD2|counter\(9) & (!\QD2|counter[8]~50\)))) # (!\QD2|flipflop\(0) & ((\QD2|counter\(9) & (!\QD2|counter[8]~50\)) # (!\QD2|counter\(9) & 
-- ((\QD2|counter[8]~50\) # (GND)))))
-- \QD2|counter[9]~52\ = CARRY((\QD2|flipflop\(0) & (!\QD2|counter\(9) & !\QD2|counter[8]~50\)) # (!\QD2|flipflop\(0) & ((!\QD2|counter[8]~50\) # (!\QD2|counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(9),
	datad => VCC,
	cin => \QD2|counter[8]~50\,
	combout => \QD2|counter[9]~51_combout\,
	cout => \QD2|counter[9]~52\);

-- Location: FF_X56_Y11_N19
\QD2|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[9]~51_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(9));

-- Location: LCCOMB_X56_Y11_N20
\QD2|counter[10]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[10]~53_combout\ = ((\QD2|counter\(10) $ (\QD2|flipflop\(0) $ (!\QD2|counter[9]~52\)))) # (GND)
-- \QD2|counter[10]~54\ = CARRY((\QD2|counter\(10) & ((\QD2|flipflop\(0)) # (!\QD2|counter[9]~52\))) # (!\QD2|counter\(10) & (\QD2|flipflop\(0) & !\QD2|counter[9]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(10),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[9]~52\,
	combout => \QD2|counter[10]~53_combout\,
	cout => \QD2|counter[10]~54\);

-- Location: FF_X56_Y11_N21
\QD2|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[10]~53_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(10));

-- Location: LCCOMB_X56_Y11_N22
\QD2|counter[11]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[11]~55_combout\ = (\QD2|counter\(11) & ((\QD2|flipflop\(0) & (\QD2|counter[10]~54\ & VCC)) # (!\QD2|flipflop\(0) & (!\QD2|counter[10]~54\)))) # (!\QD2|counter\(11) & ((\QD2|flipflop\(0) & (!\QD2|counter[10]~54\)) # (!\QD2|flipflop\(0) & 
-- ((\QD2|counter[10]~54\) # (GND)))))
-- \QD2|counter[11]~56\ = CARRY((\QD2|counter\(11) & (!\QD2|flipflop\(0) & !\QD2|counter[10]~54\)) # (!\QD2|counter\(11) & ((!\QD2|counter[10]~54\) # (!\QD2|flipflop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(11),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[10]~54\,
	combout => \QD2|counter[11]~55_combout\,
	cout => \QD2|counter[11]~56\);

-- Location: FF_X56_Y11_N23
\QD2|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[11]~55_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(11));

-- Location: LCCOMB_X56_Y11_N24
\QD2|counter[12]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[12]~57_combout\ = ((\QD2|counter\(12) $ (\QD2|flipflop\(0) $ (!\QD2|counter[11]~56\)))) # (GND)
-- \QD2|counter[12]~58\ = CARRY((\QD2|counter\(12) & ((\QD2|flipflop\(0)) # (!\QD2|counter[11]~56\))) # (!\QD2|counter\(12) & (\QD2|flipflop\(0) & !\QD2|counter[11]~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(12),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[11]~56\,
	combout => \QD2|counter[12]~57_combout\,
	cout => \QD2|counter[12]~58\);

-- Location: FF_X56_Y11_N25
\QD2|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[12]~57_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(12));

-- Location: LCCOMB_X56_Y11_N26
\QD2|counter[13]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[13]~59_combout\ = (\QD2|counter\(13) & ((\QD2|flipflop\(0) & (\QD2|counter[12]~58\ & VCC)) # (!\QD2|flipflop\(0) & (!\QD2|counter[12]~58\)))) # (!\QD2|counter\(13) & ((\QD2|flipflop\(0) & (!\QD2|counter[12]~58\)) # (!\QD2|flipflop\(0) & 
-- ((\QD2|counter[12]~58\) # (GND)))))
-- \QD2|counter[13]~60\ = CARRY((\QD2|counter\(13) & (!\QD2|flipflop\(0) & !\QD2|counter[12]~58\)) # (!\QD2|counter\(13) & ((!\QD2|counter[12]~58\) # (!\QD2|flipflop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(13),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[12]~58\,
	combout => \QD2|counter[13]~59_combout\,
	cout => \QD2|counter[13]~60\);

-- Location: FF_X56_Y11_N27
\QD2|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[13]~59_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(13));

-- Location: LCCOMB_X56_Y11_N28
\QD2|counter[14]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[14]~61_combout\ = ((\QD2|counter\(14) $ (\QD2|flipflop\(0) $ (!\QD2|counter[13]~60\)))) # (GND)
-- \QD2|counter[14]~62\ = CARRY((\QD2|counter\(14) & ((\QD2|flipflop\(0)) # (!\QD2|counter[13]~60\))) # (!\QD2|counter\(14) & (\QD2|flipflop\(0) & !\QD2|counter[13]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(14),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[13]~60\,
	combout => \QD2|counter[14]~61_combout\,
	cout => \QD2|counter[14]~62\);

-- Location: FF_X56_Y11_N29
\QD2|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[14]~61_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(14));

-- Location: LCCOMB_X56_Y11_N30
\QD2|counter[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[15]~63_combout\ = (\QD2|counter\(15) & ((\QD2|flipflop\(0) & (\QD2|counter[14]~62\ & VCC)) # (!\QD2|flipflop\(0) & (!\QD2|counter[14]~62\)))) # (!\QD2|counter\(15) & ((\QD2|flipflop\(0) & (!\QD2|counter[14]~62\)) # (!\QD2|flipflop\(0) & 
-- ((\QD2|counter[14]~62\) # (GND)))))
-- \QD2|counter[15]~64\ = CARRY((\QD2|counter\(15) & (!\QD2|flipflop\(0) & !\QD2|counter[14]~62\)) # (!\QD2|counter\(15) & ((!\QD2|counter[14]~62\) # (!\QD2|flipflop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(15),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[14]~62\,
	combout => \QD2|counter[15]~63_combout\,
	cout => \QD2|counter[15]~64\);

-- Location: FF_X56_Y11_N31
\QD2|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[15]~63_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(15));

-- Location: LCCOMB_X56_Y10_N0
\QD2|counter[16]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[16]~65_combout\ = ((\QD2|flipflop\(0) $ (\QD2|counter\(16) $ (!\QD2|counter[15]~64\)))) # (GND)
-- \QD2|counter[16]~66\ = CARRY((\QD2|flipflop\(0) & ((\QD2|counter\(16)) # (!\QD2|counter[15]~64\))) # (!\QD2|flipflop\(0) & (\QD2|counter\(16) & !\QD2|counter[15]~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(16),
	datad => VCC,
	cin => \QD2|counter[15]~64\,
	combout => \QD2|counter[16]~65_combout\,
	cout => \QD2|counter[16]~66\);

-- Location: FF_X56_Y10_N1
\QD2|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[16]~65_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(16));

-- Location: LCCOMB_X54_Y10_N10
\gpmc_driver|ram~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~32_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(16)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(0),
	datab => \QD2|counter\(16),
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~32_combout\);

-- Location: LCCOMB_X54_Y10_N14
\gpmc_driver|ram[3][4]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][4]~33_combout\ = (\gpmc_driver|gpmc_ncs~q\) # ((\gpmc_driver|Decoder0~14_combout\ & (!\gpmc_driver|gpmc_nwe~q\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~14_combout\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_nwe~q\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[3][4]~33_combout\);

-- Location: FF_X52_Y10_N3
\gpmc_driver|ram[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram~32_combout\,
	sload => VCC,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][0]~q\);

-- Location: LCCOMB_X43_Y11_N0
\qd1|position[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[0]~32_combout\ = \qd1|position\(0) $ (VCC)
-- \qd1|position[0]~33\ = CARRY(\qd1|position\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(0),
	datad => VCC,
	combout => \qd1|position[0]~32_combout\,
	cout => \qd1|position[0]~33\);

-- Location: LCCOMB_X44_Y11_N0
\qd1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~0_combout\ = \qd1|position\(0) $ (VCC)
-- \qd1|Add3~1\ = CARRY(\qd1|position\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(0),
	datad => VCC,
	combout => \qd1|Add3~0_combout\,
	cout => \qd1|Add3~1\);

-- Location: LCCOMB_X43_Y11_N2
\qd1|position[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[1]~34_combout\ = (\qd1|position\(1) & (!\qd1|position[0]~33\)) # (!\qd1|position\(1) & ((\qd1|position[0]~33\) # (GND)))
-- \qd1|position[1]~35\ = CARRY((!\qd1|position[0]~33\) # (!\qd1|position\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(1),
	datad => VCC,
	cin => \qd1|position[0]~33\,
	combout => \qd1|position[1]~34_combout\,
	cout => \qd1|position[1]~35\);

-- Location: LCCOMB_X44_Y11_N2
\qd1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~2_combout\ = (\qd1|position\(1) & (\qd1|Add3~1\ & VCC)) # (!\qd1|position\(1) & (!\qd1|Add3~1\))
-- \qd1|Add3~3\ = CARRY((!\qd1|position\(1) & !\qd1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(1),
	datad => VCC,
	cin => \qd1|Add3~1\,
	combout => \qd1|Add3~2_combout\,
	cout => \qd1|Add3~3\);

-- Location: LCCOMB_X42_Y11_N4
\qd1|Add3~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~39_combout\ = (\qd1|Add3~2_combout\) # (!\qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~2_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~39_combout\);

-- Location: LCCOMB_X41_Y10_N22
\qd1|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~4_combout\ = (!\qd1|position\(28) & (!\qd1|position\(29) & (!\qd1|position\(15) & !\qd1|position\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(28),
	datab => \qd1|position\(29),
	datac => \qd1|position\(15),
	datad => \qd1|position\(30),
	combout => \qd1|LessThan0~4_combout\);

-- Location: LCCOMB_X41_Y10_N28
\qd1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~1_combout\ = (!\qd1|position\(17) & (!\qd1|position\(18) & (!\qd1|position\(16) & !\qd1|position\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(17),
	datab => \qd1|position\(18),
	datac => \qd1|position\(16),
	datad => \qd1|position\(19),
	combout => \qd1|LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y10_N8
\qd1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~2_combout\ = (!\qd1|position\(23) & (!\qd1|position\(21) & (!\qd1|position\(20) & !\qd1|position\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(23),
	datab => \qd1|position\(21),
	datac => \qd1|position\(20),
	datad => \qd1|position\(22),
	combout => \qd1|LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y10_N30
\qd1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~3_combout\ = (!\qd1|position\(26) & (!\qd1|position\(27) & (!\qd1|position\(25) & !\qd1|position\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(26),
	datab => \qd1|position\(27),
	datac => \qd1|position\(25),
	datad => \qd1|position\(24),
	combout => \qd1|LessThan0~3_combout\);

-- Location: LCCOMB_X41_Y10_N20
\qd1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~5_combout\ = (\qd1|LessThan0~4_combout\ & (\qd1|LessThan0~1_combout\ & (\qd1|LessThan0~2_combout\ & \qd1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|LessThan0~4_combout\,
	datab => \qd1|LessThan0~1_combout\,
	datac => \qd1|LessThan0~2_combout\,
	datad => \qd1|LessThan0~3_combout\,
	combout => \qd1|LessThan0~5_combout\);

-- Location: LCCOMB_X42_Y10_N18
\qd1|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~6_combout\ = ((!\qd1|position\(11)) # (!\qd1|position\(10))) # (!\qd1|position\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(9),
	datac => \qd1|position\(10),
	datad => \qd1|position\(11),
	combout => \qd1|LessThan0~6_combout\);

-- Location: LCCOMB_X42_Y11_N2
\qd1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~0_combout\ = (!\qd1|position\(5) & (!\qd1|position\(7) & (!\qd1|position\(6) & !\qd1|position\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(5),
	datab => \qd1|position\(7),
	datac => \qd1|position\(6),
	datad => \qd1|position\(8),
	combout => \qd1|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y11_N18
\qd1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~7_combout\ = (((!\qd1|position\(3)) # (!\qd1|position\(1))) # (!\qd1|position\(0))) # (!\qd1|position\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(2),
	datab => \qd1|position\(0),
	datac => \qd1|position\(1),
	datad => \qd1|position\(3),
	combout => \qd1|LessThan0~7_combout\);

-- Location: LCCOMB_X41_Y10_N16
\qd1|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~8_combout\ = (\qd1|LessThan0~6_combout\) # ((\qd1|LessThan0~0_combout\ & ((\qd1|LessThan0~7_combout\) # (!\qd1|position\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(4),
	datab => \qd1|LessThan0~6_combout\,
	datac => \qd1|LessThan0~0_combout\,
	datad => \qd1|LessThan0~7_combout\,
	combout => \qd1|LessThan0~8_combout\);

-- Location: LCCOMB_X41_Y10_N26
\qd1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan0~9_combout\ = ((!\qd1|position\(12) & (\qd1|LessThan0~8_combout\ & !\qd1|position\(13)))) # (!\qd1|position\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(12),
	datab => \qd1|LessThan0~8_combout\,
	datac => \qd1|position\(13),
	datad => \qd1|position\(14),
	combout => \qd1|LessThan0~9_combout\);

-- Location: IOIBUF_X67_Y31_N22
\ENC3A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC3A,
	o => \ENC3A~input_o\);

-- Location: FF_X66_Y27_N5
\qd1|a_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ENC3A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|a_new\(0));

-- Location: LCCOMB_X66_Y27_N30
\qd1|a_new[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|a_new[1]~feeder_combout\ = \qd1|a_new\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|a_new\(0),
	combout => \qd1|a_new[1]~feeder_combout\);

-- Location: FF_X66_Y27_N31
\qd1|a_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|a_new[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|a_new\(1));

-- Location: IOIBUF_X67_Y34_N8
\ENC3B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC3B,
	o => \ENC3B~input_o\);

-- Location: LCCOMB_X66_Y27_N12
\qd1|b_new[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|b_new[0]~feeder_combout\ = \ENC3B~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ENC3B~input_o\,
	combout => \qd1|b_new[0]~feeder_combout\);

-- Location: FF_X66_Y27_N13
\qd1|b_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|b_new[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|b_new\(0));

-- Location: LCCOMB_X66_Y27_N2
\qd1|b_new[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|b_new[1]~feeder_combout\ = \qd1|b_new\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \qd1|b_new\(0),
	combout => \qd1|b_new[1]~feeder_combout\);

-- Location: FF_X66_Y27_N3
\qd1|b_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|b_new[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|b_new\(1));

-- Location: LCCOMB_X66_Y27_N16
\qd1|b_prev~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|b_prev~feeder_combout\ = \qd1|b_new\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \qd1|b_new\(1),
	combout => \qd1|b_prev~feeder_combout\);

-- Location: LCCOMB_X66_Y27_N22
\qd1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|process_0~3_combout\ = (\qd1|b_new\(0) & ((\qd1|a_new\(0) $ (\qd1|a_new\(1))) # (!\qd1|b_new\(1)))) # (!\qd1|b_new\(0) & ((\qd1|b_new\(1)) # (\qd1|a_new\(0) $ (\qd1|a_new\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|b_new\(0),
	datab => \qd1|a_new\(0),
	datac => \qd1|a_new\(1),
	datad => \qd1|b_new\(1),
	combout => \qd1|process_0~3_combout\);

-- Location: LCCOMB_X65_Y27_N4
\qd1|debounce_cnt[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[0]~14_combout\ = \qd1|debounce_cnt\(0) $ (VCC)
-- \qd1|debounce_cnt[0]~15\ = CARRY(\qd1|debounce_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qd1|debounce_cnt\(0),
	datad => VCC,
	combout => \qd1|debounce_cnt[0]~14_combout\,
	cout => \qd1|debounce_cnt[0]~15\);

-- Location: FF_X65_Y27_N5
\qd1|debounce_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[0]~14_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(0));

-- Location: LCCOMB_X65_Y27_N6
\qd1|debounce_cnt[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[1]~16_combout\ = (\qd1|debounce_cnt\(1) & (!\qd1|debounce_cnt[0]~15\)) # (!\qd1|debounce_cnt\(1) & ((\qd1|debounce_cnt[0]~15\) # (GND)))
-- \qd1|debounce_cnt[1]~17\ = CARRY((!\qd1|debounce_cnt[0]~15\) # (!\qd1|debounce_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|debounce_cnt\(1),
	datad => VCC,
	cin => \qd1|debounce_cnt[0]~15\,
	combout => \qd1|debounce_cnt[1]~16_combout\,
	cout => \qd1|debounce_cnt[1]~17\);

-- Location: FF_X65_Y27_N7
\qd1|debounce_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[1]~16_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(1));

-- Location: LCCOMB_X65_Y27_N8
\qd1|debounce_cnt[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[2]~18_combout\ = (\qd1|debounce_cnt\(2) & (\qd1|debounce_cnt[1]~17\ $ (GND))) # (!\qd1|debounce_cnt\(2) & (!\qd1|debounce_cnt[1]~17\ & VCC))
-- \qd1|debounce_cnt[2]~19\ = CARRY((\qd1|debounce_cnt\(2) & !\qd1|debounce_cnt[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|debounce_cnt\(2),
	datad => VCC,
	cin => \qd1|debounce_cnt[1]~17\,
	combout => \qd1|debounce_cnt[2]~18_combout\,
	cout => \qd1|debounce_cnt[2]~19\);

-- Location: FF_X65_Y27_N9
\qd1|debounce_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[2]~18_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(2));

-- Location: LCCOMB_X65_Y27_N10
\qd1|debounce_cnt[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[3]~20_combout\ = (\qd1|debounce_cnt\(3) & (!\qd1|debounce_cnt[2]~19\)) # (!\qd1|debounce_cnt\(3) & ((\qd1|debounce_cnt[2]~19\) # (GND)))
-- \qd1|debounce_cnt[3]~21\ = CARRY((!\qd1|debounce_cnt[2]~19\) # (!\qd1|debounce_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|debounce_cnt\(3),
	datad => VCC,
	cin => \qd1|debounce_cnt[2]~19\,
	combout => \qd1|debounce_cnt[3]~20_combout\,
	cout => \qd1|debounce_cnt[3]~21\);

-- Location: FF_X65_Y27_N11
\qd1|debounce_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[3]~20_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(3));

-- Location: LCCOMB_X65_Y27_N0
\qd1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Equal1~2_combout\ = (!\qd1|debounce_cnt\(3) & (!\qd1|debounce_cnt\(2) & (!\qd1|debounce_cnt\(0) & !\qd1|debounce_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|debounce_cnt\(3),
	datab => \qd1|debounce_cnt\(2),
	datac => \qd1|debounce_cnt\(0),
	datad => \qd1|debounce_cnt\(1),
	combout => \qd1|Equal1~2_combout\);

-- Location: LCCOMB_X65_Y27_N12
\qd1|debounce_cnt[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[4]~22_combout\ = (\qd1|debounce_cnt\(4) & (\qd1|debounce_cnt[3]~21\ $ (GND))) # (!\qd1|debounce_cnt\(4) & (!\qd1|debounce_cnt[3]~21\ & VCC))
-- \qd1|debounce_cnt[4]~23\ = CARRY((\qd1|debounce_cnt\(4) & !\qd1|debounce_cnt[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|debounce_cnt\(4),
	datad => VCC,
	cin => \qd1|debounce_cnt[3]~21\,
	combout => \qd1|debounce_cnt[4]~22_combout\,
	cout => \qd1|debounce_cnt[4]~23\);

-- Location: FF_X65_Y27_N13
\qd1|debounce_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[4]~22_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(4));

-- Location: LCCOMB_X65_Y27_N14
\qd1|debounce_cnt[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[5]~24_combout\ = (\qd1|debounce_cnt\(5) & (!\qd1|debounce_cnt[4]~23\)) # (!\qd1|debounce_cnt\(5) & ((\qd1|debounce_cnt[4]~23\) # (GND)))
-- \qd1|debounce_cnt[5]~25\ = CARRY((!\qd1|debounce_cnt[4]~23\) # (!\qd1|debounce_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|debounce_cnt\(5),
	datad => VCC,
	cin => \qd1|debounce_cnt[4]~23\,
	combout => \qd1|debounce_cnt[5]~24_combout\,
	cout => \qd1|debounce_cnt[5]~25\);

-- Location: FF_X65_Y27_N15
\qd1|debounce_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[5]~24_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(5));

-- Location: LCCOMB_X65_Y27_N16
\qd1|debounce_cnt[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[6]~26_combout\ = (\qd1|debounce_cnt\(6) & (\qd1|debounce_cnt[5]~25\ $ (GND))) # (!\qd1|debounce_cnt\(6) & (!\qd1|debounce_cnt[5]~25\ & VCC))
-- \qd1|debounce_cnt[6]~27\ = CARRY((\qd1|debounce_cnt\(6) & !\qd1|debounce_cnt[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|debounce_cnt\(6),
	datad => VCC,
	cin => \qd1|debounce_cnt[5]~25\,
	combout => \qd1|debounce_cnt[6]~26_combout\,
	cout => \qd1|debounce_cnt[6]~27\);

-- Location: FF_X65_Y27_N17
\qd1|debounce_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[6]~26_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(6));

-- Location: LCCOMB_X65_Y27_N18
\qd1|debounce_cnt[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[7]~28_combout\ = (\qd1|debounce_cnt\(7) & (!\qd1|debounce_cnt[6]~27\)) # (!\qd1|debounce_cnt\(7) & ((\qd1|debounce_cnt[6]~27\) # (GND)))
-- \qd1|debounce_cnt[7]~29\ = CARRY((!\qd1|debounce_cnt[6]~27\) # (!\qd1|debounce_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|debounce_cnt\(7),
	datad => VCC,
	cin => \qd1|debounce_cnt[6]~27\,
	combout => \qd1|debounce_cnt[7]~28_combout\,
	cout => \qd1|debounce_cnt[7]~29\);

-- Location: FF_X65_Y27_N19
\qd1|debounce_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[7]~28_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(7));

-- Location: LCCOMB_X65_Y27_N20
\qd1|debounce_cnt[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[8]~30_combout\ = (\qd1|debounce_cnt\(8) & (\qd1|debounce_cnt[7]~29\ $ (GND))) # (!\qd1|debounce_cnt\(8) & (!\qd1|debounce_cnt[7]~29\ & VCC))
-- \qd1|debounce_cnt[8]~31\ = CARRY((\qd1|debounce_cnt\(8) & !\qd1|debounce_cnt[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|debounce_cnt\(8),
	datad => VCC,
	cin => \qd1|debounce_cnt[7]~29\,
	combout => \qd1|debounce_cnt[8]~30_combout\,
	cout => \qd1|debounce_cnt[8]~31\);

-- Location: FF_X65_Y27_N21
\qd1|debounce_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[8]~30_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(8));

-- Location: LCCOMB_X65_Y27_N22
\qd1|debounce_cnt[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[9]~32_combout\ = (\qd1|debounce_cnt\(9) & (!\qd1|debounce_cnt[8]~31\)) # (!\qd1|debounce_cnt\(9) & ((\qd1|debounce_cnt[8]~31\) # (GND)))
-- \qd1|debounce_cnt[9]~33\ = CARRY((!\qd1|debounce_cnt[8]~31\) # (!\qd1|debounce_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|debounce_cnt\(9),
	datad => VCC,
	cin => \qd1|debounce_cnt[8]~31\,
	combout => \qd1|debounce_cnt[9]~32_combout\,
	cout => \qd1|debounce_cnt[9]~33\);

-- Location: FF_X65_Y27_N23
\qd1|debounce_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[9]~32_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(9));

-- Location: LCCOMB_X65_Y27_N24
\qd1|debounce_cnt[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[10]~34_combout\ = (\qd1|debounce_cnt\(10) & (\qd1|debounce_cnt[9]~33\ $ (GND))) # (!\qd1|debounce_cnt\(10) & (!\qd1|debounce_cnt[9]~33\ & VCC))
-- \qd1|debounce_cnt[10]~35\ = CARRY((\qd1|debounce_cnt\(10) & !\qd1|debounce_cnt[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|debounce_cnt\(10),
	datad => VCC,
	cin => \qd1|debounce_cnt[9]~33\,
	combout => \qd1|debounce_cnt[10]~34_combout\,
	cout => \qd1|debounce_cnt[10]~35\);

-- Location: FF_X65_Y27_N25
\qd1|debounce_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[10]~34_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(10));

-- Location: LCCOMB_X65_Y27_N26
\qd1|debounce_cnt[11]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[11]~36_combout\ = (\qd1|debounce_cnt\(11) & (!\qd1|debounce_cnt[10]~35\)) # (!\qd1|debounce_cnt\(11) & ((\qd1|debounce_cnt[10]~35\) # (GND)))
-- \qd1|debounce_cnt[11]~37\ = CARRY((!\qd1|debounce_cnt[10]~35\) # (!\qd1|debounce_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|debounce_cnt\(11),
	datad => VCC,
	cin => \qd1|debounce_cnt[10]~35\,
	combout => \qd1|debounce_cnt[11]~36_combout\,
	cout => \qd1|debounce_cnt[11]~37\);

-- Location: FF_X65_Y27_N27
\qd1|debounce_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[11]~36_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(11));

-- Location: LCCOMB_X65_Y27_N28
\qd1|debounce_cnt[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[12]~38_combout\ = (\qd1|debounce_cnt\(12) & (\qd1|debounce_cnt[11]~37\ $ (GND))) # (!\qd1|debounce_cnt\(12) & (!\qd1|debounce_cnt[11]~37\ & VCC))
-- \qd1|debounce_cnt[12]~39\ = CARRY((\qd1|debounce_cnt\(12) & !\qd1|debounce_cnt[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|debounce_cnt\(12),
	datad => VCC,
	cin => \qd1|debounce_cnt[11]~37\,
	combout => \qd1|debounce_cnt[12]~38_combout\,
	cout => \qd1|debounce_cnt[12]~39\);

-- Location: FF_X65_Y27_N29
\qd1|debounce_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[12]~38_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(12));

-- Location: LCCOMB_X65_Y27_N30
\qd1|debounce_cnt[13]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|debounce_cnt[13]~40_combout\ = \qd1|debounce_cnt\(13) $ (\qd1|debounce_cnt[12]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|debounce_cnt\(13),
	cin => \qd1|debounce_cnt[12]~39\,
	combout => \qd1|debounce_cnt[13]~40_combout\);

-- Location: FF_X65_Y27_N31
\qd1|debounce_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|debounce_cnt[13]~40_combout\,
	sclr => \qd1|process_0~3_combout\,
	ena => \qd1|ALT_INV_b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|debounce_cnt\(13));

-- Location: LCCOMB_X66_Y27_N4
\qd1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Equal1~1_combout\ = (\qd1|debounce_cnt\(13) & !\qd1|debounce_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qd1|debounce_cnt\(13),
	datad => \qd1|debounce_cnt\(12),
	combout => \qd1|Equal1~1_combout\);

-- Location: LCCOMB_X66_Y27_N26
\qd1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Equal1~0_combout\ = (\qd1|debounce_cnt\(4) & (!\qd1|debounce_cnt\(7) & (!\qd1|debounce_cnt\(6) & !\qd1|debounce_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|debounce_cnt\(4),
	datab => \qd1|debounce_cnt\(7),
	datac => \qd1|debounce_cnt\(6),
	datad => \qd1|debounce_cnt\(5),
	combout => \qd1|Equal1~0_combout\);

-- Location: LCCOMB_X65_Y27_N2
\qd1|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Equal1~3_combout\ = (!\qd1|debounce_cnt\(11) & (\qd1|debounce_cnt\(8) & (\qd1|debounce_cnt\(9) & \qd1|debounce_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|debounce_cnt\(11),
	datab => \qd1|debounce_cnt\(8),
	datac => \qd1|debounce_cnt\(9),
	datad => \qd1|debounce_cnt\(10),
	combout => \qd1|Equal1~3_combout\);

-- Location: LCCOMB_X66_Y27_N18
\qd1|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Equal1~4_combout\ = (\qd1|Equal1~2_combout\ & (\qd1|Equal1~1_combout\ & (\qd1|Equal1~0_combout\ & \qd1|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|Equal1~2_combout\,
	datab => \qd1|Equal1~1_combout\,
	datac => \qd1|Equal1~0_combout\,
	datad => \qd1|Equal1~3_combout\,
	combout => \qd1|Equal1~4_combout\);

-- Location: LCCOMB_X66_Y27_N8
\qd1|b_prev~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|b_prev~0_combout\ = (!\qd1|process_0~3_combout\ & \qd1|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|process_0~3_combout\,
	datad => \qd1|Equal1~4_combout\,
	combout => \qd1|b_prev~0_combout\);

-- Location: FF_X66_Y27_N17
\qd1|b_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|b_prev~feeder_combout\,
	ena => \qd1|b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|b_prev~q\);

-- Location: LCCOMB_X66_Y27_N24
\qd1|direction~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|direction~0_combout\ = \qd1|a_new\(1) $ (\qd1|b_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|a_new\(1),
	datad => \qd1|b_prev~q\,
	combout => \qd1|direction~0_combout\);

-- Location: LCCOMB_X41_Y10_N0
\qd1|position[23]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[23]~66_combout\ = (!\qd1|position\(31) & (\qd1|direction~0_combout\ & ((!\qd1|LessThan0~9_combout\) # (!\qd1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(31),
	datab => \qd1|LessThan0~5_combout\,
	datac => \qd1|LessThan0~9_combout\,
	datad => \qd1|direction~0_combout\,
	combout => \qd1|position[23]~66_combout\);

-- Location: FF_X66_Y27_N29
\qd1|a_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \qd1|a_new\(1),
	sload => VCC,
	ena => \qd1|b_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|a_prev~q\);

-- Location: LCCOMB_X66_Y27_N28
\qd1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|process_0~0_combout\ = (\qd1|a_new\(1) & ((\qd1|b_prev~q\ $ (\qd1|b_new\(1))) # (!\qd1|a_prev~q\))) # (!\qd1|a_new\(1) & ((\qd1|a_prev~q\) # (\qd1|b_prev~q\ $ (\qd1|b_new\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|a_new\(1),
	datab => \qd1|b_prev~q\,
	datac => \qd1|a_prev~q\,
	datad => \qd1|b_new\(1),
	combout => \qd1|process_0~0_combout\);

-- Location: LCCOMB_X66_Y27_N10
\qd1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|process_0~1_combout\ = (\qd1|Equal1~2_combout\ & \qd1|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Equal1~2_combout\,
	datad => \qd1|Equal1~3_combout\,
	combout => \qd1|process_0~1_combout\);

-- Location: LCCOMB_X66_Y27_N20
\qd1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|process_0~2_combout\ = (\qd1|Equal1~0_combout\ & (\qd1|process_0~0_combout\ & (\qd1|Equal1~1_combout\ & \qd1|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|Equal1~0_combout\,
	datab => \qd1|process_0~0_combout\,
	datac => \qd1|Equal1~1_combout\,
	datad => \qd1|process_0~1_combout\,
	combout => \qd1|process_0~2_combout\);

-- Location: FF_X43_Y11_N3
\qd1|position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[1]~34_combout\,
	asdata => \qd1|Add3~39_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(1));

-- Location: LCCOMB_X43_Y11_N4
\qd1|position[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[2]~36_combout\ = (\qd1|position\(2) & (\qd1|position[1]~35\ $ (GND))) # (!\qd1|position\(2) & (!\qd1|position[1]~35\ & VCC))
-- \qd1|position[2]~37\ = CARRY((\qd1|position\(2) & !\qd1|position[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(2),
	datad => VCC,
	cin => \qd1|position[1]~35\,
	combout => \qd1|position[2]~36_combout\,
	cout => \qd1|position[2]~37\);

-- Location: LCCOMB_X44_Y11_N4
\qd1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~4_combout\ = (\qd1|position\(2) & ((GND) # (!\qd1|Add3~3\))) # (!\qd1|position\(2) & (\qd1|Add3~3\ $ (GND)))
-- \qd1|Add3~5\ = CARRY((\qd1|position\(2)) # (!\qd1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(2),
	datad => VCC,
	cin => \qd1|Add3~3\,
	combout => \qd1|Add3~4_combout\,
	cout => \qd1|Add3~5\);

-- Location: LCCOMB_X42_Y11_N30
\qd1|Add3~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~43_combout\ = (\qd1|Add3~4_combout\) # (!\qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~4_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~43_combout\);

-- Location: FF_X43_Y11_N5
\qd1|position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[2]~36_combout\,
	asdata => \qd1|Add3~43_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(2));

-- Location: LCCOMB_X43_Y11_N6
\qd1|position[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[3]~38_combout\ = (\qd1|position\(3) & (!\qd1|position[2]~37\)) # (!\qd1|position\(3) & ((\qd1|position[2]~37\) # (GND)))
-- \qd1|position[3]~39\ = CARRY((!\qd1|position[2]~37\) # (!\qd1|position\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(3),
	datad => VCC,
	cin => \qd1|position[2]~37\,
	combout => \qd1|position[3]~38_combout\,
	cout => \qd1|position[3]~39\);

-- Location: LCCOMB_X44_Y11_N6
\qd1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~6_combout\ = (\qd1|position\(3) & (\qd1|Add3~5\ & VCC)) # (!\qd1|position\(3) & (!\qd1|Add3~5\))
-- \qd1|Add3~7\ = CARRY((!\qd1|position\(3) & !\qd1|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(3),
	datad => VCC,
	cin => \qd1|Add3~5\,
	combout => \qd1|Add3~6_combout\,
	cout => \qd1|Add3~7\);

-- Location: LCCOMB_X42_Y11_N20
\qd1|Add3~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~47_combout\ = (\qd1|Add3~6_combout\) # (!\qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~6_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~47_combout\);

-- Location: FF_X43_Y11_N7
\qd1|position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[3]~38_combout\,
	asdata => \qd1|Add3~47_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(3));

-- Location: LCCOMB_X43_Y11_N8
\qd1|position[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[4]~40_combout\ = (\qd1|position\(4) & (\qd1|position[3]~39\ $ (GND))) # (!\qd1|position\(4) & (!\qd1|position[3]~39\ & VCC))
-- \qd1|position[4]~41\ = CARRY((\qd1|position\(4) & !\qd1|position[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(4),
	datad => VCC,
	cin => \qd1|position[3]~39\,
	combout => \qd1|position[4]~40_combout\,
	cout => \qd1|position[4]~41\);

-- Location: LCCOMB_X44_Y11_N8
\qd1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~8_combout\ = (\qd1|position\(4) & ((GND) # (!\qd1|Add3~7\))) # (!\qd1|position\(4) & (\qd1|Add3~7\ $ (GND)))
-- \qd1|Add3~9\ = CARRY((\qd1|position\(4)) # (!\qd1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(4),
	datad => VCC,
	cin => \qd1|Add3~7\,
	combout => \qd1|Add3~8_combout\,
	cout => \qd1|Add3~9\);

-- Location: LCCOMB_X41_Y11_N4
\qd1|Add3~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~51_combout\ = (\qd1|Add3~8_combout\) # (!\qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~8_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~51_combout\);

-- Location: FF_X43_Y11_N9
\qd1|position[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[4]~40_combout\,
	asdata => \qd1|Add3~51_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(4));

-- Location: LCCOMB_X43_Y11_N10
\qd1|position[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[5]~42_combout\ = (\qd1|position\(5) & (!\qd1|position[4]~41\)) # (!\qd1|position\(5) & ((\qd1|position[4]~41\) # (GND)))
-- \qd1|position[5]~43\ = CARRY((!\qd1|position[4]~41\) # (!\qd1|position\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(5),
	datad => VCC,
	cin => \qd1|position[4]~41\,
	combout => \qd1|position[5]~42_combout\,
	cout => \qd1|position[5]~43\);

-- Location: LCCOMB_X44_Y11_N10
\qd1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~10_combout\ = (\qd1|position\(5) & (\qd1|Add3~9\ & VCC)) # (!\qd1|position\(5) & (!\qd1|Add3~9\))
-- \qd1|Add3~11\ = CARRY((!\qd1|position\(5) & !\qd1|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(5),
	datad => VCC,
	cin => \qd1|Add3~9\,
	combout => \qd1|Add3~10_combout\,
	cout => \qd1|Add3~11\);

-- Location: LCCOMB_X42_Y11_N26
\qd1|Add3~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~55_combout\ = (\qd1|Add3~10_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~10_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~55_combout\);

-- Location: FF_X43_Y11_N11
\qd1|position[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[5]~42_combout\,
	asdata => \qd1|Add3~55_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(5));

-- Location: LCCOMB_X43_Y11_N12
\qd1|position[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[6]~44_combout\ = (\qd1|position\(6) & (\qd1|position[5]~43\ $ (GND))) # (!\qd1|position\(6) & (!\qd1|position[5]~43\ & VCC))
-- \qd1|position[6]~45\ = CARRY((\qd1|position\(6) & !\qd1|position[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(6),
	datad => VCC,
	cin => \qd1|position[5]~43\,
	combout => \qd1|position[6]~44_combout\,
	cout => \qd1|position[6]~45\);

-- Location: LCCOMB_X44_Y11_N12
\qd1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~12_combout\ = (\qd1|position\(6) & ((GND) # (!\qd1|Add3~11\))) # (!\qd1|position\(6) & (\qd1|Add3~11\ $ (GND)))
-- \qd1|Add3~13\ = CARRY((\qd1|position\(6)) # (!\qd1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(6),
	datad => VCC,
	cin => \qd1|Add3~11\,
	combout => \qd1|Add3~12_combout\,
	cout => \qd1|Add3~13\);

-- Location: LCCOMB_X41_Y11_N6
\qd1|Add3~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~59_combout\ = (\qd1|Add3~12_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~12_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~59_combout\);

-- Location: FF_X43_Y11_N13
\qd1|position[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[6]~44_combout\,
	asdata => \qd1|Add3~59_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(6));

-- Location: LCCOMB_X43_Y11_N14
\qd1|position[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[7]~46_combout\ = (\qd1|position\(7) & (!\qd1|position[6]~45\)) # (!\qd1|position\(7) & ((\qd1|position[6]~45\) # (GND)))
-- \qd1|position[7]~47\ = CARRY((!\qd1|position[6]~45\) # (!\qd1|position\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(7),
	datad => VCC,
	cin => \qd1|position[6]~45\,
	combout => \qd1|position[7]~46_combout\,
	cout => \qd1|position[7]~47\);

-- Location: LCCOMB_X44_Y11_N14
\qd1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~14_combout\ = (\qd1|position\(7) & (\qd1|Add3~13\ & VCC)) # (!\qd1|position\(7) & (!\qd1|Add3~13\))
-- \qd1|Add3~15\ = CARRY((!\qd1|position\(7) & !\qd1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(7),
	datad => VCC,
	cin => \qd1|Add3~13\,
	combout => \qd1|Add3~14_combout\,
	cout => \qd1|Add3~15\);

-- Location: LCCOMB_X42_Y11_N0
\qd1|Add3~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~63_combout\ = (\qd1|Add3~14_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~14_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~63_combout\);

-- Location: FF_X43_Y11_N15
\qd1|position[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[7]~46_combout\,
	asdata => \qd1|Add3~63_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(7));

-- Location: LCCOMB_X43_Y11_N16
\qd1|position[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[8]~48_combout\ = (\qd1|position\(8) & (\qd1|position[7]~47\ $ (GND))) # (!\qd1|position\(8) & (!\qd1|position[7]~47\ & VCC))
-- \qd1|position[8]~49\ = CARRY((\qd1|position\(8) & !\qd1|position[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(8),
	datad => VCC,
	cin => \qd1|position[7]~47\,
	combout => \qd1|position[8]~48_combout\,
	cout => \qd1|position[8]~49\);

-- Location: LCCOMB_X44_Y11_N16
\qd1|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~16_combout\ = (\qd1|position\(8) & ((GND) # (!\qd1|Add3~15\))) # (!\qd1|position\(8) & (\qd1|Add3~15\ $ (GND)))
-- \qd1|Add3~17\ = CARRY((\qd1|position\(8)) # (!\qd1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(8),
	datad => VCC,
	cin => \qd1|Add3~15\,
	combout => \qd1|Add3~16_combout\,
	cout => \qd1|Add3~17\);

-- Location: LCCOMB_X42_Y11_N10
\qd1|Add3~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~67_combout\ = (\qd1|Add3~16_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~16_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~67_combout\);

-- Location: FF_X43_Y11_N17
\qd1|position[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[8]~48_combout\,
	asdata => \qd1|Add3~67_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(8));

-- Location: LCCOMB_X43_Y11_N18
\qd1|position[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[9]~50_combout\ = (\qd1|position\(9) & (!\qd1|position[8]~49\)) # (!\qd1|position\(9) & ((\qd1|position[8]~49\) # (GND)))
-- \qd1|position[9]~51\ = CARRY((!\qd1|position[8]~49\) # (!\qd1|position\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(9),
	datad => VCC,
	cin => \qd1|position[8]~49\,
	combout => \qd1|position[9]~50_combout\,
	cout => \qd1|position[9]~51\);

-- Location: LCCOMB_X44_Y11_N18
\qd1|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~18_combout\ = (\qd1|position\(9) & (\qd1|Add3~17\ & VCC)) # (!\qd1|position\(9) & (!\qd1|Add3~17\))
-- \qd1|Add3~19\ = CARRY((!\qd1|position\(9) & !\qd1|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(9),
	datad => VCC,
	cin => \qd1|Add3~17\,
	combout => \qd1|Add3~18_combout\,
	cout => \qd1|Add3~19\);

-- Location: LCCOMB_X41_Y11_N28
\qd1|Add3~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~71_combout\ = (\qd1|Add3~18_combout\) # (!\qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~18_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~71_combout\);

-- Location: FF_X43_Y11_N19
\qd1|position[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[9]~50_combout\,
	asdata => \qd1|Add3~71_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(9));

-- Location: LCCOMB_X43_Y11_N20
\qd1|position[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[10]~52_combout\ = (\qd1|position\(10) & (\qd1|position[9]~51\ $ (GND))) # (!\qd1|position\(10) & (!\qd1|position[9]~51\ & VCC))
-- \qd1|position[10]~53\ = CARRY((\qd1|position\(10) & !\qd1|position[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(10),
	datad => VCC,
	cin => \qd1|position[9]~51\,
	combout => \qd1|position[10]~52_combout\,
	cout => \qd1|position[10]~53\);

-- Location: LCCOMB_X44_Y11_N20
\qd1|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~20_combout\ = (\qd1|position\(10) & ((GND) # (!\qd1|Add3~19\))) # (!\qd1|position\(10) & (\qd1|Add3~19\ $ (GND)))
-- \qd1|Add3~21\ = CARRY((\qd1|position\(10)) # (!\qd1|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(10),
	datad => VCC,
	cin => \qd1|Add3~19\,
	combout => \qd1|Add3~20_combout\,
	cout => \qd1|Add3~21\);

-- Location: LCCOMB_X42_Y11_N8
\qd1|Add3~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~75_combout\ = (\qd1|Add3~20_combout\) # (!\qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~20_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~75_combout\);

-- Location: FF_X43_Y11_N21
\qd1|position[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[10]~52_combout\,
	asdata => \qd1|Add3~75_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(10));

-- Location: LCCOMB_X43_Y11_N22
\qd1|position[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[11]~54_combout\ = (\qd1|position\(11) & (!\qd1|position[10]~53\)) # (!\qd1|position\(11) & ((\qd1|position[10]~53\) # (GND)))
-- \qd1|position[11]~55\ = CARRY((!\qd1|position[10]~53\) # (!\qd1|position\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(11),
	datad => VCC,
	cin => \qd1|position[10]~53\,
	combout => \qd1|position[11]~54_combout\,
	cout => \qd1|position[11]~55\);

-- Location: LCCOMB_X44_Y11_N22
\qd1|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~22_combout\ = (\qd1|position\(11) & (\qd1|Add3~21\ & VCC)) # (!\qd1|position\(11) & (!\qd1|Add3~21\))
-- \qd1|Add3~23\ = CARRY((!\qd1|position\(11) & !\qd1|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(11),
	datad => VCC,
	cin => \qd1|Add3~21\,
	combout => \qd1|Add3~22_combout\,
	cout => \qd1|Add3~23\);

-- Location: LCCOMB_X42_Y11_N6
\qd1|Add3~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~79_combout\ = (\qd1|Add3~22_combout\) # (!\qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~22_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~79_combout\);

-- Location: FF_X43_Y11_N23
\qd1|position[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[11]~54_combout\,
	asdata => \qd1|Add3~79_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(11));

-- Location: LCCOMB_X43_Y11_N24
\qd1|position[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[12]~56_combout\ = (\qd1|position\(12) & (\qd1|position[11]~55\ $ (GND))) # (!\qd1|position\(12) & (!\qd1|position[11]~55\ & VCC))
-- \qd1|position[12]~57\ = CARRY((\qd1|position\(12) & !\qd1|position[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(12),
	datad => VCC,
	cin => \qd1|position[11]~55\,
	combout => \qd1|position[12]~56_combout\,
	cout => \qd1|position[12]~57\);

-- Location: LCCOMB_X44_Y11_N24
\qd1|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~24_combout\ = (\qd1|position\(12) & ((GND) # (!\qd1|Add3~23\))) # (!\qd1|position\(12) & (\qd1|Add3~23\ $ (GND)))
-- \qd1|Add3~25\ = CARRY((\qd1|position\(12)) # (!\qd1|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(12),
	datad => VCC,
	cin => \qd1|Add3~23\,
	combout => \qd1|Add3~24_combout\,
	cout => \qd1|Add3~25\);

-- Location: LCCOMB_X42_Y11_N24
\qd1|Add3~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~83_combout\ = (\qd1|Add3~24_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~24_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~83_combout\);

-- Location: FF_X43_Y11_N25
\qd1|position[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[12]~56_combout\,
	asdata => \qd1|Add3~83_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(12));

-- Location: LCCOMB_X43_Y11_N26
\qd1|position[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[13]~58_combout\ = (\qd1|position\(13) & (!\qd1|position[12]~57\)) # (!\qd1|position\(13) & ((\qd1|position[12]~57\) # (GND)))
-- \qd1|position[13]~59\ = CARRY((!\qd1|position[12]~57\) # (!\qd1|position\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(13),
	datad => VCC,
	cin => \qd1|position[12]~57\,
	combout => \qd1|position[13]~58_combout\,
	cout => \qd1|position[13]~59\);

-- Location: LCCOMB_X44_Y11_N26
\qd1|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~26_combout\ = (\qd1|position\(13) & (\qd1|Add3~25\ & VCC)) # (!\qd1|position\(13) & (!\qd1|Add3~25\))
-- \qd1|Add3~27\ = CARRY((!\qd1|position\(13) & !\qd1|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(13),
	datad => VCC,
	cin => \qd1|Add3~25\,
	combout => \qd1|Add3~26_combout\,
	cout => \qd1|Add3~27\);

-- Location: LCCOMB_X42_Y11_N22
\qd1|Add3~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~87_combout\ = (\qd1|Add3~26_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qd1|Add3~26_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~87_combout\);

-- Location: FF_X43_Y11_N27
\qd1|position[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[13]~58_combout\,
	asdata => \qd1|Add3~87_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(13));

-- Location: LCCOMB_X43_Y11_N28
\qd1|position[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[14]~60_combout\ = (\qd1|position\(14) & (\qd1|position[13]~59\ $ (GND))) # (!\qd1|position\(14) & (!\qd1|position[13]~59\ & VCC))
-- \qd1|position[14]~61\ = CARRY((\qd1|position\(14) & !\qd1|position[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(14),
	datad => VCC,
	cin => \qd1|position[13]~59\,
	combout => \qd1|position[14]~60_combout\,
	cout => \qd1|position[14]~61\);

-- Location: LCCOMB_X44_Y11_N28
\qd1|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~28_combout\ = (\qd1|position\(14) & ((GND) # (!\qd1|Add3~27\))) # (!\qd1|position\(14) & (\qd1|Add3~27\ $ (GND)))
-- \qd1|Add3~29\ = CARRY((\qd1|position\(14)) # (!\qd1|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(14),
	datad => VCC,
	cin => \qd1|Add3~27\,
	combout => \qd1|Add3~28_combout\,
	cout => \qd1|Add3~29\);

-- Location: LCCOMB_X42_Y11_N16
\qd1|Add3~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~91_combout\ = (\qd1|Add3~28_combout\) # (!\qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~28_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~91_combout\);

-- Location: FF_X43_Y11_N29
\qd1|position[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[14]~60_combout\,
	asdata => \qd1|Add3~91_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(14));

-- Location: LCCOMB_X43_Y11_N30
\qd1|position[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[15]~62_combout\ = (\qd1|position\(15) & (!\qd1|position[14]~61\)) # (!\qd1|position\(15) & ((\qd1|position[14]~61\) # (GND)))
-- \qd1|position[15]~63\ = CARRY((!\qd1|position[14]~61\) # (!\qd1|position\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(15),
	datad => VCC,
	cin => \qd1|position[14]~61\,
	combout => \qd1|position[15]~62_combout\,
	cout => \qd1|position[15]~63\);

-- Location: LCCOMB_X44_Y11_N30
\qd1|Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~30_combout\ = (\qd1|position\(15) & (\qd1|Add3~29\ & VCC)) # (!\qd1|position\(15) & (!\qd1|Add3~29\))
-- \qd1|Add3~31\ = CARRY((!\qd1|position\(15) & !\qd1|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(15),
	datad => VCC,
	cin => \qd1|Add3~29\,
	combout => \qd1|Add3~30_combout\,
	cout => \qd1|Add3~31\);

-- Location: LCCOMB_X42_Y11_N14
\qd1|Add3~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~95_combout\ = (\qd1|Add3~30_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qd1|Add3~30_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~95_combout\);

-- Location: FF_X43_Y11_N31
\qd1|position[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[15]~62_combout\,
	asdata => \qd1|Add3~95_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(15));

-- Location: LCCOMB_X43_Y10_N0
\qd1|position[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[16]~64_combout\ = (\qd1|position\(16) & (\qd1|position[15]~63\ $ (GND))) # (!\qd1|position\(16) & (!\qd1|position[15]~63\ & VCC))
-- \qd1|position[16]~65\ = CARRY((\qd1|position\(16) & !\qd1|position[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(16),
	datad => VCC,
	cin => \qd1|position[15]~63\,
	combout => \qd1|position[16]~64_combout\,
	cout => \qd1|position[16]~65\);

-- Location: LCCOMB_X44_Y10_N0
\qd1|Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~32_combout\ = (\qd1|position\(16) & ((GND) # (!\qd1|Add3~31\))) # (!\qd1|position\(16) & (\qd1|Add3~31\ $ (GND)))
-- \qd1|Add3~33\ = CARRY((\qd1|position\(16)) # (!\qd1|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(16),
	datad => VCC,
	cin => \qd1|Add3~31\,
	combout => \qd1|Add3~32_combout\,
	cout => \qd1|Add3~33\);

-- Location: LCCOMB_X42_Y10_N12
\qd1|Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~34_combout\ = (\qd1|Add3~32_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|Add3~32_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~34_combout\);

-- Location: FF_X43_Y10_N1
\qd1|position[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[16]~64_combout\,
	asdata => \qd1|Add3~34_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(16));

-- Location: LCCOMB_X43_Y10_N2
\qd1|position[17]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[17]~67_combout\ = (\qd1|position\(17) & (!\qd1|position[16]~65\)) # (!\qd1|position\(17) & ((\qd1|position[16]~65\) # (GND)))
-- \qd1|position[17]~68\ = CARRY((!\qd1|position[16]~65\) # (!\qd1|position\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(17),
	datad => VCC,
	cin => \qd1|position[16]~65\,
	combout => \qd1|position[17]~67_combout\,
	cout => \qd1|position[17]~68\);

-- Location: LCCOMB_X44_Y10_N2
\qd1|Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~36_combout\ = (\qd1|position\(17) & (\qd1|Add3~33\ & VCC)) # (!\qd1|position\(17) & (!\qd1|Add3~33\))
-- \qd1|Add3~37\ = CARRY((!\qd1|position\(17) & !\qd1|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(17),
	datad => VCC,
	cin => \qd1|Add3~33\,
	combout => \qd1|Add3~36_combout\,
	cout => \qd1|Add3~37\);

-- Location: LCCOMB_X42_Y10_N14
\qd1|Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~38_combout\ = (\qd1|Add3~36_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~36_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~38_combout\);

-- Location: FF_X43_Y10_N3
\qd1|position[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[17]~67_combout\,
	asdata => \qd1|Add3~38_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(17));

-- Location: LCCOMB_X43_Y10_N4
\qd1|position[18]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[18]~69_combout\ = (\qd1|position\(18) & (\qd1|position[17]~68\ $ (GND))) # (!\qd1|position\(18) & (!\qd1|position[17]~68\ & VCC))
-- \qd1|position[18]~70\ = CARRY((\qd1|position\(18) & !\qd1|position[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(18),
	datad => VCC,
	cin => \qd1|position[17]~68\,
	combout => \qd1|position[18]~69_combout\,
	cout => \qd1|position[18]~70\);

-- Location: LCCOMB_X44_Y10_N4
\qd1|Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~40_combout\ = (\qd1|position\(18) & ((GND) # (!\qd1|Add3~37\))) # (!\qd1|position\(18) & (\qd1|Add3~37\ $ (GND)))
-- \qd1|Add3~41\ = CARRY((\qd1|position\(18)) # (!\qd1|Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(18),
	datad => VCC,
	cin => \qd1|Add3~37\,
	combout => \qd1|Add3~40_combout\,
	cout => \qd1|Add3~41\);

-- Location: LCCOMB_X42_Y10_N28
\qd1|Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~42_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~40_combout\,
	combout => \qd1|Add3~42_combout\);

-- Location: FF_X43_Y10_N5
\qd1|position[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[18]~69_combout\,
	asdata => \qd1|Add3~42_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(18));

-- Location: LCCOMB_X43_Y10_N6
\qd1|position[19]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[19]~71_combout\ = (\qd1|position\(19) & (!\qd1|position[18]~70\)) # (!\qd1|position\(19) & ((\qd1|position[18]~70\) # (GND)))
-- \qd1|position[19]~72\ = CARRY((!\qd1|position[18]~70\) # (!\qd1|position\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(19),
	datad => VCC,
	cin => \qd1|position[18]~70\,
	combout => \qd1|position[19]~71_combout\,
	cout => \qd1|position[19]~72\);

-- Location: LCCOMB_X44_Y10_N6
\qd1|Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~44_combout\ = (\qd1|position\(19) & (\qd1|Add3~41\ & VCC)) # (!\qd1|position\(19) & (!\qd1|Add3~41\))
-- \qd1|Add3~45\ = CARRY((!\qd1|position\(19) & !\qd1|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(19),
	datad => VCC,
	cin => \qd1|Add3~41\,
	combout => \qd1|Add3~44_combout\,
	cout => \qd1|Add3~45\);

-- Location: LCCOMB_X45_Y10_N8
\qd1|Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~46_combout\ = (\qd1|Add3~44_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~44_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~46_combout\);

-- Location: FF_X43_Y10_N7
\qd1|position[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[19]~71_combout\,
	asdata => \qd1|Add3~46_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(19));

-- Location: LCCOMB_X43_Y10_N8
\qd1|position[20]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[20]~73_combout\ = (\qd1|position\(20) & (\qd1|position[19]~72\ $ (GND))) # (!\qd1|position\(20) & (!\qd1|position[19]~72\ & VCC))
-- \qd1|position[20]~74\ = CARRY((\qd1|position\(20) & !\qd1|position[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(20),
	datad => VCC,
	cin => \qd1|position[19]~72\,
	combout => \qd1|position[20]~73_combout\,
	cout => \qd1|position[20]~74\);

-- Location: LCCOMB_X44_Y10_N8
\qd1|Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~48_combout\ = (\qd1|position\(20) & ((GND) # (!\qd1|Add3~45\))) # (!\qd1|position\(20) & (\qd1|Add3~45\ $ (GND)))
-- \qd1|Add3~49\ = CARRY((\qd1|position\(20)) # (!\qd1|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(20),
	datad => VCC,
	cin => \qd1|Add3~45\,
	combout => \qd1|Add3~48_combout\,
	cout => \qd1|Add3~49\);

-- Location: LCCOMB_X42_Y10_N10
\qd1|Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~50_combout\ = (\qd1|Add3~48_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~48_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~50_combout\);

-- Location: FF_X43_Y10_N9
\qd1|position[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[20]~73_combout\,
	asdata => \qd1|Add3~50_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(20));

-- Location: LCCOMB_X43_Y10_N10
\qd1|position[21]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[21]~75_combout\ = (\qd1|position\(21) & (!\qd1|position[20]~74\)) # (!\qd1|position\(21) & ((\qd1|position[20]~74\) # (GND)))
-- \qd1|position[21]~76\ = CARRY((!\qd1|position[20]~74\) # (!\qd1|position\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(21),
	datad => VCC,
	cin => \qd1|position[20]~74\,
	combout => \qd1|position[21]~75_combout\,
	cout => \qd1|position[21]~76\);

-- Location: LCCOMB_X44_Y10_N10
\qd1|Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~52_combout\ = (\qd1|position\(21) & (\qd1|Add3~49\ & VCC)) # (!\qd1|position\(21) & (!\qd1|Add3~49\))
-- \qd1|Add3~53\ = CARRY((!\qd1|position\(21) & !\qd1|Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(21),
	datad => VCC,
	cin => \qd1|Add3~49\,
	combout => \qd1|Add3~52_combout\,
	cout => \qd1|Add3~53\);

-- Location: LCCOMB_X45_Y10_N22
\qd1|Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~54_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~52_combout\,
	combout => \qd1|Add3~54_combout\);

-- Location: FF_X43_Y10_N11
\qd1|position[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[21]~75_combout\,
	asdata => \qd1|Add3~54_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(21));

-- Location: LCCOMB_X43_Y10_N12
\qd1|position[22]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[22]~77_combout\ = (\qd1|position\(22) & (\qd1|position[21]~76\ $ (GND))) # (!\qd1|position\(22) & (!\qd1|position[21]~76\ & VCC))
-- \qd1|position[22]~78\ = CARRY((\qd1|position\(22) & !\qd1|position[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(22),
	datad => VCC,
	cin => \qd1|position[21]~76\,
	combout => \qd1|position[22]~77_combout\,
	cout => \qd1|position[22]~78\);

-- Location: LCCOMB_X44_Y10_N12
\qd1|Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~56_combout\ = (\qd1|position\(22) & ((GND) # (!\qd1|Add3~53\))) # (!\qd1|position\(22) & (\qd1|Add3~53\ $ (GND)))
-- \qd1|Add3~57\ = CARRY((\qd1|position\(22)) # (!\qd1|Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(22),
	datad => VCC,
	cin => \qd1|Add3~53\,
	combout => \qd1|Add3~56_combout\,
	cout => \qd1|Add3~57\);

-- Location: LCCOMB_X45_Y10_N20
\qd1|Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~58_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~56_combout\,
	combout => \qd1|Add3~58_combout\);

-- Location: FF_X43_Y10_N13
\qd1|position[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[22]~77_combout\,
	asdata => \qd1|Add3~58_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(22));

-- Location: LCCOMB_X43_Y10_N14
\qd1|position[23]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[23]~79_combout\ = (\qd1|position\(23) & (!\qd1|position[22]~78\)) # (!\qd1|position\(23) & ((\qd1|position[22]~78\) # (GND)))
-- \qd1|position[23]~80\ = CARRY((!\qd1|position[22]~78\) # (!\qd1|position\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(23),
	datad => VCC,
	cin => \qd1|position[22]~78\,
	combout => \qd1|position[23]~79_combout\,
	cout => \qd1|position[23]~80\);

-- Location: LCCOMB_X44_Y10_N14
\qd1|Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~60_combout\ = (\qd1|position\(23) & (\qd1|Add3~57\ & VCC)) # (!\qd1|position\(23) & (!\qd1|Add3~57\))
-- \qd1|Add3~61\ = CARRY((!\qd1|position\(23) & !\qd1|Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(23),
	datad => VCC,
	cin => \qd1|Add3~57\,
	combout => \qd1|Add3~60_combout\,
	cout => \qd1|Add3~61\);

-- Location: LCCOMB_X42_Y10_N20
\qd1|Add3~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~62_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~60_combout\,
	combout => \qd1|Add3~62_combout\);

-- Location: FF_X43_Y10_N15
\qd1|position[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[23]~79_combout\,
	asdata => \qd1|Add3~62_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(23));

-- Location: LCCOMB_X43_Y10_N16
\qd1|position[24]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[24]~81_combout\ = (\qd1|position\(24) & (\qd1|position[23]~80\ $ (GND))) # (!\qd1|position\(24) & (!\qd1|position[23]~80\ & VCC))
-- \qd1|position[24]~82\ = CARRY((\qd1|position\(24) & !\qd1|position[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(24),
	datad => VCC,
	cin => \qd1|position[23]~80\,
	combout => \qd1|position[24]~81_combout\,
	cout => \qd1|position[24]~82\);

-- Location: LCCOMB_X44_Y10_N16
\qd1|Add3~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~64_combout\ = (\qd1|position\(24) & ((GND) # (!\qd1|Add3~61\))) # (!\qd1|position\(24) & (\qd1|Add3~61\ $ (GND)))
-- \qd1|Add3~65\ = CARRY((\qd1|position\(24)) # (!\qd1|Add3~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(24),
	datad => VCC,
	cin => \qd1|Add3~61\,
	combout => \qd1|Add3~64_combout\,
	cout => \qd1|Add3~65\);

-- Location: LCCOMB_X42_Y10_N2
\qd1|Add3~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~66_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~64_combout\,
	combout => \qd1|Add3~66_combout\);

-- Location: FF_X43_Y10_N17
\qd1|position[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[24]~81_combout\,
	asdata => \qd1|Add3~66_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(24));

-- Location: LCCOMB_X43_Y10_N18
\qd1|position[25]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[25]~83_combout\ = (\qd1|position\(25) & (!\qd1|position[24]~82\)) # (!\qd1|position\(25) & ((\qd1|position[24]~82\) # (GND)))
-- \qd1|position[25]~84\ = CARRY((!\qd1|position[24]~82\) # (!\qd1|position\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(25),
	datad => VCC,
	cin => \qd1|position[24]~82\,
	combout => \qd1|position[25]~83_combout\,
	cout => \qd1|position[25]~84\);

-- Location: LCCOMB_X44_Y10_N18
\qd1|Add3~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~68_combout\ = (\qd1|position\(25) & (\qd1|Add3~65\ & VCC)) # (!\qd1|position\(25) & (!\qd1|Add3~65\))
-- \qd1|Add3~69\ = CARRY((!\qd1|position\(25) & !\qd1|Add3~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(25),
	datad => VCC,
	cin => \qd1|Add3~65\,
	combout => \qd1|Add3~68_combout\,
	cout => \qd1|Add3~69\);

-- Location: LCCOMB_X42_Y10_N4
\qd1|Add3~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~70_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~68_combout\,
	combout => \qd1|Add3~70_combout\);

-- Location: FF_X43_Y10_N19
\qd1|position[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[25]~83_combout\,
	asdata => \qd1|Add3~70_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(25));

-- Location: LCCOMB_X43_Y10_N20
\qd1|position[26]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[26]~85_combout\ = (\qd1|position\(26) & (\qd1|position[25]~84\ $ (GND))) # (!\qd1|position\(26) & (!\qd1|position[25]~84\ & VCC))
-- \qd1|position[26]~86\ = CARRY((\qd1|position\(26) & !\qd1|position[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(26),
	datad => VCC,
	cin => \qd1|position[25]~84\,
	combout => \qd1|position[26]~85_combout\,
	cout => \qd1|position[26]~86\);

-- Location: LCCOMB_X44_Y10_N20
\qd1|Add3~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~72_combout\ = (\qd1|position\(26) & ((GND) # (!\qd1|Add3~69\))) # (!\qd1|position\(26) & (\qd1|Add3~69\ $ (GND)))
-- \qd1|Add3~73\ = CARRY((\qd1|position\(26)) # (!\qd1|Add3~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(26),
	datad => VCC,
	cin => \qd1|Add3~69\,
	combout => \qd1|Add3~72_combout\,
	cout => \qd1|Add3~73\);

-- Location: LCCOMB_X42_Y10_N22
\qd1|Add3~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~74_combout\ = (\qd1|Add3~72_combout\ & \qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~72_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~74_combout\);

-- Location: FF_X43_Y10_N21
\qd1|position[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[26]~85_combout\,
	asdata => \qd1|Add3~74_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(26));

-- Location: LCCOMB_X43_Y10_N22
\qd1|position[27]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[27]~87_combout\ = (\qd1|position\(27) & (!\qd1|position[26]~86\)) # (!\qd1|position\(27) & ((\qd1|position[26]~86\) # (GND)))
-- \qd1|position[27]~88\ = CARRY((!\qd1|position[26]~86\) # (!\qd1|position\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(27),
	datad => VCC,
	cin => \qd1|position[26]~86\,
	combout => \qd1|position[27]~87_combout\,
	cout => \qd1|position[27]~88\);

-- Location: LCCOMB_X44_Y10_N22
\qd1|Add3~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~76_combout\ = (\qd1|position\(27) & (\qd1|Add3~73\ & VCC)) # (!\qd1|position\(27) & (!\qd1|Add3~73\))
-- \qd1|Add3~77\ = CARRY((!\qd1|position\(27) & !\qd1|Add3~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(27),
	datad => VCC,
	cin => \qd1|Add3~73\,
	combout => \qd1|Add3~76_combout\,
	cout => \qd1|Add3~77\);

-- Location: LCCOMB_X42_Y10_N16
\qd1|Add3~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~78_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~76_combout\,
	combout => \qd1|Add3~78_combout\);

-- Location: FF_X43_Y10_N23
\qd1|position[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[27]~87_combout\,
	asdata => \qd1|Add3~78_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(27));

-- Location: LCCOMB_X43_Y10_N24
\qd1|position[28]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[28]~89_combout\ = (\qd1|position\(28) & (\qd1|position[27]~88\ $ (GND))) # (!\qd1|position\(28) & (!\qd1|position[27]~88\ & VCC))
-- \qd1|position[28]~90\ = CARRY((\qd1|position\(28) & !\qd1|position[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(28),
	datad => VCC,
	cin => \qd1|position[27]~88\,
	combout => \qd1|position[28]~89_combout\,
	cout => \qd1|position[28]~90\);

-- Location: LCCOMB_X44_Y10_N24
\qd1|Add3~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~80_combout\ = (\qd1|position\(28) & ((GND) # (!\qd1|Add3~77\))) # (!\qd1|position\(28) & (\qd1|Add3~77\ $ (GND)))
-- \qd1|Add3~81\ = CARRY((\qd1|position\(28)) # (!\qd1|Add3~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(28),
	datad => VCC,
	cin => \qd1|Add3~77\,
	combout => \qd1|Add3~80_combout\,
	cout => \qd1|Add3~81\);

-- Location: LCCOMB_X42_Y10_N26
\qd1|Add3~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~82_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~80_combout\,
	combout => \qd1|Add3~82_combout\);

-- Location: FF_X43_Y10_N25
\qd1|position[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[28]~89_combout\,
	asdata => \qd1|Add3~82_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(28));

-- Location: LCCOMB_X43_Y10_N26
\qd1|position[29]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[29]~91_combout\ = (\qd1|position\(29) & (!\qd1|position[28]~90\)) # (!\qd1|position\(29) & ((\qd1|position[28]~90\) # (GND)))
-- \qd1|position[29]~92\ = CARRY((!\qd1|position[28]~90\) # (!\qd1|position\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(29),
	datad => VCC,
	cin => \qd1|position[28]~90\,
	combout => \qd1|position[29]~91_combout\,
	cout => \qd1|position[29]~92\);

-- Location: LCCOMB_X44_Y10_N26
\qd1|Add3~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~84_combout\ = (\qd1|position\(29) & (\qd1|Add3~81\ & VCC)) # (!\qd1|position\(29) & (!\qd1|Add3~81\))
-- \qd1|Add3~85\ = CARRY((!\qd1|position\(29) & !\qd1|Add3~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(29),
	datad => VCC,
	cin => \qd1|Add3~81\,
	combout => \qd1|Add3~84_combout\,
	cout => \qd1|Add3~85\);

-- Location: LCCOMB_X42_Y10_N0
\qd1|Add3~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~86_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~84_combout\,
	combout => \qd1|Add3~86_combout\);

-- Location: FF_X43_Y10_N27
\qd1|position[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[29]~91_combout\,
	asdata => \qd1|Add3~86_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(29));

-- Location: LCCOMB_X43_Y10_N28
\qd1|position[30]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[30]~93_combout\ = (\qd1|position\(30) & (\qd1|position[29]~92\ $ (GND))) # (!\qd1|position\(30) & (!\qd1|position[29]~92\ & VCC))
-- \qd1|position[30]~94\ = CARRY((\qd1|position\(30) & !\qd1|position[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(30),
	datad => VCC,
	cin => \qd1|position[29]~92\,
	combout => \qd1|position[30]~93_combout\,
	cout => \qd1|position[30]~94\);

-- Location: LCCOMB_X44_Y10_N28
\qd1|Add3~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~88_combout\ = (\qd1|position\(30) & ((GND) # (!\qd1|Add3~85\))) # (!\qd1|position\(30) & (\qd1|Add3~85\ $ (GND)))
-- \qd1|Add3~89\ = CARRY((\qd1|position\(30)) # (!\qd1|Add3~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \qd1|position\(30),
	datad => VCC,
	cin => \qd1|Add3~85\,
	combout => \qd1|Add3~88_combout\,
	cout => \qd1|Add3~89\);

-- Location: LCCOMB_X45_Y10_N10
\qd1|Add3~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~90_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~88_combout\,
	combout => \qd1|Add3~90_combout\);

-- Location: FF_X43_Y10_N29
\qd1|position[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[30]~93_combout\,
	asdata => \qd1|Add3~90_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(30));

-- Location: LCCOMB_X43_Y10_N30
\qd1|position[31]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|position[31]~95_combout\ = \qd1|position\(31) $ (\qd1|position[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(31),
	cin => \qd1|position[30]~94\,
	combout => \qd1|position[31]~95_combout\);

-- Location: LCCOMB_X44_Y10_N30
\qd1|Add3~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~92_combout\ = \qd1|Add3~89\ $ (!\qd1|position\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \qd1|position\(31),
	cin => \qd1|Add3~89\,
	combout => \qd1|Add3~92_combout\);

-- Location: LCCOMB_X42_Y10_N6
\qd1|Add3~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~94_combout\ = (\qd1|LessThan1~4_combout\ & \qd1|Add3~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|LessThan1~4_combout\,
	datad => \qd1|Add3~92_combout\,
	combout => \qd1|Add3~94_combout\);

-- Location: FF_X43_Y10_N31
\qd1|position[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[31]~95_combout\,
	asdata => \qd1|Add3~94_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(31));

-- Location: LCCOMB_X42_Y11_N12
\qd1|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan1~2_combout\ = (\qd1|position\(2)) # ((\qd1|position\(9)) # ((\qd1|position\(4)) # (\qd1|position\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(2),
	datab => \qd1|position\(9),
	datac => \qd1|position\(4),
	datad => \qd1|position\(3),
	combout => \qd1|LessThan1~2_combout\);

-- Location: LCCOMB_X41_Y10_N18
\qd1|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan1~3_combout\ = (\qd1|position\(10)) # ((\qd1|position\(11)) # ((\qd1|LessThan1~2_combout\) # (\qd1|position\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(10),
	datab => \qd1|position\(11),
	datac => \qd1|LessThan1~2_combout\,
	datad => \qd1|position\(14),
	combout => \qd1|LessThan1~3_combout\);

-- Location: LCCOMB_X42_Y11_N28
\qd1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan1~0_combout\ = (\qd1|position\(1)) # ((\qd1|position\(0)) # ((\qd1|position\(12)) # (\qd1|position\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(1),
	datab => \qd1|position\(0),
	datac => \qd1|position\(12),
	datad => \qd1|position\(13),
	combout => \qd1|LessThan1~0_combout\);

-- Location: LCCOMB_X41_Y10_N24
\qd1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan1~1_combout\ = (\qd1|LessThan1~0_combout\) # (!\qd1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|LessThan0~0_combout\,
	datad => \qd1|LessThan1~0_combout\,
	combout => \qd1|LessThan1~1_combout\);

-- Location: LCCOMB_X41_Y10_N14
\qd1|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|LessThan1~4_combout\ = (!\qd1|position\(31) & ((\qd1|LessThan1~3_combout\) # ((\qd1|LessThan1~1_combout\) # (!\qd1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(31),
	datab => \qd1|LessThan1~3_combout\,
	datac => \qd1|LessThan0~5_combout\,
	datad => \qd1|LessThan1~1_combout\,
	combout => \qd1|LessThan1~4_combout\);

-- Location: LCCOMB_X42_Y10_N24
\qd1|Add3~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qd1|Add3~35_combout\ = (\qd1|Add3~0_combout\) # (!\qd1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \qd1|Add3~0_combout\,
	datad => \qd1|LessThan1~4_combout\,
	combout => \qd1|Add3~35_combout\);

-- Location: FF_X43_Y11_N1
\qd1|position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \qd1|position[0]~32_combout\,
	asdata => \qd1|Add3~35_combout\,
	sclr => \qd1|position[23]~66_combout\,
	sload => \qd1|ALT_INV_direction~0_combout\,
	ena => \qd1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qd1|position\(0));

-- Location: LCCOMB_X53_Y10_N14
\gpmc_driver|ram~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~30_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(0)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(0),
	datab => \qd1|position\(0),
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~30_combout\);

-- Location: LCCOMB_X49_Y10_N10
\gpmc_driver|ram[0][9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[0][9]~31_combout\ = (\gpmc_driver|gpmc_ncs~q\) # ((!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|Decoder0~10_combout\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|Decoder0~10_combout\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[0][9]~31_combout\);

-- Location: FF_X53_Y10_N15
\gpmc_driver|ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~30_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][0]~q\);

-- Location: LCCOMB_X53_Y10_N0
\gpmc_driver|ram~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~28_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(16)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(0),
	datac => \qd1|position\(16),
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~28_combout\);

-- Location: LCCOMB_X54_Y10_N8
\gpmc_driver|ram[1][1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][1]~29_combout\ = (\gpmc_driver|gpmc_ncs~q\) # ((!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|Decoder0~7_combout\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|Decoder0~7_combout\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[1][1]~29_combout\);

-- Location: FF_X53_Y10_N1
\gpmc_driver|ram[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~28_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][0]~q\);

-- Location: LCCOMB_X53_Y10_N28
\gpmc_driver|gpmc_data_out~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~14_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[1][0]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[0][0]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|ram[1][0]~q\,
	combout => \gpmc_driver|gpmc_data_out~14_combout\);

-- Location: LCCOMB_X52_Y10_N2
\gpmc_driver|gpmc_data_out~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~15_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~14_combout\ & ((\gpmc_driver|ram[3][0]~q\))) # (!\gpmc_driver|gpmc_data_out~14_combout\ & (\gpmc_driver|ram[2][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[2][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[3][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~14_combout\,
	combout => \gpmc_driver|gpmc_data_out~15_combout\);

-- Location: LCCOMB_X54_Y11_N24
\gpmc_driver|ram[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[5][0]~feeder_combout\);

-- Location: LCCOMB_X54_Y10_N16
\gpmc_driver|ram[5][0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][0]~24_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|ram[15][0]~0_combout\ & (!\gpmc_driver|gpmc_ncs~q\ & \gpmc_driver|Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|ram[15][0]~0_combout\,
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|Decoder0~6_combout\,
	combout => \gpmc_driver|ram[5][0]~24_combout\);

-- Location: FF_X54_Y11_N25
\gpmc_driver|ram[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][0]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][0]~q\);

-- Location: LCCOMB_X51_Y7_N8
\gpmc_driver|ram[7][0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][0]~25_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|Decoder0~13_combout\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|Decoder0~13_combout\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[7][0]~25_combout\);

-- Location: FF_X51_Y11_N31
\gpmc_driver|ram[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][0]~q\);

-- Location: LCCOMB_X54_Y8_N12
\gpmc_driver|ram[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[6][0]~feeder_combout\);

-- Location: LCCOMB_X53_Y7_N12
\gpmc_driver|ram[6][8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][8]~2_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|Decoder0~1_combout\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|Decoder0~1_combout\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[6][8]~2_combout\);

-- Location: FF_X54_Y8_N13
\gpmc_driver|ram[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][0]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][0]~q\);

-- Location: LCCOMB_X52_Y9_N12
\gpmc_driver|ram[4][8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[4][8]~1_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (\gpmc_driver|Decoder0~0_combout\ & (!\gpmc_driver|gpmc_ncs~q\ & \gpmc_driver|ram[15][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|Decoder0~0_combout\,
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|ram[15][0]~0_combout\,
	combout => \gpmc_driver|ram[4][8]~1_combout\);

-- Location: FF_X51_Y11_N21
\gpmc_driver|ram[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][0]~q\);

-- Location: LCCOMB_X51_Y11_N20
\gpmc_driver|gpmc_data_out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~12_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[6][0]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[4][0]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][0]~q\,
	datac => \gpmc_driver|ram[4][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~12_combout\);

-- Location: LCCOMB_X51_Y11_N30
\gpmc_driver|gpmc_data_out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~13_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~12_combout\ & ((\gpmc_driver|ram[7][0]~q\))) # (!\gpmc_driver|gpmc_data_out~12_combout\ & (\gpmc_driver|ram[5][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][0]~q\,
	datac => \gpmc_driver|ram[7][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~12_combout\,
	combout => \gpmc_driver|gpmc_data_out~13_combout\);

-- Location: LCCOMB_X52_Y10_N28
\gpmc_driver|gpmc_data_out~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~16_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~13_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~15_combout\,
	datac => \gpmc_driver|gpmc_data_out~13_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~16_combout\);

-- Location: LCCOMB_X52_Y7_N18
\gpmc_driver|gpmc_data_out~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~19_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~16_combout\ & (\gpmc_driver|gpmc_data_out~18_combout\)) # (!\gpmc_driver|gpmc_data_out~16_combout\ & ((\gpmc_driver|gpmc_data_out~11_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~18_combout\,
	datac => \gpmc_driver|gpmc_data_out~11_combout\,
	datad => \gpmc_driver|gpmc_data_out~16_combout\,
	combout => \gpmc_driver|gpmc_data_out~19_combout\);

-- Location: LCCOMB_X52_Y7_N16
\gpmc_driver|gpmc_data_out~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~20_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~19_combout\) # ((\gpmc_driver|gpmc_data_out~9_combout\ & \gpmc_driver|ram[31][0]~3_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (\gpmc_driver|gpmc_data_out~9_combout\ & (\gpmc_driver|ram[31][0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|gpmc_data_out~9_combout\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_data_out~19_combout\,
	combout => \gpmc_driver|gpmc_data_out~20_combout\);

-- Location: IOIBUF_X67_Y14_N22
\GPMC_nOE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_nOE,
	o => \GPMC_nOE~input_o\);

-- Location: FF_X54_Y10_N25
\gpmc_driver|gpmc_nre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_nOE~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_nre~q\);

-- Location: LCCOMB_X54_Y10_N24
\gpmc_driver|gpmc_data_out[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[0]~21_combout\ = (\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_nre~q\ & !\gpmc_driver|gpmc_ncs~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|gpmc_nre~q\,
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|gpmc_data_out[0]~21_combout\);

-- Location: FF_X52_Y7_N17
\gpmc_driver|gpmc_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~20_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(0));

-- Location: LCCOMB_X62_Y8_N16
\gpmc_driver|GPMC_DATA~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|GPMC_DATA~16_combout\ = (!\GPMC_nOE~input_o\ & !\GPMC_nCS6~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPMC_nOE~input_o\,
	datad => \GPMC_nCS6~input_o\,
	combout => \gpmc_driver|GPMC_DATA~16_combout\);

-- Location: IOIBUF_X38_Y0_N22
\GPMC_DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(1),
	o => \GPMC_DATA[1]~input_o\);

-- Location: FF_X49_Y6_N21
\gpmc_driver|gpmc_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(1));

-- Location: LCCOMB_X49_Y8_N22
\gpmc_driver|ram[4][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[4][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[4][1]~feeder_combout\);

-- Location: FF_X49_Y8_N23
\gpmc_driver|ram[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[4][1]~feeder_combout\,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][1]~q\);

-- Location: FF_X50_Y8_N1
\gpmc_driver|ram[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][1]~q\);

-- Location: LCCOMB_X50_Y8_N0
\gpmc_driver|gpmc_data_out~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~32_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][1]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[4][1]~q\,
	datac => \gpmc_driver|ram[5][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~32_combout\);

-- Location: FF_X50_Y8_N11
\gpmc_driver|ram[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][1]~q\);

-- Location: LCCOMB_X49_Y8_N12
\gpmc_driver|ram[6][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[6][1]~feeder_combout\);

-- Location: FF_X49_Y8_N13
\gpmc_driver|ram[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][1]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][1]~q\);

-- Location: LCCOMB_X50_Y8_N10
\gpmc_driver|gpmc_data_out~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~33_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~32_combout\ & (\gpmc_driver|ram[7][1]~q\)) # (!\gpmc_driver|gpmc_data_out~32_combout\ & ((\gpmc_driver|ram[6][1]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~32_combout\,
	datac => \gpmc_driver|ram[7][1]~q\,
	datad => \gpmc_driver|ram[6][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~33_combout\);

-- Location: FF_X50_Y7_N15
\gpmc_driver|ram[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][1]~q\);

-- Location: LCCOMB_X50_Y7_N0
\gpmc_driver|ram[13][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[13][1]~feeder_combout\);

-- Location: FF_X50_Y7_N1
\gpmc_driver|ram[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][1]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][1]~q\);

-- Location: LCCOMB_X50_Y7_N14
\gpmc_driver|gpmc_data_out~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~39_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|ram[13][1]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[12][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][1]~q\,
	datad => \gpmc_driver|ram[13][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~39_combout\);

-- Location: FF_X49_Y7_N13
\gpmc_driver|ram[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][1]~q\);

-- Location: LCCOMB_X48_Y11_N14
\gpmc_driver|ram[14][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[14][1]~feeder_combout\);

-- Location: FF_X48_Y11_N15
\gpmc_driver|ram[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][1]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][1]~q\);

-- Location: LCCOMB_X49_Y7_N12
\gpmc_driver|gpmc_data_out~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~40_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~39_combout\ & (\gpmc_driver|ram[15][1]~q\)) # (!\gpmc_driver|gpmc_data_out~39_combout\ & ((\gpmc_driver|ram[14][1]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~39_combout\,
	datac => \gpmc_driver|ram[15][1]~q\,
	datad => \gpmc_driver|ram[14][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~40_combout\);

-- Location: LCCOMB_X56_Y10_N2
\QD2|counter[17]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[17]~67_combout\ = (\QD2|flipflop\(0) & ((\QD2|counter\(17) & (\QD2|counter[16]~66\ & VCC)) # (!\QD2|counter\(17) & (!\QD2|counter[16]~66\)))) # (!\QD2|flipflop\(0) & ((\QD2|counter\(17) & (!\QD2|counter[16]~66\)) # (!\QD2|counter\(17) & 
-- ((\QD2|counter[16]~66\) # (GND)))))
-- \QD2|counter[17]~68\ = CARRY((\QD2|flipflop\(0) & (!\QD2|counter\(17) & !\QD2|counter[16]~66\)) # (!\QD2|flipflop\(0) & ((!\QD2|counter[16]~66\) # (!\QD2|counter\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(17),
	datad => VCC,
	cin => \QD2|counter[16]~66\,
	combout => \QD2|counter[17]~67_combout\,
	cout => \QD2|counter[17]~68\);

-- Location: FF_X56_Y10_N3
\QD2|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[17]~67_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(17));

-- Location: LCCOMB_X54_Y11_N6
\gpmc_driver|ram~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~41_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(17)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(1),
	datad => \QD2|counter\(17),
	combout => \gpmc_driver|ram~41_combout\);

-- Location: FF_X54_Y11_N7
\gpmc_driver|ram[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~41_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][1]~q\);

-- Location: LCCOMB_X48_Y10_N0
\gpmc_driver|ram~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~38_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(17)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_data_in\(1),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \qd1|position\(17),
	combout => \gpmc_driver|ram~38_combout\);

-- Location: FF_X48_Y10_N1
\gpmc_driver|ram[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~38_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][1]~q\);

-- Location: LCCOMB_X48_Y11_N0
\gpmc_driver|ram~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~40_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(1)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_data_in\(1),
	datac => \qd1|position\(1),
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~40_combout\);

-- Location: FF_X48_Y11_N1
\gpmc_driver|ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~40_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][1]~q\);

-- Location: LCCOMB_X55_Y11_N12
\gpmc_driver|ram~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~39_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(1)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(1),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(1),
	combout => \gpmc_driver|ram~39_combout\);

-- Location: FF_X55_Y11_N13
\gpmc_driver|ram[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~39_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][1]~q\);

-- Location: LCCOMB_X51_Y11_N16
\gpmc_driver|gpmc_data_out~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~36_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[2][1]~q\) # (\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[0][1]~q\ & ((!\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[0][1]~q\,
	datac => \gpmc_driver|ram[2][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~36_combout\);

-- Location: LCCOMB_X51_Y11_N14
\gpmc_driver|gpmc_data_out~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~37_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~36_combout\ & (\gpmc_driver|ram[3][1]~q\)) # (!\gpmc_driver|gpmc_data_out~36_combout\ & ((\gpmc_driver|ram[1][1]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[3][1]~q\,
	datac => \gpmc_driver|ram[1][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~36_combout\,
	combout => \gpmc_driver|gpmc_data_out~37_combout\);

-- Location: LCCOMB_X56_Y8_N0
\gpmc_driver|ram[9][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[9][1]~feeder_combout\);

-- Location: FF_X56_Y8_N1
\gpmc_driver|ram[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][1]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][1]~q\);

-- Location: FF_X55_Y9_N15
\gpmc_driver|ram[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][1]~q\);

-- Location: LCCOMB_X54_Y9_N24
\gpmc_driver|ram[10][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[10][1]~feeder_combout\);

-- Location: FF_X54_Y9_N25
\gpmc_driver|ram[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][1]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][1]~q\);

-- Location: FF_X55_Y9_N29
\gpmc_driver|ram[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][1]~q\);

-- Location: LCCOMB_X55_Y9_N28
\gpmc_driver|gpmc_data_out~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~34_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[10][1]~q\,
	datac => \gpmc_driver|ram[8][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~34_combout\);

-- Location: LCCOMB_X55_Y9_N14
\gpmc_driver|gpmc_data_out~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~35_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~34_combout\ & ((\gpmc_driver|ram[11][1]~q\))) # (!\gpmc_driver|gpmc_data_out~34_combout\ & (\gpmc_driver|ram[9][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][1]~q\,
	datac => \gpmc_driver|ram[11][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~34_combout\,
	combout => \gpmc_driver|gpmc_data_out~35_combout\);

-- Location: LCCOMB_X52_Y9_N18
\gpmc_driver|gpmc_data_out~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~38_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_data_out~35_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|gpmc_data_out~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~37_combout\,
	datad => \gpmc_driver|gpmc_data_out~35_combout\,
	combout => \gpmc_driver|gpmc_data_out~38_combout\);

-- Location: LCCOMB_X53_Y9_N22
\gpmc_driver|gpmc_data_out~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~41_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~38_combout\ & ((\gpmc_driver|gpmc_data_out~40_combout\))) # (!\gpmc_driver|gpmc_data_out~38_combout\ & (\gpmc_driver|gpmc_data_out~33_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~33_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~40_combout\,
	datad => \gpmc_driver|gpmc_data_out~38_combout\,
	combout => \gpmc_driver|gpmc_data_out~41_combout\);

-- Location: LCCOMB_X54_Y7_N30
\gpmc_driver|ram[29][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[29][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[29][1]~feeder_combout\);

-- Location: FF_X54_Y7_N31
\gpmc_driver|ram[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[29][1]~feeder_combout\,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][1]~q\);

-- Location: FF_X54_Y7_N1
\gpmc_driver|ram[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][1]~q\);

-- Location: LCCOMB_X56_Y7_N10
\gpmc_driver|ram[25][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[25][1]~feeder_combout\);

-- Location: FF_X56_Y7_N11
\gpmc_driver|ram[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][1]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][1]~q\);

-- Location: FF_X55_Y7_N5
\gpmc_driver|ram[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][1]~q\);

-- Location: LCCOMB_X55_Y7_N4
\gpmc_driver|gpmc_data_out~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~22_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][1]~q\,
	datac => \gpmc_driver|ram[17][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~22_combout\);

-- Location: LCCOMB_X54_Y7_N0
\gpmc_driver|gpmc_data_out~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~23_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~22_combout\ & (\gpmc_driver|ram[29][1]~q\)) # (!\gpmc_driver|gpmc_data_out~22_combout\ & ((\gpmc_driver|ram[21][1]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[29][1]~q\,
	datac => \gpmc_driver|ram[21][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~22_combout\,
	combout => \gpmc_driver|gpmc_data_out~23_combout\);

-- Location: LCCOMB_X53_Y11_N4
\gpmc_driver|ram[23][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[23][1]~feeder_combout\);

-- Location: FF_X53_Y11_N5
\gpmc_driver|ram[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][1]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][1]~q\);

-- Location: FF_X52_Y11_N9
\gpmc_driver|ram[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][1]~q\);

-- Location: LCCOMB_X52_Y11_N26
\gpmc_driver|ram[27][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[27][1]~feeder_combout\);

-- Location: FF_X52_Y11_N27
\gpmc_driver|ram[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][1]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][1]~q\);

-- Location: FF_X53_Y11_N7
\gpmc_driver|ram[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][1]~q\);

-- Location: LCCOMB_X53_Y11_N6
\gpmc_driver|gpmc_data_out~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~29_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[27][1]~q\,
	datac => \gpmc_driver|ram[19][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~29_combout\);

-- Location: LCCOMB_X52_Y11_N8
\gpmc_driver|gpmc_data_out~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~30_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~29_combout\ & ((\gpmc_driver|ram[31][1]~q\))) # (!\gpmc_driver|gpmc_data_out~29_combout\ & (\gpmc_driver|ram[23][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][1]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~29_combout\,
	combout => \gpmc_driver|gpmc_data_out~30_combout\);

-- Location: FF_X51_Y8_N5
\gpmc_driver|ram[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][1]~q\);

-- Location: LCCOMB_X50_Y6_N24
\gpmc_driver|ram[20][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[20][1]~feeder_combout\);

-- Location: FF_X50_Y6_N25
\gpmc_driver|ram[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][1]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][1]~q\);

-- Location: LCCOMB_X51_Y8_N4
\gpmc_driver|gpmc_data_out~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~26_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][1]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[16][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][1]~q\,
	datad => \gpmc_driver|ram[20][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~26_combout\);

-- Location: FF_X51_Y8_N27
\gpmc_driver|ram[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][1]~q\);

-- Location: LCCOMB_X50_Y9_N16
\gpmc_driver|ram[24][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[24][1]~feeder_combout\);

-- Location: FF_X50_Y9_N17
\gpmc_driver|ram[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][1]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][1]~q\);

-- Location: LCCOMB_X51_Y8_N26
\gpmc_driver|gpmc_data_out~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~27_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~26_combout\ & (\gpmc_driver|ram[28][1]~q\)) # (!\gpmc_driver|gpmc_data_out~26_combout\ & ((\gpmc_driver|ram[24][1]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~26_combout\,
	datac => \gpmc_driver|ram[28][1]~q\,
	datad => \gpmc_driver|ram[24][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~27_combout\);

-- Location: LCCOMB_X53_Y6_N8
\gpmc_driver|ram[22][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[22][1]~feeder_combout\);

-- Location: FF_X53_Y6_N9
\gpmc_driver|ram[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][1]~feeder_combout\,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][1]~q\);

-- Location: FF_X54_Y6_N27
\gpmc_driver|ram[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][1]~q\);

-- Location: LCCOMB_X54_Y6_N26
\gpmc_driver|gpmc_data_out~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~24_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][1]~q\,
	datac => \gpmc_driver|ram[18][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~24_combout\);

-- Location: FF_X54_Y6_N5
\gpmc_driver|ram[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][1]~q\);

-- Location: LCCOMB_X50_Y6_N10
\gpmc_driver|ram[26][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[26][1]~feeder_combout\);

-- Location: FF_X50_Y6_N11
\gpmc_driver|ram[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][1]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][1]~q\);

-- Location: LCCOMB_X54_Y6_N4
\gpmc_driver|gpmc_data_out~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~25_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~24_combout\ & (\gpmc_driver|ram[30][1]~q\)) # (!\gpmc_driver|gpmc_data_out~24_combout\ & ((\gpmc_driver|ram[26][1]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~24_combout\,
	datac => \gpmc_driver|ram[30][1]~q\,
	datad => \gpmc_driver|ram[26][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~25_combout\);

-- Location: LCCOMB_X53_Y9_N18
\gpmc_driver|gpmc_data_out~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~28_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~25_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|gpmc_data_out~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~27_combout\,
	datad => \gpmc_driver|gpmc_data_out~25_combout\,
	combout => \gpmc_driver|gpmc_data_out~28_combout\);

-- Location: LCCOMB_X53_Y9_N24
\gpmc_driver|gpmc_data_out~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~31_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~28_combout\ & ((\gpmc_driver|gpmc_data_out~30_combout\))) # (!\gpmc_driver|gpmc_data_out~28_combout\ & (\gpmc_driver|gpmc_data_out~23_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~23_combout\,
	datab => \gpmc_driver|gpmc_data_out~30_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_data_out~28_combout\,
	combout => \gpmc_driver|gpmc_data_out~31_combout\);

-- Location: LCCOMB_X53_Y9_N12
\gpmc_driver|gpmc_data_out~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~42_combout\ = (\gpmc_driver|ram[31][0]~3_combout\ & ((\gpmc_driver|gpmc_data_out~31_combout\) # ((\gpmc_driver|ram[15][0]~0_combout\ & \gpmc_driver|gpmc_data_out~41_combout\)))) # (!\gpmc_driver|ram[31][0]~3_combout\ & 
-- (\gpmc_driver|ram[15][0]~0_combout\ & (\gpmc_driver|gpmc_data_out~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[31][0]~3_combout\,
	datab => \gpmc_driver|ram[15][0]~0_combout\,
	datac => \gpmc_driver|gpmc_data_out~41_combout\,
	datad => \gpmc_driver|gpmc_data_out~31_combout\,
	combout => \gpmc_driver|gpmc_data_out~42_combout\);

-- Location: FF_X53_Y9_N13
\gpmc_driver|gpmc_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~42_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(1));

-- Location: IOIBUF_X41_Y0_N29
\GPMC_DATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(2),
	o => \GPMC_DATA[2]~input_o\);

-- Location: LCCOMB_X46_Y7_N20
\gpmc_driver|gpmc_data_in[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[2]~feeder_combout\ = \GPMC_DATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[2]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[2]~feeder_combout\);

-- Location: FF_X46_Y7_N21
\gpmc_driver|gpmc_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(2));

-- Location: LCCOMB_X49_Y7_N2
\gpmc_driver|ram[14][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[14][2]~feeder_combout\);

-- Location: FF_X49_Y7_N3
\gpmc_driver|ram[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][2]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][2]~q\);

-- Location: FF_X50_Y7_N31
\gpmc_driver|ram[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][2]~q\);

-- Location: LCCOMB_X50_Y7_N30
\gpmc_driver|gpmc_data_out~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~60_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[14][2]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[12][2]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~60_combout\);

-- Location: FF_X49_Y7_N17
\gpmc_driver|ram[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][2]~q\);

-- Location: LCCOMB_X50_Y7_N16
\gpmc_driver|ram[13][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[13][2]~feeder_combout\);

-- Location: FF_X50_Y7_N17
\gpmc_driver|ram[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][2]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][2]~q\);

-- Location: LCCOMB_X49_Y7_N16
\gpmc_driver|gpmc_data_out~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~61_combout\ = (\gpmc_driver|gpmc_data_out~60_combout\ & (((\gpmc_driver|ram[15][2]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0)))) # (!\gpmc_driver|gpmc_data_out~60_combout\ & (\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[13][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~60_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][2]~q\,
	datad => \gpmc_driver|ram[13][2]~q\,
	combout => \gpmc_driver|gpmc_data_out~61_combout\);

-- Location: LCCOMB_X54_Y9_N6
\gpmc_driver|ram[10][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[10][2]~feeder_combout\);

-- Location: FF_X54_Y9_N7
\gpmc_driver|ram[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][2]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][2]~q\);

-- Location: FF_X55_Y9_N31
\gpmc_driver|ram[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][2]~q\);

-- Location: LCCOMB_X50_Y9_N20
\gpmc_driver|ram[9][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[9][2]~feeder_combout\);

-- Location: FF_X50_Y9_N21
\gpmc_driver|ram[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][2]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][2]~q\);

-- Location: FF_X55_Y9_N25
\gpmc_driver|ram[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][2]~q\);

-- Location: LCCOMB_X55_Y9_N24
\gpmc_driver|gpmc_data_out~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~53_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][2]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[8][2]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][2]~q\,
	datac => \gpmc_driver|ram[8][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~53_combout\);

-- Location: LCCOMB_X55_Y9_N30
\gpmc_driver|gpmc_data_out~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~54_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~53_combout\ & ((\gpmc_driver|ram[11][2]~q\))) # (!\gpmc_driver|gpmc_data_out~53_combout\ & (\gpmc_driver|ram[10][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][2]~q\,
	datac => \gpmc_driver|ram[11][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~53_combout\,
	combout => \gpmc_driver|gpmc_data_out~54_combout\);

-- Location: LCCOMB_X55_Y11_N22
\gpmc_driver|ram[5][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[5][2]~feeder_combout\);

-- Location: FF_X55_Y11_N23
\gpmc_driver|ram[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][2]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][2]~q\);

-- Location: FF_X51_Y11_N19
\gpmc_driver|ram[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][2]~q\);

-- Location: LCCOMB_X54_Y8_N14
\gpmc_driver|ram[6][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[6][2]~feeder_combout\);

-- Location: FF_X54_Y8_N15
\gpmc_driver|ram[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][2]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][2]~q\);

-- Location: FF_X51_Y11_N25
\gpmc_driver|ram[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][2]~q\);

-- Location: LCCOMB_X51_Y11_N24
\gpmc_driver|gpmc_data_out~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~55_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[6][2]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[4][2]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][2]~q\,
	datac => \gpmc_driver|ram[4][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~55_combout\);

-- Location: LCCOMB_X51_Y11_N18
\gpmc_driver|gpmc_data_out~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~56_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~55_combout\ & ((\gpmc_driver|ram[7][2]~q\))) # (!\gpmc_driver|gpmc_data_out~55_combout\ & (\gpmc_driver|ram[5][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][2]~q\,
	datac => \gpmc_driver|ram[7][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~55_combout\,
	combout => \gpmc_driver|gpmc_data_out~56_combout\);

-- Location: LCCOMB_X55_Y11_N0
\gpmc_driver|ram~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~42_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(2)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(2),
	datad => \QD2|counter\(2),
	combout => \gpmc_driver|ram~42_combout\);

-- Location: FF_X55_Y11_N1
\gpmc_driver|ram[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~42_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][2]~q\);

-- Location: LCCOMB_X56_Y10_N4
\QD2|counter[18]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[18]~69_combout\ = ((\QD2|flipflop\(0) $ (\QD2|counter\(18) $ (!\QD2|counter[17]~68\)))) # (GND)
-- \QD2|counter[18]~70\ = CARRY((\QD2|flipflop\(0) & ((\QD2|counter\(18)) # (!\QD2|counter[17]~68\))) # (!\QD2|flipflop\(0) & (\QD2|counter\(18) & !\QD2|counter[17]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(18),
	datad => VCC,
	cin => \QD2|counter[17]~68\,
	combout => \QD2|counter[18]~69_combout\,
	cout => \QD2|counter[18]~70\);

-- Location: FF_X56_Y10_N5
\QD2|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[18]~69_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(18));

-- Location: LCCOMB_X55_Y10_N12
\gpmc_driver|ram~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~45_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\QD2|counter\(18))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(18),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram~45_combout\);

-- Location: FF_X55_Y10_N13
\gpmc_driver|ram[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~45_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][2]~q\);

-- Location: LCCOMB_X48_Y11_N8
\gpmc_driver|ram~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~44_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(2)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(2),
	datac => \qd1|position\(2),
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~44_combout\);

-- Location: FF_X48_Y11_N9
\gpmc_driver|ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~44_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][2]~q\);

-- Location: LCCOMB_X48_Y10_N22
\gpmc_driver|ram~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~43_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(18)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_data_in\(2),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \qd1|position\(18),
	combout => \gpmc_driver|ram~43_combout\);

-- Location: FF_X48_Y10_N23
\gpmc_driver|ram[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~43_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][2]~q\);

-- Location: LCCOMB_X55_Y9_N0
\gpmc_driver|gpmc_data_out~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~57_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[1][2]~q\) # (\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[0][2]~q\ & ((!\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[0][2]~q\,
	datac => \gpmc_driver|ram[1][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~57_combout\);

-- Location: LCCOMB_X55_Y9_N22
\gpmc_driver|gpmc_data_out~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~58_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~57_combout\ & ((\gpmc_driver|ram[3][2]~q\))) # (!\gpmc_driver|gpmc_data_out~57_combout\ & (\gpmc_driver|ram[2][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[2][2]~q\,
	datac => \gpmc_driver|ram[3][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~57_combout\,
	combout => \gpmc_driver|gpmc_data_out~58_combout\);

-- Location: LCCOMB_X53_Y9_N16
\gpmc_driver|gpmc_data_out~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~59_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~56_combout\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((!\gpmc_driver|gpmc_addr_in\(3) & 
-- \gpmc_driver|gpmc_data_out~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~56_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_data_out~58_combout\,
	combout => \gpmc_driver|gpmc_data_out~59_combout\);

-- Location: LCCOMB_X53_Y9_N30
\gpmc_driver|gpmc_data_out~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~62_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~59_combout\ & (\gpmc_driver|gpmc_data_out~61_combout\)) # (!\gpmc_driver|gpmc_data_out~59_combout\ & ((\gpmc_driver|gpmc_data_out~54_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~61_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~54_combout\,
	datad => \gpmc_driver|gpmc_data_out~59_combout\,
	combout => \gpmc_driver|gpmc_data_out~62_combout\);

-- Location: LCCOMB_X54_Y6_N20
\gpmc_driver|ram[30][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[30][2]~feeder_combout\);

-- Location: FF_X54_Y6_N21
\gpmc_driver|ram[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[30][2]~feeder_combout\,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][2]~q\);

-- Location: FF_X53_Y6_N13
\gpmc_driver|ram[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][2]~q\);

-- Location: FF_X54_Y6_N7
\gpmc_driver|ram[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][2]~q\);

-- Location: LCCOMB_X51_Y6_N20
\gpmc_driver|ram[26][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[26][2]~feeder_combout\);

-- Location: FF_X51_Y6_N21
\gpmc_driver|ram[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][2]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][2]~q\);

-- Location: LCCOMB_X54_Y6_N6
\gpmc_driver|gpmc_data_out~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~43_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|ram[26][2]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[18][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][2]~q\,
	datad => \gpmc_driver|ram[26][2]~q\,
	combout => \gpmc_driver|gpmc_data_out~43_combout\);

-- Location: LCCOMB_X53_Y6_N12
\gpmc_driver|gpmc_data_out~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~44_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~43_combout\ & (\gpmc_driver|ram[30][2]~q\)) # (!\gpmc_driver|gpmc_data_out~43_combout\ & ((\gpmc_driver|ram[22][2]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[30][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[22][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~43_combout\,
	combout => \gpmc_driver|gpmc_data_out~44_combout\);

-- Location: LCCOMB_X52_Y11_N2
\gpmc_driver|ram[27][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[27][2]~feeder_combout\);

-- Location: FF_X52_Y11_N3
\gpmc_driver|ram[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][2]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][2]~q\);

-- Location: FF_X52_Y11_N29
\gpmc_driver|ram[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][2]~q\);

-- Location: LCCOMB_X53_Y11_N16
\gpmc_driver|ram[23][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[23][2]~feeder_combout\);

-- Location: FF_X53_Y11_N17
\gpmc_driver|ram[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][2]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][2]~q\);

-- Location: FF_X53_Y11_N31
\gpmc_driver|ram[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][2]~q\);

-- Location: LCCOMB_X53_Y11_N30
\gpmc_driver|gpmc_data_out~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~50_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[23][2]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[19][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[23][2]~q\,
	datac => \gpmc_driver|ram[19][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~50_combout\);

-- Location: LCCOMB_X52_Y11_N28
\gpmc_driver|gpmc_data_out~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~51_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~50_combout\ & ((\gpmc_driver|ram[31][2]~q\))) # (!\gpmc_driver|gpmc_data_out~50_combout\ & (\gpmc_driver|ram[27][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][2]~q\,
	datac => \gpmc_driver|ram[31][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~50_combout\,
	combout => \gpmc_driver|gpmc_data_out~51_combout\);

-- Location: LCCOMB_X56_Y9_N20
\gpmc_driver|ram[20][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[20][2]~feeder_combout\);

-- Location: FF_X56_Y9_N21
\gpmc_driver|ram[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][2]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][2]~q\);

-- Location: FF_X52_Y9_N5
\gpmc_driver|ram[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][2]~q\);

-- Location: LCCOMB_X50_Y9_N14
\gpmc_driver|ram[24][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[24][2]~feeder_combout\);

-- Location: FF_X50_Y9_N15
\gpmc_driver|ram[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][2]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][2]~q\);

-- Location: FF_X51_Y9_N9
\gpmc_driver|ram[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][2]~q\);

-- Location: LCCOMB_X51_Y9_N8
\gpmc_driver|gpmc_data_out~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~47_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[24][2]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[16][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~47_combout\);

-- Location: LCCOMB_X52_Y9_N4
\gpmc_driver|gpmc_data_out~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~48_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~47_combout\ & ((\gpmc_driver|ram[28][2]~q\))) # (!\gpmc_driver|gpmc_data_out~47_combout\ & (\gpmc_driver|ram[20][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[28][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~47_combout\,
	combout => \gpmc_driver|gpmc_data_out~48_combout\);

-- Location: LCCOMB_X56_Y7_N24
\gpmc_driver|ram[25][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[25][2]~feeder_combout\);

-- Location: FF_X56_Y7_N25
\gpmc_driver|ram[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][2]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][2]~q\);

-- Location: FF_X55_Y7_N9
\gpmc_driver|ram[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][2]~q\);

-- Location: LCCOMB_X54_Y7_N24
\gpmc_driver|ram[21][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[21][2]~feeder_combout\);

-- Location: FF_X54_Y7_N25
\gpmc_driver|ram[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][2]~feeder_combout\,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][2]~q\);

-- Location: FF_X55_Y7_N11
\gpmc_driver|ram[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][2]~q\);

-- Location: LCCOMB_X55_Y7_N10
\gpmc_driver|gpmc_data_out~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~45_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][2]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][2]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][2]~q\,
	datac => \gpmc_driver|ram[17][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~45_combout\);

-- Location: LCCOMB_X55_Y7_N8
\gpmc_driver|gpmc_data_out~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~46_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~45_combout\ & ((\gpmc_driver|ram[29][2]~q\))) # (!\gpmc_driver|gpmc_data_out~45_combout\ & (\gpmc_driver|ram[25][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][2]~q\,
	datac => \gpmc_driver|ram[29][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~45_combout\,
	combout => \gpmc_driver|gpmc_data_out~46_combout\);

-- Location: LCCOMB_X53_Y9_N20
\gpmc_driver|gpmc_data_out~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~49_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~46_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~48_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_data_out~46_combout\,
	combout => \gpmc_driver|gpmc_data_out~49_combout\);

-- Location: LCCOMB_X53_Y9_N2
\gpmc_driver|gpmc_data_out~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~52_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~49_combout\ & ((\gpmc_driver|gpmc_data_out~51_combout\))) # (!\gpmc_driver|gpmc_data_out~49_combout\ & (\gpmc_driver|gpmc_data_out~44_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~44_combout\,
	datac => \gpmc_driver|gpmc_data_out~51_combout\,
	datad => \gpmc_driver|gpmc_data_out~49_combout\,
	combout => \gpmc_driver|gpmc_data_out~52_combout\);

-- Location: LCCOMB_X53_Y9_N26
\gpmc_driver|gpmc_data_out~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~63_combout\ = (\gpmc_driver|ram[31][0]~3_combout\ & ((\gpmc_driver|gpmc_data_out~52_combout\) # ((\gpmc_driver|ram[15][0]~0_combout\ & \gpmc_driver|gpmc_data_out~62_combout\)))) # (!\gpmc_driver|ram[31][0]~3_combout\ & 
-- (\gpmc_driver|ram[15][0]~0_combout\ & (\gpmc_driver|gpmc_data_out~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[31][0]~3_combout\,
	datab => \gpmc_driver|ram[15][0]~0_combout\,
	datac => \gpmc_driver|gpmc_data_out~62_combout\,
	datad => \gpmc_driver|gpmc_data_out~52_combout\,
	combout => \gpmc_driver|gpmc_data_out~63_combout\);

-- Location: FF_X53_Y9_N27
\gpmc_driver|gpmc_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~63_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(2));

-- Location: IOIBUF_X43_Y0_N29
\GPMC_DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(3),
	o => \GPMC_DATA[3]~input_o\);

-- Location: LCCOMB_X44_Y8_N10
\gpmc_driver|gpmc_data_in[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[3]~feeder_combout\ = \GPMC_DATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[3]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[3]~feeder_combout\);

-- Location: FF_X44_Y8_N11
\gpmc_driver|gpmc_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(3));

-- Location: LCCOMB_X50_Y7_N12
\gpmc_driver|ram[13][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[13][3]~feeder_combout\);

-- Location: FF_X50_Y7_N13
\gpmc_driver|ram[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][3]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][3]~q\);

-- Location: FF_X50_Y7_N19
\gpmc_driver|ram[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][3]~q\);

-- Location: LCCOMB_X50_Y7_N18
\gpmc_driver|gpmc_data_out~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~81_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~81_combout\);

-- Location: FF_X49_Y7_N25
\gpmc_driver|ram[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][3]~q\);

-- Location: LCCOMB_X49_Y7_N6
\gpmc_driver|ram[14][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[14][3]~feeder_combout\);

-- Location: FF_X49_Y7_N7
\gpmc_driver|ram[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][3]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][3]~q\);

-- Location: LCCOMB_X49_Y7_N24
\gpmc_driver|gpmc_data_out~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~82_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~81_combout\ & (\gpmc_driver|ram[15][3]~q\)) # (!\gpmc_driver|gpmc_data_out~81_combout\ & ((\gpmc_driver|ram[14][3]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~81_combout\,
	datac => \gpmc_driver|ram[15][3]~q\,
	datad => \gpmc_driver|ram[14][3]~q\,
	combout => \gpmc_driver|gpmc_data_out~82_combout\);

-- Location: LCCOMB_X54_Y8_N0
\gpmc_driver|ram[6][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[6][3]~feeder_combout\);

-- Location: FF_X54_Y8_N1
\gpmc_driver|ram[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][3]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][3]~q\);

-- Location: FF_X50_Y8_N3
\gpmc_driver|ram[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][3]~q\);

-- Location: LCCOMB_X49_Y8_N24
\gpmc_driver|ram[4][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[4][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[4][3]~feeder_combout\);

-- Location: FF_X49_Y8_N25
\gpmc_driver|ram[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[4][3]~feeder_combout\,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][3]~q\);

-- Location: FF_X50_Y8_N25
\gpmc_driver|ram[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][3]~q\);

-- Location: LCCOMB_X50_Y8_N24
\gpmc_driver|gpmc_data_out~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~74_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][3]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[4][3]~q\,
	datac => \gpmc_driver|ram[5][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~74_combout\);

-- Location: LCCOMB_X50_Y8_N2
\gpmc_driver|gpmc_data_out~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~75_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~74_combout\ & ((\gpmc_driver|ram[7][3]~q\))) # (!\gpmc_driver|gpmc_data_out~74_combout\ & (\gpmc_driver|ram[6][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][3]~q\,
	datac => \gpmc_driver|ram[7][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~74_combout\,
	combout => \gpmc_driver|gpmc_data_out~75_combout\);

-- Location: LCCOMB_X56_Y10_N6
\QD2|counter[19]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[19]~71_combout\ = (\QD2|flipflop\(0) & ((\QD2|counter\(19) & (\QD2|counter[18]~70\ & VCC)) # (!\QD2|counter\(19) & (!\QD2|counter[18]~70\)))) # (!\QD2|flipflop\(0) & ((\QD2|counter\(19) & (!\QD2|counter[18]~70\)) # (!\QD2|counter\(19) & 
-- ((\QD2|counter[18]~70\) # (GND)))))
-- \QD2|counter[19]~72\ = CARRY((\QD2|flipflop\(0) & (!\QD2|counter\(19) & !\QD2|counter[18]~70\)) # (!\QD2|flipflop\(0) & ((!\QD2|counter[18]~70\) # (!\QD2|counter\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(19),
	datad => VCC,
	cin => \QD2|counter[18]~70\,
	combout => \QD2|counter[19]~71_combout\,
	cout => \QD2|counter[19]~72\);

-- Location: FF_X56_Y10_N7
\QD2|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[19]~71_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(19));

-- Location: LCCOMB_X55_Y10_N4
\gpmc_driver|ram~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~49_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(19)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(3),
	datad => \QD2|counter\(19),
	combout => \gpmc_driver|ram~49_combout\);

-- Location: FF_X55_Y10_N5
\gpmc_driver|ram[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~49_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][3]~q\);

-- Location: LCCOMB_X49_Y10_N24
\gpmc_driver|ram~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~46_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(19)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_data_in\(3),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \qd1|position\(19),
	combout => \gpmc_driver|ram~46_combout\);

-- Location: FF_X49_Y10_N25
\gpmc_driver|ram[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~46_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][3]~q\);

-- Location: LCCOMB_X55_Y10_N2
\gpmc_driver|ram~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~47_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(3)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(3),
	datad => \QD2|counter\(3),
	combout => \gpmc_driver|ram~47_combout\);

-- Location: FF_X55_Y10_N3
\gpmc_driver|ram[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~47_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][3]~q\);

-- Location: LCCOMB_X49_Y10_N14
\gpmc_driver|ram~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~48_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(3)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_data_in\(3),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \qd1|position\(3),
	combout => \gpmc_driver|ram~48_combout\);

-- Location: FF_X49_Y10_N15
\gpmc_driver|ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~48_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][3]~q\);

-- Location: LCCOMB_X50_Y10_N28
\gpmc_driver|gpmc_data_out~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~78_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[2][3]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((!\gpmc_driver|gpmc_addr_in\(0) & \gpmc_driver|ram[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[2][3]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|ram[0][3]~q\,
	combout => \gpmc_driver|gpmc_data_out~78_combout\);

-- Location: LCCOMB_X50_Y10_N22
\gpmc_driver|gpmc_data_out~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~79_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~78_combout\ & (\gpmc_driver|ram[3][3]~q\)) # (!\gpmc_driver|gpmc_data_out~78_combout\ & ((\gpmc_driver|ram[1][3]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[3][3]~q\,
	datab => \gpmc_driver|ram[1][3]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_data_out~78_combout\,
	combout => \gpmc_driver|gpmc_data_out~79_combout\);

-- Location: LCCOMB_X56_Y8_N18
\gpmc_driver|ram[9][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[9][3]~feeder_combout\);

-- Location: FF_X56_Y8_N19
\gpmc_driver|ram[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][3]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][3]~q\);

-- Location: FF_X55_Y8_N27
\gpmc_driver|ram[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][3]~q\);

-- Location: LCCOMB_X56_Y8_N8
\gpmc_driver|ram[10][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[10][3]~feeder_combout\);

-- Location: FF_X56_Y8_N9
\gpmc_driver|ram[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][3]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][3]~q\);

-- Location: FF_X55_Y8_N21
\gpmc_driver|ram[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][3]~q\);

-- Location: LCCOMB_X55_Y8_N20
\gpmc_driver|gpmc_data_out~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~76_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[10][3]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[8][3]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][3]~q\,
	datac => \gpmc_driver|ram[8][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~76_combout\);

-- Location: LCCOMB_X55_Y8_N26
\gpmc_driver|gpmc_data_out~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~77_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~76_combout\ & ((\gpmc_driver|ram[11][3]~q\))) # (!\gpmc_driver|gpmc_data_out~76_combout\ & (\gpmc_driver|ram[9][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][3]~q\,
	datac => \gpmc_driver|ram[11][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~76_combout\,
	combout => \gpmc_driver|gpmc_data_out~77_combout\);

-- Location: LCCOMB_X50_Y10_N16
\gpmc_driver|gpmc_data_out~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~80_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~77_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~79_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~77_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~80_combout\);

-- Location: LCCOMB_X50_Y10_N14
\gpmc_driver|gpmc_data_out~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~83_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~80_combout\ & (\gpmc_driver|gpmc_data_out~82_combout\)) # (!\gpmc_driver|gpmc_data_out~80_combout\ & ((\gpmc_driver|gpmc_data_out~75_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~82_combout\,
	datab => \gpmc_driver|gpmc_data_out~75_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~80_combout\,
	combout => \gpmc_driver|gpmc_data_out~83_combout\);

-- Location: LCCOMB_X53_Y11_N28
\gpmc_driver|ram[23][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[23][3]~feeder_combout\);

-- Location: FF_X53_Y11_N29
\gpmc_driver|ram[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][3]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][3]~q\);

-- Location: FF_X52_Y11_N1
\gpmc_driver|ram[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][3]~q\);

-- Location: LCCOMB_X52_Y11_N6
\gpmc_driver|ram[27][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[27][3]~feeder_combout\);

-- Location: FF_X52_Y11_N7
\gpmc_driver|ram[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][3]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][3]~q\);

-- Location: FF_X53_Y11_N3
\gpmc_driver|ram[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][3]~q\);

-- Location: LCCOMB_X53_Y11_N2
\gpmc_driver|gpmc_data_out~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~71_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[27][3]~q\,
	datac => \gpmc_driver|ram[19][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~71_combout\);

-- Location: LCCOMB_X52_Y11_N0
\gpmc_driver|gpmc_data_out~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~72_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~71_combout\ & ((\gpmc_driver|ram[31][3]~q\))) # (!\gpmc_driver|gpmc_data_out~71_combout\ & (\gpmc_driver|ram[23][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][3]~q\,
	datac => \gpmc_driver|ram[31][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~71_combout\,
	combout => \gpmc_driver|gpmc_data_out~72_combout\);

-- Location: FF_X51_Y8_N1
\gpmc_driver|ram[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][3]~q\);

-- Location: LCCOMB_X50_Y6_N14
\gpmc_driver|ram[20][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[20][3]~feeder_combout\);

-- Location: FF_X50_Y6_N15
\gpmc_driver|ram[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][3]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][3]~q\);

-- Location: LCCOMB_X51_Y8_N0
\gpmc_driver|gpmc_data_out~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~68_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][3]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][3]~q\,
	datad => \gpmc_driver|ram[20][3]~q\,
	combout => \gpmc_driver|gpmc_data_out~68_combout\);

-- Location: FF_X51_Y8_N11
\gpmc_driver|ram[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][3]~q\);

-- Location: LCCOMB_X50_Y9_N18
\gpmc_driver|ram[24][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[24][3]~feeder_combout\);

-- Location: FF_X50_Y9_N19
\gpmc_driver|ram[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][3]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][3]~q\);

-- Location: LCCOMB_X51_Y8_N10
\gpmc_driver|gpmc_data_out~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~69_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~68_combout\ & (\gpmc_driver|ram[28][3]~q\)) # (!\gpmc_driver|gpmc_data_out~68_combout\ & ((\gpmc_driver|ram[24][3]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~68_combout\,
	datac => \gpmc_driver|ram[28][3]~q\,
	datad => \gpmc_driver|ram[24][3]~q\,
	combout => \gpmc_driver|gpmc_data_out~69_combout\);

-- Location: LCCOMB_X51_Y6_N10
\gpmc_driver|ram[26][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[26][3]~feeder_combout\);

-- Location: FF_X51_Y6_N11
\gpmc_driver|ram[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][3]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][3]~q\);

-- Location: FF_X54_Y6_N13
\gpmc_driver|ram[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][3]~q\);

-- Location: LCCOMB_X53_Y6_N20
\gpmc_driver|ram[22][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[22][3]~feeder_combout\);

-- Location: FF_X53_Y6_N21
\gpmc_driver|ram[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][3]~feeder_combout\,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][3]~q\);

-- Location: FF_X54_Y6_N11
\gpmc_driver|ram[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][3]~q\);

-- Location: LCCOMB_X54_Y6_N10
\gpmc_driver|gpmc_data_out~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~66_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][3]~q\,
	datac => \gpmc_driver|ram[18][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~66_combout\);

-- Location: LCCOMB_X54_Y6_N12
\gpmc_driver|gpmc_data_out~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~67_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~66_combout\ & ((\gpmc_driver|ram[30][3]~q\))) # (!\gpmc_driver|gpmc_data_out~66_combout\ & (\gpmc_driver|ram[26][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][3]~q\,
	datac => \gpmc_driver|ram[30][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~66_combout\,
	combout => \gpmc_driver|gpmc_data_out~67_combout\);

-- Location: LCCOMB_X50_Y10_N8
\gpmc_driver|gpmc_data_out~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~70_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0)) # (\gpmc_driver|gpmc_data_out~67_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~69_combout\ & 
-- (!\gpmc_driver|gpmc_addr_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~69_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_data_out~67_combout\,
	combout => \gpmc_driver|gpmc_data_out~70_combout\);

-- Location: LCCOMB_X54_Y7_N16
\gpmc_driver|ram[29][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[29][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[29][3]~feeder_combout\);

-- Location: FF_X54_Y7_N17
\gpmc_driver|ram[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[29][3]~feeder_combout\,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][3]~q\);

-- Location: FF_X54_Y7_N27
\gpmc_driver|ram[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][3]~q\);

-- Location: FF_X55_Y7_N7
\gpmc_driver|ram[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][3]~q\);

-- Location: LCCOMB_X56_Y7_N6
\gpmc_driver|ram[25][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[25][3]~feeder_combout\);

-- Location: FF_X56_Y7_N7
\gpmc_driver|ram[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][3]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][3]~q\);

-- Location: LCCOMB_X55_Y7_N6
\gpmc_driver|gpmc_data_out~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~64_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][3]~q\))) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- (\gpmc_driver|ram[17][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[17][3]~q\,
	datad => \gpmc_driver|ram[25][3]~q\,
	combout => \gpmc_driver|gpmc_data_out~64_combout\);

-- Location: LCCOMB_X54_Y7_N26
\gpmc_driver|gpmc_data_out~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~65_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~64_combout\ & (\gpmc_driver|ram[29][3]~q\)) # (!\gpmc_driver|gpmc_data_out~64_combout\ & ((\gpmc_driver|ram[21][3]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[29][3]~q\,
	datac => \gpmc_driver|ram[21][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~64_combout\,
	combout => \gpmc_driver|gpmc_data_out~65_combout\);

-- Location: LCCOMB_X50_Y10_N2
\gpmc_driver|gpmc_data_out~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~73_combout\ = (\gpmc_driver|gpmc_data_out~70_combout\ & ((\gpmc_driver|gpmc_data_out~72_combout\) # ((!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~70_combout\ & (((\gpmc_driver|gpmc_addr_in\(0) & 
-- \gpmc_driver|gpmc_data_out~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~72_combout\,
	datab => \gpmc_driver|gpmc_data_out~70_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_data_out~65_combout\,
	combout => \gpmc_driver|gpmc_data_out~73_combout\);

-- Location: LCCOMB_X50_Y10_N24
\gpmc_driver|gpmc_data_out~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~84_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~83_combout\) # ((\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|gpmc_data_out~73_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (((\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|gpmc_data_out~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|gpmc_data_out~83_combout\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_data_out~73_combout\,
	combout => \gpmc_driver|gpmc_data_out~84_combout\);

-- Location: FF_X50_Y10_N25
\gpmc_driver|gpmc_data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~84_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(3));

-- Location: IOIBUF_X43_Y0_N22
\GPMC_DATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(4),
	o => \GPMC_DATA[4]~input_o\);

-- Location: LCCOMB_X48_Y6_N30
\gpmc_driver|gpmc_data_in[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[4]~feeder_combout\ = \GPMC_DATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[4]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[4]~feeder_combout\);

-- Location: FF_X48_Y6_N31
\gpmc_driver|gpmc_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(4));

-- Location: LCCOMB_X54_Y9_N28
\gpmc_driver|ram[10][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[10][4]~feeder_combout\);

-- Location: FF_X54_Y9_N29
\gpmc_driver|ram[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][4]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][4]~q\);

-- Location: FF_X53_Y9_N9
\gpmc_driver|ram[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][4]~q\);

-- Location: LCCOMB_X50_Y9_N10
\gpmc_driver|ram[9][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[9][4]~feeder_combout\);

-- Location: FF_X50_Y9_N11
\gpmc_driver|ram[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][4]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][4]~q\);

-- Location: FF_X54_Y9_N27
\gpmc_driver|ram[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][4]~q\);

-- Location: LCCOMB_X54_Y9_N26
\gpmc_driver|gpmc_data_out~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~95_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][4]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[8][4]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][4]~q\,
	datac => \gpmc_driver|ram[8][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~95_combout\);

-- Location: LCCOMB_X53_Y9_N8
\gpmc_driver|gpmc_data_out~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~96_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~95_combout\ & ((\gpmc_driver|ram[11][4]~q\))) # (!\gpmc_driver|gpmc_data_out~95_combout\ & (\gpmc_driver|ram[10][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][4]~q\,
	datac => \gpmc_driver|ram[11][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~95_combout\,
	combout => \gpmc_driver|gpmc_data_out~96_combout\);

-- Location: LCCOMB_X50_Y7_N8
\gpmc_driver|ram[13][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[13][4]~feeder_combout\);

-- Location: FF_X50_Y7_N9
\gpmc_driver|ram[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][4]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][4]~q\);

-- Location: FF_X49_Y7_N5
\gpmc_driver|ram[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][4]~q\);

-- Location: LCCOMB_X49_Y7_N10
\gpmc_driver|ram[14][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[14][4]~feeder_combout\);

-- Location: FF_X49_Y7_N11
\gpmc_driver|ram[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][4]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][4]~q\);

-- Location: FF_X50_Y7_N27
\gpmc_driver|ram[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][4]~q\);

-- Location: LCCOMB_X50_Y7_N26
\gpmc_driver|gpmc_data_out~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~102_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[14][4]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[12][4]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~102_combout\);

-- Location: LCCOMB_X49_Y7_N4
\gpmc_driver|gpmc_data_out~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~103_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~102_combout\ & ((\gpmc_driver|ram[15][4]~q\))) # (!\gpmc_driver|gpmc_data_out~102_combout\ & (\gpmc_driver|ram[13][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~102_combout\,
	combout => \gpmc_driver|gpmc_data_out~103_combout\);

-- Location: LCCOMB_X49_Y10_N0
\gpmc_driver|ram~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~51_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(20)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(4),
	datad => \qd1|position\(20),
	combout => \gpmc_driver|ram~51_combout\);

-- Location: FF_X49_Y10_N1
\gpmc_driver|ram[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~51_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][4]~q\);

-- Location: LCCOMB_X49_Y10_N6
\gpmc_driver|ram~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~52_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(4)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(4),
	datad => \qd1|position\(4),
	combout => \gpmc_driver|ram~52_combout\);

-- Location: FF_X49_Y10_N7
\gpmc_driver|ram[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~52_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][4]~q\);

-- Location: LCCOMB_X52_Y10_N22
\gpmc_driver|gpmc_data_out~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~99_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[1][4]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[1][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|ram[0][4]~q\,
	combout => \gpmc_driver|gpmc_data_out~99_combout\);

-- Location: LCCOMB_X56_Y10_N8
\QD2|counter[20]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[20]~73_combout\ = ((\QD2|flipflop\(0) $ (\QD2|counter\(20) $ (!\QD2|counter[19]~72\)))) # (GND)
-- \QD2|counter[20]~74\ = CARRY((\QD2|flipflop\(0) & ((\QD2|counter\(20)) # (!\QD2|counter[19]~72\))) # (!\QD2|flipflop\(0) & (\QD2|counter\(20) & !\QD2|counter[19]~72\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(20),
	datad => VCC,
	cin => \QD2|counter[19]~72\,
	combout => \QD2|counter[20]~73_combout\,
	cout => \QD2|counter[20]~74\);

-- Location: FF_X56_Y10_N9
\QD2|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[20]~73_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(20));

-- Location: LCCOMB_X52_Y10_N4
\gpmc_driver|ram~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~53_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(20)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(4),
	datab => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(20),
	combout => \gpmc_driver|ram~53_combout\);

-- Location: FF_X52_Y10_N5
\gpmc_driver|ram[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~53_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][4]~q\);

-- Location: LCCOMB_X55_Y11_N16
\gpmc_driver|ram~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~50_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\QD2|counter\(4))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \QD2|counter\(4),
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram~50_combout\);

-- Location: FF_X55_Y11_N17
\gpmc_driver|ram[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~50_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][4]~q\);

-- Location: LCCOMB_X52_Y10_N18
\gpmc_driver|gpmc_data_out~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~100_combout\ = (\gpmc_driver|gpmc_data_out~99_combout\ & ((\gpmc_driver|ram[3][4]~q\) # ((!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~99_combout\ & (((\gpmc_driver|gpmc_addr_in\(1) & 
-- \gpmc_driver|ram[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~99_combout\,
	datab => \gpmc_driver|ram[3][4]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|ram[2][4]~q\,
	combout => \gpmc_driver|gpmc_data_out~100_combout\);

-- Location: LCCOMB_X55_Y11_N2
\gpmc_driver|ram[5][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[5][4]~feeder_combout\);

-- Location: FF_X55_Y11_N3
\gpmc_driver|ram[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][4]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][4]~q\);

-- Location: FF_X51_Y11_N9
\gpmc_driver|ram[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][4]~q\);

-- Location: LCCOMB_X51_Y11_N4
\gpmc_driver|ram[4][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[4][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[4][4]~feeder_combout\);

-- Location: FF_X51_Y11_N5
\gpmc_driver|ram[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[4][4]~feeder_combout\,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][4]~q\);

-- Location: LCCOMB_X54_Y8_N22
\gpmc_driver|ram[6][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[6][4]~feeder_combout\);

-- Location: FF_X54_Y8_N23
\gpmc_driver|ram[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][4]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][4]~q\);

-- Location: LCCOMB_X51_Y11_N10
\gpmc_driver|gpmc_data_out~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~97_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[6][4]~q\) # (\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[4][4]~q\ & ((!\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[4][4]~q\,
	datac => \gpmc_driver|ram[6][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~97_combout\);

-- Location: LCCOMB_X51_Y11_N8
\gpmc_driver|gpmc_data_out~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~98_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~97_combout\ & ((\gpmc_driver|ram[7][4]~q\))) # (!\gpmc_driver|gpmc_data_out~97_combout\ & (\gpmc_driver|ram[5][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][4]~q\,
	datac => \gpmc_driver|ram[7][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~97_combout\,
	combout => \gpmc_driver|gpmc_data_out~98_combout\);

-- Location: LCCOMB_X52_Y10_N24
\gpmc_driver|gpmc_data_out~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~101_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~98_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~100_combout\,
	datac => \gpmc_driver|gpmc_data_out~98_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~101_combout\);

-- Location: LCCOMB_X52_Y10_N14
\gpmc_driver|gpmc_data_out~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~104_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~101_combout\ & ((\gpmc_driver|gpmc_data_out~103_combout\))) # (!\gpmc_driver|gpmc_data_out~101_combout\ & (\gpmc_driver|gpmc_data_out~96_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~96_combout\,
	datac => \gpmc_driver|gpmc_data_out~103_combout\,
	datad => \gpmc_driver|gpmc_data_out~101_combout\,
	combout => \gpmc_driver|gpmc_data_out~104_combout\);

-- Location: LCCOMB_X54_Y6_N30
\gpmc_driver|ram[30][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[30][4]~feeder_combout\);

-- Location: FF_X54_Y6_N31
\gpmc_driver|ram[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[30][4]~feeder_combout\,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][4]~q\);

-- Location: FF_X53_Y6_N7
\gpmc_driver|ram[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][4]~q\);

-- Location: LCCOMB_X51_Y6_N0
\gpmc_driver|ram[26][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[26][4]~feeder_combout\);

-- Location: FF_X51_Y6_N1
\gpmc_driver|ram[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][4]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][4]~q\);

-- Location: FF_X52_Y6_N15
\gpmc_driver|ram[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][4]~q\);

-- Location: LCCOMB_X52_Y6_N14
\gpmc_driver|gpmc_data_out~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~85_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][4]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~85_combout\);

-- Location: LCCOMB_X53_Y6_N6
\gpmc_driver|gpmc_data_out~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~86_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~85_combout\ & (\gpmc_driver|ram[30][4]~q\)) # (!\gpmc_driver|gpmc_data_out~85_combout\ & ((\gpmc_driver|ram[22][4]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[30][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[22][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~85_combout\,
	combout => \gpmc_driver|gpmc_data_out~86_combout\);

-- Location: LCCOMB_X50_Y6_N8
\gpmc_driver|ram[20][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[20][4]~feeder_combout\);

-- Location: FF_X50_Y6_N9
\gpmc_driver|ram[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][4]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][4]~q\);

-- Location: FF_X51_Y8_N31
\gpmc_driver|ram[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][4]~q\);

-- Location: FF_X51_Y8_N17
\gpmc_driver|ram[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][4]~q\);

-- Location: LCCOMB_X50_Y9_N28
\gpmc_driver|ram[24][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[24][4]~feeder_combout\);

-- Location: FF_X50_Y9_N29
\gpmc_driver|ram[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][4]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][4]~q\);

-- Location: LCCOMB_X51_Y8_N16
\gpmc_driver|gpmc_data_out~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~89_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|ram[24][4]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[16][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][4]~q\,
	datad => \gpmc_driver|ram[24][4]~q\,
	combout => \gpmc_driver|gpmc_data_out~89_combout\);

-- Location: LCCOMB_X51_Y8_N30
\gpmc_driver|gpmc_data_out~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~90_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~89_combout\ & ((\gpmc_driver|ram[28][4]~q\))) # (!\gpmc_driver|gpmc_data_out~89_combout\ & (\gpmc_driver|ram[20][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[28][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~89_combout\,
	combout => \gpmc_driver|gpmc_data_out~90_combout\);

-- Location: LCCOMB_X56_Y7_N4
\gpmc_driver|ram[25][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[25][4]~feeder_combout\);

-- Location: FF_X56_Y7_N5
\gpmc_driver|ram[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][4]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][4]~q\);

-- Location: FF_X55_Y7_N19
\gpmc_driver|ram[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][4]~q\);

-- Location: LCCOMB_X55_Y6_N0
\gpmc_driver|ram[21][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[21][4]~feeder_combout\);

-- Location: FF_X55_Y6_N1
\gpmc_driver|ram[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][4]~feeder_combout\,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][4]~q\);

-- Location: FF_X55_Y7_N21
\gpmc_driver|ram[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][4]~q\);

-- Location: LCCOMB_X55_Y7_N20
\gpmc_driver|gpmc_data_out~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~87_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][4]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][4]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][4]~q\,
	datac => \gpmc_driver|ram[17][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~87_combout\);

-- Location: LCCOMB_X55_Y7_N18
\gpmc_driver|gpmc_data_out~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~88_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~87_combout\ & ((\gpmc_driver|ram[29][4]~q\))) # (!\gpmc_driver|gpmc_data_out~87_combout\ & (\gpmc_driver|ram[25][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[25][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[29][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~87_combout\,
	combout => \gpmc_driver|gpmc_data_out~88_combout\);

-- Location: LCCOMB_X51_Y7_N16
\gpmc_driver|gpmc_data_out~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~91_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_data_out~88_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|gpmc_data_out~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~90_combout\,
	datad => \gpmc_driver|gpmc_data_out~88_combout\,
	combout => \gpmc_driver|gpmc_data_out~91_combout\);

-- Location: LCCOMB_X52_Y11_N14
\gpmc_driver|ram[27][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[27][4]~feeder_combout\);

-- Location: FF_X52_Y11_N15
\gpmc_driver|ram[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][4]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][4]~q\);

-- Location: FF_X52_Y11_N25
\gpmc_driver|ram[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][4]~q\);

-- Location: LCCOMB_X53_Y11_N12
\gpmc_driver|ram[23][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[23][4]~feeder_combout\);

-- Location: FF_X53_Y11_N13
\gpmc_driver|ram[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][4]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][4]~q\);

-- Location: FF_X53_Y11_N23
\gpmc_driver|ram[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][4]~q\);

-- Location: LCCOMB_X53_Y11_N22
\gpmc_driver|gpmc_data_out~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~92_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[23][4]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[19][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[23][4]~q\,
	datac => \gpmc_driver|ram[19][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~92_combout\);

-- Location: LCCOMB_X52_Y11_N24
\gpmc_driver|gpmc_data_out~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~93_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~92_combout\ & ((\gpmc_driver|ram[31][4]~q\))) # (!\gpmc_driver|gpmc_data_out~92_combout\ & (\gpmc_driver|ram[27][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][4]~q\,
	datac => \gpmc_driver|ram[31][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~92_combout\,
	combout => \gpmc_driver|gpmc_data_out~93_combout\);

-- Location: LCCOMB_X52_Y7_N12
\gpmc_driver|gpmc_data_out~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~94_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~91_combout\ & ((\gpmc_driver|gpmc_data_out~93_combout\))) # (!\gpmc_driver|gpmc_data_out~91_combout\ & (\gpmc_driver|gpmc_data_out~86_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~86_combout\,
	datac => \gpmc_driver|gpmc_data_out~91_combout\,
	datad => \gpmc_driver|gpmc_data_out~93_combout\,
	combout => \gpmc_driver|gpmc_data_out~94_combout\);

-- Location: LCCOMB_X52_Y7_N26
\gpmc_driver|gpmc_data_out~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~105_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~104_combout\) # ((\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|gpmc_data_out~94_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (\gpmc_driver|ram[31][0]~3_combout\ & ((\gpmc_driver|gpmc_data_out~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|ram[31][0]~3_combout\,
	datac => \gpmc_driver|gpmc_data_out~104_combout\,
	datad => \gpmc_driver|gpmc_data_out~94_combout\,
	combout => \gpmc_driver|gpmc_data_out~105_combout\);

-- Location: FF_X52_Y7_N27
\gpmc_driver|gpmc_data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~105_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(4));

-- Location: IOIBUF_X43_Y0_N1
\GPMC_DATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(5),
	o => \GPMC_DATA[5]~input_o\);

-- Location: LCCOMB_X49_Y6_N22
\gpmc_driver|gpmc_data_in[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[5]~feeder_combout\ = \GPMC_DATA[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[5]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[5]~feeder_combout\);

-- Location: FF_X49_Y6_N23
\gpmc_driver|gpmc_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(5));

-- Location: LCCOMB_X54_Y7_N28
\gpmc_driver|ram[29][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[29][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[29][5]~feeder_combout\);

-- Location: FF_X54_Y7_N29
\gpmc_driver|ram[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[29][5]~feeder_combout\,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][5]~q\);

-- Location: FF_X54_Y7_N3
\gpmc_driver|ram[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][5]~q\);

-- Location: LCCOMB_X56_Y7_N18
\gpmc_driver|ram[25][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[25][5]~feeder_combout\);

-- Location: FF_X56_Y7_N19
\gpmc_driver|ram[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][5]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][5]~q\);

-- Location: FF_X55_Y7_N29
\gpmc_driver|ram[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][5]~q\);

-- Location: LCCOMB_X55_Y7_N28
\gpmc_driver|gpmc_data_out~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~106_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][5]~q\,
	datac => \gpmc_driver|ram[17][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~106_combout\);

-- Location: LCCOMB_X54_Y7_N2
\gpmc_driver|gpmc_data_out~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~107_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~106_combout\ & (\gpmc_driver|ram[29][5]~q\)) # (!\gpmc_driver|gpmc_data_out~106_combout\ & ((\gpmc_driver|ram[21][5]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[29][5]~q\,
	datac => \gpmc_driver|ram[21][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~106_combout\,
	combout => \gpmc_driver|gpmc_data_out~107_combout\);

-- Location: LCCOMB_X53_Y11_N8
\gpmc_driver|ram[23][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[23][5]~feeder_combout\);

-- Location: FF_X53_Y11_N9
\gpmc_driver|ram[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][5]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][5]~q\);

-- Location: FF_X52_Y11_N17
\gpmc_driver|ram[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][5]~q\);

-- Location: FF_X52_Y11_N31
\gpmc_driver|ram[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][5]~q\);

-- Location: FF_X53_Y11_N27
\gpmc_driver|ram[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][5]~q\);

-- Location: LCCOMB_X53_Y11_N26
\gpmc_driver|gpmc_data_out~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~113_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][5]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][5]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][5]~q\,
	datac => \gpmc_driver|ram[19][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~113_combout\);

-- Location: LCCOMB_X52_Y11_N16
\gpmc_driver|gpmc_data_out~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~114_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~113_combout\ & ((\gpmc_driver|ram[31][5]~q\))) # (!\gpmc_driver|gpmc_data_out~113_combout\ & (\gpmc_driver|ram[23][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][5]~q\,
	datac => \gpmc_driver|ram[31][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~113_combout\,
	combout => \gpmc_driver|gpmc_data_out~114_combout\);

-- Location: LCCOMB_X51_Y6_N6
\gpmc_driver|ram[26][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[26][5]~feeder_combout\);

-- Location: FF_X51_Y6_N7
\gpmc_driver|ram[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][5]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][5]~q\);

-- Location: FF_X54_Y6_N3
\gpmc_driver|ram[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][5]~q\);

-- Location: LCCOMB_X53_Y6_N4
\gpmc_driver|ram[22][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[22][5]~feeder_combout\);

-- Location: FF_X53_Y6_N5
\gpmc_driver|ram[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][5]~feeder_combout\,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][5]~q\);

-- Location: FF_X54_Y6_N29
\gpmc_driver|ram[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][5]~q\);

-- Location: LCCOMB_X54_Y6_N28
\gpmc_driver|gpmc_data_out~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~108_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][5]~q\,
	datac => \gpmc_driver|ram[18][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~108_combout\);

-- Location: LCCOMB_X54_Y6_N2
\gpmc_driver|gpmc_data_out~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~109_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~108_combout\ & ((\gpmc_driver|ram[30][5]~q\))) # (!\gpmc_driver|gpmc_data_out~108_combout\ & (\gpmc_driver|ram[26][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][5]~q\,
	datac => \gpmc_driver|ram[30][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~108_combout\,
	combout => \gpmc_driver|gpmc_data_out~109_combout\);

-- Location: LCCOMB_X50_Y9_N8
\gpmc_driver|ram[24][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[24][5]~feeder_combout\);

-- Location: FF_X50_Y9_N9
\gpmc_driver|ram[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][5]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][5]~q\);

-- Location: FF_X51_Y8_N15
\gpmc_driver|ram[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][5]~q\);

-- Location: FF_X51_Y8_N25
\gpmc_driver|ram[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][5]~q\);

-- Location: LCCOMB_X50_Y6_N18
\gpmc_driver|ram[20][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[20][5]~feeder_combout\);

-- Location: FF_X50_Y6_N19
\gpmc_driver|ram[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][5]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][5]~q\);

-- Location: LCCOMB_X51_Y8_N24
\gpmc_driver|gpmc_data_out~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~110_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][5]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[16][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][5]~q\,
	datad => \gpmc_driver|ram[20][5]~q\,
	combout => \gpmc_driver|gpmc_data_out~110_combout\);

-- Location: LCCOMB_X51_Y8_N14
\gpmc_driver|gpmc_data_out~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~111_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~110_combout\ & ((\gpmc_driver|ram[28][5]~q\))) # (!\gpmc_driver|gpmc_data_out~110_combout\ & (\gpmc_driver|ram[24][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][5]~q\,
	datac => \gpmc_driver|ram[28][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~110_combout\,
	combout => \gpmc_driver|gpmc_data_out~111_combout\);

-- Location: LCCOMB_X52_Y8_N0
\gpmc_driver|gpmc_data_out~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~112_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~109_combout\)) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~109_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~111_combout\,
	combout => \gpmc_driver|gpmc_data_out~112_combout\);

-- Location: LCCOMB_X52_Y8_N22
\gpmc_driver|gpmc_data_out~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~115_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~112_combout\ & ((\gpmc_driver|gpmc_data_out~114_combout\))) # (!\gpmc_driver|gpmc_data_out~112_combout\ & (\gpmc_driver|gpmc_data_out~107_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~107_combout\,
	datac => \gpmc_driver|gpmc_data_out~114_combout\,
	datad => \gpmc_driver|gpmc_data_out~112_combout\,
	combout => \gpmc_driver|gpmc_data_out~115_combout\);

-- Location: FF_X50_Y8_N9
\gpmc_driver|ram[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][5]~q\);

-- Location: LCCOMB_X51_Y11_N2
\gpmc_driver|ram[4][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[4][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[4][5]~feeder_combout\);

-- Location: FF_X51_Y11_N3
\gpmc_driver|ram[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[4][5]~feeder_combout\,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][5]~q\);

-- Location: LCCOMB_X50_Y8_N8
\gpmc_driver|gpmc_data_out~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~116_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[5][5]~q\,
	datad => \gpmc_driver|ram[4][5]~q\,
	combout => \gpmc_driver|gpmc_data_out~116_combout\);

-- Location: FF_X50_Y8_N23
\gpmc_driver|ram[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][5]~q\);

-- Location: LCCOMB_X49_Y8_N10
\gpmc_driver|ram[6][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[6][5]~feeder_combout\);

-- Location: FF_X49_Y8_N11
\gpmc_driver|ram[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][5]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][5]~q\);

-- Location: LCCOMB_X50_Y8_N22
\gpmc_driver|gpmc_data_out~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~117_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~116_combout\ & (\gpmc_driver|ram[7][5]~q\)) # (!\gpmc_driver|gpmc_data_out~116_combout\ & ((\gpmc_driver|ram[6][5]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~116_combout\,
	datac => \gpmc_driver|ram[7][5]~q\,
	datad => \gpmc_driver|ram[6][5]~q\,
	combout => \gpmc_driver|gpmc_data_out~117_combout\);

-- Location: LCCOMB_X49_Y7_N18
\gpmc_driver|ram[14][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[14][5]~feeder_combout\);

-- Location: FF_X49_Y7_N19
\gpmc_driver|ram[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][5]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][5]~q\);

-- Location: FF_X49_Y7_N1
\gpmc_driver|ram[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][5]~q\);

-- Location: FF_X50_Y7_N7
\gpmc_driver|ram[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][5]~q\);

-- Location: LCCOMB_X50_Y7_N28
\gpmc_driver|ram[13][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[13][5]~feeder_combout\);

-- Location: FF_X50_Y7_N29
\gpmc_driver|ram[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][5]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][5]~q\);

-- Location: LCCOMB_X50_Y7_N6
\gpmc_driver|gpmc_data_out~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~123_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|ram[13][5]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[12][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][5]~q\,
	datad => \gpmc_driver|ram[13][5]~q\,
	combout => \gpmc_driver|gpmc_data_out~123_combout\);

-- Location: LCCOMB_X49_Y7_N0
\gpmc_driver|gpmc_data_out~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~124_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~123_combout\ & ((\gpmc_driver|ram[15][5]~q\))) # (!\gpmc_driver|gpmc_data_out~123_combout\ & (\gpmc_driver|ram[14][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][5]~q\,
	datac => \gpmc_driver|ram[15][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~123_combout\,
	combout => \gpmc_driver|gpmc_data_out~124_combout\);

-- Location: LCCOMB_X49_Y9_N12
\gpmc_driver|ram[9][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[9][5]~feeder_combout\);

-- Location: FF_X49_Y9_N13
\gpmc_driver|ram[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][5]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][5]~q\);

-- Location: FF_X52_Y9_N31
\gpmc_driver|ram[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][5]~q\);

-- Location: LCCOMB_X54_Y9_N2
\gpmc_driver|ram[8][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[8][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[8][5]~feeder_combout\);

-- Location: FF_X54_Y9_N3
\gpmc_driver|ram[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[8][5]~feeder_combout\,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][5]~q\);

-- Location: FF_X54_Y9_N13
\gpmc_driver|ram[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][5]~q\);

-- Location: LCCOMB_X54_Y9_N12
\gpmc_driver|gpmc_data_out~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~118_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[10][5]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[8][5]~q\,
	datac => \gpmc_driver|ram[10][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~118_combout\);

-- Location: LCCOMB_X52_Y9_N30
\gpmc_driver|gpmc_data_out~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~119_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~118_combout\ & ((\gpmc_driver|ram[11][5]~q\))) # (!\gpmc_driver|gpmc_data_out~118_combout\ & (\gpmc_driver|ram[9][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][5]~q\,
	datac => \gpmc_driver|ram[11][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~118_combout\,
	combout => \gpmc_driver|gpmc_data_out~119_combout\);

-- Location: LCCOMB_X56_Y10_N10
\QD2|counter[21]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[21]~75_combout\ = (\QD2|flipflop\(0) & ((\QD2|counter\(21) & (\QD2|counter[20]~74\ & VCC)) # (!\QD2|counter\(21) & (!\QD2|counter[20]~74\)))) # (!\QD2|flipflop\(0) & ((\QD2|counter\(21) & (!\QD2|counter[20]~74\)) # (!\QD2|counter\(21) & 
-- ((\QD2|counter[20]~74\) # (GND)))))
-- \QD2|counter[21]~76\ = CARRY((\QD2|flipflop\(0) & (!\QD2|counter\(21) & !\QD2|counter[20]~74\)) # (!\QD2|flipflop\(0) & ((!\QD2|counter[20]~74\) # (!\QD2|counter\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(21),
	datad => VCC,
	cin => \QD2|counter[20]~74\,
	combout => \QD2|counter[21]~75_combout\,
	cout => \QD2|counter[21]~76\);

-- Location: FF_X56_Y10_N11
\QD2|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[21]~75_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(21));

-- Location: LCCOMB_X52_Y10_N26
\gpmc_driver|ram~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~57_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(21)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(5),
	datad => \QD2|counter\(21),
	combout => \gpmc_driver|ram~57_combout\);

-- Location: FF_X52_Y10_N27
\gpmc_driver|ram[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~57_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][5]~q\);

-- Location: LCCOMB_X48_Y10_N20
\gpmc_driver|ram~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~54_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(21)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_data_in\(5),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \qd1|position\(21),
	combout => \gpmc_driver|ram~54_combout\);

-- Location: FF_X48_Y10_N21
\gpmc_driver|ram[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~54_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][5]~q\);

-- Location: LCCOMB_X48_Y10_N6
\gpmc_driver|ram~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~56_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(5)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_data_in\(5),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \qd1|position\(5),
	combout => \gpmc_driver|ram~56_combout\);

-- Location: FF_X48_Y10_N7
\gpmc_driver|ram[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~56_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][5]~q\);

-- Location: LCCOMB_X52_Y10_N8
\gpmc_driver|ram~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~55_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(5)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(5),
	datad => \QD2|counter\(5),
	combout => \gpmc_driver|ram~55_combout\);

-- Location: FF_X52_Y10_N9
\gpmc_driver|ram[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~55_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][5]~q\);

-- Location: LCCOMB_X52_Y8_N28
\gpmc_driver|gpmc_data_out~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~120_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[2][5]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[0][5]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|ram[2][5]~q\,
	combout => \gpmc_driver|gpmc_data_out~120_combout\);

-- Location: LCCOMB_X52_Y8_N18
\gpmc_driver|gpmc_data_out~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~121_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~120_combout\ & (\gpmc_driver|ram[3][5]~q\)) # (!\gpmc_driver|gpmc_data_out~120_combout\ & ((\gpmc_driver|ram[1][5]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[3][5]~q\,
	datac => \gpmc_driver|ram[1][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~120_combout\,
	combout => \gpmc_driver|gpmc_data_out~121_combout\);

-- Location: LCCOMB_X52_Y8_N24
\gpmc_driver|gpmc_data_out~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~122_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_data_out~119_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|gpmc_data_out~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~119_combout\,
	datad => \gpmc_driver|gpmc_data_out~121_combout\,
	combout => \gpmc_driver|gpmc_data_out~122_combout\);

-- Location: LCCOMB_X52_Y8_N10
\gpmc_driver|gpmc_data_out~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~125_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~122_combout\ & ((\gpmc_driver|gpmc_data_out~124_combout\))) # (!\gpmc_driver|gpmc_data_out~122_combout\ & (\gpmc_driver|gpmc_data_out~117_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~117_combout\,
	datab => \gpmc_driver|gpmc_data_out~124_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~122_combout\,
	combout => \gpmc_driver|gpmc_data_out~125_combout\);

-- Location: LCCOMB_X52_Y8_N20
\gpmc_driver|gpmc_data_out~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~126_combout\ = (\gpmc_driver|gpmc_data_out~115_combout\ & ((\gpmc_driver|ram[31][0]~3_combout\) # ((\gpmc_driver|ram[15][0]~0_combout\ & \gpmc_driver|gpmc_data_out~125_combout\)))) # (!\gpmc_driver|gpmc_data_out~115_combout\ & 
-- (((\gpmc_driver|ram[15][0]~0_combout\ & \gpmc_driver|gpmc_data_out~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~115_combout\,
	datab => \gpmc_driver|ram[31][0]~3_combout\,
	datac => \gpmc_driver|ram[15][0]~0_combout\,
	datad => \gpmc_driver|gpmc_data_out~125_combout\,
	combout => \gpmc_driver|gpmc_data_out~126_combout\);

-- Location: FF_X52_Y8_N21
\gpmc_driver|gpmc_data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~126_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(5));

-- Location: IOIBUF_X45_Y0_N22
\GPMC_DATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(6),
	o => \GPMC_DATA[6]~input_o\);

-- Location: LCCOMB_X49_Y6_N28
\gpmc_driver|gpmc_data_in[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[6]~feeder_combout\ = \GPMC_DATA[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[6]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[6]~feeder_combout\);

-- Location: FF_X49_Y6_N29
\gpmc_driver|gpmc_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(6));

-- Location: LCCOMB_X51_Y6_N16
\gpmc_driver|ram[26][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[26][6]~feeder_combout\);

-- Location: FF_X51_Y6_N17
\gpmc_driver|ram[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][6]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][6]~q\);

-- Location: FF_X52_Y6_N13
\gpmc_driver|ram[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][6]~q\);

-- Location: LCCOMB_X52_Y6_N12
\gpmc_driver|gpmc_data_out~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~127_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~127_combout\);

-- Location: LCCOMB_X54_Y6_N16
\gpmc_driver|ram[30][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[30][6]~feeder_combout\);

-- Location: FF_X54_Y6_N17
\gpmc_driver|ram[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[30][6]~feeder_combout\,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][6]~q\);

-- Location: FF_X53_Y6_N23
\gpmc_driver|ram[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][6]~q\);

-- Location: LCCOMB_X53_Y6_N22
\gpmc_driver|gpmc_data_out~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~128_combout\ = (\gpmc_driver|gpmc_data_out~127_combout\ & ((\gpmc_driver|ram[30][6]~q\) # ((!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~127_combout\ & (((\gpmc_driver|ram[22][6]~q\ & 
-- \gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~127_combout\,
	datab => \gpmc_driver|ram[30][6]~q\,
	datac => \gpmc_driver|ram[22][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~128_combout\);

-- Location: LCCOMB_X53_Y11_N0
\gpmc_driver|ram[23][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[23][6]~feeder_combout\);

-- Location: FF_X53_Y11_N1
\gpmc_driver|ram[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][6]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][6]~q\);

-- Location: FF_X53_Y11_N11
\gpmc_driver|ram[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][6]~q\);

-- Location: LCCOMB_X53_Y11_N10
\gpmc_driver|gpmc_data_out~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~134_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[23][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[19][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[23][6]~q\,
	datac => \gpmc_driver|ram[19][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~134_combout\);

-- Location: FF_X52_Y11_N13
\gpmc_driver|ram[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][6]~q\);

-- Location: LCCOMB_X52_Y11_N10
\gpmc_driver|ram[27][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[27][6]~feeder_combout\);

-- Location: FF_X52_Y11_N11
\gpmc_driver|ram[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][6]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][6]~q\);

-- Location: LCCOMB_X52_Y11_N12
\gpmc_driver|gpmc_data_out~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~135_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~134_combout\ & (\gpmc_driver|ram[31][6]~q\)) # (!\gpmc_driver|gpmc_data_out~134_combout\ & ((\gpmc_driver|ram[27][6]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~134_combout\,
	datac => \gpmc_driver|ram[31][6]~q\,
	datad => \gpmc_driver|ram[27][6]~q\,
	combout => \gpmc_driver|gpmc_data_out~135_combout\);

-- Location: LCCOMB_X54_Y7_N10
\gpmc_driver|ram[21][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[21][6]~feeder_combout\);

-- Location: FF_X54_Y7_N11
\gpmc_driver|ram[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][6]~feeder_combout\,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][6]~q\);

-- Location: FF_X53_Y7_N23
\gpmc_driver|ram[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][6]~q\);

-- Location: LCCOMB_X53_Y7_N22
\gpmc_driver|gpmc_data_out~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~129_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[21][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[17][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[21][6]~q\,
	datac => \gpmc_driver|ram[17][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~129_combout\);

-- Location: FF_X53_Y7_N21
\gpmc_driver|ram[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][6]~q\);

-- Location: LCCOMB_X56_Y7_N8
\gpmc_driver|ram[25][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[25][6]~feeder_combout\);

-- Location: FF_X56_Y7_N9
\gpmc_driver|ram[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][6]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][6]~q\);

-- Location: LCCOMB_X53_Y7_N20
\gpmc_driver|gpmc_data_out~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~130_combout\ = (\gpmc_driver|gpmc_data_out~129_combout\ & (((\gpmc_driver|ram[29][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3)))) # (!\gpmc_driver|gpmc_data_out~129_combout\ & (\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[25][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~129_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[29][6]~q\,
	datad => \gpmc_driver|ram[25][6]~q\,
	combout => \gpmc_driver|gpmc_data_out~130_combout\);

-- Location: LCCOMB_X50_Y6_N12
\gpmc_driver|ram[20][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[20][6]~feeder_combout\);

-- Location: FF_X50_Y6_N13
\gpmc_driver|ram[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][6]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][6]~q\);

-- Location: FF_X51_Y7_N21
\gpmc_driver|ram[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][6]~q\);

-- Location: LCCOMB_X50_Y9_N6
\gpmc_driver|ram[24][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[24][6]~feeder_combout\);

-- Location: FF_X50_Y9_N7
\gpmc_driver|ram[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][6]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][6]~q\);

-- Location: FF_X51_Y7_N19
\gpmc_driver|ram[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][6]~q\);

-- Location: LCCOMB_X51_Y7_N18
\gpmc_driver|gpmc_data_out~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~131_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][6]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~131_combout\);

-- Location: LCCOMB_X51_Y7_N20
\gpmc_driver|gpmc_data_out~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~132_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~131_combout\ & ((\gpmc_driver|ram[28][6]~q\))) # (!\gpmc_driver|gpmc_data_out~131_combout\ & (\gpmc_driver|ram[20][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[20][6]~q\,
	datac => \gpmc_driver|ram[28][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~131_combout\,
	combout => \gpmc_driver|gpmc_data_out~132_combout\);

-- Location: LCCOMB_X52_Y8_N12
\gpmc_driver|gpmc_data_out~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~133_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~130_combout\)) # (!\gpmc_driver|gpmc_addr_in\(0) 
-- & ((\gpmc_driver|gpmc_data_out~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~130_combout\,
	datad => \gpmc_driver|gpmc_data_out~132_combout\,
	combout => \gpmc_driver|gpmc_data_out~133_combout\);

-- Location: LCCOMB_X52_Y8_N26
\gpmc_driver|gpmc_data_out~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~136_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~133_combout\ & ((\gpmc_driver|gpmc_data_out~135_combout\))) # (!\gpmc_driver|gpmc_data_out~133_combout\ & (\gpmc_driver|gpmc_data_out~128_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~128_combout\,
	datac => \gpmc_driver|gpmc_data_out~135_combout\,
	datad => \gpmc_driver|gpmc_data_out~133_combout\,
	combout => \gpmc_driver|gpmc_data_out~136_combout\);

-- Location: LCCOMB_X54_Y9_N20
\gpmc_driver|ram[10][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[10][6]~feeder_combout\);

-- Location: FF_X54_Y9_N21
\gpmc_driver|ram[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][6]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][6]~q\);

-- Location: FF_X55_Y9_N13
\gpmc_driver|ram[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][6]~q\);

-- Location: LCCOMB_X50_Y9_N4
\gpmc_driver|ram[9][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[9][6]~feeder_combout\);

-- Location: FF_X50_Y9_N5
\gpmc_driver|ram[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][6]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][6]~q\);

-- Location: FF_X54_Y9_N15
\gpmc_driver|ram[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][6]~q\);

-- Location: LCCOMB_X54_Y9_N14
\gpmc_driver|gpmc_data_out~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~137_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[8][6]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][6]~q\,
	datac => \gpmc_driver|ram[8][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~137_combout\);

-- Location: LCCOMB_X55_Y9_N12
\gpmc_driver|gpmc_data_out~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~138_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~137_combout\ & ((\gpmc_driver|ram[11][6]~q\))) # (!\gpmc_driver|gpmc_data_out~137_combout\ & (\gpmc_driver|ram[10][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][6]~q\,
	datac => \gpmc_driver|ram[11][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~137_combout\,
	combout => \gpmc_driver|gpmc_data_out~138_combout\);

-- Location: LCCOMB_X50_Y7_N4
\gpmc_driver|ram[13][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[13][6]~feeder_combout\);

-- Location: FF_X50_Y7_N5
\gpmc_driver|ram[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][6]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][6]~q\);

-- Location: LCCOMB_X49_Y7_N14
\gpmc_driver|ram[14][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[14][6]~feeder_combout\);

-- Location: FF_X49_Y7_N15
\gpmc_driver|ram[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][6]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][6]~q\);

-- Location: FF_X50_Y7_N11
\gpmc_driver|ram[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][6]~q\);

-- Location: LCCOMB_X50_Y7_N10
\gpmc_driver|gpmc_data_out~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~144_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[14][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[12][6]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~144_combout\);

-- Location: FF_X49_Y7_N29
\gpmc_driver|ram[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][6]~q\);

-- Location: LCCOMB_X49_Y7_N28
\gpmc_driver|gpmc_data_out~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~145_combout\ = (\gpmc_driver|gpmc_data_out~144_combout\ & (((\gpmc_driver|ram[15][6]~q\) # (!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~144_combout\ & (\gpmc_driver|ram[13][6]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][6]~q\,
	datab => \gpmc_driver|gpmc_data_out~144_combout\,
	datac => \gpmc_driver|ram[15][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~145_combout\);

-- Location: LCCOMB_X55_Y10_N26
\gpmc_driver|ram~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~58_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(6)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(6),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(6),
	combout => \gpmc_driver|ram~58_combout\);

-- Location: FF_X55_Y10_N27
\gpmc_driver|ram[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~58_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][6]~q\);

-- Location: LCCOMB_X56_Y10_N12
\QD2|counter[22]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[22]~77_combout\ = ((\QD2|flipflop\(0) $ (\QD2|counter\(22) $ (!\QD2|counter[21]~76\)))) # (GND)
-- \QD2|counter[22]~78\ = CARRY((\QD2|flipflop\(0) & ((\QD2|counter\(22)) # (!\QD2|counter[21]~76\))) # (!\QD2|flipflop\(0) & (\QD2|counter\(22) & !\QD2|counter[21]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(22),
	datad => VCC,
	cin => \QD2|counter[21]~76\,
	combout => \QD2|counter[22]~77_combout\,
	cout => \QD2|counter[22]~78\);

-- Location: FF_X56_Y10_N13
\QD2|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[22]~77_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(22));

-- Location: LCCOMB_X55_Y10_N16
\gpmc_driver|ram~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~61_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(22)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(6),
	datab => \QD2|counter\(22),
	datac => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~61_combout\);

-- Location: FF_X55_Y10_N17
\gpmc_driver|ram[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~61_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][6]~q\);

-- Location: LCCOMB_X53_Y10_N6
\gpmc_driver|ram~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~59_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(22)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(6),
	datac => \qd1|position\(22),
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~59_combout\);

-- Location: FF_X53_Y10_N7
\gpmc_driver|ram[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~59_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][6]~q\);

-- Location: LCCOMB_X52_Y11_N30
\gpmc_driver|ram~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~60_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\qd1|position\(6))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \qd1|position\(6),
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram~60_combout\);

-- Location: FF_X53_Y10_N9
\gpmc_driver|ram[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram~60_combout\,
	sload => VCC,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][6]~q\);

-- Location: LCCOMB_X53_Y10_N8
\gpmc_driver|gpmc_data_out~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~141_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[1][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[0][6]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[1][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[0][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~141_combout\);

-- Location: LCCOMB_X53_Y10_N26
\gpmc_driver|gpmc_data_out~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~142_combout\ = (\gpmc_driver|gpmc_data_out~141_combout\ & (((\gpmc_driver|ram[3][6]~q\) # (!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~141_combout\ & (\gpmc_driver|ram[2][6]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[2][6]~q\,
	datab => \gpmc_driver|ram[3][6]~q\,
	datac => \gpmc_driver|gpmc_data_out~141_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~142_combout\);

-- Location: LCCOMB_X51_Y12_N14
\gpmc_driver|ram[5][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[5][6]~feeder_combout\);

-- Location: FF_X51_Y12_N15
\gpmc_driver|ram[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][6]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][6]~q\);

-- Location: LCCOMB_X54_Y8_N16
\gpmc_driver|ram[6][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[6][6]~feeder_combout\);

-- Location: FF_X54_Y8_N17
\gpmc_driver|ram[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][6]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][6]~q\);

-- Location: FF_X51_Y11_N29
\gpmc_driver|ram[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][6]~q\);

-- Location: LCCOMB_X51_Y11_N28
\gpmc_driver|gpmc_data_out~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~139_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[6][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[4][6]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][6]~q\,
	datac => \gpmc_driver|ram[4][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~139_combout\);

-- Location: FF_X51_Y11_N7
\gpmc_driver|ram[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][6]~q\);

-- Location: LCCOMB_X51_Y11_N6
\gpmc_driver|gpmc_data_out~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~140_combout\ = (\gpmc_driver|gpmc_data_out~139_combout\ & (((\gpmc_driver|ram[7][6]~q\) # (!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~139_combout\ & (\gpmc_driver|ram[5][6]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][6]~q\,
	datab => \gpmc_driver|gpmc_data_out~139_combout\,
	datac => \gpmc_driver|ram[7][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~140_combout\);

-- Location: LCCOMB_X52_Y8_N16
\gpmc_driver|gpmc_data_out~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~143_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3)) # (\gpmc_driver|gpmc_data_out~140_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~142_combout\ & 
-- (!\gpmc_driver|gpmc_addr_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~142_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_data_out~140_combout\,
	combout => \gpmc_driver|gpmc_data_out~143_combout\);

-- Location: LCCOMB_X52_Y8_N2
\gpmc_driver|gpmc_data_out~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~146_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~143_combout\ & ((\gpmc_driver|gpmc_data_out~145_combout\))) # (!\gpmc_driver|gpmc_data_out~143_combout\ & (\gpmc_driver|gpmc_data_out~138_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~138_combout\,
	datab => \gpmc_driver|gpmc_data_out~145_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_data_out~143_combout\,
	combout => \gpmc_driver|gpmc_data_out~146_combout\);

-- Location: LCCOMB_X52_Y8_N6
\gpmc_driver|gpmc_data_out~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~147_combout\ = (\gpmc_driver|gpmc_data_out~136_combout\ & ((\gpmc_driver|ram[31][0]~3_combout\) # ((\gpmc_driver|ram[15][0]~0_combout\ & \gpmc_driver|gpmc_data_out~146_combout\)))) # (!\gpmc_driver|gpmc_data_out~136_combout\ & 
-- (((\gpmc_driver|ram[15][0]~0_combout\ & \gpmc_driver|gpmc_data_out~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~136_combout\,
	datab => \gpmc_driver|ram[31][0]~3_combout\,
	datac => \gpmc_driver|ram[15][0]~0_combout\,
	datad => \gpmc_driver|gpmc_data_out~146_combout\,
	combout => \gpmc_driver|gpmc_data_out~147_combout\);

-- Location: FF_X52_Y8_N7
\gpmc_driver|gpmc_data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~147_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(6));

-- Location: IOIBUF_X48_Y0_N29
\GPMC_DATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(7),
	o => \GPMC_DATA[7]~input_o\);

-- Location: LCCOMB_X49_Y6_N6
\gpmc_driver|gpmc_data_in[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[7]~feeder_combout\ = \GPMC_DATA[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[7]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[7]~feeder_combout\);

-- Location: FF_X49_Y6_N7
\gpmc_driver|gpmc_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(7));

-- Location: LCCOMB_X50_Y11_N12
\gpmc_driver|ram[23][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[23][7]~feeder_combout\);

-- Location: FF_X50_Y11_N13
\gpmc_driver|ram[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][7]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][7]~q\);

-- Location: LCCOMB_X49_Y11_N20
\gpmc_driver|ram[27][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[27][7]~feeder_combout\);

-- Location: FF_X49_Y11_N21
\gpmc_driver|ram[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][7]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][7]~q\);

-- Location: FF_X49_Y11_N7
\gpmc_driver|ram[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][7]~q\);

-- Location: LCCOMB_X49_Y11_N6
\gpmc_driver|gpmc_data_out~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~155_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][7]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][7]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][7]~q\,
	datac => \gpmc_driver|ram[19][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~155_combout\);

-- Location: FF_X50_Y11_N31
\gpmc_driver|ram[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][7]~q\);

-- Location: LCCOMB_X50_Y11_N30
\gpmc_driver|gpmc_data_out~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~156_combout\ = (\gpmc_driver|gpmc_data_out~155_combout\ & (((\gpmc_driver|ram[31][7]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~155_combout\ & (\gpmc_driver|ram[23][7]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][7]~q\,
	datab => \gpmc_driver|gpmc_data_out~155_combout\,
	datac => \gpmc_driver|ram[31][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~156_combout\);

-- Location: LCCOMB_X50_Y9_N2
\gpmc_driver|ram[24][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[24][7]~feeder_combout\);

-- Location: FF_X50_Y9_N3
\gpmc_driver|ram[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][7]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][7]~q\);

-- Location: FF_X51_Y7_N5
\gpmc_driver|ram[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][7]~q\);

-- Location: LCCOMB_X50_Y6_N6
\gpmc_driver|ram[20][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[20][7]~feeder_combout\);

-- Location: FF_X50_Y6_N7
\gpmc_driver|ram[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][7]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][7]~q\);

-- Location: FF_X51_Y7_N11
\gpmc_driver|ram[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][7]~q\);

-- Location: LCCOMB_X51_Y7_N10
\gpmc_driver|gpmc_data_out~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~152_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~152_combout\);

-- Location: LCCOMB_X51_Y7_N4
\gpmc_driver|gpmc_data_out~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~153_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~152_combout\ & ((\gpmc_driver|ram[28][7]~q\))) # (!\gpmc_driver|gpmc_data_out~152_combout\ & (\gpmc_driver|ram[24][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~152_combout\,
	combout => \gpmc_driver|gpmc_data_out~153_combout\);

-- Location: LCCOMB_X51_Y6_N18
\gpmc_driver|ram[26][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[26][7]~feeder_combout\);

-- Location: FF_X51_Y6_N19
\gpmc_driver|ram[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][7]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][7]~q\);

-- Location: LCCOMB_X53_Y6_N18
\gpmc_driver|ram[22][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[22][7]~feeder_combout\);

-- Location: FF_X53_Y6_N19
\gpmc_driver|ram[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][7]~feeder_combout\,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][7]~q\);

-- Location: FF_X52_Y6_N19
\gpmc_driver|ram[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][7]~q\);

-- Location: LCCOMB_X52_Y6_N18
\gpmc_driver|gpmc_data_out~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~150_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][7]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][7]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[22][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~150_combout\);

-- Location: FF_X52_Y6_N1
\gpmc_driver|ram[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][7]~q\);

-- Location: LCCOMB_X52_Y6_N0
\gpmc_driver|gpmc_data_out~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~151_combout\ = (\gpmc_driver|gpmc_data_out~150_combout\ & (((\gpmc_driver|ram[30][7]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~150_combout\ & (\gpmc_driver|ram[26][7]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][7]~q\,
	datab => \gpmc_driver|gpmc_data_out~150_combout\,
	datac => \gpmc_driver|ram[30][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~151_combout\);

-- Location: LCCOMB_X51_Y7_N22
\gpmc_driver|gpmc_data_out~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~154_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~151_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~153_combout\,
	datad => \gpmc_driver|gpmc_data_out~151_combout\,
	combout => \gpmc_driver|gpmc_data_out~154_combout\);

-- Location: LCCOMB_X53_Y7_N6
\gpmc_driver|ram[29][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[29][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[29][7]~feeder_combout\);

-- Location: FF_X53_Y7_N7
\gpmc_driver|ram[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[29][7]~feeder_combout\,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][7]~q\);

-- Location: FF_X54_Y7_N9
\gpmc_driver|ram[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][7]~q\);

-- Location: LCCOMB_X56_Y7_N2
\gpmc_driver|ram[25][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[25][7]~feeder_combout\);

-- Location: FF_X56_Y7_N3
\gpmc_driver|ram[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][7]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][7]~q\);

-- Location: FF_X55_Y7_N27
\gpmc_driver|ram[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][7]~q\);

-- Location: LCCOMB_X55_Y7_N26
\gpmc_driver|gpmc_data_out~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~148_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][7]~q\,
	datac => \gpmc_driver|ram[17][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~148_combout\);

-- Location: LCCOMB_X54_Y7_N8
\gpmc_driver|gpmc_data_out~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~149_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~148_combout\ & (\gpmc_driver|ram[29][7]~q\)) # (!\gpmc_driver|gpmc_data_out~148_combout\ & ((\gpmc_driver|ram[21][7]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[29][7]~q\,
	datac => \gpmc_driver|ram[21][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~148_combout\,
	combout => \gpmc_driver|gpmc_data_out~149_combout\);

-- Location: LCCOMB_X50_Y10_N0
\gpmc_driver|gpmc_data_out~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~157_combout\ = (\gpmc_driver|gpmc_data_out~154_combout\ & ((\gpmc_driver|gpmc_data_out~156_combout\) # ((!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~154_combout\ & (((\gpmc_driver|gpmc_addr_in\(0) & 
-- \gpmc_driver|gpmc_data_out~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~156_combout\,
	datab => \gpmc_driver|gpmc_data_out~154_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_data_out~149_combout\,
	combout => \gpmc_driver|gpmc_data_out~157_combout\);

-- Location: LCCOMB_X49_Y8_N4
\gpmc_driver|ram[6][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[6][7]~feeder_combout\);

-- Location: FF_X49_Y8_N5
\gpmc_driver|ram[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][7]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][7]~q\);

-- Location: FF_X50_Y8_N31
\gpmc_driver|ram[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][7]~q\);

-- Location: FF_X50_Y8_N21
\gpmc_driver|ram[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][7]~q\);

-- Location: LCCOMB_X49_Y8_N14
\gpmc_driver|ram[4][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[4][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[4][7]~feeder_combout\);

-- Location: FF_X49_Y8_N15
\gpmc_driver|ram[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[4][7]~feeder_combout\,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][7]~q\);

-- Location: LCCOMB_X50_Y8_N20
\gpmc_driver|gpmc_data_out~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~158_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[5][7]~q\,
	datad => \gpmc_driver|ram[4][7]~q\,
	combout => \gpmc_driver|gpmc_data_out~158_combout\);

-- Location: LCCOMB_X50_Y8_N30
\gpmc_driver|gpmc_data_out~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~159_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~158_combout\ & ((\gpmc_driver|ram[7][7]~q\))) # (!\gpmc_driver|gpmc_data_out~158_combout\ & (\gpmc_driver|ram[6][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][7]~q\,
	datac => \gpmc_driver|ram[7][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~158_combout\,
	combout => \gpmc_driver|gpmc_data_out~159_combout\);

-- Location: LCCOMB_X49_Y7_N22
\gpmc_driver|ram[14][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[14][7]~feeder_combout\);

-- Location: FF_X49_Y7_N23
\gpmc_driver|ram[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][7]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][7]~q\);

-- Location: FF_X49_Y7_N21
\gpmc_driver|ram[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][7]~q\);

-- Location: LCCOMB_X50_Y7_N24
\gpmc_driver|ram[13][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[13][7]~feeder_combout\);

-- Location: FF_X50_Y7_N25
\gpmc_driver|ram[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][7]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][7]~q\);

-- Location: FF_X50_Y7_N3
\gpmc_driver|ram[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][7]~q\);

-- Location: LCCOMB_X50_Y7_N2
\gpmc_driver|gpmc_data_out~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~165_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[13][7]~q\,
	datac => \gpmc_driver|ram[12][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~165_combout\);

-- Location: LCCOMB_X49_Y7_N20
\gpmc_driver|gpmc_data_out~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~166_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~165_combout\ & ((\gpmc_driver|ram[15][7]~q\))) # (!\gpmc_driver|gpmc_data_out~165_combout\ & (\gpmc_driver|ram[14][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[15][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~165_combout\,
	combout => \gpmc_driver|gpmc_data_out~166_combout\);

-- Location: LCCOMB_X49_Y10_N16
\gpmc_driver|ram~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~62_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\qd1|position\(23))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(23),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram~62_combout\);

-- Location: FF_X49_Y10_N17
\gpmc_driver|ram[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~62_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][7]~q\);

-- Location: LCCOMB_X56_Y10_N14
\QD2|counter[23]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[23]~79_combout\ = (\QD2|flipflop\(0) & ((\QD2|counter\(23) & (\QD2|counter[22]~78\ & VCC)) # (!\QD2|counter\(23) & (!\QD2|counter[22]~78\)))) # (!\QD2|flipflop\(0) & ((\QD2|counter\(23) & (!\QD2|counter[22]~78\)) # (!\QD2|counter\(23) & 
-- ((\QD2|counter[22]~78\) # (GND)))))
-- \QD2|counter[23]~80\ = CARRY((\QD2|flipflop\(0) & (!\QD2|counter\(23) & !\QD2|counter[22]~78\)) # (!\QD2|flipflop\(0) & ((!\QD2|counter[22]~78\) # (!\QD2|counter\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|flipflop\(0),
	datab => \QD2|counter\(23),
	datad => VCC,
	cin => \QD2|counter[22]~78\,
	combout => \QD2|counter[23]~79_combout\,
	cout => \QD2|counter[23]~80\);

-- Location: FF_X56_Y10_N15
\QD2|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[23]~79_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(23));

-- Location: LCCOMB_X55_Y10_N6
\gpmc_driver|ram~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~65_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\QD2|counter\(23))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \QD2|counter\(23),
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram~65_combout\);

-- Location: FF_X55_Y10_N7
\gpmc_driver|ram[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~65_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][7]~q\);

-- Location: LCCOMB_X49_Y10_N2
\gpmc_driver|ram~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~64_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\qd1|position\(7))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(7),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram~64_combout\);

-- Location: FF_X49_Y10_N3
\gpmc_driver|ram[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~64_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][7]~q\);

-- Location: LCCOMB_X55_Y11_N30
\gpmc_driver|ram~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~63_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(7)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(7),
	datab => \QD2|counter\(7),
	datac => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~63_combout\);

-- Location: FF_X55_Y11_N31
\gpmc_driver|ram[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~63_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][7]~q\);

-- Location: LCCOMB_X51_Y10_N24
\gpmc_driver|gpmc_data_out~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~162_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[2][7]~q\) # (\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[0][7]~q\ & ((!\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[0][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[2][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~162_combout\);

-- Location: LCCOMB_X50_Y10_N18
\gpmc_driver|gpmc_data_out~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~163_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~162_combout\ & ((\gpmc_driver|ram[3][7]~q\))) # (!\gpmc_driver|gpmc_data_out~162_combout\ & (\gpmc_driver|ram[1][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[1][7]~q\,
	datab => \gpmc_driver|ram[3][7]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_data_out~162_combout\,
	combout => \gpmc_driver|gpmc_data_out~163_combout\);

-- Location: LCCOMB_X49_Y9_N2
\gpmc_driver|ram[9][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[9][7]~feeder_combout\);

-- Location: FF_X49_Y9_N3
\gpmc_driver|ram[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][7]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][7]~q\);

-- Location: FF_X49_Y9_N25
\gpmc_driver|ram[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][7]~q\);

-- Location: LCCOMB_X54_Y9_N4
\gpmc_driver|ram[10][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[10][7]~feeder_combout\);

-- Location: FF_X54_Y9_N5
\gpmc_driver|ram[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][7]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][7]~q\);

-- Location: FF_X54_Y9_N23
\gpmc_driver|ram[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][7]~q\);

-- Location: LCCOMB_X54_Y9_N22
\gpmc_driver|gpmc_data_out~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~160_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[10][7]~q\,
	datac => \gpmc_driver|ram[8][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~160_combout\);

-- Location: LCCOMB_X49_Y9_N24
\gpmc_driver|gpmc_data_out~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~161_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~160_combout\ & ((\gpmc_driver|ram[11][7]~q\))) # (!\gpmc_driver|gpmc_data_out~160_combout\ & (\gpmc_driver|ram[9][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][7]~q\,
	datac => \gpmc_driver|ram[11][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~160_combout\,
	combout => \gpmc_driver|gpmc_data_out~161_combout\);

-- Location: LCCOMB_X50_Y10_N12
\gpmc_driver|gpmc_data_out~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~164_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2)) # (\gpmc_driver|gpmc_data_out~161_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~163_combout\ & 
-- (!\gpmc_driver|gpmc_addr_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~163_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~161_combout\,
	combout => \gpmc_driver|gpmc_data_out~164_combout\);

-- Location: LCCOMB_X50_Y10_N6
\gpmc_driver|gpmc_data_out~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~167_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~164_combout\ & ((\gpmc_driver|gpmc_data_out~166_combout\))) # (!\gpmc_driver|gpmc_data_out~164_combout\ & (\gpmc_driver|gpmc_data_out~159_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~159_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~166_combout\,
	datad => \gpmc_driver|gpmc_data_out~164_combout\,
	combout => \gpmc_driver|gpmc_data_out~167_combout\);

-- Location: LCCOMB_X50_Y10_N30
\gpmc_driver|gpmc_data_out~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~168_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~167_combout\) # ((\gpmc_driver|gpmc_data_out~157_combout\ & \gpmc_driver|ram[31][0]~3_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (\gpmc_driver|gpmc_data_out~157_combout\ & (\gpmc_driver|ram[31][0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|gpmc_data_out~157_combout\,
	datac => \gpmc_driver|ram[31][0]~3_combout\,
	datad => \gpmc_driver|gpmc_data_out~167_combout\,
	combout => \gpmc_driver|gpmc_data_out~168_combout\);

-- Location: FF_X50_Y10_N31
\gpmc_driver|gpmc_data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~168_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(7));

-- Location: IOIBUF_X48_Y0_N22
\GPMC_DATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(8),
	o => \GPMC_DATA[8]~input_o\);

-- Location: LCCOMB_X55_Y6_N28
\gpmc_driver|gpmc_data_in[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[8]~feeder_combout\ = \GPMC_DATA[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[8]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[8]~feeder_combout\);

-- Location: FF_X55_Y6_N29
\gpmc_driver|gpmc_data_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(8));

-- Location: LCCOMB_X51_Y6_N4
\gpmc_driver|ram[26][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[26][8]~feeder_combout\);

-- Location: FF_X51_Y6_N5
\gpmc_driver|ram[26][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][8]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][8]~q\);

-- Location: FF_X52_Y6_N11
\gpmc_driver|ram[18][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][8]~q\);

-- Location: LCCOMB_X52_Y6_N10
\gpmc_driver|gpmc_data_out~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~169_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[26][8]~q\,
	datac => \gpmc_driver|ram[18][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~169_combout\);

-- Location: LCCOMB_X54_Y6_N18
\gpmc_driver|ram[30][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[30][8]~feeder_combout\);

-- Location: FF_X54_Y6_N19
\gpmc_driver|ram[30][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[30][8]~feeder_combout\,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][8]~q\);

-- Location: FF_X53_Y6_N3
\gpmc_driver|ram[22][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][8]~q\);

-- Location: LCCOMB_X53_Y6_N2
\gpmc_driver|gpmc_data_out~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~170_combout\ = (\gpmc_driver|gpmc_data_out~169_combout\ & ((\gpmc_driver|ram[30][8]~q\) # ((!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~169_combout\ & (((\gpmc_driver|ram[22][8]~q\ & 
-- \gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~169_combout\,
	datab => \gpmc_driver|ram[30][8]~q\,
	datac => \gpmc_driver|ram[22][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~170_combout\);

-- Location: LCCOMB_X49_Y11_N8
\gpmc_driver|ram[27][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[27][8]~feeder_combout\);

-- Location: FF_X49_Y11_N9
\gpmc_driver|ram[27][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][8]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][8]~q\);

-- Location: LCCOMB_X50_Y11_N16
\gpmc_driver|ram[23][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[23][8]~feeder_combout\);

-- Location: FF_X50_Y11_N17
\gpmc_driver|ram[23][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][8]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][8]~q\);

-- Location: FF_X49_Y11_N19
\gpmc_driver|ram[19][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][8]~q\);

-- Location: LCCOMB_X49_Y11_N18
\gpmc_driver|gpmc_data_out~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~176_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[23][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[19][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[23][8]~q\,
	datac => \gpmc_driver|ram[19][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~176_combout\);

-- Location: FF_X50_Y11_N19
\gpmc_driver|ram[31][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][8]~q\);

-- Location: LCCOMB_X50_Y11_N18
\gpmc_driver|gpmc_data_out~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~177_combout\ = (\gpmc_driver|gpmc_data_out~176_combout\ & (((\gpmc_driver|ram[31][8]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~176_combout\ & (\gpmc_driver|ram[27][8]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][8]~q\,
	datab => \gpmc_driver|gpmc_data_out~176_combout\,
	datac => \gpmc_driver|ram[31][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~177_combout\);

-- Location: FF_X53_Y7_N1
\gpmc_driver|ram[17][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][8]~q\);

-- Location: LCCOMB_X54_Y7_N6
\gpmc_driver|ram[21][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[21][8]~feeder_combout\);

-- Location: FF_X54_Y7_N7
\gpmc_driver|ram[21][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][8]~feeder_combout\,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][8]~q\);

-- Location: LCCOMB_X53_Y7_N0
\gpmc_driver|gpmc_data_out~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~171_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][8]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[17][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[17][8]~q\,
	datad => \gpmc_driver|ram[21][8]~q\,
	combout => \gpmc_driver|gpmc_data_out~171_combout\);

-- Location: FF_X53_Y7_N3
\gpmc_driver|ram[29][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][8]~q\);

-- Location: LCCOMB_X56_Y7_N16
\gpmc_driver|ram[25][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[25][8]~feeder_combout\);

-- Location: FF_X56_Y7_N17
\gpmc_driver|ram[25][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][8]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][8]~q\);

-- Location: LCCOMB_X53_Y7_N2
\gpmc_driver|gpmc_data_out~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~172_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~171_combout\ & (\gpmc_driver|ram[29][8]~q\)) # (!\gpmc_driver|gpmc_data_out~171_combout\ & ((\gpmc_driver|ram[25][8]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~171_combout\,
	datac => \gpmc_driver|ram[29][8]~q\,
	datad => \gpmc_driver|ram[25][8]~q\,
	combout => \gpmc_driver|gpmc_data_out~172_combout\);

-- Location: LCCOMB_X50_Y9_N24
\gpmc_driver|ram[24][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[24][8]~feeder_combout\);

-- Location: FF_X50_Y9_N25
\gpmc_driver|ram[24][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][8]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][8]~q\);

-- Location: FF_X51_Y9_N31
\gpmc_driver|ram[16][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][8]~q\);

-- Location: LCCOMB_X51_Y9_N30
\gpmc_driver|gpmc_data_out~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~173_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[24][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[16][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[24][8]~q\,
	datac => \gpmc_driver|ram[16][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~173_combout\);

-- Location: LCCOMB_X56_Y9_N10
\gpmc_driver|ram[20][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[20][8]~feeder_combout\);

-- Location: FF_X56_Y9_N11
\gpmc_driver|ram[20][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][8]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][8]~q\);

-- Location: FF_X51_Y9_N1
\gpmc_driver|ram[28][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][8]~q\);

-- Location: LCCOMB_X51_Y9_N0
\gpmc_driver|gpmc_data_out~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~174_combout\ = (\gpmc_driver|gpmc_data_out~173_combout\ & (((\gpmc_driver|ram[28][8]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~173_combout\ & (\gpmc_driver|ram[20][8]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~173_combout\,
	datab => \gpmc_driver|ram[20][8]~q\,
	datac => \gpmc_driver|ram[28][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~174_combout\);

-- Location: LCCOMB_X52_Y7_N2
\gpmc_driver|gpmc_data_out~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~175_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~172_combout\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((!\gpmc_driver|gpmc_addr_in\(1) & 
-- \gpmc_driver|gpmc_data_out~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~172_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~174_combout\,
	combout => \gpmc_driver|gpmc_data_out~175_combout\);

-- Location: LCCOMB_X52_Y7_N8
\gpmc_driver|gpmc_data_out~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~178_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~175_combout\ & ((\gpmc_driver|gpmc_data_out~177_combout\))) # (!\gpmc_driver|gpmc_data_out~175_combout\ & (\gpmc_driver|gpmc_data_out~170_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~170_combout\,
	datac => \gpmc_driver|gpmc_data_out~177_combout\,
	datad => \gpmc_driver|gpmc_data_out~175_combout\,
	combout => \gpmc_driver|gpmc_data_out~178_combout\);

-- Location: LCCOMB_X56_Y8_N12
\gpmc_driver|ram[9][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[9][8]~feeder_combout\);

-- Location: FF_X56_Y8_N13
\gpmc_driver|ram[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][8]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][8]~q\);

-- Location: FF_X55_Y8_N9
\gpmc_driver|ram[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][8]~q\);

-- Location: LCCOMB_X55_Y8_N8
\gpmc_driver|gpmc_data_out~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~179_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[9][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[8][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[9][8]~q\,
	datac => \gpmc_driver|ram[8][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~179_combout\);

-- Location: FF_X55_Y8_N3
\gpmc_driver|ram[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][8]~q\);

-- Location: LCCOMB_X56_Y8_N26
\gpmc_driver|ram[10][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[10][8]~feeder_combout\);

-- Location: FF_X56_Y8_N27
\gpmc_driver|ram[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][8]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][8]~q\);

-- Location: LCCOMB_X55_Y8_N2
\gpmc_driver|gpmc_data_out~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~180_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~179_combout\ & (\gpmc_driver|ram[11][8]~q\)) # (!\gpmc_driver|gpmc_data_out~179_combout\ & ((\gpmc_driver|ram[10][8]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~179_combout\,
	datac => \gpmc_driver|ram[11][8]~q\,
	datad => \gpmc_driver|ram[10][8]~q\,
	combout => \gpmc_driver|gpmc_data_out~180_combout\);

-- Location: LCCOMB_X50_Y10_N20
\gpmc_driver|ram[5][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[5][8]~feeder_combout\);

-- Location: FF_X50_Y10_N21
\gpmc_driver|ram[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][8]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][8]~q\);

-- Location: FF_X53_Y8_N9
\gpmc_driver|ram[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][8]~q\);

-- Location: LCCOMB_X49_Y8_N0
\gpmc_driver|ram[6][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[6][8]~feeder_combout\);

-- Location: FF_X49_Y8_N1
\gpmc_driver|ram[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][8]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][8]~q\);

-- Location: FF_X49_Y8_N17
\gpmc_driver|ram[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][8]~q\);

-- Location: LCCOMB_X49_Y8_N16
\gpmc_driver|gpmc_data_out~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~181_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[6][8]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[4][8]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][8]~q\,
	datac => \gpmc_driver|ram[4][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~181_combout\);

-- Location: LCCOMB_X53_Y8_N8
\gpmc_driver|gpmc_data_out~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~182_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~181_combout\ & ((\gpmc_driver|ram[7][8]~q\))) # (!\gpmc_driver|gpmc_data_out~181_combout\ & (\gpmc_driver|ram[5][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][8]~q\,
	datac => \gpmc_driver|ram[7][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~181_combout\,
	combout => \gpmc_driver|gpmc_data_out~182_combout\);

-- Location: LCCOMB_X56_Y10_N16
\QD2|counter[24]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[24]~81_combout\ = ((\QD2|counter\(24) $ (\QD2|flipflop\(0) $ (!\QD2|counter[23]~80\)))) # (GND)
-- \QD2|counter[24]~82\ = CARRY((\QD2|counter\(24) & ((\QD2|flipflop\(0)) # (!\QD2|counter[23]~80\))) # (!\QD2|counter\(24) & (\QD2|flipflop\(0) & !\QD2|counter[23]~80\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(24),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[23]~80\,
	combout => \QD2|counter[24]~81_combout\,
	cout => \QD2|counter[24]~82\);

-- Location: FF_X56_Y10_N17
\QD2|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[24]~81_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(24));

-- Location: LCCOMB_X55_Y10_N8
\gpmc_driver|ram~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~69_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(24)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(8),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(24),
	combout => \gpmc_driver|ram~69_combout\);

-- Location: FF_X55_Y10_N9
\gpmc_driver|ram[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~69_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][8]~q\);

-- Location: LCCOMB_X55_Y11_N4
\gpmc_driver|ram~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~66_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(8)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_data_in\(8),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(8),
	combout => \gpmc_driver|ram~66_combout\);

-- Location: FF_X55_Y11_N5
\gpmc_driver|ram[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~66_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][8]~q\);

-- Location: LCCOMB_X49_Y10_N22
\gpmc_driver|ram~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~68_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\qd1|position\(8))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \qd1|position\(8),
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram~68_combout\);

-- Location: FF_X49_Y10_N23
\gpmc_driver|ram[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~68_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][8]~q\);

-- Location: LCCOMB_X49_Y10_N20
\gpmc_driver|ram~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~67_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\qd1|position\(24))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(24),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram~67_combout\);

-- Location: FF_X49_Y10_N21
\gpmc_driver|ram[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~67_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][8]~q\);

-- Location: LCCOMB_X53_Y8_N2
\gpmc_driver|gpmc_data_out~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~183_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1)) # (\gpmc_driver|ram[1][8]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[0][8]~q\ & (!\gpmc_driver|gpmc_addr_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[0][8]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|ram[1][8]~q\,
	combout => \gpmc_driver|gpmc_data_out~183_combout\);

-- Location: LCCOMB_X53_Y8_N16
\gpmc_driver|gpmc_data_out~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~184_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~183_combout\ & (\gpmc_driver|ram[3][8]~q\)) # (!\gpmc_driver|gpmc_data_out~183_combout\ & ((\gpmc_driver|ram[2][8]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[3][8]~q\,
	datac => \gpmc_driver|ram[2][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~183_combout\,
	combout => \gpmc_driver|gpmc_data_out~184_combout\);

-- Location: LCCOMB_X53_Y8_N22
\gpmc_driver|gpmc_data_out~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~185_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~182_combout\)) # (!\gpmc_driver|gpmc_addr_in\(2) 
-- & ((\gpmc_driver|gpmc_data_out~184_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~182_combout\,
	datad => \gpmc_driver|gpmc_data_out~184_combout\,
	combout => \gpmc_driver|gpmc_data_out~185_combout\);

-- Location: LCCOMB_X48_Y9_N24
\gpmc_driver|ram[13][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[13][8]~feeder_combout\);

-- Location: FF_X48_Y9_N25
\gpmc_driver|ram[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][8]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][8]~q\);

-- Location: FF_X48_Y8_N23
\gpmc_driver|ram[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][8]~q\);

-- Location: LCCOMB_X48_Y9_N14
\gpmc_driver|ram[14][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[14][8]~feeder_combout\);

-- Location: FF_X48_Y9_N15
\gpmc_driver|ram[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][8]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][8]~q\);

-- Location: FF_X48_Y8_N25
\gpmc_driver|ram[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][8]~q\);

-- Location: LCCOMB_X48_Y8_N24
\gpmc_driver|gpmc_data_out~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~186_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[14][8]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[12][8]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~186_combout\);

-- Location: LCCOMB_X48_Y8_N22
\gpmc_driver|gpmc_data_out~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~187_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~186_combout\ & ((\gpmc_driver|ram[15][8]~q\))) # (!\gpmc_driver|gpmc_data_out~186_combout\ & (\gpmc_driver|ram[13][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][8]~q\,
	datac => \gpmc_driver|ram[15][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~186_combout\,
	combout => \gpmc_driver|gpmc_data_out~187_combout\);

-- Location: LCCOMB_X53_Y8_N20
\gpmc_driver|gpmc_data_out~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~188_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~185_combout\ & ((\gpmc_driver|gpmc_data_out~187_combout\))) # (!\gpmc_driver|gpmc_data_out~185_combout\ & (\gpmc_driver|gpmc_data_out~180_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~180_combout\,
	datac => \gpmc_driver|gpmc_data_out~185_combout\,
	datad => \gpmc_driver|gpmc_data_out~187_combout\,
	combout => \gpmc_driver|gpmc_data_out~188_combout\);

-- Location: LCCOMB_X52_Y7_N24
\gpmc_driver|gpmc_data_out~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~189_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~188_combout\) # ((\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|gpmc_data_out~178_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (\gpmc_driver|ram[31][0]~3_combout\ & (\gpmc_driver|gpmc_data_out~178_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|ram[31][0]~3_combout\,
	datac => \gpmc_driver|gpmc_data_out~178_combout\,
	datad => \gpmc_driver|gpmc_data_out~188_combout\,
	combout => \gpmc_driver|gpmc_data_out~189_combout\);

-- Location: FF_X52_Y7_N25
\gpmc_driver|gpmc_data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~189_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(8));

-- Location: IOIBUF_X54_Y0_N15
\GPMC_DATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(9),
	o => \GPMC_DATA[9]~input_o\);

-- Location: LCCOMB_X48_Y6_N0
\gpmc_driver|gpmc_data_in[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[9]~feeder_combout\ = \GPMC_DATA[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[9]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[9]~feeder_combout\);

-- Location: FF_X48_Y6_N1
\gpmc_driver|gpmc_data_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(9));

-- Location: LCCOMB_X56_Y10_N18
\QD2|counter[25]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[25]~83_combout\ = (\QD2|counter\(25) & ((\QD2|flipflop\(0) & (\QD2|counter[24]~82\ & VCC)) # (!\QD2|flipflop\(0) & (!\QD2|counter[24]~82\)))) # (!\QD2|counter\(25) & ((\QD2|flipflop\(0) & (!\QD2|counter[24]~82\)) # (!\QD2|flipflop\(0) & 
-- ((\QD2|counter[24]~82\) # (GND)))))
-- \QD2|counter[25]~84\ = CARRY((\QD2|counter\(25) & (!\QD2|flipflop\(0) & !\QD2|counter[24]~82\)) # (!\QD2|counter\(25) & ((!\QD2|counter[24]~82\) # (!\QD2|flipflop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(25),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[24]~82\,
	combout => \QD2|counter[25]~83_combout\,
	cout => \QD2|counter[25]~84\);

-- Location: FF_X56_Y10_N19
\QD2|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[25]~83_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(25));

-- Location: LCCOMB_X55_Y10_N18
\gpmc_driver|ram~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~73_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(25)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(9),
	datad => \QD2|counter\(25),
	combout => \gpmc_driver|ram~73_combout\);

-- Location: FF_X55_Y10_N19
\gpmc_driver|ram[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~73_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][9]~q\);

-- Location: LCCOMB_X48_Y10_N8
\gpmc_driver|ram~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~70_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(25)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(9),
	datad => \qd1|position\(25),
	combout => \gpmc_driver|ram~70_combout\);

-- Location: FF_X48_Y10_N9
\gpmc_driver|ram[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~70_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][9]~q\);

-- Location: LCCOMB_X55_Y11_N14
\gpmc_driver|ram~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~71_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(9)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(9),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(9),
	combout => \gpmc_driver|ram~71_combout\);

-- Location: FF_X55_Y11_N15
\gpmc_driver|ram[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~71_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][9]~q\);

-- Location: LCCOMB_X53_Y10_N24
\gpmc_driver|ram~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~72_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\qd1|position\(9))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(9),
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram~72_combout\);

-- Location: FF_X53_Y10_N25
\gpmc_driver|ram[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~72_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][9]~q\);

-- Location: LCCOMB_X55_Y9_N2
\gpmc_driver|gpmc_data_out~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~204_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[2][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[2][9]~q\,
	datac => \gpmc_driver|ram[0][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~204_combout\);

-- Location: LCCOMB_X55_Y9_N8
\gpmc_driver|gpmc_data_out~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~205_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~204_combout\ & (\gpmc_driver|ram[3][9]~q\)) # (!\gpmc_driver|gpmc_data_out~204_combout\ & ((\gpmc_driver|ram[1][9]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[3][9]~q\,
	datac => \gpmc_driver|ram[1][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~204_combout\,
	combout => \gpmc_driver|gpmc_data_out~205_combout\);

-- Location: LCCOMB_X56_Y8_N30
\gpmc_driver|ram[9][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[9][9]~feeder_combout\);

-- Location: FF_X56_Y8_N31
\gpmc_driver|ram[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][9]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][9]~q\);

-- Location: FF_X55_Y9_N17
\gpmc_driver|ram[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][9]~q\);

-- Location: LCCOMB_X56_Y9_N22
\gpmc_driver|ram[10][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[10][9]~feeder_combout\);

-- Location: FF_X56_Y9_N23
\gpmc_driver|ram[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][9]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][9]~q\);

-- Location: FF_X55_Y9_N11
\gpmc_driver|ram[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][9]~q\);

-- Location: LCCOMB_X55_Y9_N10
\gpmc_driver|gpmc_data_out~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~202_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[10][9]~q\,
	datac => \gpmc_driver|ram[8][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~202_combout\);

-- Location: LCCOMB_X55_Y9_N16
\gpmc_driver|gpmc_data_out~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~203_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~202_combout\ & ((\gpmc_driver|ram[11][9]~q\))) # (!\gpmc_driver|gpmc_data_out~202_combout\ & (\gpmc_driver|ram[9][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][9]~q\,
	datac => \gpmc_driver|ram[11][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~202_combout\,
	combout => \gpmc_driver|gpmc_data_out~203_combout\);

-- Location: LCCOMB_X55_Y9_N18
\gpmc_driver|gpmc_data_out~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~206_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_data_out~203_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|gpmc_data_out~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~205_combout\,
	datad => \gpmc_driver|gpmc_data_out~203_combout\,
	combout => \gpmc_driver|gpmc_data_out~206_combout\);

-- Location: LCCOMB_X49_Y8_N6
\gpmc_driver|ram[6][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[6][9]~feeder_combout\);

-- Location: FF_X49_Y8_N7
\gpmc_driver|ram[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][9]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][9]~q\);

-- Location: FF_X50_Y8_N15
\gpmc_driver|ram[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][9]~q\);

-- Location: LCCOMB_X49_Y8_N26
\gpmc_driver|ram[4][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[4][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[4][9]~feeder_combout\);

-- Location: FF_X49_Y8_N27
\gpmc_driver|ram[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[4][9]~feeder_combout\,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][9]~q\);

-- Location: FF_X50_Y8_N29
\gpmc_driver|ram[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][9]~q\);

-- Location: LCCOMB_X50_Y8_N28
\gpmc_driver|gpmc_data_out~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~200_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][9]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[4][9]~q\,
	datac => \gpmc_driver|ram[5][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~200_combout\);

-- Location: LCCOMB_X50_Y8_N14
\gpmc_driver|gpmc_data_out~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~201_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~200_combout\ & ((\gpmc_driver|ram[7][9]~q\))) # (!\gpmc_driver|gpmc_data_out~200_combout\ & (\gpmc_driver|ram[6][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][9]~q\,
	datac => \gpmc_driver|ram[7][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~200_combout\,
	combout => \gpmc_driver|gpmc_data_out~201_combout\);

-- Location: LCCOMB_X48_Y9_N0
\gpmc_driver|ram[14][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[14][9]~feeder_combout\);

-- Location: FF_X48_Y9_N1
\gpmc_driver|ram[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][9]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][9]~q\);

-- Location: FF_X48_Y8_N3
\gpmc_driver|ram[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][9]~q\);

-- Location: LCCOMB_X48_Y9_N10
\gpmc_driver|ram[13][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[13][9]~feeder_combout\);

-- Location: FF_X48_Y9_N11
\gpmc_driver|ram[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][9]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][9]~q\);

-- Location: FF_X48_Y8_N29
\gpmc_driver|ram[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][9]~q\);

-- Location: LCCOMB_X48_Y8_N28
\gpmc_driver|gpmc_data_out~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~207_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[13][9]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[12][9]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][9]~q\,
	datac => \gpmc_driver|ram[12][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~207_combout\);

-- Location: LCCOMB_X48_Y8_N2
\gpmc_driver|gpmc_data_out~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~208_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~207_combout\ & ((\gpmc_driver|ram[15][9]~q\))) # (!\gpmc_driver|gpmc_data_out~207_combout\ & (\gpmc_driver|ram[14][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[15][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~207_combout\,
	combout => \gpmc_driver|gpmc_data_out~208_combout\);

-- Location: LCCOMB_X52_Y9_N24
\gpmc_driver|gpmc_data_out~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~209_combout\ = (\gpmc_driver|gpmc_data_out~206_combout\ & (((\gpmc_driver|gpmc_data_out~208_combout\)) # (!\gpmc_driver|gpmc_addr_in\(2)))) # (!\gpmc_driver|gpmc_data_out~206_combout\ & (\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|gpmc_data_out~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~206_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~201_combout\,
	datad => \gpmc_driver|gpmc_data_out~208_combout\,
	combout => \gpmc_driver|gpmc_data_out~209_combout\);

-- Location: LCCOMB_X49_Y11_N4
\gpmc_driver|ram[27][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[27][9]~feeder_combout\);

-- Location: FF_X49_Y11_N5
\gpmc_driver|ram[27][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][9]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][9]~q\);

-- Location: FF_X49_Y11_N27
\gpmc_driver|ram[19][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][9]~q\);

-- Location: LCCOMB_X49_Y11_N26
\gpmc_driver|gpmc_data_out~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~197_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][9]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][9]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][9]~q\,
	datac => \gpmc_driver|ram[19][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~197_combout\);

-- Location: LCCOMB_X50_Y11_N20
\gpmc_driver|ram[23][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[23][9]~feeder_combout\);

-- Location: FF_X50_Y11_N21
\gpmc_driver|ram[23][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][9]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][9]~q\);

-- Location: FF_X50_Y11_N11
\gpmc_driver|ram[31][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][9]~q\);

-- Location: LCCOMB_X50_Y11_N10
\gpmc_driver|gpmc_data_out~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~198_combout\ = (\gpmc_driver|gpmc_data_out~197_combout\ & (((\gpmc_driver|ram[31][9]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~197_combout\ & (\gpmc_driver|ram[23][9]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~197_combout\,
	datab => \gpmc_driver|ram[23][9]~q\,
	datac => \gpmc_driver|ram[31][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~198_combout\);

-- Location: LCCOMB_X56_Y9_N4
\gpmc_driver|ram[20][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[20][9]~feeder_combout\);

-- Location: FF_X56_Y9_N5
\gpmc_driver|ram[20][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][9]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][9]~q\);

-- Location: FF_X51_Y9_N23
\gpmc_driver|ram[16][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][9]~q\);

-- Location: LCCOMB_X51_Y9_N22
\gpmc_driver|gpmc_data_out~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~194_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][9]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[16][9]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~194_combout\);

-- Location: LCCOMB_X50_Y9_N22
\gpmc_driver|ram[24][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[24][9]~feeder_combout\);

-- Location: FF_X50_Y9_N23
\gpmc_driver|ram[24][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][9]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][9]~q\);

-- Location: FF_X51_Y9_N13
\gpmc_driver|ram[28][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][9]~q\);

-- Location: LCCOMB_X51_Y9_N12
\gpmc_driver|gpmc_data_out~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~195_combout\ = (\gpmc_driver|gpmc_data_out~194_combout\ & (((\gpmc_driver|ram[28][9]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~194_combout\ & (\gpmc_driver|ram[24][9]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~194_combout\,
	datab => \gpmc_driver|ram[24][9]~q\,
	datac => \gpmc_driver|ram[28][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~195_combout\);

-- Location: LCCOMB_X51_Y6_N14
\gpmc_driver|ram[26][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[26][9]~feeder_combout\);

-- Location: FF_X51_Y6_N15
\gpmc_driver|ram[26][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][9]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][9]~q\);

-- Location: LCCOMB_X53_Y6_N16
\gpmc_driver|ram[22][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[22][9]~feeder_combout\);

-- Location: FF_X53_Y6_N17
\gpmc_driver|ram[22][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][9]~feeder_combout\,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][9]~q\);

-- Location: FF_X52_Y6_N5
\gpmc_driver|ram[18][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][9]~q\);

-- Location: LCCOMB_X52_Y6_N4
\gpmc_driver|gpmc_data_out~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~192_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][9]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][9]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[22][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~192_combout\);

-- Location: FF_X52_Y6_N3
\gpmc_driver|ram[30][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][9]~q\);

-- Location: LCCOMB_X52_Y6_N2
\gpmc_driver|gpmc_data_out~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~193_combout\ = (\gpmc_driver|gpmc_data_out~192_combout\ & (((\gpmc_driver|ram[30][9]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~192_combout\ & (\gpmc_driver|ram[26][9]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][9]~q\,
	datab => \gpmc_driver|gpmc_data_out~192_combout\,
	datac => \gpmc_driver|ram[30][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~193_combout\);

-- Location: LCCOMB_X52_Y7_N14
\gpmc_driver|gpmc_data_out~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~196_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~193_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|gpmc_data_out~195_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~195_combout\,
	datad => \gpmc_driver|gpmc_data_out~193_combout\,
	combout => \gpmc_driver|gpmc_data_out~196_combout\);

-- Location: LCCOMB_X55_Y7_N0
\gpmc_driver|ram[29][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[29][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[29][9]~feeder_combout\);

-- Location: FF_X55_Y7_N1
\gpmc_driver|ram[29][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[29][9]~feeder_combout\,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][9]~q\);

-- Location: FF_X54_Y7_N21
\gpmc_driver|ram[21][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][9]~q\);

-- Location: FF_X53_Y7_N29
\gpmc_driver|ram[17][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][9]~q\);

-- Location: LCCOMB_X56_Y7_N30
\gpmc_driver|ram[25][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[25][9]~feeder_combout\);

-- Location: FF_X56_Y7_N31
\gpmc_driver|ram[25][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][9]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][9]~q\);

-- Location: LCCOMB_X53_Y7_N28
\gpmc_driver|gpmc_data_out~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~190_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|ram[25][9]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[17][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[17][9]~q\,
	datad => \gpmc_driver|ram[25][9]~q\,
	combout => \gpmc_driver|gpmc_data_out~190_combout\);

-- Location: LCCOMB_X54_Y7_N20
\gpmc_driver|gpmc_data_out~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~191_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~190_combout\ & (\gpmc_driver|ram[29][9]~q\)) # (!\gpmc_driver|gpmc_data_out~190_combout\ & ((\gpmc_driver|ram[21][9]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[29][9]~q\,
	datac => \gpmc_driver|ram[21][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~190_combout\,
	combout => \gpmc_driver|gpmc_data_out~191_combout\);

-- Location: LCCOMB_X52_Y7_N28
\gpmc_driver|gpmc_data_out~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~199_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~196_combout\ & (\gpmc_driver|gpmc_data_out~198_combout\)) # (!\gpmc_driver|gpmc_data_out~196_combout\ & ((\gpmc_driver|gpmc_data_out~191_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~198_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~196_combout\,
	datad => \gpmc_driver|gpmc_data_out~191_combout\,
	combout => \gpmc_driver|gpmc_data_out~199_combout\);

-- Location: LCCOMB_X52_Y7_N30
\gpmc_driver|gpmc_data_out~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~210_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~209_combout\) # ((\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|gpmc_data_out~199_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (\gpmc_driver|ram[31][0]~3_combout\ & ((\gpmc_driver|gpmc_data_out~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|ram[31][0]~3_combout\,
	datac => \gpmc_driver|gpmc_data_out~209_combout\,
	datad => \gpmc_driver|gpmc_data_out~199_combout\,
	combout => \gpmc_driver|gpmc_data_out~210_combout\);

-- Location: FF_X52_Y7_N31
\gpmc_driver|gpmc_data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~210_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(9));

-- Location: IOIBUF_X56_Y0_N1
\GPMC_DATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(10),
	o => \GPMC_DATA[10]~input_o\);

-- Location: LCCOMB_X57_Y7_N10
\gpmc_driver|gpmc_data_in[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[10]~feeder_combout\ = \GPMC_DATA[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[10]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[10]~feeder_combout\);

-- Location: FF_X57_Y7_N11
\gpmc_driver|gpmc_data_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(10));

-- Location: LCCOMB_X56_Y9_N28
\gpmc_driver|ram[10][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[10][10]~feeder_combout\);

-- Location: FF_X56_Y9_N29
\gpmc_driver|ram[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][10]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][10]~q\);

-- Location: FF_X55_Y9_N21
\gpmc_driver|ram[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][10]~q\);

-- Location: FF_X55_Y8_N1
\gpmc_driver|ram[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][10]~q\);

-- Location: LCCOMB_X56_Y8_N4
\gpmc_driver|ram[9][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[9][10]~feeder_combout\);

-- Location: FF_X56_Y8_N5
\gpmc_driver|ram[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][10]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][10]~q\);

-- Location: LCCOMB_X55_Y8_N0
\gpmc_driver|gpmc_data_out~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~221_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][10]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[8][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][10]~q\,
	datad => \gpmc_driver|ram[9][10]~q\,
	combout => \gpmc_driver|gpmc_data_out~221_combout\);

-- Location: LCCOMB_X55_Y9_N20
\gpmc_driver|gpmc_data_out~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~222_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~221_combout\ & ((\gpmc_driver|ram[11][10]~q\))) # (!\gpmc_driver|gpmc_data_out~221_combout\ & (\gpmc_driver|ram[10][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][10]~q\,
	datac => \gpmc_driver|ram[11][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~221_combout\,
	combout => \gpmc_driver|gpmc_data_out~222_combout\);

-- Location: LCCOMB_X50_Y8_N12
\gpmc_driver|ram[5][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[5][10]~feeder_combout\);

-- Location: FF_X50_Y8_N13
\gpmc_driver|ram[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][10]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][10]~q\);

-- Location: FF_X50_Y8_N7
\gpmc_driver|ram[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][10]~q\);

-- Location: LCCOMB_X49_Y8_N28
\gpmc_driver|ram[6][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[6][10]~feeder_combout\);

-- Location: FF_X49_Y8_N29
\gpmc_driver|ram[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][10]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][10]~q\);

-- Location: FF_X49_Y8_N19
\gpmc_driver|ram[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][10]~q\);

-- Location: LCCOMB_X49_Y8_N18
\gpmc_driver|gpmc_data_out~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~223_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[6][10]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[4][10]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][10]~q\,
	datac => \gpmc_driver|ram[4][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~223_combout\);

-- Location: LCCOMB_X50_Y8_N6
\gpmc_driver|gpmc_data_out~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~224_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~223_combout\ & ((\gpmc_driver|ram[7][10]~q\))) # (!\gpmc_driver|gpmc_data_out~223_combout\ & (\gpmc_driver|ram[5][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~223_combout\,
	combout => \gpmc_driver|gpmc_data_out~224_combout\);

-- Location: LCCOMB_X55_Y11_N20
\gpmc_driver|ram~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~74_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\QD2|counter\(10))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \QD2|counter\(10),
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram~74_combout\);

-- Location: FF_X55_Y11_N21
\gpmc_driver|ram[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~74_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][10]~q\);

-- Location: LCCOMB_X56_Y10_N20
\QD2|counter[26]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[26]~85_combout\ = ((\QD2|counter\(26) $ (\QD2|flipflop\(0) $ (!\QD2|counter[25]~84\)))) # (GND)
-- \QD2|counter[26]~86\ = CARRY((\QD2|counter\(26) & ((\QD2|flipflop\(0)) # (!\QD2|counter[25]~84\))) # (!\QD2|counter\(26) & (\QD2|flipflop\(0) & !\QD2|counter[25]~84\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(26),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[25]~84\,
	combout => \QD2|counter[26]~85_combout\,
	cout => \QD2|counter[26]~86\);

-- Location: FF_X56_Y10_N21
\QD2|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[26]~85_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(26));

-- Location: LCCOMB_X55_Y10_N24
\gpmc_driver|ram~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~77_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(26)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_data_in\(10),
	datac => \QD2|counter\(26),
	combout => \gpmc_driver|ram~77_combout\);

-- Location: FF_X55_Y10_N25
\gpmc_driver|ram[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~77_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][10]~q\);

-- Location: LCCOMB_X49_Y10_N8
\gpmc_driver|ram~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~75_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\qd1|position\(26))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qd1|position\(26),
	datab => \gpmc_driver|gpmc_data_in\(10),
	datac => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~75_combout\);

-- Location: FF_X49_Y10_N9
\gpmc_driver|ram[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~75_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][10]~q\);

-- Location: LCCOMB_X49_Y10_N30
\gpmc_driver|ram~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~76_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\qd1|position\(10))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \qd1|position\(10),
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram~76_combout\);

-- Location: FF_X49_Y10_N31
\gpmc_driver|ram[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~76_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][10]~q\);

-- Location: LCCOMB_X51_Y9_N6
\gpmc_driver|gpmc_data_out~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~225_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[1][10]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[0][10]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[1][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[0][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~225_combout\);

-- Location: LCCOMB_X51_Y9_N16
\gpmc_driver|gpmc_data_out~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~226_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~225_combout\ & ((\gpmc_driver|ram[3][10]~q\))) # (!\gpmc_driver|gpmc_data_out~225_combout\ & (\gpmc_driver|ram[2][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[2][10]~q\,
	datac => \gpmc_driver|ram[3][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~225_combout\,
	combout => \gpmc_driver|gpmc_data_out~226_combout\);

-- Location: LCCOMB_X51_Y9_N26
\gpmc_driver|gpmc_data_out~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~227_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~224_combout\)) # (!\gpmc_driver|gpmc_addr_in\(2) 
-- & ((\gpmc_driver|gpmc_data_out~226_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~224_combout\,
	datad => \gpmc_driver|gpmc_data_out~226_combout\,
	combout => \gpmc_driver|gpmc_data_out~227_combout\);

-- Location: LCCOMB_X48_Y7_N12
\gpmc_driver|ram[13][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[13][10]~feeder_combout\);

-- Location: FF_X48_Y7_N13
\gpmc_driver|ram[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][10]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][10]~q\);

-- Location: FF_X49_Y7_N27
\gpmc_driver|ram[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][10]~q\);

-- Location: LCCOMB_X48_Y9_N20
\gpmc_driver|ram[14][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[14][10]~feeder_combout\);

-- Location: FF_X48_Y9_N21
\gpmc_driver|ram[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][10]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][10]~q\);

-- Location: FF_X48_Y8_N5
\gpmc_driver|ram[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][10]~q\);

-- Location: LCCOMB_X48_Y8_N4
\gpmc_driver|gpmc_data_out~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~228_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[14][10]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[12][10]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~228_combout\);

-- Location: LCCOMB_X49_Y7_N26
\gpmc_driver|gpmc_data_out~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~229_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~228_combout\ & ((\gpmc_driver|ram[15][10]~q\))) # (!\gpmc_driver|gpmc_data_out~228_combout\ & (\gpmc_driver|ram[13][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~228_combout\,
	combout => \gpmc_driver|gpmc_data_out~229_combout\);

-- Location: LCCOMB_X51_Y9_N20
\gpmc_driver|gpmc_data_out~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~230_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~227_combout\ & ((\gpmc_driver|gpmc_data_out~229_combout\))) # (!\gpmc_driver|gpmc_data_out~227_combout\ & (\gpmc_driver|gpmc_data_out~222_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~222_combout\,
	datac => \gpmc_driver|gpmc_data_out~227_combout\,
	datad => \gpmc_driver|gpmc_data_out~229_combout\,
	combout => \gpmc_driver|gpmc_data_out~230_combout\);

-- Location: LCCOMB_X50_Y6_N20
\gpmc_driver|ram[20][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[20][10]~feeder_combout\);

-- Location: FF_X50_Y6_N21
\gpmc_driver|ram[20][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][10]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][10]~q\);

-- Location: FF_X51_Y9_N25
\gpmc_driver|ram[28][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][10]~q\);

-- Location: LCCOMB_X50_Y9_N0
\gpmc_driver|ram[24][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[24][10]~feeder_combout\);

-- Location: FF_X50_Y9_N1
\gpmc_driver|ram[24][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][10]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][10]~q\);

-- Location: FF_X51_Y9_N19
\gpmc_driver|ram[16][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][10]~q\);

-- Location: LCCOMB_X51_Y9_N18
\gpmc_driver|gpmc_data_out~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~215_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[24][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[16][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~215_combout\);

-- Location: LCCOMB_X51_Y9_N24
\gpmc_driver|gpmc_data_out~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~216_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~215_combout\ & ((\gpmc_driver|ram[28][10]~q\))) # (!\gpmc_driver|gpmc_data_out~215_combout\ & (\gpmc_driver|ram[20][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[20][10]~q\,
	datac => \gpmc_driver|ram[28][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~215_combout\,
	combout => \gpmc_driver|gpmc_data_out~216_combout\);

-- Location: LCCOMB_X56_Y7_N12
\gpmc_driver|ram[25][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[25][10]~feeder_combout\);

-- Location: FF_X56_Y7_N13
\gpmc_driver|ram[25][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][10]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][10]~q\);

-- Location: FF_X53_Y7_N5
\gpmc_driver|ram[29][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][10]~q\);

-- Location: LCCOMB_X54_Y7_N18
\gpmc_driver|ram[21][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[21][10]~feeder_combout\);

-- Location: FF_X54_Y7_N19
\gpmc_driver|ram[21][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][10]~feeder_combout\,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][10]~q\);

-- Location: FF_X53_Y7_N19
\gpmc_driver|ram[17][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][10]~q\);

-- Location: LCCOMB_X53_Y7_N18
\gpmc_driver|gpmc_data_out~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~213_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[21][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[17][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[21][10]~q\,
	datac => \gpmc_driver|ram[17][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~213_combout\);

-- Location: LCCOMB_X53_Y7_N4
\gpmc_driver|gpmc_data_out~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~214_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~213_combout\ & ((\gpmc_driver|ram[29][10]~q\))) # (!\gpmc_driver|gpmc_data_out~213_combout\ & (\gpmc_driver|ram[25][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][10]~q\,
	datac => \gpmc_driver|ram[29][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~213_combout\,
	combout => \gpmc_driver|gpmc_data_out~214_combout\);

-- Location: LCCOMB_X52_Y9_N22
\gpmc_driver|gpmc_data_out~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~217_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1)) # (\gpmc_driver|gpmc_data_out~214_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~216_combout\ & 
-- (!\gpmc_driver|gpmc_addr_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~216_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~214_combout\,
	combout => \gpmc_driver|gpmc_data_out~217_combout\);

-- Location: LCCOMB_X51_Y6_N28
\gpmc_driver|ram[26][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[26][10]~feeder_combout\);

-- Location: FF_X51_Y6_N29
\gpmc_driver|ram[26][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][10]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][10]~q\);

-- Location: FF_X52_Y6_N9
\gpmc_driver|ram[18][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][10]~q\);

-- Location: LCCOMB_X52_Y6_N8
\gpmc_driver|gpmc_data_out~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~211_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[26][10]~q\,
	datac => \gpmc_driver|ram[18][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~211_combout\);

-- Location: LCCOMB_X52_Y6_N22
\gpmc_driver|ram[30][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[30][10]~feeder_combout\);

-- Location: FF_X52_Y6_N23
\gpmc_driver|ram[30][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[30][10]~feeder_combout\,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][10]~q\);

-- Location: FF_X53_Y6_N15
\gpmc_driver|ram[22][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][10]~q\);

-- Location: LCCOMB_X53_Y6_N14
\gpmc_driver|gpmc_data_out~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~212_combout\ = (\gpmc_driver|gpmc_data_out~211_combout\ & ((\gpmc_driver|ram[30][10]~q\) # ((!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~211_combout\ & (((\gpmc_driver|ram[22][10]~q\ & 
-- \gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~211_combout\,
	datab => \gpmc_driver|ram[30][10]~q\,
	datac => \gpmc_driver|ram[22][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~212_combout\);

-- Location: LCCOMB_X49_Y11_N16
\gpmc_driver|ram[27][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[27][10]~feeder_combout\);

-- Location: FF_X49_Y11_N17
\gpmc_driver|ram[27][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][10]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][10]~q\);

-- Location: FF_X50_Y11_N27
\gpmc_driver|ram[31][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][10]~q\);

-- Location: LCCOMB_X50_Y11_N24
\gpmc_driver|ram[23][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[23][10]~feeder_combout\);

-- Location: FF_X50_Y11_N25
\gpmc_driver|ram[23][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][10]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][10]~q\);

-- Location: FF_X49_Y11_N15
\gpmc_driver|ram[19][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][10]~q\);

-- Location: LCCOMB_X49_Y11_N14
\gpmc_driver|gpmc_data_out~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~218_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[23][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[19][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[23][10]~q\,
	datac => \gpmc_driver|ram[19][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~218_combout\);

-- Location: LCCOMB_X50_Y11_N26
\gpmc_driver|gpmc_data_out~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~219_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~218_combout\ & ((\gpmc_driver|ram[31][10]~q\))) # (!\gpmc_driver|gpmc_data_out~218_combout\ & (\gpmc_driver|ram[27][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[31][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~218_combout\,
	combout => \gpmc_driver|gpmc_data_out~219_combout\);

-- Location: LCCOMB_X52_Y9_N8
\gpmc_driver|gpmc_data_out~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~220_combout\ = (\gpmc_driver|gpmc_data_out~217_combout\ & (((\gpmc_driver|gpmc_data_out~219_combout\)) # (!\gpmc_driver|gpmc_addr_in\(1)))) # (!\gpmc_driver|gpmc_data_out~217_combout\ & (\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|gpmc_data_out~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~217_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~212_combout\,
	datad => \gpmc_driver|gpmc_data_out~219_combout\,
	combout => \gpmc_driver|gpmc_data_out~220_combout\);

-- Location: LCCOMB_X52_Y8_N4
\gpmc_driver|gpmc_data_out~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~231_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~230_combout\) # ((\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|gpmc_data_out~220_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (\gpmc_driver|ram[31][0]~3_combout\ & ((\gpmc_driver|gpmc_data_out~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|ram[31][0]~3_combout\,
	datac => \gpmc_driver|gpmc_data_out~230_combout\,
	datad => \gpmc_driver|gpmc_data_out~220_combout\,
	combout => \gpmc_driver|gpmc_data_out~231_combout\);

-- Location: FF_X52_Y8_N5
\gpmc_driver|gpmc_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~231_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(10));

-- Location: IOIBUF_X59_Y0_N29
\GPMC_DATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(11),
	o => \GPMC_DATA[11]~input_o\);

-- Location: LCCOMB_X57_Y7_N20
\gpmc_driver|gpmc_data_in[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[11]~feeder_combout\ = \GPMC_DATA[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[11]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[11]~feeder_combout\);

-- Location: FF_X57_Y7_N21
\gpmc_driver|gpmc_data_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(11));

-- Location: LCCOMB_X54_Y8_N18
\gpmc_driver|ram[6][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[6][11]~feeder_combout\);

-- Location: FF_X54_Y8_N19
\gpmc_driver|ram[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][11]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][11]~q\);

-- Location: FF_X51_Y11_N23
\gpmc_driver|ram[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][11]~q\);

-- Location: LCCOMB_X50_Y8_N16
\gpmc_driver|ram[5][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[5][11]~feeder_combout\);

-- Location: FF_X50_Y8_N17
\gpmc_driver|ram[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][11]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][11]~q\);

-- Location: FF_X51_Y11_N13
\gpmc_driver|ram[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][11]~q\);

-- Location: LCCOMB_X51_Y11_N12
\gpmc_driver|gpmc_data_out~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~242_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[5][11]~q\,
	datac => \gpmc_driver|ram[4][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~242_combout\);

-- Location: LCCOMB_X51_Y11_N22
\gpmc_driver|gpmc_data_out~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~243_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~242_combout\ & ((\gpmc_driver|ram[7][11]~q\))) # (!\gpmc_driver|gpmc_data_out~242_combout\ & (\gpmc_driver|ram[6][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][11]~q\,
	datac => \gpmc_driver|ram[7][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~242_combout\,
	combout => \gpmc_driver|gpmc_data_out~243_combout\);

-- Location: LCCOMB_X48_Y9_N26
\gpmc_driver|ram[14][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[14][11]~feeder_combout\);

-- Location: FF_X48_Y9_N27
\gpmc_driver|ram[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][11]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][11]~q\);

-- Location: FF_X48_Y8_N13
\gpmc_driver|ram[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][11]~q\);

-- Location: LCCOMB_X48_Y7_N2
\gpmc_driver|ram[13][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[13][11]~feeder_combout\);

-- Location: FF_X48_Y7_N3
\gpmc_driver|ram[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][11]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][11]~q\);

-- Location: FF_X48_Y8_N19
\gpmc_driver|ram[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][11]~q\);

-- Location: LCCOMB_X48_Y8_N18
\gpmc_driver|gpmc_data_out~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~249_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~249_combout\);

-- Location: LCCOMB_X48_Y8_N12
\gpmc_driver|gpmc_data_out~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~250_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~249_combout\ & ((\gpmc_driver|ram[15][11]~q\))) # (!\gpmc_driver|gpmc_data_out~249_combout\ & (\gpmc_driver|ram[14][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[15][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~249_combout\,
	combout => \gpmc_driver|gpmc_data_out~250_combout\);

-- Location: LCCOMB_X49_Y10_N12
\gpmc_driver|ram~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~78_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(27)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(11),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \qd1|position\(27),
	combout => \gpmc_driver|ram~78_combout\);

-- Location: FF_X49_Y10_N13
\gpmc_driver|ram[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~78_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][11]~q\);

-- Location: LCCOMB_X56_Y10_N22
\QD2|counter[27]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[27]~87_combout\ = (\QD2|counter\(27) & ((\QD2|flipflop\(0) & (\QD2|counter[26]~86\ & VCC)) # (!\QD2|flipflop\(0) & (!\QD2|counter[26]~86\)))) # (!\QD2|counter\(27) & ((\QD2|flipflop\(0) & (!\QD2|counter[26]~86\)) # (!\QD2|flipflop\(0) & 
-- ((\QD2|counter[26]~86\) # (GND)))))
-- \QD2|counter[27]~88\ = CARRY((\QD2|counter\(27) & (!\QD2|flipflop\(0) & !\QD2|counter[26]~86\)) # (!\QD2|counter\(27) & ((!\QD2|counter[26]~86\) # (!\QD2|flipflop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(27),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[26]~86\,
	combout => \QD2|counter[27]~87_combout\,
	cout => \QD2|counter[27]~88\);

-- Location: FF_X56_Y10_N23
\QD2|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[27]~87_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(27));

-- Location: LCCOMB_X55_Y10_N0
\gpmc_driver|ram~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~81_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(27)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(11),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(27),
	combout => \gpmc_driver|ram~81_combout\);

-- Location: FF_X55_Y10_N1
\gpmc_driver|ram[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~81_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][11]~q\);

-- Location: LCCOMB_X55_Y10_N30
\gpmc_driver|ram~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~79_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(11)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(11),
	datab => \QD2|counter\(11),
	datac => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~79_combout\);

-- Location: FF_X55_Y10_N31
\gpmc_driver|ram[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~79_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][11]~q\);

-- Location: LCCOMB_X49_Y10_N18
\gpmc_driver|ram~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~80_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(11)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(11),
	datab => \qd1|position\(11),
	datac => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~80_combout\);

-- Location: FF_X49_Y10_N19
\gpmc_driver|ram[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~80_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][11]~q\);

-- Location: LCCOMB_X52_Y10_N16
\gpmc_driver|gpmc_data_out~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~246_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[2][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((!\gpmc_driver|gpmc_addr_in\(0) & \gpmc_driver|ram[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[2][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|ram[0][11]~q\,
	combout => \gpmc_driver|gpmc_data_out~246_combout\);

-- Location: LCCOMB_X52_Y10_N10
\gpmc_driver|gpmc_data_out~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~247_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~246_combout\ & ((\gpmc_driver|ram[3][11]~q\))) # (!\gpmc_driver|gpmc_data_out~246_combout\ & (\gpmc_driver|ram[1][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[1][11]~q\,
	datab => \gpmc_driver|ram[3][11]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_data_out~246_combout\,
	combout => \gpmc_driver|gpmc_data_out~247_combout\);

-- Location: LCCOMB_X50_Y9_N30
\gpmc_driver|ram[9][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[9][11]~feeder_combout\);

-- Location: FF_X50_Y9_N31
\gpmc_driver|ram[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][11]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][11]~q\);

-- Location: FF_X51_Y10_N11
\gpmc_driver|ram[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][11]~q\);

-- Location: LCCOMB_X54_Y9_N16
\gpmc_driver|ram[10][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[10][11]~feeder_combout\);

-- Location: FF_X54_Y9_N17
\gpmc_driver|ram[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][11]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][11]~q\);

-- Location: FF_X54_Y9_N19
\gpmc_driver|ram[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][11]~q\);

-- Location: LCCOMB_X54_Y9_N18
\gpmc_driver|gpmc_data_out~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~244_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[10][11]~q\,
	datac => \gpmc_driver|ram[8][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~244_combout\);

-- Location: LCCOMB_X51_Y10_N10
\gpmc_driver|gpmc_data_out~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~245_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~244_combout\ & ((\gpmc_driver|ram[11][11]~q\))) # (!\gpmc_driver|gpmc_data_out~244_combout\ & (\gpmc_driver|ram[9][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][11]~q\,
	datac => \gpmc_driver|ram[11][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~244_combout\,
	combout => \gpmc_driver|gpmc_data_out~245_combout\);

-- Location: LCCOMB_X51_Y10_N28
\gpmc_driver|gpmc_data_out~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~248_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2)) # (\gpmc_driver|gpmc_data_out~245_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~247_combout\ & 
-- (!\gpmc_driver|gpmc_addr_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~247_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~245_combout\,
	combout => \gpmc_driver|gpmc_data_out~248_combout\);

-- Location: LCCOMB_X51_Y10_N26
\gpmc_driver|gpmc_data_out~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~251_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~248_combout\ & ((\gpmc_driver|gpmc_data_out~250_combout\))) # (!\gpmc_driver|gpmc_data_out~248_combout\ & (\gpmc_driver|gpmc_data_out~243_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~243_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~250_combout\,
	datad => \gpmc_driver|gpmc_data_out~248_combout\,
	combout => \gpmc_driver|gpmc_data_out~251_combout\);

-- Location: LCCOMB_X50_Y11_N4
\gpmc_driver|ram[23][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[23][11]~feeder_combout\);

-- Location: FF_X50_Y11_N5
\gpmc_driver|ram[23][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][11]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][11]~q\);

-- Location: FF_X50_Y11_N7
\gpmc_driver|ram[31][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][11]~q\);

-- Location: LCCOMB_X49_Y11_N24
\gpmc_driver|ram[27][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[27][11]~feeder_combout\);

-- Location: FF_X49_Y11_N25
\gpmc_driver|ram[27][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][11]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][11]~q\);

-- Location: FF_X49_Y11_N3
\gpmc_driver|ram[19][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][11]~q\);

-- Location: LCCOMB_X49_Y11_N2
\gpmc_driver|gpmc_data_out~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~239_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][11]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][11]~q\,
	datac => \gpmc_driver|ram[19][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~239_combout\);

-- Location: LCCOMB_X50_Y11_N6
\gpmc_driver|gpmc_data_out~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~240_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~239_combout\ & ((\gpmc_driver|ram[31][11]~q\))) # (!\gpmc_driver|gpmc_data_out~239_combout\ & (\gpmc_driver|ram[23][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][11]~q\,
	datac => \gpmc_driver|ram[31][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~239_combout\,
	combout => \gpmc_driver|gpmc_data_out~240_combout\);

-- Location: LCCOMB_X53_Y6_N24
\gpmc_driver|ram[22][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[22][11]~feeder_combout\);

-- Location: FF_X53_Y6_N25
\gpmc_driver|ram[22][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][11]~feeder_combout\,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][11]~q\);

-- Location: FF_X52_Y6_N17
\gpmc_driver|ram[18][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][11]~q\);

-- Location: LCCOMB_X52_Y6_N16
\gpmc_driver|gpmc_data_out~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~234_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][11]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[22][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~234_combout\);

-- Location: FF_X52_Y6_N7
\gpmc_driver|ram[30][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][11]~q\);

-- Location: LCCOMB_X51_Y6_N30
\gpmc_driver|ram[26][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[26][11]~feeder_combout\);

-- Location: FF_X51_Y6_N31
\gpmc_driver|ram[26][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][11]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][11]~q\);

-- Location: LCCOMB_X52_Y6_N6
\gpmc_driver|gpmc_data_out~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~235_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~234_combout\ & (\gpmc_driver|ram[30][11]~q\)) # (!\gpmc_driver|gpmc_data_out~234_combout\ & ((\gpmc_driver|ram[26][11]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~234_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~234_combout\,
	datac => \gpmc_driver|ram[30][11]~q\,
	datad => \gpmc_driver|ram[26][11]~q\,
	combout => \gpmc_driver|gpmc_data_out~235_combout\);

-- Location: LCCOMB_X49_Y6_N0
\gpmc_driver|ram[24][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[24][11]~feeder_combout\);

-- Location: FF_X49_Y6_N1
\gpmc_driver|ram[24][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][11]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][11]~q\);

-- Location: FF_X51_Y7_N7
\gpmc_driver|ram[28][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][11]~q\);

-- Location: LCCOMB_X56_Y9_N30
\gpmc_driver|ram[20][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[20][11]~feeder_combout\);

-- Location: FF_X56_Y9_N31
\gpmc_driver|ram[20][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][11]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][11]~q\);

-- Location: FF_X51_Y7_N1
\gpmc_driver|ram[16][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][11]~q\);

-- Location: LCCOMB_X51_Y7_N0
\gpmc_driver|gpmc_data_out~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~236_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[16][11]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[20][11]~q\,
	datac => \gpmc_driver|ram[16][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~236_combout\);

-- Location: LCCOMB_X51_Y7_N6
\gpmc_driver|gpmc_data_out~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~237_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~236_combout\ & ((\gpmc_driver|ram[28][11]~q\))) # (!\gpmc_driver|gpmc_data_out~236_combout\ & (\gpmc_driver|ram[24][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~236_combout\,
	combout => \gpmc_driver|gpmc_data_out~237_combout\);

-- Location: LCCOMB_X51_Y10_N18
\gpmc_driver|gpmc_data_out~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~238_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~235_combout\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~237_combout\ & 
-- !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~235_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~237_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~238_combout\);

-- Location: LCCOMB_X53_Y7_N8
\gpmc_driver|ram[29][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[29][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[29][11]~feeder_combout\);

-- Location: FF_X53_Y7_N9
\gpmc_driver|ram[29][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[29][11]~feeder_combout\,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][11]~q\);

-- Location: FF_X54_Y7_N13
\gpmc_driver|ram[21][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][11]~q\);

-- Location: LCCOMB_X57_Y7_N12
\gpmc_driver|ram[25][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[25][11]~feeder_combout\);

-- Location: FF_X57_Y7_N13
\gpmc_driver|ram[25][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][11]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][11]~q\);

-- Location: FF_X53_Y7_N15
\gpmc_driver|ram[17][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][11]~q\);

-- Location: LCCOMB_X53_Y7_N14
\gpmc_driver|gpmc_data_out~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~232_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][11]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][11]~q\,
	datac => \gpmc_driver|ram[17][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~232_combout\);

-- Location: LCCOMB_X54_Y7_N12
\gpmc_driver|gpmc_data_out~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~233_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~232_combout\ & (\gpmc_driver|ram[29][11]~q\)) # (!\gpmc_driver|gpmc_data_out~232_combout\ & ((\gpmc_driver|ram[21][11]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[29][11]~q\,
	datac => \gpmc_driver|ram[21][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~232_combout\,
	combout => \gpmc_driver|gpmc_data_out~233_combout\);

-- Location: LCCOMB_X51_Y10_N8
\gpmc_driver|gpmc_data_out~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~241_combout\ = (\gpmc_driver|gpmc_data_out~238_combout\ & ((\gpmc_driver|gpmc_data_out~240_combout\) # ((!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~238_combout\ & (((\gpmc_driver|gpmc_data_out~233_combout\ 
-- & \gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~240_combout\,
	datab => \gpmc_driver|gpmc_data_out~238_combout\,
	datac => \gpmc_driver|gpmc_data_out~233_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~241_combout\);

-- Location: LCCOMB_X51_Y10_N4
\gpmc_driver|gpmc_data_out~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~252_combout\ = (\gpmc_driver|gpmc_data_out~251_combout\ & ((\gpmc_driver|ram[15][0]~0_combout\) # ((\gpmc_driver|gpmc_data_out~241_combout\ & \gpmc_driver|ram[31][0]~3_combout\)))) # (!\gpmc_driver|gpmc_data_out~251_combout\ & 
-- (((\gpmc_driver|gpmc_data_out~241_combout\ & \gpmc_driver|ram[31][0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~251_combout\,
	datab => \gpmc_driver|ram[15][0]~0_combout\,
	datac => \gpmc_driver|gpmc_data_out~241_combout\,
	datad => \gpmc_driver|ram[31][0]~3_combout\,
	combout => \gpmc_driver|gpmc_data_out~252_combout\);

-- Location: FF_X51_Y10_N5
\gpmc_driver|gpmc_data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~252_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(11));

-- Location: IOIBUF_X61_Y0_N29
\GPMC_DATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(12),
	o => \GPMC_DATA[12]~input_o\);

-- Location: LCCOMB_X53_Y6_N26
\gpmc_driver|gpmc_data_in[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[12]~feeder_combout\ = \GPMC_DATA[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[12]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[12]~feeder_combout\);

-- Location: FF_X53_Y6_N27
\gpmc_driver|gpmc_data_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(12));

-- Location: LCCOMB_X52_Y6_N30
\gpmc_driver|ram[30][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[30][12]~feeder_combout\);

-- Location: FF_X52_Y6_N31
\gpmc_driver|ram[30][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[30][12]~feeder_combout\,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][12]~q\);

-- Location: FF_X53_Y6_N29
\gpmc_driver|ram[22][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][12]~q\);

-- Location: LCCOMB_X51_Y6_N12
\gpmc_driver|ram[26][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[26][12]~feeder_combout\);

-- Location: FF_X51_Y6_N13
\gpmc_driver|ram[26][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][12]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][12]~q\);

-- Location: FF_X52_Y6_N29
\gpmc_driver|ram[18][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][12]~q\);

-- Location: LCCOMB_X52_Y6_N28
\gpmc_driver|gpmc_data_out~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~253_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][12]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~253_combout\);

-- Location: LCCOMB_X53_Y6_N28
\gpmc_driver|gpmc_data_out~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~254_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~253_combout\ & (\gpmc_driver|ram[30][12]~q\)) # (!\gpmc_driver|gpmc_data_out~253_combout\ & ((\gpmc_driver|ram[22][12]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[30][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[22][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~253_combout\,
	combout => \gpmc_driver|gpmc_data_out~254_combout\);

-- Location: LCCOMB_X50_Y6_N2
\gpmc_driver|ram[20][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[20][12]~feeder_combout\);

-- Location: FF_X50_Y6_N3
\gpmc_driver|ram[20][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][12]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][12]~q\);

-- Location: FF_X51_Y7_N31
\gpmc_driver|ram[28][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][12]~q\);

-- Location: LCCOMB_X50_Y9_N12
\gpmc_driver|ram[24][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[24][12]~feeder_combout\);

-- Location: FF_X50_Y9_N13
\gpmc_driver|ram[24][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][12]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][12]~q\);

-- Location: FF_X51_Y7_N13
\gpmc_driver|ram[16][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][12]~q\);

-- Location: LCCOMB_X51_Y7_N12
\gpmc_driver|gpmc_data_out~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~257_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][12]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][12]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~257_combout\);

-- Location: LCCOMB_X51_Y7_N30
\gpmc_driver|gpmc_data_out~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~258_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~257_combout\ & ((\gpmc_driver|ram[28][12]~q\))) # (!\gpmc_driver|gpmc_data_out~257_combout\ & (\gpmc_driver|ram[20][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[28][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~257_combout\,
	combout => \gpmc_driver|gpmc_data_out~258_combout\);

-- Location: LCCOMB_X55_Y6_N18
\gpmc_driver|ram[21][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[21][12]~feeder_combout\);

-- Location: FF_X55_Y6_N19
\gpmc_driver|ram[21][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][12]~feeder_combout\,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][12]~q\);

-- Location: FF_X55_Y7_N31
\gpmc_driver|ram[17][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][12]~q\);

-- Location: LCCOMB_X55_Y7_N30
\gpmc_driver|gpmc_data_out~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~255_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][12]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][12]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][12]~q\,
	datac => \gpmc_driver|ram[17][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~255_combout\);

-- Location: FF_X55_Y7_N13
\gpmc_driver|ram[29][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][12]~q\);

-- Location: LCCOMB_X56_Y7_N22
\gpmc_driver|ram[25][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[25][12]~feeder_combout\);

-- Location: FF_X56_Y7_N23
\gpmc_driver|ram[25][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][12]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][12]~q\);

-- Location: LCCOMB_X55_Y7_N12
\gpmc_driver|gpmc_data_out~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~256_combout\ = (\gpmc_driver|gpmc_data_out~255_combout\ & (((\gpmc_driver|ram[29][12]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3)))) # (!\gpmc_driver|gpmc_data_out~255_combout\ & (\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[25][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~255_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[29][12]~q\,
	datad => \gpmc_driver|ram[25][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~256_combout\);

-- Location: LCCOMB_X51_Y10_N0
\gpmc_driver|gpmc_data_out~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~259_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_data_out~256_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|gpmc_data_out~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~258_combout\,
	datad => \gpmc_driver|gpmc_data_out~256_combout\,
	combout => \gpmc_driver|gpmc_data_out~259_combout\);

-- Location: LCCOMB_X52_Y11_N18
\gpmc_driver|ram[27][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[27][12]~feeder_combout\);

-- Location: FF_X52_Y11_N19
\gpmc_driver|ram[27][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][12]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][12]~q\);

-- Location: FF_X52_Y11_N21
\gpmc_driver|ram[31][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][12]~q\);

-- Location: LCCOMB_X53_Y11_N24
\gpmc_driver|ram[23][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[23][12]~feeder_combout\);

-- Location: FF_X53_Y11_N25
\gpmc_driver|ram[23][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][12]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][12]~q\);

-- Location: FF_X53_Y11_N19
\gpmc_driver|ram[19][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][12]~q\);

-- Location: LCCOMB_X53_Y11_N18
\gpmc_driver|gpmc_data_out~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~260_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[23][12]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[19][12]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][12]~q\,
	datac => \gpmc_driver|ram[19][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~260_combout\);

-- Location: LCCOMB_X52_Y11_N20
\gpmc_driver|gpmc_data_out~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~261_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~260_combout\ & ((\gpmc_driver|ram[31][12]~q\))) # (!\gpmc_driver|gpmc_data_out~260_combout\ & (\gpmc_driver|ram[27][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][12]~q\,
	datac => \gpmc_driver|ram[31][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~260_combout\,
	combout => \gpmc_driver|gpmc_data_out~261_combout\);

-- Location: LCCOMB_X51_Y10_N22
\gpmc_driver|gpmc_data_out~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~262_combout\ = (\gpmc_driver|gpmc_data_out~259_combout\ & (((\gpmc_driver|gpmc_data_out~261_combout\) # (!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~259_combout\ & (\gpmc_driver|gpmc_data_out~254_combout\ & 
-- (\gpmc_driver|gpmc_addr_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~254_combout\,
	datab => \gpmc_driver|gpmc_data_out~259_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~261_combout\,
	combout => \gpmc_driver|gpmc_data_out~262_combout\);

-- Location: LCCOMB_X50_Y8_N18
\gpmc_driver|ram[5][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[5][12]~feeder_combout\);

-- Location: FF_X50_Y8_N19
\gpmc_driver|ram[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][12]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][12]~q\);

-- Location: FF_X51_Y11_N27
\gpmc_driver|ram[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][12]~q\);

-- Location: LCCOMB_X54_Y8_N28
\gpmc_driver|ram[6][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[6][12]~feeder_combout\);

-- Location: FF_X54_Y8_N29
\gpmc_driver|ram[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][12]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][12]~q\);

-- Location: FF_X51_Y11_N1
\gpmc_driver|ram[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][12]~q\);

-- Location: LCCOMB_X51_Y11_N0
\gpmc_driver|gpmc_data_out~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~265_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[6][12]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[4][12]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][12]~q\,
	datac => \gpmc_driver|ram[4][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~265_combout\);

-- Location: LCCOMB_X51_Y11_N26
\gpmc_driver|gpmc_data_out~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~266_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~265_combout\ & ((\gpmc_driver|ram[7][12]~q\))) # (!\gpmc_driver|gpmc_data_out~265_combout\ & (\gpmc_driver|ram[5][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][12]~q\,
	datac => \gpmc_driver|ram[7][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~265_combout\,
	combout => \gpmc_driver|gpmc_data_out~266_combout\);

-- Location: LCCOMB_X48_Y10_N28
\gpmc_driver|ram~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~84_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(12)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(12),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \qd1|position\(12),
	combout => \gpmc_driver|ram~84_combout\);

-- Location: FF_X48_Y10_N29
\gpmc_driver|ram[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~84_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][12]~q\);

-- Location: LCCOMB_X48_Y10_N30
\gpmc_driver|ram~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~83_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(28)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_data_in\(12),
	datad => \qd1|position\(28),
	combout => \gpmc_driver|ram~83_combout\);

-- Location: FF_X48_Y10_N31
\gpmc_driver|ram[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~83_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][12]~q\);

-- Location: LCCOMB_X52_Y10_N20
\gpmc_driver|gpmc_data_out~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~267_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[1][12]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[0][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|ram[1][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~267_combout\);

-- Location: LCCOMB_X56_Y10_N24
\QD2|counter[28]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[28]~89_combout\ = ((\QD2|counter\(28) $ (\QD2|flipflop\(0) $ (!\QD2|counter[27]~88\)))) # (GND)
-- \QD2|counter[28]~90\ = CARRY((\QD2|counter\(28) & ((\QD2|flipflop\(0)) # (!\QD2|counter[27]~88\))) # (!\QD2|counter\(28) & (\QD2|flipflop\(0) & !\QD2|counter[27]~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(28),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[27]~88\,
	combout => \QD2|counter[28]~89_combout\,
	cout => \QD2|counter[28]~90\);

-- Location: FF_X56_Y10_N25
\QD2|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[28]~89_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(28));

-- Location: LCCOMB_X55_Y10_N28
\gpmc_driver|ram~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~85_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\QD2|counter\(28))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \QD2|counter\(28),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram~85_combout\);

-- Location: FF_X55_Y10_N29
\gpmc_driver|ram[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~85_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][12]~q\);

-- Location: LCCOMB_X55_Y10_N22
\gpmc_driver|ram~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~82_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\QD2|counter\(12))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \QD2|counter\(12),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram~82_combout\);

-- Location: FF_X55_Y10_N23
\gpmc_driver|ram[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~82_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][12]~q\);

-- Location: LCCOMB_X53_Y10_N22
\gpmc_driver|gpmc_data_out~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~268_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~267_combout\ & (\gpmc_driver|ram[3][12]~q\)) # (!\gpmc_driver|gpmc_data_out~267_combout\ & ((\gpmc_driver|ram[2][12]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~267_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~267_combout\,
	datac => \gpmc_driver|ram[3][12]~q\,
	datad => \gpmc_driver|ram[2][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~268_combout\);

-- Location: LCCOMB_X51_Y10_N20
\gpmc_driver|gpmc_data_out~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~269_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~266_combout\)) # (!\gpmc_driver|gpmc_addr_in\(2) 
-- & ((\gpmc_driver|gpmc_data_out~268_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~266_combout\,
	datad => \gpmc_driver|gpmc_data_out~268_combout\,
	combout => \gpmc_driver|gpmc_data_out~269_combout\);

-- Location: LCCOMB_X48_Y9_N28
\gpmc_driver|ram[13][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[13][12]~feeder_combout\);

-- Location: FF_X48_Y9_N29
\gpmc_driver|ram[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][12]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][12]~q\);

-- Location: FF_X48_Y8_N9
\gpmc_driver|ram[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][12]~q\);

-- Location: LCCOMB_X48_Y9_N18
\gpmc_driver|ram[14][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[14][12]~feeder_combout\);

-- Location: FF_X48_Y9_N19
\gpmc_driver|ram[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][12]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][12]~q\);

-- Location: FF_X48_Y8_N11
\gpmc_driver|ram[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][12]~q\);

-- Location: LCCOMB_X48_Y8_N10
\gpmc_driver|gpmc_data_out~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~270_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][12]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[14][12]~q\,
	datac => \gpmc_driver|ram[12][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~270_combout\);

-- Location: LCCOMB_X48_Y8_N8
\gpmc_driver|gpmc_data_out~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~271_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~270_combout\ & ((\gpmc_driver|ram[15][12]~q\))) # (!\gpmc_driver|gpmc_data_out~270_combout\ & (\gpmc_driver|ram[13][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][12]~q\,
	datac => \gpmc_driver|ram[15][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~270_combout\,
	combout => \gpmc_driver|gpmc_data_out~271_combout\);

-- Location: LCCOMB_X56_Y8_N16
\gpmc_driver|ram[9][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[9][12]~feeder_combout\);

-- Location: FF_X56_Y8_N17
\gpmc_driver|ram[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][12]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][12]~q\);

-- Location: FF_X55_Y8_N15
\gpmc_driver|ram[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][12]~q\);

-- Location: LCCOMB_X55_Y8_N14
\gpmc_driver|gpmc_data_out~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~263_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[9][12]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[8][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[9][12]~q\,
	datac => \gpmc_driver|ram[8][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~263_combout\);

-- Location: FF_X55_Y8_N17
\gpmc_driver|ram[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][12]~q\);

-- Location: LCCOMB_X56_Y8_N6
\gpmc_driver|ram[10][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[10][12]~feeder_combout\);

-- Location: FF_X56_Y8_N7
\gpmc_driver|ram[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][12]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][12]~q\);

-- Location: LCCOMB_X55_Y8_N16
\gpmc_driver|gpmc_data_out~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~264_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~263_combout\ & (\gpmc_driver|ram[11][12]~q\)) # (!\gpmc_driver|gpmc_data_out~263_combout\ & ((\gpmc_driver|ram[10][12]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~263_combout\,
	datac => \gpmc_driver|ram[11][12]~q\,
	datad => \gpmc_driver|ram[10][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~264_combout\);

-- Location: LCCOMB_X51_Y10_N6
\gpmc_driver|gpmc_data_out~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~272_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~269_combout\ & (\gpmc_driver|gpmc_data_out~271_combout\)) # (!\gpmc_driver|gpmc_data_out~269_combout\ & ((\gpmc_driver|gpmc_data_out~264_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~269_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~269_combout\,
	datac => \gpmc_driver|gpmc_data_out~271_combout\,
	datad => \gpmc_driver|gpmc_data_out~264_combout\,
	combout => \gpmc_driver|gpmc_data_out~272_combout\);

-- Location: LCCOMB_X51_Y10_N30
\gpmc_driver|gpmc_data_out~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~273_combout\ = (\gpmc_driver|ram[31][0]~3_combout\ & ((\gpmc_driver|gpmc_data_out~262_combout\) # ((\gpmc_driver|ram[15][0]~0_combout\ & \gpmc_driver|gpmc_data_out~272_combout\)))) # (!\gpmc_driver|ram[31][0]~3_combout\ & 
-- (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[31][0]~3_combout\,
	datab => \gpmc_driver|ram[15][0]~0_combout\,
	datac => \gpmc_driver|gpmc_data_out~262_combout\,
	datad => \gpmc_driver|gpmc_data_out~272_combout\,
	combout => \gpmc_driver|gpmc_data_out~273_combout\);

-- Location: FF_X51_Y10_N31
\gpmc_driver|gpmc_data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~273_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(12));

-- Location: IOIBUF_X61_Y0_N8
\GPMC_DATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(13),
	o => \GPMC_DATA[13]~input_o\);

-- Location: LCCOMB_X55_Y6_N2
\gpmc_driver|gpmc_data_in[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[13]~feeder_combout\ = \GPMC_DATA[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[13]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[13]~feeder_combout\);

-- Location: FF_X55_Y6_N3
\gpmc_driver|gpmc_data_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(13));

-- Location: LCCOMB_X48_Y9_N6
\gpmc_driver|ram[13][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[13][13]~feeder_combout\);

-- Location: FF_X48_Y9_N7
\gpmc_driver|ram[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][13]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][13]~q\);

-- Location: FF_X48_Y8_N7
\gpmc_driver|ram[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][13]~q\);

-- Location: LCCOMB_X48_Y8_N6
\gpmc_driver|gpmc_data_out~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~291_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[13][13]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[12][13]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][13]~q\,
	datac => \gpmc_driver|ram[12][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~291_combout\);

-- Location: LCCOMB_X48_Y9_N8
\gpmc_driver|ram[14][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[14][13]~feeder_combout\);

-- Location: FF_X48_Y9_N9
\gpmc_driver|ram[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][13]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][13]~q\);

-- Location: FF_X48_Y8_N21
\gpmc_driver|ram[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][13]~q\);

-- Location: LCCOMB_X48_Y8_N20
\gpmc_driver|gpmc_data_out~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~292_combout\ = (\gpmc_driver|gpmc_data_out~291_combout\ & (((\gpmc_driver|ram[15][13]~q\) # (!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~291_combout\ & (\gpmc_driver|ram[14][13]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~291_combout\,
	datab => \gpmc_driver|ram[14][13]~q\,
	datac => \gpmc_driver|ram[15][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~292_combout\);

-- Location: LCCOMB_X48_Y10_N18
\gpmc_driver|ram~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~86_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(29)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_data_in\(13),
	datac => \qd1|position\(29),
	combout => \gpmc_driver|ram~86_combout\);

-- Location: FF_X48_Y10_N19
\gpmc_driver|ram[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~86_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][13]~q\);

-- Location: LCCOMB_X56_Y10_N26
\QD2|counter[29]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[29]~91_combout\ = (\QD2|counter\(29) & ((\QD2|flipflop\(0) & (\QD2|counter[28]~90\ & VCC)) # (!\QD2|flipflop\(0) & (!\QD2|counter[28]~90\)))) # (!\QD2|counter\(29) & ((\QD2|flipflop\(0) & (!\QD2|counter[28]~90\)) # (!\QD2|flipflop\(0) & 
-- ((\QD2|counter[28]~90\) # (GND)))))
-- \QD2|counter[29]~92\ = CARRY((\QD2|counter\(29) & (!\QD2|flipflop\(0) & !\QD2|counter[28]~90\)) # (!\QD2|counter\(29) & ((!\QD2|counter[28]~90\) # (!\QD2|flipflop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(29),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[28]~90\,
	combout => \QD2|counter[29]~91_combout\,
	cout => \QD2|counter[29]~92\);

-- Location: FF_X56_Y10_N27
\QD2|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[29]~91_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(29));

-- Location: LCCOMB_X55_Y10_N10
\gpmc_driver|ram~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~89_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(29)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(13),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(29),
	combout => \gpmc_driver|ram~89_combout\);

-- Location: FF_X55_Y10_N11
\gpmc_driver|ram[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~89_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][13]~q\);

-- Location: LCCOMB_X48_Y10_N16
\gpmc_driver|ram~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~88_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(13)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_data_in\(13),
	datac => \qd1|position\(13),
	combout => \gpmc_driver|ram~88_combout\);

-- Location: FF_X48_Y10_N17
\gpmc_driver|ram[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~88_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][13]~q\);

-- Location: LCCOMB_X55_Y11_N26
\gpmc_driver|ram~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~87_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(13)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(13),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(13),
	combout => \gpmc_driver|ram~87_combout\);

-- Location: FF_X55_Y11_N27
\gpmc_driver|ram[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~87_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][13]~q\);

-- Location: LCCOMB_X51_Y8_N12
\gpmc_driver|gpmc_data_out~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~288_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0)) # (\gpmc_driver|ram[2][13]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[0][13]~q\ & (!\gpmc_driver|gpmc_addr_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[0][13]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|ram[2][13]~q\,
	combout => \gpmc_driver|gpmc_data_out~288_combout\);

-- Location: LCCOMB_X51_Y8_N22
\gpmc_driver|gpmc_data_out~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~289_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~288_combout\ & ((\gpmc_driver|ram[3][13]~q\))) # (!\gpmc_driver|gpmc_data_out~288_combout\ & (\gpmc_driver|ram[1][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[1][13]~q\,
	datac => \gpmc_driver|ram[3][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~288_combout\,
	combout => \gpmc_driver|gpmc_data_out~289_combout\);

-- Location: LCCOMB_X49_Y9_N26
\gpmc_driver|ram[9][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[9][13]~feeder_combout\);

-- Location: FF_X49_Y9_N27
\gpmc_driver|ram[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][13]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][13]~q\);

-- Location: FF_X52_Y9_N7
\gpmc_driver|ram[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][13]~q\);

-- Location: LCCOMB_X54_Y9_N0
\gpmc_driver|ram[10][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[10][13]~feeder_combout\);

-- Location: FF_X54_Y9_N1
\gpmc_driver|ram[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][13]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][13]~q\);

-- Location: FF_X54_Y9_N11
\gpmc_driver|ram[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][13]~q\);

-- Location: LCCOMB_X54_Y9_N10
\gpmc_driver|gpmc_data_out~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~286_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[10][13]~q\,
	datac => \gpmc_driver|ram[8][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~286_combout\);

-- Location: LCCOMB_X52_Y9_N6
\gpmc_driver|gpmc_data_out~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~287_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~286_combout\ & ((\gpmc_driver|ram[11][13]~q\))) # (!\gpmc_driver|gpmc_data_out~286_combout\ & (\gpmc_driver|ram[9][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][13]~q\,
	datac => \gpmc_driver|ram[11][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~286_combout\,
	combout => \gpmc_driver|gpmc_data_out~287_combout\);

-- Location: LCCOMB_X51_Y8_N8
\gpmc_driver|gpmc_data_out~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~290_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_data_out~287_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|gpmc_data_out~289_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~289_combout\,
	datad => \gpmc_driver|gpmc_data_out~287_combout\,
	combout => \gpmc_driver|gpmc_data_out~290_combout\);

-- Location: LCCOMB_X54_Y8_N2
\gpmc_driver|ram[6][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[6][13]~feeder_combout\);

-- Location: FF_X54_Y8_N3
\gpmc_driver|ram[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][13]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][13]~q\);

-- Location: FF_X54_Y8_N5
\gpmc_driver|ram[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][13]~q\);

-- Location: FF_X49_Y8_N21
\gpmc_driver|ram[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][13]~q\);

-- Location: LCCOMB_X50_Y8_N4
\gpmc_driver|ram[5][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[5][13]~feeder_combout\);

-- Location: FF_X50_Y8_N5
\gpmc_driver|ram[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][13]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][13]~q\);

-- Location: LCCOMB_X49_Y8_N20
\gpmc_driver|gpmc_data_out~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~284_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][13]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][13]~q\,
	datad => \gpmc_driver|ram[5][13]~q\,
	combout => \gpmc_driver|gpmc_data_out~284_combout\);

-- Location: LCCOMB_X54_Y8_N4
\gpmc_driver|gpmc_data_out~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~285_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~284_combout\ & ((\gpmc_driver|ram[7][13]~q\))) # (!\gpmc_driver|gpmc_data_out~284_combout\ & (\gpmc_driver|ram[6][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][13]~q\,
	datac => \gpmc_driver|ram[7][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~284_combout\,
	combout => \gpmc_driver|gpmc_data_out~285_combout\);

-- Location: LCCOMB_X51_Y8_N6
\gpmc_driver|gpmc_data_out~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~293_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~290_combout\ & (\gpmc_driver|gpmc_data_out~292_combout\)) # (!\gpmc_driver|gpmc_data_out~290_combout\ & ((\gpmc_driver|gpmc_data_out~285_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~292_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~290_combout\,
	datad => \gpmc_driver|gpmc_data_out~285_combout\,
	combout => \gpmc_driver|gpmc_data_out~293_combout\);

-- Location: LCCOMB_X50_Y11_N0
\gpmc_driver|ram[23][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[23][13]~feeder_combout\);

-- Location: FF_X50_Y11_N1
\gpmc_driver|ram[23][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][13]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][13]~q\);

-- Location: FF_X50_Y11_N15
\gpmc_driver|ram[31][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][13]~q\);

-- Location: LCCOMB_X49_Y11_N28
\gpmc_driver|ram[27][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[27][13]~feeder_combout\);

-- Location: FF_X49_Y11_N29
\gpmc_driver|ram[27][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][13]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][13]~q\);

-- Location: FF_X49_Y11_N11
\gpmc_driver|ram[19][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][13]~q\);

-- Location: LCCOMB_X49_Y11_N10
\gpmc_driver|gpmc_data_out~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~281_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][13]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][13]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][13]~q\,
	datac => \gpmc_driver|ram[19][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~281_combout\);

-- Location: LCCOMB_X50_Y11_N14
\gpmc_driver|gpmc_data_out~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~282_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~281_combout\ & ((\gpmc_driver|ram[31][13]~q\))) # (!\gpmc_driver|gpmc_data_out~281_combout\ & (\gpmc_driver|ram[23][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][13]~q\,
	datac => \gpmc_driver|ram[31][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~281_combout\,
	combout => \gpmc_driver|gpmc_data_out~282_combout\);

-- Location: LCCOMB_X56_Y7_N0
\gpmc_driver|ram[25][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[25][13]~feeder_combout\);

-- Location: FF_X56_Y7_N1
\gpmc_driver|ram[25][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][13]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][13]~q\);

-- Location: FF_X55_Y7_N3
\gpmc_driver|ram[17][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][13]~q\);

-- Location: LCCOMB_X55_Y7_N2
\gpmc_driver|gpmc_data_out~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~274_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][13]~q\,
	datac => \gpmc_driver|ram[17][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~274_combout\);

-- Location: FF_X55_Y7_N17
\gpmc_driver|ram[29][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][13]~q\);

-- Location: LCCOMB_X55_Y6_N8
\gpmc_driver|ram[21][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[21][13]~feeder_combout\);

-- Location: FF_X55_Y6_N9
\gpmc_driver|ram[21][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][13]~feeder_combout\,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][13]~q\);

-- Location: LCCOMB_X55_Y7_N16
\gpmc_driver|gpmc_data_out~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~275_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~274_combout\ & (\gpmc_driver|ram[29][13]~q\)) # (!\gpmc_driver|gpmc_data_out~274_combout\ & ((\gpmc_driver|ram[21][13]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~274_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~274_combout\,
	datac => \gpmc_driver|ram[29][13]~q\,
	datad => \gpmc_driver|ram[21][13]~q\,
	combout => \gpmc_driver|gpmc_data_out~275_combout\);

-- Location: LCCOMB_X51_Y6_N26
\gpmc_driver|ram[26][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[26][13]~feeder_combout\);

-- Location: FF_X51_Y6_N27
\gpmc_driver|ram[26][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][13]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][13]~q\);

-- Location: FF_X54_Y6_N23
\gpmc_driver|ram[30][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][13]~q\);

-- Location: LCCOMB_X53_Y6_N10
\gpmc_driver|ram[22][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[22][13]~feeder_combout\);

-- Location: FF_X53_Y6_N11
\gpmc_driver|ram[22][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][13]~feeder_combout\,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][13]~q\);

-- Location: FF_X54_Y6_N25
\gpmc_driver|ram[18][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][13]~q\);

-- Location: LCCOMB_X54_Y6_N24
\gpmc_driver|gpmc_data_out~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~276_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][13]~q\,
	datac => \gpmc_driver|ram[18][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~276_combout\);

-- Location: LCCOMB_X54_Y6_N22
\gpmc_driver|gpmc_data_out~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~277_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~276_combout\ & ((\gpmc_driver|ram[30][13]~q\))) # (!\gpmc_driver|gpmc_data_out~276_combout\ & (\gpmc_driver|ram[26][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][13]~q\,
	datac => \gpmc_driver|ram[30][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~276_combout\,
	combout => \gpmc_driver|gpmc_data_out~277_combout\);

-- Location: FF_X51_Y8_N29
\gpmc_driver|ram[16][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][13]~q\);

-- Location: LCCOMB_X50_Y6_N4
\gpmc_driver|ram[20][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[20][13]~feeder_combout\);

-- Location: FF_X50_Y6_N5
\gpmc_driver|ram[20][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][13]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][13]~q\);

-- Location: LCCOMB_X51_Y8_N28
\gpmc_driver|gpmc_data_out~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~278_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][13]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[16][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][13]~q\,
	datad => \gpmc_driver|ram[20][13]~q\,
	combout => \gpmc_driver|gpmc_data_out~278_combout\);

-- Location: FF_X51_Y8_N3
\gpmc_driver|ram[28][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][13]~q\);

-- Location: LCCOMB_X49_Y6_N14
\gpmc_driver|ram[24][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[24][13]~feeder_combout\);

-- Location: FF_X49_Y6_N15
\gpmc_driver|ram[24][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][13]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][13]~q\);

-- Location: LCCOMB_X51_Y8_N2
\gpmc_driver|gpmc_data_out~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~279_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~278_combout\ & (\gpmc_driver|ram[28][13]~q\)) # (!\gpmc_driver|gpmc_data_out~278_combout\ & ((\gpmc_driver|ram[24][13]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~278_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~278_combout\,
	datac => \gpmc_driver|ram[28][13]~q\,
	datad => \gpmc_driver|ram[24][13]~q\,
	combout => \gpmc_driver|gpmc_data_out~279_combout\);

-- Location: LCCOMB_X51_Y8_N20
\gpmc_driver|gpmc_data_out~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~280_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~277_combout\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((!\gpmc_driver|gpmc_addr_in\(0) & 
-- \gpmc_driver|gpmc_data_out~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~277_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_data_out~279_combout\,
	combout => \gpmc_driver|gpmc_data_out~280_combout\);

-- Location: LCCOMB_X51_Y8_N18
\gpmc_driver|gpmc_data_out~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~283_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~280_combout\ & (\gpmc_driver|gpmc_data_out~282_combout\)) # (!\gpmc_driver|gpmc_data_out~280_combout\ & ((\gpmc_driver|gpmc_data_out~275_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~282_combout\,
	datac => \gpmc_driver|gpmc_data_out~275_combout\,
	datad => \gpmc_driver|gpmc_data_out~280_combout\,
	combout => \gpmc_driver|gpmc_data_out~283_combout\);

-- Location: LCCOMB_X52_Y8_N14
\gpmc_driver|gpmc_data_out~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~294_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~293_combout\) # ((\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|gpmc_data_out~283_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (\gpmc_driver|ram[31][0]~3_combout\ & ((\gpmc_driver|gpmc_data_out~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|ram[31][0]~3_combout\,
	datac => \gpmc_driver|gpmc_data_out~293_combout\,
	datad => \gpmc_driver|gpmc_data_out~283_combout\,
	combout => \gpmc_driver|gpmc_data_out~294_combout\);

-- Location: FF_X52_Y8_N15
\gpmc_driver|gpmc_data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~294_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(13));

-- Location: IOIBUF_X63_Y0_N8
\GPMC_DATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(14),
	o => \GPMC_DATA[14]~input_o\);

-- Location: LCCOMB_X57_Y7_N2
\gpmc_driver|gpmc_data_in[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[14]~feeder_combout\ = \GPMC_DATA[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[14]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[14]~feeder_combout\);

-- Location: FF_X57_Y7_N3
\gpmc_driver|gpmc_data_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(14));

-- Location: LCCOMB_X48_Y9_N4
\gpmc_driver|ram[14][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[14][14]~feeder_combout\);

-- Location: FF_X48_Y9_N5
\gpmc_driver|ram[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][14]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][14]~q\);

-- Location: FF_X48_Y8_N31
\gpmc_driver|ram[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][14]~q\);

-- Location: LCCOMB_X48_Y8_N30
\gpmc_driver|gpmc_data_out~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~312_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[14][14]~q\,
	datac => \gpmc_driver|ram[12][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~312_combout\);

-- Location: LCCOMB_X48_Y7_N0
\gpmc_driver|ram[13][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[13][14]~feeder_combout\);

-- Location: FF_X48_Y7_N1
\gpmc_driver|ram[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][14]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][14]~q\);

-- Location: FF_X48_Y8_N17
\gpmc_driver|ram[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][14]~q\);

-- Location: LCCOMB_X48_Y8_N16
\gpmc_driver|gpmc_data_out~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~313_combout\ = (\gpmc_driver|gpmc_data_out~312_combout\ & (((\gpmc_driver|ram[15][14]~q\) # (!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~312_combout\ & (\gpmc_driver|ram[13][14]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~312_combout\,
	datab => \gpmc_driver|ram[13][14]~q\,
	datac => \gpmc_driver|ram[15][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~313_combout\);

-- Location: LCCOMB_X56_Y8_N10
\gpmc_driver|ram[10][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[10][14]~feeder_combout\);

-- Location: FF_X56_Y8_N11
\gpmc_driver|ram[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][14]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][14]~q\);

-- Location: FF_X55_Y8_N13
\gpmc_driver|ram[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][14]~q\);

-- Location: LCCOMB_X56_Y8_N20
\gpmc_driver|ram[9][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[9][14]~feeder_combout\);

-- Location: FF_X56_Y8_N21
\gpmc_driver|ram[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][14]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][14]~q\);

-- Location: FF_X55_Y8_N19
\gpmc_driver|ram[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][14]~q\);

-- Location: LCCOMB_X55_Y8_N18
\gpmc_driver|gpmc_data_out~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~305_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[9][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[8][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[9][14]~q\,
	datac => \gpmc_driver|ram[8][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~305_combout\);

-- Location: LCCOMB_X55_Y8_N12
\gpmc_driver|gpmc_data_out~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~306_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~305_combout\ & ((\gpmc_driver|ram[11][14]~q\))) # (!\gpmc_driver|gpmc_data_out~305_combout\ & (\gpmc_driver|ram[10][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][14]~q\,
	datac => \gpmc_driver|ram[11][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~305_combout\,
	combout => \gpmc_driver|gpmc_data_out~306_combout\);

-- Location: LCCOMB_X54_Y11_N12
\gpmc_driver|ram[5][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[5][14]~feeder_combout\);

-- Location: FF_X54_Y11_N13
\gpmc_driver|ram[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][14]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][14]~q\);

-- Location: FF_X53_Y8_N15
\gpmc_driver|ram[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][14]~q\);

-- Location: LCCOMB_X49_Y8_N2
\gpmc_driver|ram[6][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[6][14]~feeder_combout\);

-- Location: FF_X49_Y8_N3
\gpmc_driver|ram[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][14]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][14]~q\);

-- Location: FF_X49_Y8_N9
\gpmc_driver|ram[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][14]~q\);

-- Location: LCCOMB_X49_Y8_N8
\gpmc_driver|gpmc_data_out~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~307_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[6][14]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[4][14]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][14]~q\,
	datac => \gpmc_driver|ram[4][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~307_combout\);

-- Location: LCCOMB_X53_Y8_N14
\gpmc_driver|gpmc_data_out~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~308_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~307_combout\ & ((\gpmc_driver|ram[7][14]~q\))) # (!\gpmc_driver|gpmc_data_out~307_combout\ & (\gpmc_driver|ram[5][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][14]~q\,
	datac => \gpmc_driver|ram[7][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~307_combout\,
	combout => \gpmc_driver|gpmc_data_out~308_combout\);

-- Location: LCCOMB_X55_Y11_N8
\gpmc_driver|ram~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~90_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(14)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(14),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(14),
	combout => \gpmc_driver|ram~90_combout\);

-- Location: FF_X55_Y11_N9
\gpmc_driver|ram[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~90_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][14]~q\);

-- Location: LCCOMB_X56_Y10_N28
\QD2|counter[30]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[30]~93_combout\ = ((\QD2|counter\(30) $ (\QD2|flipflop\(0) $ (!\QD2|counter[29]~92\)))) # (GND)
-- \QD2|counter[30]~94\ = CARRY((\QD2|counter\(30) & ((\QD2|flipflop\(0)) # (!\QD2|counter[29]~92\))) # (!\QD2|counter\(30) & (\QD2|flipflop\(0) & !\QD2|counter[29]~92\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(30),
	datab => \QD2|flipflop\(0),
	datad => VCC,
	cin => \QD2|counter[29]~92\,
	combout => \QD2|counter[30]~93_combout\,
	cout => \QD2|counter[30]~94\);

-- Location: FF_X56_Y10_N29
\QD2|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[30]~93_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(30));

-- Location: LCCOMB_X55_Y10_N20
\gpmc_driver|ram~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~93_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\QD2|counter\(30)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(14),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \QD2|counter\(30),
	combout => \gpmc_driver|ram~93_combout\);

-- Location: FF_X55_Y10_N21
\gpmc_driver|ram[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~93_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][14]~q\);

-- Location: LCCOMB_X53_Y10_N12
\gpmc_driver|ram~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~91_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(30)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(14),
	datac => \qd1|position\(30),
	datad => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~91_combout\);

-- Location: FF_X53_Y10_N13
\gpmc_driver|ram[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~91_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][14]~q\);

-- Location: LCCOMB_X49_Y10_N4
\gpmc_driver|ram~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~92_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(14)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(14),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \qd1|position\(14),
	combout => \gpmc_driver|ram~92_combout\);

-- Location: FF_X49_Y10_N5
\gpmc_driver|ram[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~92_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][14]~q\);

-- Location: LCCOMB_X53_Y8_N24
\gpmc_driver|gpmc_data_out~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~309_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[1][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[1][14]~q\,
	datac => \gpmc_driver|ram[0][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~309_combout\);

-- Location: LCCOMB_X54_Y8_N26
\gpmc_driver|gpmc_data_out~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~310_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~309_combout\ & ((\gpmc_driver|ram[3][14]~q\))) # (!\gpmc_driver|gpmc_data_out~309_combout\ & (\gpmc_driver|ram[2][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[2][14]~q\,
	datac => \gpmc_driver|ram[3][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~309_combout\,
	combout => \gpmc_driver|gpmc_data_out~310_combout\);

-- Location: LCCOMB_X53_Y8_N18
\gpmc_driver|gpmc_data_out~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~311_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~308_combout\)) # (!\gpmc_driver|gpmc_addr_in\(2) 
-- & ((\gpmc_driver|gpmc_data_out~310_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~308_combout\,
	datad => \gpmc_driver|gpmc_data_out~310_combout\,
	combout => \gpmc_driver|gpmc_data_out~311_combout\);

-- Location: LCCOMB_X53_Y8_N4
\gpmc_driver|gpmc_data_out~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~314_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~311_combout\ & (\gpmc_driver|gpmc_data_out~313_combout\)) # (!\gpmc_driver|gpmc_data_out~311_combout\ & ((\gpmc_driver|gpmc_data_out~306_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~313_combout\,
	datac => \gpmc_driver|gpmc_data_out~306_combout\,
	datad => \gpmc_driver|gpmc_data_out~311_combout\,
	combout => \gpmc_driver|gpmc_data_out~314_combout\);

-- Location: LCCOMB_X56_Y6_N2
\gpmc_driver|ram[30][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[30][14]~feeder_combout\);

-- Location: FF_X56_Y6_N3
\gpmc_driver|ram[30][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[30][14]~feeder_combout\,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][14]~q\);

-- Location: FF_X56_Y6_N1
\gpmc_driver|ram[22][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][14]~q\);

-- Location: FF_X54_Y6_N1
\gpmc_driver|ram[18][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][14]~q\);

-- Location: LCCOMB_X51_Y6_N24
\gpmc_driver|ram[26][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[26][14]~feeder_combout\);

-- Location: FF_X51_Y6_N25
\gpmc_driver|ram[26][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][14]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][14]~q\);

-- Location: LCCOMB_X54_Y6_N0
\gpmc_driver|gpmc_data_out~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~295_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|ram[26][14]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[18][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][14]~q\,
	datad => \gpmc_driver|ram[26][14]~q\,
	combout => \gpmc_driver|gpmc_data_out~295_combout\);

-- Location: LCCOMB_X56_Y6_N0
\gpmc_driver|gpmc_data_out~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~296_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~295_combout\ & (\gpmc_driver|ram[30][14]~q\)) # (!\gpmc_driver|gpmc_data_out~295_combout\ & ((\gpmc_driver|ram[22][14]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[30][14]~q\,
	datac => \gpmc_driver|ram[22][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~295_combout\,
	combout => \gpmc_driver|gpmc_data_out~296_combout\);

-- Location: LCCOMB_X49_Y11_N12
\gpmc_driver|ram[27][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[27][14]~feeder_combout\);

-- Location: FF_X49_Y11_N13
\gpmc_driver|ram[27][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][14]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][14]~q\);

-- Location: FF_X50_Y11_N3
\gpmc_driver|ram[31][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][14]~q\);

-- Location: LCCOMB_X50_Y11_N28
\gpmc_driver|ram[23][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[23][14]~feeder_combout\);

-- Location: FF_X50_Y11_N29
\gpmc_driver|ram[23][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][14]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][14]~q\);

-- Location: FF_X49_Y11_N31
\gpmc_driver|ram[19][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][14]~q\);

-- Location: LCCOMB_X49_Y11_N30
\gpmc_driver|gpmc_data_out~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~302_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[23][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[19][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[23][14]~q\,
	datac => \gpmc_driver|ram[19][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~302_combout\);

-- Location: LCCOMB_X50_Y11_N2
\gpmc_driver|gpmc_data_out~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~303_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~302_combout\ & ((\gpmc_driver|ram[31][14]~q\))) # (!\gpmc_driver|gpmc_data_out~302_combout\ & (\gpmc_driver|ram[27][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[31][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~302_combout\,
	combout => \gpmc_driver|gpmc_data_out~303_combout\);

-- Location: LCCOMB_X50_Y6_N26
\gpmc_driver|ram[20][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[20][14]~feeder_combout\);

-- Location: FF_X50_Y6_N27
\gpmc_driver|ram[20][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][14]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][14]~q\);

-- Location: FF_X51_Y7_N27
\gpmc_driver|ram[28][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][14]~q\);

-- Location: LCCOMB_X49_Y6_N8
\gpmc_driver|ram[24][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[24][14]~feeder_combout\);

-- Location: FF_X49_Y6_N9
\gpmc_driver|ram[24][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][14]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][14]~q\);

-- Location: FF_X51_Y7_N29
\gpmc_driver|ram[16][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][14]~q\);

-- Location: LCCOMB_X51_Y7_N28
\gpmc_driver|gpmc_data_out~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~299_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][14]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][14]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~299_combout\);

-- Location: LCCOMB_X51_Y7_N26
\gpmc_driver|gpmc_data_out~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~300_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~299_combout\ & ((\gpmc_driver|ram[28][14]~q\))) # (!\gpmc_driver|gpmc_data_out~299_combout\ & (\gpmc_driver|ram[20][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[28][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~299_combout\,
	combout => \gpmc_driver|gpmc_data_out~300_combout\);

-- Location: LCCOMB_X56_Y7_N26
\gpmc_driver|ram[25][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[25][14]~feeder_combout\);

-- Location: FF_X56_Y7_N27
\gpmc_driver|ram[25][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][14]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][14]~q\);

-- Location: FF_X53_Y7_N17
\gpmc_driver|ram[29][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][14]~q\);

-- Location: FF_X53_Y7_N11
\gpmc_driver|ram[17][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][14]~q\);

-- Location: LCCOMB_X54_Y7_N14
\gpmc_driver|ram[21][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[21][14]~feeder_combout\);

-- Location: FF_X54_Y7_N15
\gpmc_driver|ram[21][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][14]~feeder_combout\,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][14]~q\);

-- Location: LCCOMB_X53_Y7_N10
\gpmc_driver|gpmc_data_out~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~297_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][14]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[17][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[17][14]~q\,
	datad => \gpmc_driver|ram[21][14]~q\,
	combout => \gpmc_driver|gpmc_data_out~297_combout\);

-- Location: LCCOMB_X53_Y7_N16
\gpmc_driver|gpmc_data_out~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~298_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~297_combout\ & ((\gpmc_driver|ram[29][14]~q\))) # (!\gpmc_driver|gpmc_data_out~297_combout\ & (\gpmc_driver|ram[25][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][14]~q\,
	datac => \gpmc_driver|ram[29][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~297_combout\,
	combout => \gpmc_driver|gpmc_data_out~298_combout\);

-- Location: LCCOMB_X52_Y7_N10
\gpmc_driver|gpmc_data_out~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~301_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~298_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~300_combout\,
	datad => \gpmc_driver|gpmc_data_out~298_combout\,
	combout => \gpmc_driver|gpmc_data_out~301_combout\);

-- Location: LCCOMB_X52_Y7_N20
\gpmc_driver|gpmc_data_out~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~304_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~301_combout\ & ((\gpmc_driver|gpmc_data_out~303_combout\))) # (!\gpmc_driver|gpmc_data_out~301_combout\ & (\gpmc_driver|gpmc_data_out~296_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~296_combout\,
	datab => \gpmc_driver|gpmc_data_out~303_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~301_combout\,
	combout => \gpmc_driver|gpmc_data_out~304_combout\);

-- Location: LCCOMB_X52_Y7_N4
\gpmc_driver|gpmc_data_out~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~315_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~314_combout\) # ((\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|gpmc_data_out~304_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (\gpmc_driver|ram[31][0]~3_combout\ & ((\gpmc_driver|gpmc_data_out~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|ram[31][0]~3_combout\,
	datac => \gpmc_driver|gpmc_data_out~314_combout\,
	datad => \gpmc_driver|gpmc_data_out~304_combout\,
	combout => \gpmc_driver|gpmc_data_out~315_combout\);

-- Location: FF_X52_Y7_N5
\gpmc_driver|gpmc_data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~315_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(14));

-- Location: IOIBUF_X63_Y0_N1
\GPMC_DATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(15),
	o => \GPMC_DATA[15]~input_o\);

-- Location: LCCOMB_X56_Y7_N14
\gpmc_driver|gpmc_data_in[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[15]~feeder_combout\ = \GPMC_DATA[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[15]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[15]~feeder_combout\);

-- Location: FF_X56_Y7_N15
\gpmc_driver|gpmc_data_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(15));

-- Location: LCCOMB_X50_Y11_N8
\gpmc_driver|ram[23][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[23][15]~feeder_combout\);

-- Location: FF_X50_Y11_N9
\gpmc_driver|ram[23][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][15]~feeder_combout\,
	ena => \gpmc_driver|ram[23][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][15]~q\);

-- Location: FF_X50_Y11_N23
\gpmc_driver|ram[31][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[31][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][15]~q\);

-- Location: LCCOMB_X49_Y11_N0
\gpmc_driver|ram[27][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[27][15]~feeder_combout\);

-- Location: FF_X49_Y11_N1
\gpmc_driver|ram[27][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][15]~feeder_combout\,
	ena => \gpmc_driver|ram[27][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][15]~q\);

-- Location: FF_X49_Y11_N23
\gpmc_driver|ram[19][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[19][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][15]~q\);

-- Location: LCCOMB_X49_Y11_N22
\gpmc_driver|gpmc_data_out~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~323_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][15]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][15]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][15]~q\,
	datac => \gpmc_driver|ram[19][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~323_combout\);

-- Location: LCCOMB_X50_Y11_N22
\gpmc_driver|gpmc_data_out~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~324_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~323_combout\ & ((\gpmc_driver|ram[31][15]~q\))) # (!\gpmc_driver|gpmc_data_out~323_combout\ & (\gpmc_driver|ram[23][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][15]~q\,
	datac => \gpmc_driver|ram[31][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~323_combout\,
	combout => \gpmc_driver|gpmc_data_out~324_combout\);

-- Location: LCCOMB_X54_Y7_N22
\gpmc_driver|ram[29][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[29][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[29][15]~feeder_combout\);

-- Location: FF_X54_Y7_N23
\gpmc_driver|ram[29][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[29][15]~feeder_combout\,
	ena => \gpmc_driver|ram[29][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][15]~q\);

-- Location: FF_X54_Y7_N5
\gpmc_driver|ram[21][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[21][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][15]~q\);

-- Location: LCCOMB_X56_Y7_N28
\gpmc_driver|ram[25][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[25][15]~feeder_combout\);

-- Location: FF_X56_Y7_N29
\gpmc_driver|ram[25][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][15]~feeder_combout\,
	ena => \gpmc_driver|ram[25][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][15]~q\);

-- Location: FF_X55_Y7_N23
\gpmc_driver|ram[17][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[17][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][15]~q\);

-- Location: LCCOMB_X55_Y7_N22
\gpmc_driver|gpmc_data_out~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~316_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][15]~q\,
	datac => \gpmc_driver|ram[17][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~316_combout\);

-- Location: LCCOMB_X54_Y7_N4
\gpmc_driver|gpmc_data_out~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~317_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~316_combout\ & (\gpmc_driver|ram[29][15]~q\)) # (!\gpmc_driver|gpmc_data_out~316_combout\ & ((\gpmc_driver|ram[21][15]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[29][15]~q\,
	datac => \gpmc_driver|ram[21][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~316_combout\,
	combout => \gpmc_driver|gpmc_data_out~317_combout\);

-- Location: LCCOMB_X50_Y9_N26
\gpmc_driver|ram[24][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[24][15]~feeder_combout\);

-- Location: FF_X50_Y9_N27
\gpmc_driver|ram[24][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][15]~feeder_combout\,
	ena => \gpmc_driver|ram[24][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][15]~q\);

-- Location: LCCOMB_X50_Y6_N28
\gpmc_driver|ram[20][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[20][15]~feeder_combout\);

-- Location: FF_X50_Y6_N29
\gpmc_driver|ram[20][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][15]~feeder_combout\,
	ena => \gpmc_driver|ram[20][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][15]~q\);

-- Location: FF_X51_Y9_N15
\gpmc_driver|ram[16][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[16][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][15]~q\);

-- Location: LCCOMB_X51_Y9_N14
\gpmc_driver|gpmc_data_out~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~320_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][15]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[16][15]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~320_combout\);

-- Location: FF_X51_Y9_N5
\gpmc_driver|ram[28][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[28][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][15]~q\);

-- Location: LCCOMB_X51_Y9_N4
\gpmc_driver|gpmc_data_out~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~321_combout\ = (\gpmc_driver|gpmc_data_out~320_combout\ & (((\gpmc_driver|ram[28][15]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~320_combout\ & (\gpmc_driver|ram[24][15]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][15]~q\,
	datab => \gpmc_driver|gpmc_data_out~320_combout\,
	datac => \gpmc_driver|ram[28][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~321_combout\);

-- Location: LCCOMB_X51_Y6_N2
\gpmc_driver|ram[26][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[26][15]~feeder_combout\);

-- Location: FF_X51_Y6_N3
\gpmc_driver|ram[26][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][15]~feeder_combout\,
	ena => \gpmc_driver|ram[26][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][15]~q\);

-- Location: FF_X52_Y6_N27
\gpmc_driver|ram[30][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[30][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][15]~q\);

-- Location: LCCOMB_X53_Y6_N30
\gpmc_driver|ram[22][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[22][15]~feeder_combout\);

-- Location: FF_X53_Y6_N31
\gpmc_driver|ram[22][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][15]~feeder_combout\,
	ena => \gpmc_driver|ram[22][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][15]~q\);

-- Location: FF_X52_Y6_N25
\gpmc_driver|ram[18][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[18][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][15]~q\);

-- Location: LCCOMB_X52_Y6_N24
\gpmc_driver|gpmc_data_out~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~318_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][15]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][15]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[22][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~318_combout\);

-- Location: LCCOMB_X52_Y6_N26
\gpmc_driver|gpmc_data_out~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~319_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~318_combout\ & ((\gpmc_driver|ram[30][15]~q\))) # (!\gpmc_driver|gpmc_data_out~318_combout\ & (\gpmc_driver|ram[26][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[30][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~318_combout\,
	combout => \gpmc_driver|gpmc_data_out~319_combout\);

-- Location: LCCOMB_X51_Y9_N2
\gpmc_driver|gpmc_data_out~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~322_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~319_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|gpmc_data_out~321_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~321_combout\,
	datad => \gpmc_driver|gpmc_data_out~319_combout\,
	combout => \gpmc_driver|gpmc_data_out~322_combout\);

-- Location: LCCOMB_X51_Y9_N28
\gpmc_driver|gpmc_data_out~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~325_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~322_combout\ & (\gpmc_driver|gpmc_data_out~324_combout\)) # (!\gpmc_driver|gpmc_data_out~322_combout\ & ((\gpmc_driver|gpmc_data_out~317_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~324_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~317_combout\,
	datad => \gpmc_driver|gpmc_data_out~322_combout\,
	combout => \gpmc_driver|gpmc_data_out~325_combout\);

-- Location: LCCOMB_X48_Y9_N30
\gpmc_driver|ram[14][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[14][15]~feeder_combout\);

-- Location: FF_X48_Y9_N31
\gpmc_driver|ram[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][15]~feeder_combout\,
	ena => \gpmc_driver|ram[14][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][15]~q\);

-- Location: LCCOMB_X48_Y7_N10
\gpmc_driver|ram[13][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[13][15]~feeder_combout\);

-- Location: FF_X48_Y7_N11
\gpmc_driver|ram[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][15]~feeder_combout\,
	ena => \gpmc_driver|ram[13][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][15]~q\);

-- Location: FF_X48_Y8_N15
\gpmc_driver|ram[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[12][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][15]~q\);

-- Location: LCCOMB_X48_Y8_N14
\gpmc_driver|gpmc_data_out~333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~333_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~333_combout\);

-- Location: FF_X48_Y8_N1
\gpmc_driver|ram[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[15][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][15]~q\);

-- Location: LCCOMB_X48_Y8_N0
\gpmc_driver|gpmc_data_out~334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~334_combout\ = (\gpmc_driver|gpmc_data_out~333_combout\ & (((\gpmc_driver|ram[15][15]~q\) # (!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~333_combout\ & (\gpmc_driver|ram[14][15]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][15]~q\,
	datab => \gpmc_driver|gpmc_data_out~333_combout\,
	datac => \gpmc_driver|ram[15][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~334_combout\);

-- Location: LCCOMB_X54_Y8_N24
\gpmc_driver|ram[6][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[6][15]~feeder_combout\);

-- Location: FF_X54_Y8_N25
\gpmc_driver|ram[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][15]~feeder_combout\,
	ena => \gpmc_driver|ram[6][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][15]~q\);

-- Location: FF_X54_Y8_N7
\gpmc_driver|ram[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[7][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][15]~q\);

-- Location: FF_X49_Y8_N31
\gpmc_driver|ram[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[4][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][15]~q\);

-- Location: LCCOMB_X50_Y8_N26
\gpmc_driver|ram[5][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[5][15]~feeder_combout\);

-- Location: FF_X50_Y8_N27
\gpmc_driver|ram[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][15]~feeder_combout\,
	ena => \gpmc_driver|ram[5][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][15]~q\);

-- Location: LCCOMB_X49_Y8_N30
\gpmc_driver|gpmc_data_out~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~326_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][15]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][15]~q\,
	datad => \gpmc_driver|ram[5][15]~q\,
	combout => \gpmc_driver|gpmc_data_out~326_combout\);

-- Location: LCCOMB_X54_Y8_N6
\gpmc_driver|gpmc_data_out~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~327_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~326_combout\ & ((\gpmc_driver|ram[7][15]~q\))) # (!\gpmc_driver|gpmc_data_out~326_combout\ & (\gpmc_driver|ram[6][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[6][15]~q\,
	datac => \gpmc_driver|ram[7][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~326_combout\,
	combout => \gpmc_driver|gpmc_data_out~327_combout\);

-- Location: LCCOMB_X56_Y8_N22
\gpmc_driver|ram[9][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[9][15]~feeder_combout\);

-- Location: FF_X56_Y8_N23
\gpmc_driver|ram[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][15]~feeder_combout\,
	ena => \gpmc_driver|ram[9][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][15]~q\);

-- Location: FF_X55_Y8_N5
\gpmc_driver|ram[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[11][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][15]~q\);

-- Location: LCCOMB_X56_Y8_N28
\gpmc_driver|ram[10][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[10][15]~feeder_combout\);

-- Location: FF_X56_Y8_N29
\gpmc_driver|ram[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][15]~feeder_combout\,
	ena => \gpmc_driver|ram[10][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][15]~q\);

-- Location: FF_X55_Y8_N11
\gpmc_driver|ram[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|ram[8][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][15]~q\);

-- Location: LCCOMB_X55_Y8_N10
\gpmc_driver|gpmc_data_out~328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~328_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[10][15]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[8][15]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][15]~q\,
	datac => \gpmc_driver|ram[8][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~328_combout\);

-- Location: LCCOMB_X55_Y8_N4
\gpmc_driver|gpmc_data_out~329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~329_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~328_combout\ & ((\gpmc_driver|ram[11][15]~q\))) # (!\gpmc_driver|gpmc_data_out~328_combout\ & (\gpmc_driver|ram[9][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][15]~q\,
	datac => \gpmc_driver|ram[11][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~328_combout\,
	combout => \gpmc_driver|gpmc_data_out~329_combout\);

-- Location: LCCOMB_X53_Y10_N18
\gpmc_driver|ram~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~94_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\qd1|position\(31))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \qd1|position\(31),
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram~94_combout\);

-- Location: FF_X53_Y10_N19
\gpmc_driver|ram[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~94_combout\,
	ena => \gpmc_driver|ram[1][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][15]~q\);

-- Location: LCCOMB_X56_Y10_N30
\QD2|counter[31]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QD2|counter[31]~95_combout\ = \QD2|counter\(31) $ (\QD2|counter[30]~94\ $ (\QD2|flipflop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \QD2|counter\(31),
	datad => \QD2|flipflop\(0),
	cin => \QD2|counter[30]~94\,
	combout => \QD2|counter[31]~95_combout\);

-- Location: FF_X56_Y10_N31
\QD2|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \QD2|counter[31]~95_combout\,
	ena => \QD2|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QD2|counter\(31));

-- Location: LCCOMB_X55_Y10_N14
\gpmc_driver|ram~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~97_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\QD2|counter\(31))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \QD2|counter\(31),
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram~97_combout\);

-- Location: FF_X55_Y10_N15
\gpmc_driver|ram[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~97_combout\,
	ena => \gpmc_driver|ram[3][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][15]~q\);

-- Location: LCCOMB_X54_Y10_N18
\gpmc_driver|ram~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~95_combout\ = (\gpmc_driver|gpmc_ncs~q\ & (\QD2|counter\(15))) # (!\gpmc_driver|gpmc_ncs~q\ & ((\gpmc_driver|gpmc_data_in\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \QD2|counter\(15),
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram~95_combout\);

-- Location: FF_X54_Y10_N19
\gpmc_driver|ram[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram~95_combout\,
	ena => \gpmc_driver|ram[2][5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][15]~q\);

-- Location: LCCOMB_X49_Y10_N26
\gpmc_driver|ram~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram~96_combout\ = (\gpmc_driver|gpmc_ncs~q\ & ((\qd1|position\(15)))) # (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_data_in\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_in\(15),
	datab => \qd1|position\(15),
	datac => \gpmc_driver|gpmc_ncs~q\,
	combout => \gpmc_driver|ram~96_combout\);

-- Location: LCCOMB_X53_Y10_N4
\gpmc_driver|ram[0][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[0][15]~feeder_combout\ = \gpmc_driver|ram~96_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|ram~96_combout\,
	combout => \gpmc_driver|ram[0][15]~feeder_combout\);

-- Location: FF_X53_Y10_N5
\gpmc_driver|ram[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[0][15]~feeder_combout\,
	ena => \gpmc_driver|ram[0][9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][15]~q\);

-- Location: LCCOMB_X53_Y8_N30
\gpmc_driver|gpmc_data_out~330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~330_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[2][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[2][15]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|ram[0][15]~q\,
	combout => \gpmc_driver|gpmc_data_out~330_combout\);

-- Location: LCCOMB_X53_Y8_N28
\gpmc_driver|gpmc_data_out~331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~331_combout\ = (\gpmc_driver|gpmc_data_out~330_combout\ & (((\gpmc_driver|ram[3][15]~q\) # (!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~330_combout\ & (\gpmc_driver|ram[1][15]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[1][15]~q\,
	datab => \gpmc_driver|ram[3][15]~q\,
	datac => \gpmc_driver|gpmc_data_out~330_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~331_combout\);

-- Location: LCCOMB_X53_Y8_N10
\gpmc_driver|gpmc_data_out~332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~332_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_data_out~329_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|gpmc_data_out~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~329_combout\,
	datad => \gpmc_driver|gpmc_data_out~331_combout\,
	combout => \gpmc_driver|gpmc_data_out~332_combout\);

-- Location: LCCOMB_X48_Y8_N26
\gpmc_driver|gpmc_data_out~335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~335_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~332_combout\ & (\gpmc_driver|gpmc_data_out~334_combout\)) # (!\gpmc_driver|gpmc_data_out~332_combout\ & ((\gpmc_driver|gpmc_data_out~327_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~334_combout\,
	datac => \gpmc_driver|gpmc_data_out~327_combout\,
	datad => \gpmc_driver|gpmc_data_out~332_combout\,
	combout => \gpmc_driver|gpmc_data_out~335_combout\);

-- Location: LCCOMB_X52_Y8_N8
\gpmc_driver|gpmc_data_out~336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~336_combout\ = (\gpmc_driver|ram[15][0]~0_combout\ & ((\gpmc_driver|gpmc_data_out~335_combout\) # ((\gpmc_driver|ram[31][0]~3_combout\ & \gpmc_driver|gpmc_data_out~325_combout\)))) # (!\gpmc_driver|ram[15][0]~0_combout\ & 
-- (\gpmc_driver|ram[31][0]~3_combout\ & (\gpmc_driver|gpmc_data_out~325_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][0]~0_combout\,
	datab => \gpmc_driver|ram[31][0]~3_combout\,
	datac => \gpmc_driver|gpmc_data_out~325_combout\,
	datad => \gpmc_driver|gpmc_data_out~335_combout\,
	combout => \gpmc_driver|gpmc_data_out~336_combout\);

-- Location: FF_X52_Y8_N9
\gpmc_driver|gpmc_data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~336_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(15));

-- Location: LCCOMB_X45_Y8_N4
\gpmc_driver|reg4_out[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[8]~feeder_combout\ = \gpmc_driver|ram[4][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[4][8]~q\,
	combout => \gpmc_driver|reg4_out[8]~feeder_combout\);

-- Location: FF_X45_Y8_N5
\gpmc_driver|reg4_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[8]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(8));

-- Location: LCCOMB_X44_Y8_N24
\MC1|INA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|INA~feeder_combout\ = \gpmc_driver|reg4_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg4_out\(8),
	combout => \MC1|INA~feeder_combout\);

-- Location: FF_X44_Y8_N25
\MC1|INA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|INA~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|INA~q\);

-- Location: LCCOMB_X45_Y8_N6
\gpmc_driver|reg4_out[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[9]~feeder_combout\ = \gpmc_driver|ram[4][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[4][9]~q\,
	combout => \gpmc_driver|reg4_out[9]~feeder_combout\);

-- Location: FF_X45_Y8_N7
\gpmc_driver|reg4_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[9]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(9));

-- Location: LCCOMB_X44_Y8_N18
\MC1|INB~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|INB~feeder_combout\ = \gpmc_driver|reg4_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg4_out\(9),
	combout => \MC1|INB~feeder_combout\);

-- Location: FF_X44_Y8_N19
\MC1|INB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|INB~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|INB~q\);

-- Location: LCCOMB_X50_Y12_N18
\gpmc_driver|reg4_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[7]~feeder_combout\ = \gpmc_driver|ram[4][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[4][7]~q\,
	combout => \gpmc_driver|reg4_out[7]~feeder_combout\);

-- Location: FF_X50_Y12_N19
\gpmc_driver|reg4_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[7]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(7));

-- Location: LCCOMB_X50_Y12_N0
\MC1|dc[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc[7]~feeder_combout\ = \gpmc_driver|reg4_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg4_out\(7),
	combout => \MC1|dc[7]~feeder_combout\);

-- Location: FF_X50_Y12_N1
\MC1|dc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc\(7));

-- Location: LCCOMB_X50_Y12_N28
\gpmc_driver|reg4_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[6]~feeder_combout\ = \gpmc_driver|ram[4][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|ram[4][6]~q\,
	combout => \gpmc_driver|reg4_out[6]~feeder_combout\);

-- Location: FF_X50_Y12_N29
\gpmc_driver|reg4_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[6]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(6));

-- Location: LCCOMB_X50_Y12_N14
\MC1|dc[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc[6]~feeder_combout\ = \gpmc_driver|reg4_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg4_out\(6),
	combout => \MC1|dc[6]~feeder_combout\);

-- Location: FF_X50_Y12_N15
\MC1|dc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc\(6));

-- Location: LCCOMB_X50_Y12_N6
\gpmc_driver|reg4_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[5]~feeder_combout\ = \gpmc_driver|ram[4][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[4][5]~q\,
	combout => \gpmc_driver|reg4_out[5]~feeder_combout\);

-- Location: FF_X50_Y12_N7
\gpmc_driver|reg4_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[5]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(5));

-- Location: LCCOMB_X50_Y12_N2
\MC1|dc[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc[5]~feeder_combout\ = \gpmc_driver|reg4_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg4_out\(5),
	combout => \MC1|dc[5]~feeder_combout\);

-- Location: FF_X50_Y12_N3
\MC1|dc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc\(5));

-- Location: LCCOMB_X50_Y12_N16
\gpmc_driver|reg4_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[4]~feeder_combout\ = \gpmc_driver|ram[4][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[4][4]~q\,
	combout => \gpmc_driver|reg4_out[4]~feeder_combout\);

-- Location: FF_X50_Y12_N17
\gpmc_driver|reg4_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[4]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(4));

-- Location: LCCOMB_X50_Y12_N22
\MC1|dc[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc[4]~feeder_combout\ = \gpmc_driver|reg4_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg4_out\(4),
	combout => \MC1|dc[4]~feeder_combout\);

-- Location: FF_X50_Y12_N23
\MC1|dc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc\(4));

-- Location: LCCOMB_X50_Y12_N4
\gpmc_driver|reg4_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[3]~feeder_combout\ = \gpmc_driver|ram[4][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[4][3]~q\,
	combout => \gpmc_driver|reg4_out[3]~feeder_combout\);

-- Location: FF_X50_Y12_N5
\gpmc_driver|reg4_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[3]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(3));

-- Location: LCCOMB_X49_Y12_N26
\MC1|dc[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc[3]~feeder_combout\ = \gpmc_driver|reg4_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg4_out\(3),
	combout => \MC1|dc[3]~feeder_combout\);

-- Location: FF_X49_Y12_N27
\MC1|dc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc\(3));

-- Location: LCCOMB_X48_Y12_N4
\gpmc_driver|reg4_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[2]~feeder_combout\ = \gpmc_driver|ram[4][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[4][2]~q\,
	combout => \gpmc_driver|reg4_out[2]~feeder_combout\);

-- Location: FF_X48_Y12_N5
\gpmc_driver|reg4_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[2]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(2));

-- Location: LCCOMB_X48_Y12_N0
\MC1|dc[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc[2]~feeder_combout\ = \gpmc_driver|reg4_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|reg4_out\(2),
	combout => \MC1|dc[2]~feeder_combout\);

-- Location: FF_X48_Y12_N1
\MC1|dc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc\(2));

-- Location: LCCOMB_X48_Y12_N2
\gpmc_driver|reg4_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[1]~feeder_combout\ = \gpmc_driver|ram[4][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[4][1]~q\,
	combout => \gpmc_driver|reg4_out[1]~feeder_combout\);

-- Location: FF_X48_Y12_N3
\gpmc_driver|reg4_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[1]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(1));

-- Location: LCCOMB_X48_Y12_N6
\MC1|dc[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc[1]~feeder_combout\ = \gpmc_driver|reg4_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg4_out\(1),
	combout => \MC1|dc[1]~feeder_combout\);

-- Location: FF_X48_Y12_N7
\MC1|dc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc\(1));

-- Location: LCCOMB_X50_Y12_N20
\gpmc_driver|reg4_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg4_out[0]~feeder_combout\ = \gpmc_driver|ram[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[4][0]~q\,
	combout => \gpmc_driver|reg4_out[0]~feeder_combout\);

-- Location: FF_X50_Y12_N21
\gpmc_driver|reg4_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg4_out[0]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg4_out\(0));

-- Location: LCCOMB_X50_Y12_N30
\MC1|dc[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc[0]~feeder_combout\ = \gpmc_driver|reg4_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg4_out\(0),
	combout => \MC1|dc[0]~feeder_combout\);

-- Location: FF_X50_Y12_N31
\MC1|dc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc\(0));

-- Location: LCCOMB_X49_Y12_N4
\MC1|pulsehigh[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[3]~9_combout\ = (\MC1|dc\(0) & (\MC1|dc\(2) $ (VCC))) # (!\MC1|dc\(0) & (\MC1|dc\(2) & VCC))
-- \MC1|pulsehigh[3]~10\ = CARRY((\MC1|dc\(0) & \MC1|dc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(0),
	datab => \MC1|dc\(2),
	datad => VCC,
	combout => \MC1|pulsehigh[3]~9_combout\,
	cout => \MC1|pulsehigh[3]~10\);

-- Location: LCCOMB_X49_Y12_N6
\MC1|pulsehigh[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[4]~11_combout\ = (\MC1|dc\(3) & ((\MC1|dc\(1) & (\MC1|pulsehigh[3]~10\ & VCC)) # (!\MC1|dc\(1) & (!\MC1|pulsehigh[3]~10\)))) # (!\MC1|dc\(3) & ((\MC1|dc\(1) & (!\MC1|pulsehigh[3]~10\)) # (!\MC1|dc\(1) & ((\MC1|pulsehigh[3]~10\) # (GND)))))
-- \MC1|pulsehigh[4]~12\ = CARRY((\MC1|dc\(3) & (!\MC1|dc\(1) & !\MC1|pulsehigh[3]~10\)) # (!\MC1|dc\(3) & ((!\MC1|pulsehigh[3]~10\) # (!\MC1|dc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(3),
	datab => \MC1|dc\(1),
	datad => VCC,
	cin => \MC1|pulsehigh[3]~10\,
	combout => \MC1|pulsehigh[4]~11_combout\,
	cout => \MC1|pulsehigh[4]~12\);

-- Location: LCCOMB_X49_Y12_N8
\MC1|pulsehigh[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[5]~13_combout\ = ((\MC1|dc\(2) $ (\MC1|dc\(4) $ (!\MC1|pulsehigh[4]~12\)))) # (GND)
-- \MC1|pulsehigh[5]~14\ = CARRY((\MC1|dc\(2) & ((\MC1|dc\(4)) # (!\MC1|pulsehigh[4]~12\))) # (!\MC1|dc\(2) & (\MC1|dc\(4) & !\MC1|pulsehigh[4]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(2),
	datab => \MC1|dc\(4),
	datad => VCC,
	cin => \MC1|pulsehigh[4]~12\,
	combout => \MC1|pulsehigh[5]~13_combout\,
	cout => \MC1|pulsehigh[5]~14\);

-- Location: LCCOMB_X49_Y12_N10
\MC1|pulsehigh[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[6]~15_combout\ = (\MC1|dc\(5) & ((\MC1|dc\(3) & (\MC1|pulsehigh[5]~14\ & VCC)) # (!\MC1|dc\(3) & (!\MC1|pulsehigh[5]~14\)))) # (!\MC1|dc\(5) & ((\MC1|dc\(3) & (!\MC1|pulsehigh[5]~14\)) # (!\MC1|dc\(3) & ((\MC1|pulsehigh[5]~14\) # (GND)))))
-- \MC1|pulsehigh[6]~16\ = CARRY((\MC1|dc\(5) & (!\MC1|dc\(3) & !\MC1|pulsehigh[5]~14\)) # (!\MC1|dc\(5) & ((!\MC1|pulsehigh[5]~14\) # (!\MC1|dc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(5),
	datab => \MC1|dc\(3),
	datad => VCC,
	cin => \MC1|pulsehigh[5]~14\,
	combout => \MC1|pulsehigh[6]~15_combout\,
	cout => \MC1|pulsehigh[6]~16\);

-- Location: LCCOMB_X49_Y12_N12
\MC1|pulsehigh[7]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[7]~17_combout\ = ((\MC1|dc\(6) $ (\MC1|dc\(4) $ (!\MC1|pulsehigh[6]~16\)))) # (GND)
-- \MC1|pulsehigh[7]~18\ = CARRY((\MC1|dc\(6) & ((\MC1|dc\(4)) # (!\MC1|pulsehigh[6]~16\))) # (!\MC1|dc\(6) & (\MC1|dc\(4) & !\MC1|pulsehigh[6]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(6),
	datab => \MC1|dc\(4),
	datad => VCC,
	cin => \MC1|pulsehigh[6]~16\,
	combout => \MC1|pulsehigh[7]~17_combout\,
	cout => \MC1|pulsehigh[7]~18\);

-- Location: LCCOMB_X49_Y12_N14
\MC1|pulsehigh[8]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[8]~19_combout\ = (\MC1|dc\(5) & ((\MC1|dc\(7) & (\MC1|pulsehigh[7]~18\ & VCC)) # (!\MC1|dc\(7) & (!\MC1|pulsehigh[7]~18\)))) # (!\MC1|dc\(5) & ((\MC1|dc\(7) & (!\MC1|pulsehigh[7]~18\)) # (!\MC1|dc\(7) & ((\MC1|pulsehigh[7]~18\) # (GND)))))
-- \MC1|pulsehigh[8]~20\ = CARRY((\MC1|dc\(5) & (!\MC1|dc\(7) & !\MC1|pulsehigh[7]~18\)) # (!\MC1|dc\(5) & ((!\MC1|pulsehigh[7]~18\) # (!\MC1|dc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(5),
	datab => \MC1|dc\(7),
	datad => VCC,
	cin => \MC1|pulsehigh[7]~18\,
	combout => \MC1|pulsehigh[8]~19_combout\,
	cout => \MC1|pulsehigh[8]~20\);

-- Location: LCCOMB_X49_Y12_N16
\MC1|pulsehigh[9]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[9]~21_combout\ = (\MC1|dc\(6) & (\MC1|pulsehigh[8]~20\ $ (GND))) # (!\MC1|dc\(6) & (!\MC1|pulsehigh[8]~20\ & VCC))
-- \MC1|pulsehigh[9]~22\ = CARRY((\MC1|dc\(6) & !\MC1|pulsehigh[8]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(6),
	datad => VCC,
	cin => \MC1|pulsehigh[8]~20\,
	combout => \MC1|pulsehigh[9]~21_combout\,
	cout => \MC1|pulsehigh[9]~22\);

-- Location: LCCOMB_X49_Y12_N18
\MC1|pulsehigh[10]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[10]~23_combout\ = (\MC1|dc\(7) & (!\MC1|pulsehigh[9]~22\)) # (!\MC1|dc\(7) & ((\MC1|pulsehigh[9]~22\) # (GND)))
-- \MC1|pulsehigh[10]~24\ = CARRY((!\MC1|pulsehigh[9]~22\) # (!\MC1|dc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MC1|dc\(7),
	datad => VCC,
	cin => \MC1|pulsehigh[9]~22\,
	combout => \MC1|pulsehigh[10]~23_combout\,
	cout => \MC1|pulsehigh[10]~24\);

-- Location: LCCOMB_X49_Y12_N20
\MC1|pulsehigh[11]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[11]~25_combout\ = !\MC1|pulsehigh[10]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MC1|pulsehigh[10]~24\,
	combout => \MC1|pulsehigh[11]~25_combout\);

-- Location: LCCOMB_X50_Y12_N8
\MC1|dc_old[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc_old[5]~feeder_combout\ = \MC1|dc\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MC1|dc\(5),
	combout => \MC1|dc_old[5]~feeder_combout\);

-- Location: FF_X50_Y12_N9
\MC1|dc_old[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc_old[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc_old\(5));

-- Location: FF_X50_Y12_N13
\MC1|dc_old[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC1|dc\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc_old\(4));

-- Location: LCCOMB_X50_Y12_N12
\MC1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Equal0~2_combout\ = (\MC1|dc\(4) & (\MC1|dc_old\(4) & (\MC1|dc_old\(5) $ (!\MC1|dc\(5))))) # (!\MC1|dc\(4) & (!\MC1|dc_old\(4) & (\MC1|dc_old\(5) $ (!\MC1|dc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(4),
	datab => \MC1|dc_old\(5),
	datac => \MC1|dc_old\(4),
	datad => \MC1|dc\(5),
	combout => \MC1|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y12_N26
\MC1|dc_old[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc_old[7]~feeder_combout\ = \MC1|dc\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MC1|dc\(7),
	combout => \MC1|dc_old[7]~feeder_combout\);

-- Location: FF_X50_Y12_N27
\MC1|dc_old[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc_old[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc_old\(7));

-- Location: FF_X50_Y12_N25
\MC1|dc_old[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC1|dc\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc_old\(6));

-- Location: LCCOMB_X50_Y12_N24
\MC1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Equal0~3_combout\ = (\MC1|dc_old\(7) & (\MC1|dc\(7) & (\MC1|dc\(6) $ (!\MC1|dc_old\(6))))) # (!\MC1|dc_old\(7) & (!\MC1|dc\(7) & (\MC1|dc\(6) $ (!\MC1|dc_old\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc_old\(7),
	datab => \MC1|dc\(6),
	datac => \MC1|dc_old\(6),
	datad => \MC1|dc\(7),
	combout => \MC1|Equal0~3_combout\);

-- Location: FF_X49_Y12_N1
\MC1|dc_old[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC1|dc\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc_old\(2));

-- Location: LCCOMB_X49_Y12_N30
\MC1|dc_old[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc_old[3]~feeder_combout\ = \MC1|dc\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MC1|dc\(3),
	combout => \MC1|dc_old[3]~feeder_combout\);

-- Location: FF_X49_Y12_N31
\MC1|dc_old[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc_old[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc_old\(3));

-- Location: LCCOMB_X49_Y12_N0
\MC1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Equal0~1_combout\ = (\MC1|dc\(3) & (\MC1|dc_old\(3) & (\MC1|dc\(2) $ (!\MC1|dc_old\(2))))) # (!\MC1|dc\(3) & (!\MC1|dc_old\(3) & (\MC1|dc\(2) $ (!\MC1|dc_old\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(3),
	datab => \MC1|dc\(2),
	datac => \MC1|dc_old\(2),
	datad => \MC1|dc_old\(3),
	combout => \MC1|Equal0~1_combout\);

-- Location: FF_X49_Y12_N29
\MC1|dc_old[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC1|dc\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc_old\(0));

-- Location: LCCOMB_X49_Y12_N2
\MC1|dc_old[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|dc_old[1]~feeder_combout\ = \MC1|dc\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MC1|dc\(1),
	combout => \MC1|dc_old[1]~feeder_combout\);

-- Location: FF_X49_Y12_N3
\MC1|dc_old[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|dc_old[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|dc_old\(1));

-- Location: LCCOMB_X49_Y12_N28
\MC1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Equal0~0_combout\ = (\MC1|dc\(0) & (\MC1|dc_old\(0) & (\MC1|dc\(1) $ (!\MC1|dc_old\(1))))) # (!\MC1|dc\(0) & (!\MC1|dc_old\(0) & (\MC1|dc\(1) $ (!\MC1|dc_old\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|dc\(0),
	datab => \MC1|dc\(1),
	datac => \MC1|dc_old\(0),
	datad => \MC1|dc_old\(1),
	combout => \MC1|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y12_N10
\MC1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Equal0~4_combout\ = (((!\MC1|Equal0~0_combout\) # (!\MC1|Equal0~1_combout\)) # (!\MC1|Equal0~3_combout\)) # (!\MC1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|Equal0~2_combout\,
	datab => \MC1|Equal0~3_combout\,
	datac => \MC1|Equal0~1_combout\,
	datad => \MC1|Equal0~0_combout\,
	combout => \MC1|Equal0~4_combout\);

-- Location: FF_X49_Y12_N21
\MC1|pulsehigh[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[11]~25_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(11));

-- Location: LCCOMB_X46_Y12_N4
\MC1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~0_combout\ = \MC1|cyclecount\(0) $ (VCC)
-- \MC1|Add1~1\ = CARRY(\MC1|cyclecount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MC1|cyclecount\(0),
	datad => VCC,
	combout => \MC1|Add1~0_combout\,
	cout => \MC1|Add1~1\);

-- Location: LCCOMB_X46_Y12_N0
\MC1|cyclecount~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|cyclecount~5_combout\ = (\MC1|Add1~0_combout\ & (((!\MC1|Equal1~2_combout\) # (!\MC1|Equal1~1_combout\)) # (!\MC1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|Equal1~0_combout\,
	datab => \MC1|Equal1~1_combout\,
	datac => \MC1|Add1~0_combout\,
	datad => \MC1|Equal1~2_combout\,
	combout => \MC1|cyclecount~5_combout\);

-- Location: FF_X46_Y12_N1
\MC1|cyclecount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|cyclecount~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(0));

-- Location: LCCOMB_X46_Y12_N6
\MC1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~2_combout\ = (\MC1|cyclecount\(1) & (!\MC1|Add1~1\)) # (!\MC1|cyclecount\(1) & ((\MC1|Add1~1\) # (GND)))
-- \MC1|Add1~3\ = CARRY((!\MC1|Add1~1\) # (!\MC1|cyclecount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(1),
	datad => VCC,
	cin => \MC1|Add1~1\,
	combout => \MC1|Add1~2_combout\,
	cout => \MC1|Add1~3\);

-- Location: FF_X46_Y12_N7
\MC1|cyclecount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(1));

-- Location: LCCOMB_X46_Y12_N8
\MC1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~4_combout\ = (\MC1|cyclecount\(2) & (\MC1|Add1~3\ $ (GND))) # (!\MC1|cyclecount\(2) & (!\MC1|Add1~3\ & VCC))
-- \MC1|Add1~5\ = CARRY((\MC1|cyclecount\(2) & !\MC1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(2),
	datad => VCC,
	cin => \MC1|Add1~3\,
	combout => \MC1|Add1~4_combout\,
	cout => \MC1|Add1~5\);

-- Location: LCCOMB_X46_Y12_N10
\MC1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~6_combout\ = (\MC1|cyclecount\(3) & (!\MC1|Add1~5\)) # (!\MC1|cyclecount\(3) & ((\MC1|Add1~5\) # (GND)))
-- \MC1|Add1~7\ = CARRY((!\MC1|Add1~5\) # (!\MC1|cyclecount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(3),
	datad => VCC,
	cin => \MC1|Add1~5\,
	combout => \MC1|Add1~6_combout\,
	cout => \MC1|Add1~7\);

-- Location: FF_X46_Y12_N11
\MC1|cyclecount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(3));

-- Location: LCCOMB_X46_Y12_N12
\MC1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~8_combout\ = (\MC1|cyclecount\(4) & (\MC1|Add1~7\ $ (GND))) # (!\MC1|cyclecount\(4) & (!\MC1|Add1~7\ & VCC))
-- \MC1|Add1~9\ = CARRY((\MC1|cyclecount\(4) & !\MC1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(4),
	datad => VCC,
	cin => \MC1|Add1~7\,
	combout => \MC1|Add1~8_combout\,
	cout => \MC1|Add1~9\);

-- Location: FF_X46_Y12_N13
\MC1|cyclecount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(4));

-- Location: LCCOMB_X46_Y12_N14
\MC1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~10_combout\ = (\MC1|cyclecount\(5) & (!\MC1|Add1~9\)) # (!\MC1|cyclecount\(5) & ((\MC1|Add1~9\) # (GND)))
-- \MC1|Add1~11\ = CARRY((!\MC1|Add1~9\) # (!\MC1|cyclecount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MC1|cyclecount\(5),
	datad => VCC,
	cin => \MC1|Add1~9\,
	combout => \MC1|Add1~10_combout\,
	cout => \MC1|Add1~11\);

-- Location: FF_X46_Y12_N15
\MC1|cyclecount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(5));

-- Location: LCCOMB_X46_Y12_N16
\MC1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~12_combout\ = (\MC1|cyclecount\(6) & (\MC1|Add1~11\ $ (GND))) # (!\MC1|cyclecount\(6) & (!\MC1|Add1~11\ & VCC))
-- \MC1|Add1~13\ = CARRY((\MC1|cyclecount\(6) & !\MC1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(6),
	datad => VCC,
	cin => \MC1|Add1~11\,
	combout => \MC1|Add1~12_combout\,
	cout => \MC1|Add1~13\);

-- Location: LCCOMB_X45_Y12_N30
\MC1|cyclecount~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|cyclecount~3_combout\ = (\MC1|Add1~12_combout\ & (((!\MC1|Equal1~1_combout\) # (!\MC1|Equal1~0_combout\)) # (!\MC1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|Equal1~2_combout\,
	datab => \MC1|Equal1~0_combout\,
	datac => \MC1|Equal1~1_combout\,
	datad => \MC1|Add1~12_combout\,
	combout => \MC1|cyclecount~3_combout\);

-- Location: FF_X45_Y12_N31
\MC1|cyclecount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|cyclecount~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(6));

-- Location: LCCOMB_X46_Y12_N18
\MC1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~14_combout\ = (\MC1|cyclecount\(7) & (!\MC1|Add1~13\)) # (!\MC1|cyclecount\(7) & ((\MC1|Add1~13\) # (GND)))
-- \MC1|Add1~15\ = CARRY((!\MC1|Add1~13\) # (!\MC1|cyclecount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MC1|cyclecount\(7),
	datad => VCC,
	cin => \MC1|Add1~13\,
	combout => \MC1|Add1~14_combout\,
	cout => \MC1|Add1~15\);

-- Location: LCCOMB_X46_Y12_N2
\MC1|cyclecount~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|cyclecount~2_combout\ = (\MC1|Add1~14_combout\ & (((!\MC1|Equal1~1_combout\) # (!\MC1|Equal1~2_combout\)) # (!\MC1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|Equal1~0_combout\,
	datab => \MC1|Equal1~2_combout\,
	datac => \MC1|Equal1~1_combout\,
	datad => \MC1|Add1~14_combout\,
	combout => \MC1|cyclecount~2_combout\);

-- Location: FF_X46_Y12_N3
\MC1|cyclecount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|cyclecount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(7));

-- Location: LCCOMB_X45_Y12_N4
\MC1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Equal1~1_combout\ = (\MC1|cyclecount\(6) & (!\MC1|cyclecount\(4) & (!\MC1|cyclecount\(5) & \MC1|cyclecount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(6),
	datab => \MC1|cyclecount\(4),
	datac => \MC1|cyclecount\(5),
	datad => \MC1|cyclecount\(7),
	combout => \MC1|Equal1~1_combout\);

-- Location: LCCOMB_X45_Y12_N2
\MC1|cyclecount~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|cyclecount~4_combout\ = (\MC1|Add1~4_combout\ & (((!\MC1|Equal1~0_combout\) # (!\MC1|Equal1~1_combout\)) # (!\MC1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|Equal1~2_combout\,
	datab => \MC1|Equal1~1_combout\,
	datac => \MC1|Add1~4_combout\,
	datad => \MC1|Equal1~0_combout\,
	combout => \MC1|cyclecount~4_combout\);

-- Location: FF_X45_Y12_N3
\MC1|cyclecount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|cyclecount~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(2));

-- Location: LCCOMB_X46_Y12_N30
\MC1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Equal1~2_combout\ = (\MC1|cyclecount\(2) & (!\MC1|cyclecount\(0) & (!\MC1|cyclecount\(3) & !\MC1|cyclecount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(2),
	datab => \MC1|cyclecount\(0),
	datac => \MC1|cyclecount\(3),
	datad => \MC1|cyclecount\(1),
	combout => \MC1|Equal1~2_combout\);

-- Location: LCCOMB_X46_Y12_N20
\MC1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~16_combout\ = (\MC1|cyclecount\(8) & (\MC1|Add1~15\ $ (GND))) # (!\MC1|cyclecount\(8) & (!\MC1|Add1~15\ & VCC))
-- \MC1|Add1~17\ = CARRY((\MC1|cyclecount\(8) & !\MC1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MC1|cyclecount\(8),
	datad => VCC,
	cin => \MC1|Add1~15\,
	combout => \MC1|Add1~16_combout\,
	cout => \MC1|Add1~17\);

-- Location: LCCOMB_X45_Y12_N6
\MC1|cyclecount~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|cyclecount~1_combout\ = (\MC1|Add1~16_combout\ & (((!\MC1|Equal1~0_combout\) # (!\MC1|Equal1~1_combout\)) # (!\MC1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|Equal1~2_combout\,
	datab => \MC1|Equal1~1_combout\,
	datac => \MC1|Add1~16_combout\,
	datad => \MC1|Equal1~0_combout\,
	combout => \MC1|cyclecount~1_combout\);

-- Location: FF_X45_Y12_N7
\MC1|cyclecount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|cyclecount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(8));

-- Location: LCCOMB_X46_Y12_N22
\MC1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~18_combout\ = (\MC1|cyclecount\(9) & (!\MC1|Add1~17\)) # (!\MC1|cyclecount\(9) & ((\MC1|Add1~17\) # (GND)))
-- \MC1|Add1~19\ = CARRY((!\MC1|Add1~17\) # (!\MC1|cyclecount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(9),
	datad => VCC,
	cin => \MC1|Add1~17\,
	combout => \MC1|Add1~18_combout\,
	cout => \MC1|Add1~19\);

-- Location: FF_X46_Y12_N23
\MC1|cyclecount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(9));

-- Location: LCCOMB_X46_Y12_N24
\MC1|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~20_combout\ = (\MC1|cyclecount\(10) & (\MC1|Add1~19\ $ (GND))) # (!\MC1|cyclecount\(10) & (!\MC1|Add1~19\ & VCC))
-- \MC1|Add1~21\ = CARRY((\MC1|cyclecount\(10) & !\MC1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MC1|cyclecount\(10),
	datad => VCC,
	cin => \MC1|Add1~19\,
	combout => \MC1|Add1~20_combout\,
	cout => \MC1|Add1~21\);

-- Location: FF_X46_Y12_N25
\MC1|cyclecount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(10));

-- Location: LCCOMB_X45_Y12_N0
\MC1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Equal1~0_combout\ = (\MC1|cyclecount\(8) & (!\MC1|cyclecount\(10) & (!\MC1|cyclecount\(9) & \MC1|cyclecount\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(8),
	datab => \MC1|cyclecount\(10),
	datac => \MC1|cyclecount\(9),
	datad => \MC1|cyclecount\(11),
	combout => \MC1|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y12_N26
\MC1|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|Add1~22_combout\ = \MC1|Add1~21\ $ (\MC1|cyclecount\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MC1|cyclecount\(11),
	cin => \MC1|Add1~21\,
	combout => \MC1|Add1~22_combout\);

-- Location: LCCOMB_X46_Y12_N28
\MC1|cyclecount~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|cyclecount~0_combout\ = (\MC1|Add1~22_combout\ & (((!\MC1|Equal1~2_combout\) # (!\MC1|Equal1~1_combout\)) # (!\MC1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|Equal1~0_combout\,
	datab => \MC1|Equal1~1_combout\,
	datac => \MC1|Add1~22_combout\,
	datad => \MC1|Equal1~2_combout\,
	combout => \MC1|cyclecount~0_combout\);

-- Location: FF_X46_Y12_N29
\MC1|cyclecount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|cyclecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|cyclecount\(11));

-- Location: FF_X49_Y12_N19
\MC1|pulsehigh[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[10]~23_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(10));

-- Location: FF_X49_Y12_N17
\MC1|pulsehigh[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[9]~21_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(9));

-- Location: FF_X49_Y12_N15
\MC1|pulsehigh[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[8]~19_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(8));

-- Location: FF_X49_Y12_N13
\MC1|pulsehigh[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[7]~17_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(7));

-- Location: FF_X49_Y12_N11
\MC1|pulsehigh[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[6]~15_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(6));

-- Location: FF_X49_Y12_N9
\MC1|pulsehigh[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[5]~13_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(5));

-- Location: FF_X49_Y12_N7
\MC1|pulsehigh[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[4]~11_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(4));

-- Location: FF_X49_Y12_N5
\MC1|pulsehigh[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[3]~9_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(3));

-- Location: LCCOMB_X49_Y12_N24
\MC1|pulsehigh[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[2]~feeder_combout\ = \MC1|dc\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MC1|dc\(1),
	combout => \MC1|pulsehigh[2]~feeder_combout\);

-- Location: FF_X49_Y12_N25
\MC1|pulsehigh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[2]~feeder_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(2));

-- Location: LCCOMB_X49_Y12_N22
\MC1|pulsehigh[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|pulsehigh[1]~feeder_combout\ = \MC1|dc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MC1|dc\(0),
	combout => \MC1|pulsehigh[1]~feeder_combout\);

-- Location: FF_X49_Y12_N23
\MC1|pulsehigh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|pulsehigh[1]~feeder_combout\,
	ena => \MC1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|pulsehigh\(1));

-- Location: LCCOMB_X48_Y12_N8
\MC1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~1_cout\ = CARRY((!\MC1|cyclecount\(1) & \MC1|pulsehigh\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(1),
	datab => \MC1|pulsehigh\(1),
	datad => VCC,
	cout => \MC1|LessThan0~1_cout\);

-- Location: LCCOMB_X48_Y12_N10
\MC1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~3_cout\ = CARRY((\MC1|pulsehigh\(2) & (\MC1|cyclecount\(2) & !\MC1|LessThan0~1_cout\)) # (!\MC1|pulsehigh\(2) & ((\MC1|cyclecount\(2)) # (!\MC1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|pulsehigh\(2),
	datab => \MC1|cyclecount\(2),
	datad => VCC,
	cin => \MC1|LessThan0~1_cout\,
	cout => \MC1|LessThan0~3_cout\);

-- Location: LCCOMB_X48_Y12_N12
\MC1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~5_cout\ = CARRY((\MC1|pulsehigh\(3) & ((!\MC1|LessThan0~3_cout\) # (!\MC1|cyclecount\(3)))) # (!\MC1|pulsehigh\(3) & (!\MC1|cyclecount\(3) & !\MC1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|pulsehigh\(3),
	datab => \MC1|cyclecount\(3),
	datad => VCC,
	cin => \MC1|LessThan0~3_cout\,
	cout => \MC1|LessThan0~5_cout\);

-- Location: LCCOMB_X48_Y12_N14
\MC1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~7_cout\ = CARRY((\MC1|pulsehigh\(4) & (\MC1|cyclecount\(4) & !\MC1|LessThan0~5_cout\)) # (!\MC1|pulsehigh\(4) & ((\MC1|cyclecount\(4)) # (!\MC1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|pulsehigh\(4),
	datab => \MC1|cyclecount\(4),
	datad => VCC,
	cin => \MC1|LessThan0~5_cout\,
	cout => \MC1|LessThan0~7_cout\);

-- Location: LCCOMB_X48_Y12_N16
\MC1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~9_cout\ = CARRY((\MC1|cyclecount\(5) & (\MC1|pulsehigh\(5) & !\MC1|LessThan0~7_cout\)) # (!\MC1|cyclecount\(5) & ((\MC1|pulsehigh\(5)) # (!\MC1|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(5),
	datab => \MC1|pulsehigh\(5),
	datad => VCC,
	cin => \MC1|LessThan0~7_cout\,
	cout => \MC1|LessThan0~9_cout\);

-- Location: LCCOMB_X48_Y12_N18
\MC1|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~11_cout\ = CARRY((\MC1|cyclecount\(6) & ((!\MC1|LessThan0~9_cout\) # (!\MC1|pulsehigh\(6)))) # (!\MC1|cyclecount\(6) & (!\MC1|pulsehigh\(6) & !\MC1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(6),
	datab => \MC1|pulsehigh\(6),
	datad => VCC,
	cin => \MC1|LessThan0~9_cout\,
	cout => \MC1|LessThan0~11_cout\);

-- Location: LCCOMB_X48_Y12_N20
\MC1|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~13_cout\ = CARRY((\MC1|cyclecount\(7) & (\MC1|pulsehigh\(7) & !\MC1|LessThan0~11_cout\)) # (!\MC1|cyclecount\(7) & ((\MC1|pulsehigh\(7)) # (!\MC1|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(7),
	datab => \MC1|pulsehigh\(7),
	datad => VCC,
	cin => \MC1|LessThan0~11_cout\,
	cout => \MC1|LessThan0~13_cout\);

-- Location: LCCOMB_X48_Y12_N22
\MC1|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~15_cout\ = CARRY((\MC1|cyclecount\(8) & ((!\MC1|LessThan0~13_cout\) # (!\MC1|pulsehigh\(8)))) # (!\MC1|cyclecount\(8) & (!\MC1|pulsehigh\(8) & !\MC1|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(8),
	datab => \MC1|pulsehigh\(8),
	datad => VCC,
	cin => \MC1|LessThan0~13_cout\,
	cout => \MC1|LessThan0~15_cout\);

-- Location: LCCOMB_X48_Y12_N24
\MC1|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~17_cout\ = CARRY((\MC1|cyclecount\(9) & (\MC1|pulsehigh\(9) & !\MC1|LessThan0~15_cout\)) # (!\MC1|cyclecount\(9) & ((\MC1|pulsehigh\(9)) # (!\MC1|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(9),
	datab => \MC1|pulsehigh\(9),
	datad => VCC,
	cin => \MC1|LessThan0~15_cout\,
	cout => \MC1|LessThan0~17_cout\);

-- Location: LCCOMB_X48_Y12_N26
\MC1|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~19_cout\ = CARRY((\MC1|cyclecount\(10) & ((!\MC1|LessThan0~17_cout\) # (!\MC1|pulsehigh\(10)))) # (!\MC1|cyclecount\(10) & (!\MC1|pulsehigh\(10) & !\MC1|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(10),
	datab => \MC1|pulsehigh\(10),
	datad => VCC,
	cin => \MC1|LessThan0~17_cout\,
	cout => \MC1|LessThan0~19_cout\);

-- Location: LCCOMB_X48_Y12_N28
\MC1|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|LessThan0~20_combout\ = (\MC1|pulsehigh\(11) & ((!\MC1|cyclecount\(11)) # (!\MC1|LessThan0~19_cout\))) # (!\MC1|pulsehigh\(11) & (!\MC1|LessThan0~19_cout\ & !\MC1|cyclecount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|pulsehigh\(11),
	datad => \MC1|cyclecount\(11),
	cin => \MC1|LessThan0~19_cout\,
	combout => \MC1|LessThan0~20_combout\);

-- Location: LCCOMB_X44_Y8_N20
\MC1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC1|process_0~0_combout\ = (\MC1|LessThan0~20_combout\ & (\gpmc_driver|reg4_out\(8) $ (\gpmc_driver|reg4_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|reg4_out\(8),
	datac => \MC1|LessThan0~20_combout\,
	datad => \gpmc_driver|reg4_out\(9),
	combout => \MC1|process_0~0_combout\);

-- Location: FF_X44_Y8_N21
\MC1|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC1|C~q\);

-- Location: LCCOMB_X45_Y8_N16
\gpmc_driver|reg6_out[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg6_out[8]~feeder_combout\ = \gpmc_driver|ram[6][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|ram[6][8]~q\,
	combout => \gpmc_driver|reg6_out[8]~feeder_combout\);

-- Location: FF_X45_Y8_N17
\gpmc_driver|reg6_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg6_out[8]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(8));

-- Location: LCCOMB_X44_Y7_N20
\MC2|INA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|INA~feeder_combout\ = \gpmc_driver|reg6_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg6_out\(8),
	combout => \MC2|INA~feeder_combout\);

-- Location: FF_X44_Y7_N21
\MC2|INA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|INA~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|INA~q\);

-- Location: LCCOMB_X46_Y8_N4
\gpmc_driver|reg6_out[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg6_out[9]~feeder_combout\ = \gpmc_driver|ram[6][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[6][9]~q\,
	combout => \gpmc_driver|reg6_out[9]~feeder_combout\);

-- Location: FF_X46_Y8_N5
\gpmc_driver|reg6_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg6_out[9]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(9));

-- Location: LCCOMB_X45_Y8_N24
\MC2|INB~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|INB~feeder_combout\ = \gpmc_driver|reg6_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg6_out\(9),
	combout => \MC2|INB~feeder_combout\);

-- Location: FF_X45_Y8_N25
\MC2|INB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|INB~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|INB~q\);

-- Location: LCCOMB_X46_Y8_N22
\gpmc_driver|reg6_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg6_out[7]~feeder_combout\ = \gpmc_driver|ram[6][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[6][7]~q\,
	combout => \gpmc_driver|reg6_out[7]~feeder_combout\);

-- Location: FF_X46_Y8_N23
\gpmc_driver|reg6_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg6_out[7]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(7));

-- Location: LCCOMB_X46_Y11_N16
\MC2|dc[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc[7]~feeder_combout\ = \gpmc_driver|reg6_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg6_out\(7),
	combout => \MC2|dc[7]~feeder_combout\);

-- Location: FF_X46_Y11_N17
\MC2|dc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc\(7));

-- Location: LCCOMB_X46_Y11_N12
\gpmc_driver|reg6_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg6_out[6]~feeder_combout\ = \gpmc_driver|ram[6][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[6][6]~q\,
	combout => \gpmc_driver|reg6_out[6]~feeder_combout\);

-- Location: FF_X46_Y11_N13
\gpmc_driver|reg6_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg6_out[6]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(6));

-- Location: LCCOMB_X46_Y11_N14
\MC2|dc[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc[6]~feeder_combout\ = \gpmc_driver|reg6_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg6_out\(6),
	combout => \MC2|dc[6]~feeder_combout\);

-- Location: FF_X46_Y11_N15
\MC2|dc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc\(6));

-- Location: LCCOMB_X46_Y8_N8
\gpmc_driver|reg6_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg6_out[5]~feeder_combout\ = \gpmc_driver|ram[6][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|ram[6][5]~q\,
	combout => \gpmc_driver|reg6_out[5]~feeder_combout\);

-- Location: FF_X46_Y8_N9
\gpmc_driver|reg6_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg6_out[5]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(5));

-- Location: LCCOMB_X46_Y11_N8
\MC2|dc[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc[5]~feeder_combout\ = \gpmc_driver|reg6_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg6_out\(5),
	combout => \MC2|dc[5]~feeder_combout\);

-- Location: FF_X46_Y11_N9
\MC2|dc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc\(5));

-- Location: LCCOMB_X46_Y11_N28
\gpmc_driver|reg6_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg6_out[4]~feeder_combout\ = \gpmc_driver|ram[6][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|ram[6][4]~q\,
	combout => \gpmc_driver|reg6_out[4]~feeder_combout\);

-- Location: FF_X46_Y11_N29
\gpmc_driver|reg6_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg6_out[4]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(4));

-- Location: LCCOMB_X46_Y11_N18
\MC2|dc[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc[4]~feeder_combout\ = \gpmc_driver|reg6_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg6_out\(4),
	combout => \MC2|dc[4]~feeder_combout\);

-- Location: FF_X46_Y11_N19
\MC2|dc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc\(4));

-- Location: LCCOMB_X46_Y8_N18
\gpmc_driver|reg6_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg6_out[3]~feeder_combout\ = \gpmc_driver|ram[6][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|ram[6][3]~q\,
	combout => \gpmc_driver|reg6_out[3]~feeder_combout\);

-- Location: FF_X46_Y8_N19
\gpmc_driver|reg6_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg6_out[3]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(3));

-- Location: LCCOMB_X46_Y11_N6
\MC2|dc[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc[3]~feeder_combout\ = \gpmc_driver|reg6_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg6_out\(3),
	combout => \MC2|dc[3]~feeder_combout\);

-- Location: FF_X46_Y11_N7
\MC2|dc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc\(3));

-- Location: LCCOMB_X46_Y11_N24
\gpmc_driver|reg6_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg6_out[2]~feeder_combout\ = \gpmc_driver|ram[6][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[6][2]~q\,
	combout => \gpmc_driver|reg6_out[2]~feeder_combout\);

-- Location: FF_X46_Y11_N25
\gpmc_driver|reg6_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg6_out[2]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(2));

-- Location: LCCOMB_X46_Y11_N30
\MC2|dc[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc[2]~feeder_combout\ = \gpmc_driver|reg6_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|reg6_out\(2),
	combout => \MC2|dc[2]~feeder_combout\);

-- Location: FF_X46_Y11_N31
\MC2|dc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc\(2));

-- Location: LCCOMB_X46_Y8_N12
\gpmc_driver|reg6_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|reg6_out[1]~feeder_combout\ = \gpmc_driver|ram[6][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[6][1]~q\,
	combout => \gpmc_driver|reg6_out[1]~feeder_combout\);

-- Location: FF_X46_Y8_N13
\gpmc_driver|reg6_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|reg6_out[1]~feeder_combout\,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(1));

-- Location: LCCOMB_X45_Y11_N0
\MC2|dc[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc[1]~feeder_combout\ = \gpmc_driver|reg6_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|reg6_out\(1),
	combout => \MC2|dc[1]~feeder_combout\);

-- Location: FF_X45_Y11_N1
\MC2|dc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc\(1));

-- Location: FF_X46_Y12_N21
\gpmc_driver|reg6_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[6][0]~q\,
	sload => VCC,
	ena => \gpmc_driver|gpmc_ncs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|reg6_out\(0));

-- Location: FF_X45_Y12_N23
\MC2|dc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|reg6_out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc\(0));

-- Location: LCCOMB_X45_Y11_N10
\MC2|pulsehigh[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|pulsehigh[3]~9_combout\ = (\MC2|dc\(2) & (\MC2|dc\(0) $ (VCC))) # (!\MC2|dc\(2) & (\MC2|dc\(0) & VCC))
-- \MC2|pulsehigh[3]~10\ = CARRY((\MC2|dc\(2) & \MC2|dc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc\(2),
	datab => \MC2|dc\(0),
	datad => VCC,
	combout => \MC2|pulsehigh[3]~9_combout\,
	cout => \MC2|pulsehigh[3]~10\);

-- Location: LCCOMB_X45_Y11_N12
\MC2|pulsehigh[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|pulsehigh[4]~11_combout\ = (\MC2|dc\(3) & ((\MC2|dc\(1) & (\MC2|pulsehigh[3]~10\ & VCC)) # (!\MC2|dc\(1) & (!\MC2|pulsehigh[3]~10\)))) # (!\MC2|dc\(3) & ((\MC2|dc\(1) & (!\MC2|pulsehigh[3]~10\)) # (!\MC2|dc\(1) & ((\MC2|pulsehigh[3]~10\) # (GND)))))
-- \MC2|pulsehigh[4]~12\ = CARRY((\MC2|dc\(3) & (!\MC2|dc\(1) & !\MC2|pulsehigh[3]~10\)) # (!\MC2|dc\(3) & ((!\MC2|pulsehigh[3]~10\) # (!\MC2|dc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc\(3),
	datab => \MC2|dc\(1),
	datad => VCC,
	cin => \MC2|pulsehigh[3]~10\,
	combout => \MC2|pulsehigh[4]~11_combout\,
	cout => \MC2|pulsehigh[4]~12\);

-- Location: LCCOMB_X45_Y11_N14
\MC2|pulsehigh[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|pulsehigh[5]~13_combout\ = ((\MC2|dc\(2) $ (\MC2|dc\(4) $ (!\MC2|pulsehigh[4]~12\)))) # (GND)
-- \MC2|pulsehigh[5]~14\ = CARRY((\MC2|dc\(2) & ((\MC2|dc\(4)) # (!\MC2|pulsehigh[4]~12\))) # (!\MC2|dc\(2) & (\MC2|dc\(4) & !\MC2|pulsehigh[4]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc\(2),
	datab => \MC2|dc\(4),
	datad => VCC,
	cin => \MC2|pulsehigh[4]~12\,
	combout => \MC2|pulsehigh[5]~13_combout\,
	cout => \MC2|pulsehigh[5]~14\);

-- Location: LCCOMB_X45_Y11_N16
\MC2|pulsehigh[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|pulsehigh[6]~15_combout\ = (\MC2|dc\(3) & ((\MC2|dc\(5) & (\MC2|pulsehigh[5]~14\ & VCC)) # (!\MC2|dc\(5) & (!\MC2|pulsehigh[5]~14\)))) # (!\MC2|dc\(3) & ((\MC2|dc\(5) & (!\MC2|pulsehigh[5]~14\)) # (!\MC2|dc\(5) & ((\MC2|pulsehigh[5]~14\) # (GND)))))
-- \MC2|pulsehigh[6]~16\ = CARRY((\MC2|dc\(3) & (!\MC2|dc\(5) & !\MC2|pulsehigh[5]~14\)) # (!\MC2|dc\(3) & ((!\MC2|pulsehigh[5]~14\) # (!\MC2|dc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc\(3),
	datab => \MC2|dc\(5),
	datad => VCC,
	cin => \MC2|pulsehigh[5]~14\,
	combout => \MC2|pulsehigh[6]~15_combout\,
	cout => \MC2|pulsehigh[6]~16\);

-- Location: LCCOMB_X45_Y11_N18
\MC2|pulsehigh[7]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|pulsehigh[7]~17_combout\ = ((\MC2|dc\(4) $ (\MC2|dc\(6) $ (!\MC2|pulsehigh[6]~16\)))) # (GND)
-- \MC2|pulsehigh[7]~18\ = CARRY((\MC2|dc\(4) & ((\MC2|dc\(6)) # (!\MC2|pulsehigh[6]~16\))) # (!\MC2|dc\(4) & (\MC2|dc\(6) & !\MC2|pulsehigh[6]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc\(4),
	datab => \MC2|dc\(6),
	datad => VCC,
	cin => \MC2|pulsehigh[6]~16\,
	combout => \MC2|pulsehigh[7]~17_combout\,
	cout => \MC2|pulsehigh[7]~18\);

-- Location: LCCOMB_X45_Y11_N20
\MC2|pulsehigh[8]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|pulsehigh[8]~19_combout\ = (\MC2|dc\(5) & ((\MC2|dc\(7) & (\MC2|pulsehigh[7]~18\ & VCC)) # (!\MC2|dc\(7) & (!\MC2|pulsehigh[7]~18\)))) # (!\MC2|dc\(5) & ((\MC2|dc\(7) & (!\MC2|pulsehigh[7]~18\)) # (!\MC2|dc\(7) & ((\MC2|pulsehigh[7]~18\) # (GND)))))
-- \MC2|pulsehigh[8]~20\ = CARRY((\MC2|dc\(5) & (!\MC2|dc\(7) & !\MC2|pulsehigh[7]~18\)) # (!\MC2|dc\(5) & ((!\MC2|pulsehigh[7]~18\) # (!\MC2|dc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc\(5),
	datab => \MC2|dc\(7),
	datad => VCC,
	cin => \MC2|pulsehigh[7]~18\,
	combout => \MC2|pulsehigh[8]~19_combout\,
	cout => \MC2|pulsehigh[8]~20\);

-- Location: LCCOMB_X45_Y11_N22
\MC2|pulsehigh[9]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|pulsehigh[9]~21_combout\ = (\MC2|dc\(6) & (\MC2|pulsehigh[8]~20\ $ (GND))) # (!\MC2|dc\(6) & (!\MC2|pulsehigh[8]~20\ & VCC))
-- \MC2|pulsehigh[9]~22\ = CARRY((\MC2|dc\(6) & !\MC2|pulsehigh[8]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MC2|dc\(6),
	datad => VCC,
	cin => \MC2|pulsehigh[8]~20\,
	combout => \MC2|pulsehigh[9]~21_combout\,
	cout => \MC2|pulsehigh[9]~22\);

-- Location: LCCOMB_X45_Y11_N24
\MC2|pulsehigh[10]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|pulsehigh[10]~23_combout\ = (\MC2|dc\(7) & (!\MC2|pulsehigh[9]~22\)) # (!\MC2|dc\(7) & ((\MC2|pulsehigh[9]~22\) # (GND)))
-- \MC2|pulsehigh[10]~24\ = CARRY((!\MC2|pulsehigh[9]~22\) # (!\MC2|dc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MC2|dc\(7),
	datad => VCC,
	cin => \MC2|pulsehigh[9]~22\,
	combout => \MC2|pulsehigh[10]~23_combout\,
	cout => \MC2|pulsehigh[10]~24\);

-- Location: LCCOMB_X45_Y11_N26
\MC2|pulsehigh[11]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|pulsehigh[11]~25_combout\ = !\MC2|pulsehigh[10]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MC2|pulsehigh[10]~24\,
	combout => \MC2|pulsehigh[11]~25_combout\);

-- Location: LCCOMB_X46_Y11_N0
\MC2|dc_old[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc_old[2]~feeder_combout\ = \MC2|dc\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MC2|dc\(2),
	combout => \MC2|dc_old[2]~feeder_combout\);

-- Location: FF_X46_Y11_N1
\MC2|dc_old[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc_old[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc_old\(2));

-- Location: FF_X46_Y11_N5
\MC2|dc_old[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC2|dc\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc_old\(3));

-- Location: LCCOMB_X46_Y11_N4
\MC2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|Equal0~1_combout\ = (\MC2|dc\(2) & (\MC2|dc_old\(2) & (\MC2|dc_old\(3) $ (!\MC2|dc\(3))))) # (!\MC2|dc\(2) & (!\MC2|dc_old\(2) & (\MC2|dc_old\(3) $ (!\MC2|dc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc\(2),
	datab => \MC2|dc_old\(2),
	datac => \MC2|dc_old\(3),
	datad => \MC2|dc\(3),
	combout => \MC2|Equal0~1_combout\);

-- Location: FF_X46_Y11_N23
\MC2|dc_old[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC2|dc\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc_old\(4));

-- Location: LCCOMB_X46_Y11_N20
\MC2|dc_old[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc_old[5]~feeder_combout\ = \MC2|dc\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MC2|dc\(5),
	combout => \MC2|dc_old[5]~feeder_combout\);

-- Location: FF_X46_Y11_N21
\MC2|dc_old[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc_old[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc_old\(5));

-- Location: LCCOMB_X46_Y11_N22
\MC2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|Equal0~2_combout\ = (\MC2|dc\(4) & (\MC2|dc_old\(4) & (\MC2|dc\(5) $ (!\MC2|dc_old\(5))))) # (!\MC2|dc\(4) & (!\MC2|dc_old\(4) & (\MC2|dc\(5) $ (!\MC2|dc_old\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc\(4),
	datab => \MC2|dc\(5),
	datac => \MC2|dc_old\(4),
	datad => \MC2|dc_old\(5),
	combout => \MC2|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y11_N28
\MC2|dc_old[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc_old[1]~feeder_combout\ = \MC2|dc\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MC2|dc\(1),
	combout => \MC2|dc_old[1]~feeder_combout\);

-- Location: FF_X45_Y11_N29
\MC2|dc_old[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc_old[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc_old\(1));

-- Location: FF_X45_Y11_N31
\MC2|dc_old[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC2|dc\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc_old\(0));

-- Location: LCCOMB_X45_Y11_N30
\MC2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|Equal0~0_combout\ = (\MC2|dc_old\(1) & (\MC2|dc\(1) & (\MC2|dc\(0) $ (!\MC2|dc_old\(0))))) # (!\MC2|dc_old\(1) & (!\MC2|dc\(1) & (\MC2|dc\(0) $ (!\MC2|dc_old\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc_old\(1),
	datab => \MC2|dc\(0),
	datac => \MC2|dc_old\(0),
	datad => \MC2|dc\(1),
	combout => \MC2|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y11_N10
\MC2|dc_old[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|dc_old[7]~feeder_combout\ = \MC2|dc\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MC2|dc\(7),
	combout => \MC2|dc_old[7]~feeder_combout\);

-- Location: FF_X46_Y11_N11
\MC2|dc_old[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|dc_old[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc_old\(7));

-- Location: FF_X46_Y11_N27
\MC2|dc_old[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC2|dc\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|dc_old\(6));

-- Location: LCCOMB_X46_Y11_N26
\MC2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|Equal0~3_combout\ = (\MC2|dc_old\(7) & (\MC2|dc\(7) & (\MC2|dc\(6) $ (!\MC2|dc_old\(6))))) # (!\MC2|dc_old\(7) & (!\MC2|dc\(7) & (\MC2|dc\(6) $ (!\MC2|dc_old\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|dc_old\(7),
	datab => \MC2|dc\(6),
	datac => \MC2|dc_old\(6),
	datad => \MC2|dc\(7),
	combout => \MC2|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y11_N2
\MC2|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|Equal0~4_combout\ = (((!\MC2|Equal0~3_combout\) # (!\MC2|Equal0~0_combout\)) # (!\MC2|Equal0~2_combout\)) # (!\MC2|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|Equal0~1_combout\,
	datab => \MC2|Equal0~2_combout\,
	datac => \MC2|Equal0~0_combout\,
	datad => \MC2|Equal0~3_combout\,
	combout => \MC2|Equal0~4_combout\);

-- Location: FF_X45_Y11_N27
\MC2|pulsehigh[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|pulsehigh[11]~25_combout\,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(11));

-- Location: FF_X45_Y11_N25
\MC2|pulsehigh[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|pulsehigh[10]~23_combout\,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(10));

-- Location: FF_X45_Y11_N23
\MC2|pulsehigh[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|pulsehigh[9]~21_combout\,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(9));

-- Location: FF_X45_Y11_N21
\MC2|pulsehigh[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|pulsehigh[8]~19_combout\,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(8));

-- Location: FF_X45_Y11_N19
\MC2|pulsehigh[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|pulsehigh[7]~17_combout\,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(7));

-- Location: FF_X45_Y11_N17
\MC2|pulsehigh[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|pulsehigh[6]~15_combout\,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(6));

-- Location: FF_X45_Y11_N15
\MC2|pulsehigh[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|pulsehigh[5]~13_combout\,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(5));

-- Location: FF_X45_Y11_N13
\MC2|pulsehigh[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|pulsehigh[4]~11_combout\,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(4));

-- Location: FF_X45_Y11_N11
\MC2|pulsehigh[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|pulsehigh[3]~9_combout\,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(3));

-- Location: FF_X45_Y12_N11
\MC2|pulsehigh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC2|dc\(1),
	sload => VCC,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(2));

-- Location: FF_X45_Y12_N9
\MC2|pulsehigh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MC2|dc\(0),
	sload => VCC,
	ena => \MC2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|pulsehigh\(1));

-- Location: LCCOMB_X45_Y12_N8
\MC2|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~1_cout\ = CARRY((!\MC1|cyclecount\(1) & \MC2|pulsehigh\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(1),
	datab => \MC2|pulsehigh\(1),
	datad => VCC,
	cout => \MC2|LessThan0~1_cout\);

-- Location: LCCOMB_X45_Y12_N10
\MC2|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~3_cout\ = CARRY((\MC2|pulsehigh\(2) & (\MC1|cyclecount\(2) & !\MC2|LessThan0~1_cout\)) # (!\MC2|pulsehigh\(2) & ((\MC1|cyclecount\(2)) # (!\MC2|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|pulsehigh\(2),
	datab => \MC1|cyclecount\(2),
	datad => VCC,
	cin => \MC2|LessThan0~1_cout\,
	cout => \MC2|LessThan0~3_cout\);

-- Location: LCCOMB_X45_Y12_N12
\MC2|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~5_cout\ = CARRY((\MC2|pulsehigh\(3) & ((!\MC2|LessThan0~3_cout\) # (!\MC1|cyclecount\(3)))) # (!\MC2|pulsehigh\(3) & (!\MC1|cyclecount\(3) & !\MC2|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|pulsehigh\(3),
	datab => \MC1|cyclecount\(3),
	datad => VCC,
	cin => \MC2|LessThan0~3_cout\,
	cout => \MC2|LessThan0~5_cout\);

-- Location: LCCOMB_X45_Y12_N14
\MC2|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~7_cout\ = CARRY((\MC2|pulsehigh\(4) & (\MC1|cyclecount\(4) & !\MC2|LessThan0~5_cout\)) # (!\MC2|pulsehigh\(4) & ((\MC1|cyclecount\(4)) # (!\MC2|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|pulsehigh\(4),
	datab => \MC1|cyclecount\(4),
	datad => VCC,
	cin => \MC2|LessThan0~5_cout\,
	cout => \MC2|LessThan0~7_cout\);

-- Location: LCCOMB_X45_Y12_N16
\MC2|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~9_cout\ = CARRY((\MC2|pulsehigh\(5) & ((!\MC2|LessThan0~7_cout\) # (!\MC1|cyclecount\(5)))) # (!\MC2|pulsehigh\(5) & (!\MC1|cyclecount\(5) & !\MC2|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|pulsehigh\(5),
	datab => \MC1|cyclecount\(5),
	datad => VCC,
	cin => \MC2|LessThan0~7_cout\,
	cout => \MC2|LessThan0~9_cout\);

-- Location: LCCOMB_X45_Y12_N18
\MC2|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~11_cout\ = CARRY((\MC1|cyclecount\(6) & ((!\MC2|LessThan0~9_cout\) # (!\MC2|pulsehigh\(6)))) # (!\MC1|cyclecount\(6) & (!\MC2|pulsehigh\(6) & !\MC2|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(6),
	datab => \MC2|pulsehigh\(6),
	datad => VCC,
	cin => \MC2|LessThan0~9_cout\,
	cout => \MC2|LessThan0~11_cout\);

-- Location: LCCOMB_X45_Y12_N20
\MC2|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~13_cout\ = CARRY((\MC1|cyclecount\(7) & (\MC2|pulsehigh\(7) & !\MC2|LessThan0~11_cout\)) # (!\MC1|cyclecount\(7) & ((\MC2|pulsehigh\(7)) # (!\MC2|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(7),
	datab => \MC2|pulsehigh\(7),
	datad => VCC,
	cin => \MC2|LessThan0~11_cout\,
	cout => \MC2|LessThan0~13_cout\);

-- Location: LCCOMB_X45_Y12_N22
\MC2|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~15_cout\ = CARRY((\MC1|cyclecount\(8) & ((!\MC2|LessThan0~13_cout\) # (!\MC2|pulsehigh\(8)))) # (!\MC1|cyclecount\(8) & (!\MC2|pulsehigh\(8) & !\MC2|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC1|cyclecount\(8),
	datab => \MC2|pulsehigh\(8),
	datad => VCC,
	cin => \MC2|LessThan0~13_cout\,
	cout => \MC2|LessThan0~15_cout\);

-- Location: LCCOMB_X45_Y12_N24
\MC2|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~17_cout\ = CARRY((\MC2|pulsehigh\(9) & ((!\MC2|LessThan0~15_cout\) # (!\MC1|cyclecount\(9)))) # (!\MC2|pulsehigh\(9) & (!\MC1|cyclecount\(9) & !\MC2|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|pulsehigh\(9),
	datab => \MC1|cyclecount\(9),
	datad => VCC,
	cin => \MC2|LessThan0~15_cout\,
	cout => \MC2|LessThan0~17_cout\);

-- Location: LCCOMB_X45_Y12_N26
\MC2|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~19_cout\ = CARRY((\MC2|pulsehigh\(10) & (\MC1|cyclecount\(10) & !\MC2|LessThan0~17_cout\)) # (!\MC2|pulsehigh\(10) & ((\MC1|cyclecount\(10)) # (!\MC2|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MC2|pulsehigh\(10),
	datab => \MC1|cyclecount\(10),
	datad => VCC,
	cin => \MC2|LessThan0~17_cout\,
	cout => \MC2|LessThan0~19_cout\);

-- Location: LCCOMB_X45_Y12_N28
\MC2|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|LessThan0~20_combout\ = (\MC2|pulsehigh\(11) & ((!\MC1|cyclecount\(11)) # (!\MC2|LessThan0~19_cout\))) # (!\MC2|pulsehigh\(11) & (!\MC2|LessThan0~19_cout\ & !\MC1|cyclecount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MC2|pulsehigh\(11),
	datad => \MC1|cyclecount\(11),
	cin => \MC2|LessThan0~19_cout\,
	combout => \MC2|LessThan0~20_combout\);

-- Location: LCCOMB_X45_Y8_N26
\MC2|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MC2|process_0~0_combout\ = (\MC2|LessThan0~20_combout\ & (\gpmc_driver|reg6_out\(9) $ (\gpmc_driver|reg6_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|reg6_out\(9),
	datab => \gpmc_driver|reg6_out\(8),
	datad => \MC2|LessThan0~20_combout\,
	combout => \MC2|process_0~0_combout\);

-- Location: FF_X45_Y8_N27
\MC2|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MC2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MC2|C~q\);

-- Location: IOIBUF_X67_Y18_N15
\GPMC_FPGA_IRQ~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_FPGA_IRQ,
	o => \GPMC_FPGA_IRQ~input_o\);

-- Location: IOIBUF_X67_Y22_N22
\GPMC_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_CLK,
	o => \GPMC_CLK~input_o\);

-- Location: IOIBUF_X1_Y43_N22
\F_IN[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(0),
	o => \F_IN[0]~input_o\);

-- Location: IOIBUF_X1_Y43_N15
\F_IN[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(1),
	o => \F_IN[1]~input_o\);

-- Location: IOIBUF_X3_Y43_N1
\F_IN[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(2),
	o => \F_IN[2]~input_o\);

-- Location: IOIBUF_X5_Y43_N15
\F_IN[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(3),
	o => \F_IN[3]~input_o\);

-- Location: IOIBUF_X9_Y43_N8
\F_IN[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(4),
	o => \F_IN[4]~input_o\);

-- Location: IOIBUF_X9_Y43_N1
\F_IN[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(5),
	o => \F_IN[5]~input_o\);

-- Location: IOIBUF_X11_Y43_N15
\F_IN[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(6),
	o => \F_IN[6]~input_o\);

-- Location: IOIBUF_X14_Y43_N15
\F_IN[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(7),
	o => \F_IN[7]~input_o\);

-- Location: IOIBUF_X20_Y43_N1
\F_IN[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(8),
	o => \F_IN[8]~input_o\);

-- Location: IOIBUF_X22_Y43_N29
\F_IN[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(9),
	o => \F_IN[9]~input_o\);

-- Location: IOIBUF_X25_Y43_N22
\F_IN[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(10),
	o => \F_IN[10]~input_o\);

-- Location: IOIBUF_X25_Y43_N8
\F_IN[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(11),
	o => \F_IN[11]~input_o\);

-- Location: IOIBUF_X25_Y43_N1
\F_IN[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(12),
	o => \F_IN[12]~input_o\);

-- Location: IOIBUF_X27_Y43_N1
\F_IN[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(13),
	o => \F_IN[13]~input_o\);

-- Location: IOIBUF_X29_Y43_N22
\F_IN[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(14),
	o => \F_IN[14]~input_o\);

-- Location: IOIBUF_X29_Y43_N1
\F_IN[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_IN(15),
	o => \F_IN[15]~input_o\);

-- Location: IOIBUF_X0_Y37_N15
\ENC3I~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC3I,
	o => \ENC3I~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\ENC4I~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC4I,
	o => \ENC4I~input_o\);

ww_F_OUT(0) <= \F_OUT[0]~output_o\;

ww_F_OUT(1) <= \F_OUT[1]~output_o\;

ww_F_OUT(2) <= \F_OUT[2]~output_o\;

ww_F_OUT(3) <= \F_OUT[3]~output_o\;

ww_F_OUT(4) <= \F_OUT[4]~output_o\;

ww_F_OUT(5) <= \F_OUT[5]~output_o\;

ww_F_OUT(6) <= \F_OUT[6]~output_o\;

ww_F_OUT(7) <= \F_OUT[7]~output_o\;

ww_F_OUT(8) <= \F_OUT[8]~output_o\;

ww_F_OUT(9) <= \F_OUT[9]~output_o\;

ww_F_OUT(10) <= \F_OUT[10]~output_o\;

ww_F_OUT(11) <= \F_OUT[11]~output_o\;

ww_F_OUT(12) <= \F_OUT[12]~output_o\;

ww_F_OUT(13) <= \F_OUT[13]~output_o\;

ww_F_OUT(14) <= \F_OUT[14]~output_o\;

ww_F_OUT(15) <= \F_OUT[15]~output_o\;

ww_PWM3A <= \PWM3A~output_o\;

ww_PWM3B <= \PWM3B~output_o\;

ww_PWM3C <= \PWM3C~output_o\;

ww_PWM4A <= \PWM4A~output_o\;

ww_PWM4B <= \PWM4B~output_o\;

ww_PWM4C <= \PWM4C~output_o\;

GPMC_DATA(0) <= \GPMC_DATA[0]~output_o\;

GPMC_DATA(1) <= \GPMC_DATA[1]~output_o\;

GPMC_DATA(2) <= \GPMC_DATA[2]~output_o\;

GPMC_DATA(3) <= \GPMC_DATA[3]~output_o\;

GPMC_DATA(4) <= \GPMC_DATA[4]~output_o\;

GPMC_DATA(5) <= \GPMC_DATA[5]~output_o\;

GPMC_DATA(6) <= \GPMC_DATA[6]~output_o\;

GPMC_DATA(7) <= \GPMC_DATA[7]~output_o\;

GPMC_DATA(8) <= \GPMC_DATA[8]~output_o\;

GPMC_DATA(9) <= \GPMC_DATA[9]~output_o\;

GPMC_DATA(10) <= \GPMC_DATA[10]~output_o\;

GPMC_DATA(11) <= \GPMC_DATA[11]~output_o\;

GPMC_DATA(12) <= \GPMC_DATA[12]~output_o\;

GPMC_DATA(13) <= \GPMC_DATA[13]~output_o\;

GPMC_DATA(14) <= \GPMC_DATA[14]~output_o\;

GPMC_DATA(15) <= \GPMC_DATA[15]~output_o\;
END structure;


