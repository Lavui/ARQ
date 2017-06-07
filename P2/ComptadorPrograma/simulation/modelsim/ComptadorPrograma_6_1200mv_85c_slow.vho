-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "04/25/2017 16:44:01"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ComptadorPrograma IS
    PORT (
	Reset : IN std_logic;
	clk : IN std_logic;
	Din : IN std_logic_vector(31 DOWNTO 0);
	Dout : OUT std_logic_vector(31 DOWNTO 0)
	);
END ComptadorPrograma;

-- Design Ports Information
-- Dout[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[9]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[10]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[11]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[12]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[13]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[14]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[15]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[17]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[18]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[19]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[20]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[21]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[22]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[23]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[24]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[25]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[26]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[27]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[28]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[29]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[30]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[31]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[10]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[11]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[16]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[17]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[18]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[19]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[20]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[21]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[22]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[23]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[24]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[25]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[26]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[27]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[28]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[29]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[30]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[31]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ComptadorPrograma IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Dout : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Dout[6]~output_o\ : std_logic;
SIGNAL \Dout[7]~output_o\ : std_logic;
SIGNAL \Dout[8]~output_o\ : std_logic;
SIGNAL \Dout[9]~output_o\ : std_logic;
SIGNAL \Dout[10]~output_o\ : std_logic;
SIGNAL \Dout[11]~output_o\ : std_logic;
SIGNAL \Dout[12]~output_o\ : std_logic;
SIGNAL \Dout[13]~output_o\ : std_logic;
SIGNAL \Dout[14]~output_o\ : std_logic;
SIGNAL \Dout[15]~output_o\ : std_logic;
SIGNAL \Dout[16]~output_o\ : std_logic;
SIGNAL \Dout[17]~output_o\ : std_logic;
SIGNAL \Dout[18]~output_o\ : std_logic;
SIGNAL \Dout[19]~output_o\ : std_logic;
SIGNAL \Dout[20]~output_o\ : std_logic;
SIGNAL \Dout[21]~output_o\ : std_logic;
SIGNAL \Dout[22]~output_o\ : std_logic;
SIGNAL \Dout[23]~output_o\ : std_logic;
SIGNAL \Dout[24]~output_o\ : std_logic;
SIGNAL \Dout[25]~output_o\ : std_logic;
SIGNAL \Dout[26]~output_o\ : std_logic;
SIGNAL \Dout[27]~output_o\ : std_logic;
SIGNAL \Dout[28]~output_o\ : std_logic;
SIGNAL \Dout[29]~output_o\ : std_logic;
SIGNAL \Dout[30]~output_o\ : std_logic;
SIGNAL \Dout[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \ContingutPC~0_combout\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \ContingutPC~1_combout\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \ContingutPC~2_combout\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \ContingutPC~3_combout\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \ContingutPC~4_combout\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \ContingutPC~5_combout\ : std_logic;
SIGNAL \Din[6]~input_o\ : std_logic;
SIGNAL \ContingutPC~6_combout\ : std_logic;
SIGNAL \Din[7]~input_o\ : std_logic;
SIGNAL \ContingutPC~7_combout\ : std_logic;
SIGNAL \Din[8]~input_o\ : std_logic;
SIGNAL \ContingutPC~8_combout\ : std_logic;
SIGNAL \Din[9]~input_o\ : std_logic;
SIGNAL \ContingutPC~9_combout\ : std_logic;
SIGNAL \Din[10]~input_o\ : std_logic;
SIGNAL \ContingutPC~10_combout\ : std_logic;
SIGNAL \Din[11]~input_o\ : std_logic;
SIGNAL \ContingutPC~11_combout\ : std_logic;
SIGNAL \Din[12]~input_o\ : std_logic;
SIGNAL \ContingutPC~12_combout\ : std_logic;
SIGNAL \Din[13]~input_o\ : std_logic;
SIGNAL \ContingutPC~13_combout\ : std_logic;
SIGNAL \Din[14]~input_o\ : std_logic;
SIGNAL \ContingutPC~14_combout\ : std_logic;
SIGNAL \Din[15]~input_o\ : std_logic;
SIGNAL \ContingutPC~15_combout\ : std_logic;
SIGNAL \Din[16]~input_o\ : std_logic;
SIGNAL \ContingutPC~16_combout\ : std_logic;
SIGNAL \Din[17]~input_o\ : std_logic;
SIGNAL \ContingutPC~17_combout\ : std_logic;
SIGNAL \Din[18]~input_o\ : std_logic;
SIGNAL \ContingutPC~18_combout\ : std_logic;
SIGNAL \Din[19]~input_o\ : std_logic;
SIGNAL \ContingutPC~19_combout\ : std_logic;
SIGNAL \Din[20]~input_o\ : std_logic;
SIGNAL \ContingutPC~20_combout\ : std_logic;
SIGNAL \Din[21]~input_o\ : std_logic;
SIGNAL \ContingutPC~21_combout\ : std_logic;
SIGNAL \Din[22]~input_o\ : std_logic;
SIGNAL \ContingutPC~22_combout\ : std_logic;
SIGNAL \Din[23]~input_o\ : std_logic;
SIGNAL \ContingutPC~23_combout\ : std_logic;
SIGNAL \Din[24]~input_o\ : std_logic;
SIGNAL \ContingutPC~24_combout\ : std_logic;
SIGNAL \Din[25]~input_o\ : std_logic;
SIGNAL \ContingutPC~25_combout\ : std_logic;
SIGNAL \Din[26]~input_o\ : std_logic;
SIGNAL \ContingutPC~26_combout\ : std_logic;
SIGNAL \Din[27]~input_o\ : std_logic;
SIGNAL \ContingutPC~27_combout\ : std_logic;
SIGNAL \Din[28]~input_o\ : std_logic;
SIGNAL \ContingutPC~28_combout\ : std_logic;
SIGNAL \Din[29]~input_o\ : std_logic;
SIGNAL \ContingutPC~29_combout\ : std_logic;
SIGNAL \Din[30]~input_o\ : std_logic;
SIGNAL \ContingutPC~30_combout\ : std_logic;
SIGNAL \Din[31]~input_o\ : std_logic;
SIGNAL \ContingutPC~31_combout\ : std_logic;
SIGNAL ContingutPC : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Reset <= Reset;
ww_clk <= clk;
ww_Din <= Din;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\Dout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(0),
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\Dout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(1),
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\Dout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(2),
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Dout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(3),
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\Dout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(4),
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Dout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(5),
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\Dout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(6),
	devoe => ww_devoe,
	o => \Dout[6]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\Dout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(7),
	devoe => ww_devoe,
	o => \Dout[7]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\Dout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(8),
	devoe => ww_devoe,
	o => \Dout[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Dout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(9),
	devoe => ww_devoe,
	o => \Dout[9]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\Dout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(10),
	devoe => ww_devoe,
	o => \Dout[10]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\Dout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(11),
	devoe => ww_devoe,
	o => \Dout[11]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Dout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(12),
	devoe => ww_devoe,
	o => \Dout[12]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\Dout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(13),
	devoe => ww_devoe,
	o => \Dout[13]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Dout[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(14),
	devoe => ww_devoe,
	o => \Dout[14]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\Dout[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(15),
	devoe => ww_devoe,
	o => \Dout[15]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\Dout[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(16),
	devoe => ww_devoe,
	o => \Dout[16]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\Dout[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(17),
	devoe => ww_devoe,
	o => \Dout[17]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\Dout[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(18),
	devoe => ww_devoe,
	o => \Dout[18]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\Dout[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(19),
	devoe => ww_devoe,
	o => \Dout[19]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\Dout[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(20),
	devoe => ww_devoe,
	o => \Dout[20]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\Dout[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(21),
	devoe => ww_devoe,
	o => \Dout[21]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\Dout[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(22),
	devoe => ww_devoe,
	o => \Dout[22]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\Dout[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(23),
	devoe => ww_devoe,
	o => \Dout[23]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\Dout[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(24),
	devoe => ww_devoe,
	o => \Dout[24]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\Dout[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(25),
	devoe => ww_devoe,
	o => \Dout[25]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\Dout[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(26),
	devoe => ww_devoe,
	o => \Dout[26]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\Dout[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(27),
	devoe => ww_devoe,
	o => \Dout[27]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\Dout[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(28),
	devoe => ww_devoe,
	o => \Dout[28]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\Dout[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(29),
	devoe => ww_devoe,
	o => \Dout[29]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\Dout[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(30),
	devoe => ww_devoe,
	o => \Dout[30]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\Dout[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ContingutPC(31),
	devoe => ww_devoe,
	o => \Dout[31]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X27_Y0_N1
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\Din[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: LCCOMB_X17_Y1_N8
\ContingutPC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~0_combout\ = (!\Reset~input_o\ & \Din[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datad => \Din[0]~input_o\,
	combout => \ContingutPC~0_combout\);

-- Location: FF_X17_Y1_N9
\ContingutPC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(0));

-- Location: IOIBUF_X0_Y4_N22
\Din[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: LCCOMB_X17_Y1_N2
\ContingutPC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~1_combout\ = (\Din[1]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Din[1]~input_o\,
	datad => \Reset~input_o\,
	combout => \ContingutPC~1_combout\);

-- Location: FF_X17_Y1_N3
\ContingutPC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(1));

-- Location: IOIBUF_X20_Y0_N8
\Din[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: LCCOMB_X17_Y1_N20
\ContingutPC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~2_combout\ = (\Din[2]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Din[2]~input_o\,
	datad => \Reset~input_o\,
	combout => \ContingutPC~2_combout\);

-- Location: FF_X17_Y1_N21
\ContingutPC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(2));

-- Location: IOIBUF_X18_Y0_N8
\Din[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: LCCOMB_X17_Y1_N30
\ContingutPC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~3_combout\ = (\Din[3]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Din[3]~input_o\,
	datad => \Reset~input_o\,
	combout => \ContingutPC~3_combout\);

-- Location: FF_X17_Y1_N31
\ContingutPC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(3));

-- Location: IOIBUF_X20_Y0_N1
\Din[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

-- Location: LCCOMB_X17_Y1_N0
\ContingutPC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~4_combout\ = (\Din[4]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[4]~input_o\,
	datad => \Reset~input_o\,
	combout => \ContingutPC~4_combout\);

-- Location: FF_X17_Y1_N1
\ContingutPC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(4));

-- Location: IOIBUF_X11_Y0_N15
\Din[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(5),
	o => \Din[5]~input_o\);

-- Location: LCCOMB_X17_Y1_N26
\ContingutPC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~5_combout\ = (\Din[5]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Din[5]~input_o\,
	datad => \Reset~input_o\,
	combout => \ContingutPC~5_combout\);

-- Location: FF_X17_Y1_N27
\ContingutPC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(5));

-- Location: IOIBUF_X36_Y0_N8
\Din[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(6),
	o => \Din[6]~input_o\);

-- Location: LCCOMB_X17_Y1_N28
\ContingutPC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~6_combout\ = (\Din[6]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Din[6]~input_o\,
	datad => \Reset~input_o\,
	combout => \ContingutPC~6_combout\);

-- Location: FF_X17_Y1_N29
\ContingutPC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(6));

-- Location: IOIBUF_X53_Y6_N15
\Din[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(7),
	o => \Din[7]~input_o\);

-- Location: LCCOMB_X52_Y22_N16
\ContingutPC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~7_combout\ = (!\Reset~input_o\ & \Din[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datac => \Din[7]~input_o\,
	combout => \ContingutPC~7_combout\);

-- Location: FF_X52_Y22_N17
\ContingutPC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(7));

-- Location: IOIBUF_X34_Y0_N1
\Din[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(8),
	o => \Din[8]~input_o\);

-- Location: LCCOMB_X17_Y1_N14
\ContingutPC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~8_combout\ = (!\Reset~input_o\ & \Din[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \Din[8]~input_o\,
	combout => \ContingutPC~8_combout\);

-- Location: FF_X17_Y1_N15
\ContingutPC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(8));

-- Location: IOIBUF_X40_Y0_N15
\Din[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(9),
	o => \Din[9]~input_o\);

-- Location: LCCOMB_X17_Y1_N24
\ContingutPC~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~9_combout\ = (!\Reset~input_o\ & \Din[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datad => \Din[9]~input_o\,
	combout => \ContingutPC~9_combout\);

-- Location: FF_X17_Y1_N25
\ContingutPC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(9));

-- Location: IOIBUF_X49_Y34_N8
\Din[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(10),
	o => \Din[10]~input_o\);

-- Location: LCCOMB_X52_Y22_N26
\ContingutPC~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~10_combout\ = (!\Reset~input_o\ & \Din[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datac => \Din[10]~input_o\,
	combout => \ContingutPC~10_combout\);

-- Location: FF_X52_Y22_N27
\ContingutPC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(10));

-- Location: IOIBUF_X5_Y0_N15
\Din[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(11),
	o => \Din[11]~input_o\);

-- Location: LCCOMB_X17_Y1_N10
\ContingutPC~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~11_combout\ = (\Din[11]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Din[11]~input_o\,
	datad => \Reset~input_o\,
	combout => \ContingutPC~11_combout\);

-- Location: FF_X17_Y1_N11
\ContingutPC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(11));

-- Location: IOIBUF_X25_Y0_N15
\Din[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(12),
	o => \Din[12]~input_o\);

-- Location: LCCOMB_X17_Y1_N12
\ContingutPC~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~12_combout\ = (\Din[12]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Din[12]~input_o\,
	datad => \Reset~input_o\,
	combout => \ContingutPC~12_combout\);

-- Location: FF_X17_Y1_N13
\ContingutPC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(12));

-- Location: IOIBUF_X45_Y34_N15
\Din[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(13),
	o => \Din[13]~input_o\);

-- Location: LCCOMB_X52_Y22_N20
\ContingutPC~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~13_combout\ = (!\Reset~input_o\ & \Din[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datad => \Din[13]~input_o\,
	combout => \ContingutPC~13_combout\);

-- Location: FF_X52_Y22_N21
\ContingutPC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(13));

-- Location: IOIBUF_X38_Y0_N8
\Din[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(14),
	o => \Din[14]~input_o\);

-- Location: LCCOMB_X17_Y1_N6
\ContingutPC~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~14_combout\ = (!\Reset~input_o\ & \Din[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \Din[14]~input_o\,
	combout => \ContingutPC~14_combout\);

-- Location: FF_X17_Y1_N7
\ContingutPC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(14));

-- Location: IOIBUF_X53_Y11_N1
\Din[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(15),
	o => \Din[15]~input_o\);

-- Location: LCCOMB_X52_Y22_N30
\ContingutPC~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~15_combout\ = (!\Reset~input_o\ & \Din[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datac => \Din[15]~input_o\,
	combout => \ContingutPC~15_combout\);

-- Location: FF_X52_Y22_N31
\ContingutPC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(15));

-- Location: IOIBUF_X53_Y20_N15
\Din[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(16),
	o => \Din[16]~input_o\);

-- Location: LCCOMB_X52_Y22_N24
\ContingutPC~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~16_combout\ = (!\Reset~input_o\ & \Din[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \Din[16]~input_o\,
	combout => \ContingutPC~16_combout\);

-- Location: FF_X52_Y22_N25
\ContingutPC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(16));

-- Location: IOIBUF_X16_Y0_N15
\Din[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(17),
	o => \Din[17]~input_o\);

-- Location: LCCOMB_X17_Y1_N16
\ContingutPC~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~17_combout\ = (\Din[17]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Din[17]~input_o\,
	datad => \Reset~input_o\,
	combout => \ContingutPC~17_combout\);

-- Location: FF_X17_Y1_N17
\ContingutPC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(17));

-- Location: IOIBUF_X53_Y9_N8
\Din[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(18),
	o => \Din[18]~input_o\);

-- Location: LCCOMB_X52_Y22_N18
\ContingutPC~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~18_combout\ = (\Din[18]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[18]~input_o\,
	datac => \Reset~input_o\,
	combout => \ContingutPC~18_combout\);

-- Location: FF_X52_Y22_N19
\ContingutPC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(18));

-- Location: IOIBUF_X51_Y34_N22
\Din[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(19),
	o => \Din[19]~input_o\);

-- Location: LCCOMB_X52_Y22_N28
\ContingutPC~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~19_combout\ = (!\Reset~input_o\ & \Din[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \Din[19]~input_o\,
	combout => \ContingutPC~19_combout\);

-- Location: FF_X52_Y22_N29
\ContingutPC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(19));

-- Location: IOIBUF_X53_Y25_N1
\Din[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(20),
	o => \Din[20]~input_o\);

-- Location: LCCOMB_X52_Y22_N14
\ContingutPC~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~20_combout\ = (!\Reset~input_o\ & \Din[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \Din[20]~input_o\,
	combout => \ContingutPC~20_combout\);

-- Location: FF_X52_Y22_N15
\ContingutPC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(20));

-- Location: IOIBUF_X53_Y15_N8
\Din[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(21),
	o => \Din[21]~input_o\);

-- Location: LCCOMB_X52_Y22_N0
\ContingutPC~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~21_combout\ = (!\Reset~input_o\ & \Din[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \Din[21]~input_o\,
	combout => \ContingutPC~21_combout\);

-- Location: FF_X52_Y22_N1
\ContingutPC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(21));

-- Location: IOIBUF_X53_Y10_N15
\Din[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(22),
	o => \Din[22]~input_o\);

-- Location: LCCOMB_X52_Y22_N10
\ContingutPC~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~22_combout\ = (!\Reset~input_o\ & \Din[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \Din[22]~input_o\,
	combout => \ContingutPC~22_combout\);

-- Location: FF_X52_Y22_N11
\ContingutPC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(22));

-- Location: IOIBUF_X53_Y9_N22
\Din[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(23),
	o => \Din[23]~input_o\);

-- Location: LCCOMB_X52_Y22_N12
\ContingutPC~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~23_combout\ = (!\Reset~input_o\ & \Din[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \Din[23]~input_o\,
	combout => \ContingutPC~23_combout\);

-- Location: FF_X52_Y22_N13
\ContingutPC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(23));

-- Location: IOIBUF_X53_Y30_N1
\Din[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(24),
	o => \Din[24]~input_o\);

-- Location: LCCOMB_X52_Y22_N22
\ContingutPC~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~24_combout\ = (!\Reset~input_o\ & \Din[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \Din[24]~input_o\,
	combout => \ContingutPC~24_combout\);

-- Location: FF_X52_Y22_N23
\ContingutPC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(24));

-- Location: IOIBUF_X34_Y0_N15
\Din[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(25),
	o => \Din[25]~input_o\);

-- Location: LCCOMB_X17_Y1_N18
\ContingutPC~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~25_combout\ = (!\Reset~input_o\ & \Din[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datad => \Din[25]~input_o\,
	combout => \ContingutPC~25_combout\);

-- Location: FF_X17_Y1_N19
\ContingutPC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(25));

-- Location: IOIBUF_X53_Y14_N8
\Din[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(26),
	o => \Din[26]~input_o\);

-- Location: LCCOMB_X52_Y22_N8
\ContingutPC~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~26_combout\ = (\Din[26]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Din[26]~input_o\,
	datac => \Reset~input_o\,
	combout => \ContingutPC~26_combout\);

-- Location: FF_X52_Y22_N9
\ContingutPC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(26));

-- Location: IOIBUF_X45_Y34_N1
\Din[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(27),
	o => \Din[27]~input_o\);

-- Location: LCCOMB_X52_Y22_N2
\ContingutPC~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~27_combout\ = (!\Reset~input_o\ & \Din[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \Din[27]~input_o\,
	combout => \ContingutPC~27_combout\);

-- Location: FF_X52_Y22_N3
\ContingutPC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(27));

-- Location: IOIBUF_X29_Y0_N1
\Din[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(28),
	o => \Din[28]~input_o\);

-- Location: LCCOMB_X17_Y1_N4
\ContingutPC~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~28_combout\ = (!\Reset~input_o\ & \Din[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datad => \Din[28]~input_o\,
	combout => \ContingutPC~28_combout\);

-- Location: FF_X17_Y1_N5
\ContingutPC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(28));

-- Location: IOIBUF_X34_Y0_N22
\Din[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(29),
	o => \Din[29]~input_o\);

-- Location: LCCOMB_X17_Y1_N22
\ContingutPC~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~29_combout\ = (!\Reset~input_o\ & \Din[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \Din[29]~input_o\,
	combout => \ContingutPC~29_combout\);

-- Location: FF_X17_Y1_N23
\ContingutPC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(29));

-- Location: IOIBUF_X49_Y34_N1
\Din[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(30),
	o => \Din[30]~input_o\);

-- Location: LCCOMB_X52_Y22_N4
\ContingutPC~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~30_combout\ = (!\Reset~input_o\ & \Din[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datad => \Din[30]~input_o\,
	combout => \ContingutPC~30_combout\);

-- Location: FF_X52_Y22_N5
\ContingutPC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(30));

-- Location: IOIBUF_X53_Y9_N15
\Din[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(31),
	o => \Din[31]~input_o\);

-- Location: LCCOMB_X52_Y22_N6
\ContingutPC~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContingutPC~31_combout\ = (\Din[31]~input_o\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Din[31]~input_o\,
	datac => \Reset~input_o\,
	combout => \ContingutPC~31_combout\);

-- Location: FF_X52_Y22_N7
\ContingutPC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ContingutPC~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ContingutPC(31));

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Dout(6) <= \Dout[6]~output_o\;

ww_Dout(7) <= \Dout[7]~output_o\;

ww_Dout(8) <= \Dout[8]~output_o\;

ww_Dout(9) <= \Dout[9]~output_o\;

ww_Dout(10) <= \Dout[10]~output_o\;

ww_Dout(11) <= \Dout[11]~output_o\;

ww_Dout(12) <= \Dout[12]~output_o\;

ww_Dout(13) <= \Dout[13]~output_o\;

ww_Dout(14) <= \Dout[14]~output_o\;

ww_Dout(15) <= \Dout[15]~output_o\;

ww_Dout(16) <= \Dout[16]~output_o\;

ww_Dout(17) <= \Dout[17]~output_o\;

ww_Dout(18) <= \Dout[18]~output_o\;

ww_Dout(19) <= \Dout[19]~output_o\;

ww_Dout(20) <= \Dout[20]~output_o\;

ww_Dout(21) <= \Dout[21]~output_o\;

ww_Dout(22) <= \Dout[22]~output_o\;

ww_Dout(23) <= \Dout[23]~output_o\;

ww_Dout(24) <= \Dout[24]~output_o\;

ww_Dout(25) <= \Dout[25]~output_o\;

ww_Dout(26) <= \Dout[26]~output_o\;

ww_Dout(27) <= \Dout[27]~output_o\;

ww_Dout(28) <= \Dout[28]~output_o\;

ww_Dout(29) <= \Dout[29]~output_o\;

ww_Dout(30) <= \Dout[30]~output_o\;

ww_Dout(31) <= \Dout[31]~output_o\;
END structure;


