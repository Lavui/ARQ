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

-- DATE "03/22/2017 10:17:14"

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

ENTITY 	Registre IS
    PORT (
	Reset : IN std_logic;
	clk : IN std_logic;
	enable : IN std_logic;
	Din : IN std_logic_vector(31 DOWNTO 0);
	Dout : OUT std_logic_vector(31 DOWNTO 0)
	);
END Registre;

-- Design Ports Information
-- Dout[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[9]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[10]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[11]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[12]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[13]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[16]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[17]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[18]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[19]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[20]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[21]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[22]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[23]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[24]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[25]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[26]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[27]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[28]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[29]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[30]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[31]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[8]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[9]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[11]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[14]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[15]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[16]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[17]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[18]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[19]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[20]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[21]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[22]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[23]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[24]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[25]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[26]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[27]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[28]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[29]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[30]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[31]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Registre IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_Din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Dout : std_logic_vector(31 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \Dout[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Dout[0]~reg0_q\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \Dout[1]~reg0_q\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \Dout[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[2]~reg0_q\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \Dout[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[3]~reg0_q\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \Dout[4]~reg0_q\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \Dout[5]~reg0_q\ : std_logic;
SIGNAL \Din[6]~input_o\ : std_logic;
SIGNAL \Dout[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[6]~reg0_q\ : std_logic;
SIGNAL \Din[7]~input_o\ : std_logic;
SIGNAL \Dout[7]~reg0_q\ : std_logic;
SIGNAL \Din[8]~input_o\ : std_logic;
SIGNAL \Dout[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[8]~reg0_q\ : std_logic;
SIGNAL \Din[9]~input_o\ : std_logic;
SIGNAL \Dout[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[9]~reg0_q\ : std_logic;
SIGNAL \Din[10]~input_o\ : std_logic;
SIGNAL \Dout[10]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[10]~reg0_q\ : std_logic;
SIGNAL \Din[11]~input_o\ : std_logic;
SIGNAL \Dout[11]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[11]~reg0_q\ : std_logic;
SIGNAL \Din[12]~input_o\ : std_logic;
SIGNAL \Dout[12]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[12]~reg0_q\ : std_logic;
SIGNAL \Din[13]~input_o\ : std_logic;
SIGNAL \Dout[13]~reg0_q\ : std_logic;
SIGNAL \Din[14]~input_o\ : std_logic;
SIGNAL \Dout[14]~reg0_q\ : std_logic;
SIGNAL \Din[15]~input_o\ : std_logic;
SIGNAL \Dout[15]~reg0_q\ : std_logic;
SIGNAL \Din[16]~input_o\ : std_logic;
SIGNAL \Dout[16]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[16]~reg0_q\ : std_logic;
SIGNAL \Din[17]~input_o\ : std_logic;
SIGNAL \Dout[17]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[17]~reg0_q\ : std_logic;
SIGNAL \Din[18]~input_o\ : std_logic;
SIGNAL \Dout[18]~reg0_q\ : std_logic;
SIGNAL \Din[19]~input_o\ : std_logic;
SIGNAL \Dout[19]~reg0_q\ : std_logic;
SIGNAL \Din[20]~input_o\ : std_logic;
SIGNAL \Dout[20]~reg0_q\ : std_logic;
SIGNAL \Din[21]~input_o\ : std_logic;
SIGNAL \Dout[21]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[21]~reg0_q\ : std_logic;
SIGNAL \Din[22]~input_o\ : std_logic;
SIGNAL \Dout[22]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[22]~reg0_q\ : std_logic;
SIGNAL \Din[23]~input_o\ : std_logic;
SIGNAL \Dout[23]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[23]~reg0_q\ : std_logic;
SIGNAL \Din[24]~input_o\ : std_logic;
SIGNAL \Dout[24]~reg0_q\ : std_logic;
SIGNAL \Din[25]~input_o\ : std_logic;
SIGNAL \Dout[25]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[25]~reg0_q\ : std_logic;
SIGNAL \Din[26]~input_o\ : std_logic;
SIGNAL \Dout[26]~reg0_q\ : std_logic;
SIGNAL \Din[27]~input_o\ : std_logic;
SIGNAL \Dout[27]~reg0_q\ : std_logic;
SIGNAL \Din[28]~input_o\ : std_logic;
SIGNAL \Dout[28]~reg0_q\ : std_logic;
SIGNAL \Din[29]~input_o\ : std_logic;
SIGNAL \Dout[29]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[29]~reg0_q\ : std_logic;
SIGNAL \Din[30]~input_o\ : std_logic;
SIGNAL \Dout[30]~reg0feeder_combout\ : std_logic;
SIGNAL \Dout[30]~reg0_q\ : std_logic;
SIGNAL \Din[31]~input_o\ : std_logic;
SIGNAL \Dout[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Reset <= Reset;
ww_clk <= clk;
ww_enable <= enable;
ww_Din <= Din;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y11_N2
\Dout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\Dout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\Dout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\Dout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Dout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\Dout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\Dout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\Dout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Dout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[8]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\Dout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[9]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\Dout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[10]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[10]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Dout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[11]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[11]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\Dout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[12]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Dout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[13]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Dout[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[14]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Dout[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[15]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[15]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Dout[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[16]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[16]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Dout[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[17]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[17]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\Dout[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[18]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[18]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\Dout[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[19]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[19]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\Dout[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[20]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[20]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\Dout[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[21]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[21]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\Dout[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[22]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[22]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\Dout[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[23]~reg0_q\,
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
	i => \Dout[24]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[24]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\Dout[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[25]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[25]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\Dout[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[26]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[26]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\Dout[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[27]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[27]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\Dout[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[28]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[28]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\Dout[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[29]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[29]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\Dout[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[30]~reg0_q\,
	devoe => ww_devoe,
	o => \Dout[30]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\Dout[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[31]~reg0_q\,
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

-- Location: LCCOMB_X41_Y4_N8
\Dout[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[0]~reg0feeder_combout\ = \Din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[0]~input_o\,
	combout => \Dout[0]~reg0feeder_combout\);

-- Location: IOIBUF_X0_Y16_N15
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G4
\Reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X27_Y0_N1
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X41_Y4_N9
\Dout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[0]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[0]~reg0_q\);

-- Location: IOIBUF_X40_Y34_N8
\Din[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: FF_X50_Y30_N25
\Dout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[1]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[1]~reg0_q\);

-- Location: IOIBUF_X53_Y15_N8
\Din[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: LCCOMB_X50_Y30_N2
\Dout[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[2]~reg0feeder_combout\ = \Din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[2]~input_o\,
	combout => \Dout[2]~reg0feeder_combout\);

-- Location: FF_X50_Y30_N3
\Dout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[2]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[2]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N15
\Din[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: LCCOMB_X41_Y4_N2
\Dout[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[3]~reg0feeder_combout\ = \Din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[3]~input_o\,
	combout => \Dout[3]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N3
\Dout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[3]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[3]~reg0_q\);

-- Location: IOIBUF_X53_Y9_N15
\Din[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

-- Location: FF_X41_Y4_N21
\Dout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[4]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[4]~reg0_q\);

-- Location: IOIBUF_X53_Y14_N1
\Din[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(5),
	o => \Din[5]~input_o\);

-- Location: FF_X50_Y30_N29
\Dout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[5]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[5]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N22
\Din[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(6),
	o => \Din[6]~input_o\);

-- Location: LCCOMB_X50_Y30_N14
\Dout[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[6]~reg0feeder_combout\ = \Din[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[6]~input_o\,
	combout => \Dout[6]~reg0feeder_combout\);

-- Location: FF_X50_Y30_N15
\Dout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[6]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[6]~reg0_q\);

-- Location: IOIBUF_X53_Y9_N22
\Din[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(7),
	o => \Din[7]~input_o\);

-- Location: FF_X41_Y4_N15
\Dout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[7]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[7]~reg0_q\);

-- Location: IOIBUF_X53_Y9_N8
\Din[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(8),
	o => \Din[8]~input_o\);

-- Location: LCCOMB_X41_Y4_N16
\Dout[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[8]~reg0feeder_combout\ = \Din[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[8]~input_o\,
	combout => \Dout[8]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N17
\Dout[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[8]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[8]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N22
\Din[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(9),
	o => \Din[9]~input_o\);

-- Location: LCCOMB_X41_Y4_N18
\Dout[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[9]~reg0feeder_combout\ = \Din[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[9]~input_o\,
	combout => \Dout[9]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N19
\Dout[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[9]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[9]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N8
\Din[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(10),
	o => \Din[10]~input_o\);

-- Location: LCCOMB_X41_Y4_N28
\Dout[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[10]~reg0feeder_combout\ = \Din[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[10]~input_o\,
	combout => \Dout[10]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N29
\Dout[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[10]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[10]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N1
\Din[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(11),
	o => \Din[11]~input_o\);

-- Location: LCCOMB_X41_Y4_N30
\Dout[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[11]~reg0feeder_combout\ = \Din[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[11]~input_o\,
	combout => \Dout[11]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N31
\Dout[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[11]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[11]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N8
\Din[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(12),
	o => \Din[12]~input_o\);

-- Location: LCCOMB_X49_Y4_N24
\Dout[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[12]~reg0feeder_combout\ = \Din[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[12]~input_o\,
	combout => \Dout[12]~reg0feeder_combout\);

-- Location: FF_X49_Y4_N25
\Dout[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[12]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[12]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N1
\Din[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(13),
	o => \Din[13]~input_o\);

-- Location: FF_X41_Y4_N1
\Dout[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[13]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[13]~reg0_q\);

-- Location: IOIBUF_X53_Y6_N15
\Din[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(14),
	o => \Din[14]~input_o\);

-- Location: FF_X41_Y4_N11
\Dout[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[14]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[14]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N22
\Din[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(15),
	o => \Din[15]~input_o\);

-- Location: FF_X41_Y4_N13
\Dout[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[15]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[15]~reg0_q\);

-- Location: IOIBUF_X53_Y30_N8
\Din[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(16),
	o => \Din[16]~input_o\);

-- Location: LCCOMB_X50_Y30_N8
\Dout[16]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[16]~reg0feeder_combout\ = \Din[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[16]~input_o\,
	combout => \Dout[16]~reg0feeder_combout\);

-- Location: FF_X50_Y30_N9
\Dout[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[16]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[16]~reg0_q\);

-- Location: IOIBUF_X45_Y0_N15
\Din[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(17),
	o => \Din[17]~input_o\);

-- Location: LCCOMB_X41_Y4_N6
\Dout[17]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[17]~reg0feeder_combout\ = \Din[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[17]~input_o\,
	combout => \Dout[17]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N7
\Dout[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[17]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[17]~reg0_q\);

-- Location: IOIBUF_X53_Y25_N1
\Din[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(18),
	o => \Din[18]~input_o\);

-- Location: FF_X50_Y30_N27
\Dout[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[18]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[18]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N1
\Din[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(19),
	o => \Din[19]~input_o\);

-- Location: FF_X50_Y30_N21
\Dout[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[19]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[19]~reg0_q\);

-- Location: IOIBUF_X45_Y34_N15
\Din[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(20),
	o => \Din[20]~input_o\);

-- Location: FF_X50_Y30_N23
\Dout[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[20]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[20]~reg0_q\);

-- Location: IOIBUF_X47_Y34_N22
\Din[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(21),
	o => \Din[21]~input_o\);

-- Location: LCCOMB_X50_Y30_N0
\Dout[21]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[21]~reg0feeder_combout\ = \Din[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[21]~input_o\,
	combout => \Dout[21]~reg0feeder_combout\);

-- Location: FF_X50_Y30_N1
\Dout[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[21]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[21]~reg0_q\);

-- Location: IOIBUF_X53_Y22_N8
\Din[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(22),
	o => \Din[22]~input_o\);

-- Location: LCCOMB_X50_Y30_N18
\Dout[22]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[22]~reg0feeder_combout\ = \Din[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[22]~input_o\,
	combout => \Dout[22]~reg0feeder_combout\);

-- Location: FF_X50_Y30_N19
\Dout[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[22]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[22]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N22
\Din[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(23),
	o => \Din[23]~input_o\);

-- Location: LCCOMB_X41_Y4_N24
\Dout[23]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[23]~reg0feeder_combout\ = \Din[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[23]~input_o\,
	combout => \Dout[23]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N25
\Dout[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[23]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[23]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N8
\Din[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(24),
	o => \Din[24]~input_o\);

-- Location: FF_X50_Y30_N13
\Dout[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[24]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[24]~reg0_q\);

-- Location: IOIBUF_X34_Y34_N15
\Din[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(25),
	o => \Din[25]~input_o\);

-- Location: LCCOMB_X50_Y30_N30
\Dout[25]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[25]~reg0feeder_combout\ = \Din[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[25]~input_o\,
	combout => \Dout[25]~reg0feeder_combout\);

-- Location: FF_X50_Y30_N31
\Dout[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[25]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[25]~reg0_q\);

-- Location: IOIBUF_X43_Y0_N15
\Din[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(26),
	o => \Din[26]~input_o\);

-- Location: FF_X41_Y4_N27
\Dout[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[26]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[26]~reg0_q\);

-- Location: IOIBUF_X53_Y30_N1
\Din[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(27),
	o => \Din[27]~input_o\);

-- Location: FF_X50_Y30_N17
\Dout[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[27]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[27]~reg0_q\);

-- Location: IOIBUF_X43_Y34_N15
\Din[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(28),
	o => \Din[28]~input_o\);

-- Location: FF_X50_Y30_N11
\Dout[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[28]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[28]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N15
\Din[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(29),
	o => \Din[29]~input_o\);

-- Location: LCCOMB_X50_Y30_N4
\Dout[29]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[29]~reg0feeder_combout\ = \Din[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[29]~input_o\,
	combout => \Dout[29]~reg0feeder_combout\);

-- Location: FF_X50_Y30_N5
\Dout[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[29]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[29]~reg0_q\);

-- Location: IOIBUF_X38_Y34_N1
\Din[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(30),
	o => \Din[30]~input_o\);

-- Location: LCCOMB_X50_Y30_N6
\Dout[30]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dout[30]~reg0feeder_combout\ = \Din[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[30]~input_o\,
	combout => \Dout[30]~reg0feeder_combout\);

-- Location: FF_X50_Y30_N7
\Dout[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Dout[30]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[30]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N1
\Din[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(31),
	o => \Din[31]~input_o\);

-- Location: FF_X41_Y4_N5
\Dout[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[31]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[31]~reg0_q\);

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


