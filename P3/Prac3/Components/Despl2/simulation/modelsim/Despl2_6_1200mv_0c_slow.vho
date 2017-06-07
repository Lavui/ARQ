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

-- DATE "04/21/2017 15:49:28"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Despl2 IS
    PORT (
	entrada : IN std_logic_vector(31 DOWNTO 0);
	sortida : OUT std_logic_vector(31 DOWNTO 0)
	);
END Despl2;

-- Design Ports Information
-- entrada[30]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[31]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[10]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[12]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[13]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[14]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[15]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[16]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[17]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[18]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[19]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[20]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[21]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[22]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[23]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[24]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[25]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[26]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[27]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[28]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[29]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[30]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortida[31]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[8]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[9]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[10]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[12]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[13]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[16]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[17]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[18]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[19]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[20]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[21]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[22]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[23]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[25]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[26]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[27]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[28]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[29]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Despl2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sortida : std_logic_vector(31 DOWNTO 0);
SIGNAL \entrada[30]~input_o\ : std_logic;
SIGNAL \entrada[31]~input_o\ : std_logic;
SIGNAL \sortida[0]~output_o\ : std_logic;
SIGNAL \sortida[1]~output_o\ : std_logic;
SIGNAL \sortida[2]~output_o\ : std_logic;
SIGNAL \sortida[3]~output_o\ : std_logic;
SIGNAL \sortida[4]~output_o\ : std_logic;
SIGNAL \sortida[5]~output_o\ : std_logic;
SIGNAL \sortida[6]~output_o\ : std_logic;
SIGNAL \sortida[7]~output_o\ : std_logic;
SIGNAL \sortida[8]~output_o\ : std_logic;
SIGNAL \sortida[9]~output_o\ : std_logic;
SIGNAL \sortida[10]~output_o\ : std_logic;
SIGNAL \sortida[11]~output_o\ : std_logic;
SIGNAL \sortida[12]~output_o\ : std_logic;
SIGNAL \sortida[13]~output_o\ : std_logic;
SIGNAL \sortida[14]~output_o\ : std_logic;
SIGNAL \sortida[15]~output_o\ : std_logic;
SIGNAL \sortida[16]~output_o\ : std_logic;
SIGNAL \sortida[17]~output_o\ : std_logic;
SIGNAL \sortida[18]~output_o\ : std_logic;
SIGNAL \sortida[19]~output_o\ : std_logic;
SIGNAL \sortida[20]~output_o\ : std_logic;
SIGNAL \sortida[21]~output_o\ : std_logic;
SIGNAL \sortida[22]~output_o\ : std_logic;
SIGNAL \sortida[23]~output_o\ : std_logic;
SIGNAL \sortida[24]~output_o\ : std_logic;
SIGNAL \sortida[25]~output_o\ : std_logic;
SIGNAL \sortida[26]~output_o\ : std_logic;
SIGNAL \sortida[27]~output_o\ : std_logic;
SIGNAL \sortida[28]~output_o\ : std_logic;
SIGNAL \sortida[29]~output_o\ : std_logic;
SIGNAL \sortida[30]~output_o\ : std_logic;
SIGNAL \sortida[31]~output_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \entrada[8]~input_o\ : std_logic;
SIGNAL \entrada[9]~input_o\ : std_logic;
SIGNAL \entrada[10]~input_o\ : std_logic;
SIGNAL \entrada[11]~input_o\ : std_logic;
SIGNAL \entrada[12]~input_o\ : std_logic;
SIGNAL \entrada[13]~input_o\ : std_logic;
SIGNAL \entrada[14]~input_o\ : std_logic;
SIGNAL \entrada[15]~input_o\ : std_logic;
SIGNAL \entrada[16]~input_o\ : std_logic;
SIGNAL \entrada[17]~input_o\ : std_logic;
SIGNAL \entrada[18]~input_o\ : std_logic;
SIGNAL \entrada[19]~input_o\ : std_logic;
SIGNAL \entrada[20]~input_o\ : std_logic;
SIGNAL \entrada[21]~input_o\ : std_logic;
SIGNAL \entrada[22]~input_o\ : std_logic;
SIGNAL \entrada[23]~input_o\ : std_logic;
SIGNAL \entrada[24]~input_o\ : std_logic;
SIGNAL \entrada[25]~input_o\ : std_logic;
SIGNAL \entrada[26]~input_o\ : std_logic;
SIGNAL \entrada[27]~input_o\ : std_logic;
SIGNAL \entrada[28]~input_o\ : std_logic;
SIGNAL \entrada[29]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada <= entrada;
sortida <= ww_sortida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y34_N16
\sortida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sortida[0]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\sortida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sortida[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\sortida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[0]~input_o\,
	devoe => ww_devoe,
	o => \sortida[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\sortida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[1]~input_o\,
	devoe => ww_devoe,
	o => \sortida[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\sortida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[2]~input_o\,
	devoe => ww_devoe,
	o => \sortida[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\sortida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[3]~input_o\,
	devoe => ww_devoe,
	o => \sortida[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\sortida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[4]~input_o\,
	devoe => ww_devoe,
	o => \sortida[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\sortida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[5]~input_o\,
	devoe => ww_devoe,
	o => \sortida[7]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\sortida[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[6]~input_o\,
	devoe => ww_devoe,
	o => \sortida[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\sortida[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[7]~input_o\,
	devoe => ww_devoe,
	o => \sortida[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\sortida[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[8]~input_o\,
	devoe => ww_devoe,
	o => \sortida[10]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\sortida[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[9]~input_o\,
	devoe => ww_devoe,
	o => \sortida[11]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\sortida[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[10]~input_o\,
	devoe => ww_devoe,
	o => \sortida[12]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\sortida[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[11]~input_o\,
	devoe => ww_devoe,
	o => \sortida[13]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\sortida[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[12]~input_o\,
	devoe => ww_devoe,
	o => \sortida[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\sortida[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[13]~input_o\,
	devoe => ww_devoe,
	o => \sortida[15]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\sortida[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[14]~input_o\,
	devoe => ww_devoe,
	o => \sortida[16]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\sortida[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[15]~input_o\,
	devoe => ww_devoe,
	o => \sortida[17]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\sortida[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[16]~input_o\,
	devoe => ww_devoe,
	o => \sortida[18]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\sortida[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[17]~input_o\,
	devoe => ww_devoe,
	o => \sortida[19]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\sortida[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[18]~input_o\,
	devoe => ww_devoe,
	o => \sortida[20]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\sortida[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[19]~input_o\,
	devoe => ww_devoe,
	o => \sortida[21]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\sortida[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[20]~input_o\,
	devoe => ww_devoe,
	o => \sortida[22]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\sortida[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[21]~input_o\,
	devoe => ww_devoe,
	o => \sortida[23]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\sortida[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[22]~input_o\,
	devoe => ww_devoe,
	o => \sortida[24]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\sortida[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[23]~input_o\,
	devoe => ww_devoe,
	o => \sortida[25]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\sortida[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[24]~input_o\,
	devoe => ww_devoe,
	o => \sortida[26]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\sortida[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[25]~input_o\,
	devoe => ww_devoe,
	o => \sortida[27]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\sortida[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[26]~input_o\,
	devoe => ww_devoe,
	o => \sortida[28]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\sortida[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[27]~input_o\,
	devoe => ww_devoe,
	o => \sortida[29]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\sortida[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[28]~input_o\,
	devoe => ww_devoe,
	o => \sortida[30]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\sortida[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[29]~input_o\,
	devoe => ww_devoe,
	o => \sortida[31]~output_o\);

-- Location: IOIBUF_X1_Y0_N1
\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\entrada[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\entrada[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\entrada[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\entrada[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\entrada[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(8),
	o => \entrada[8]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\entrada[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(9),
	o => \entrada[9]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\entrada[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(10),
	o => \entrada[10]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\entrada[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(11),
	o => \entrada[11]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\entrada[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(12),
	o => \entrada[12]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\entrada[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(13),
	o => \entrada[13]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\entrada[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(14),
	o => \entrada[14]~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\entrada[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(15),
	o => \entrada[15]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\entrada[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(16),
	o => \entrada[16]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\entrada[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(17),
	o => \entrada[17]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\entrada[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(18),
	o => \entrada[18]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\entrada[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(19),
	o => \entrada[19]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\entrada[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(20),
	o => \entrada[20]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\entrada[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(21),
	o => \entrada[21]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\entrada[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(22),
	o => \entrada[22]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\entrada[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(23),
	o => \entrada[23]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\entrada[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(24),
	o => \entrada[24]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\entrada[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(25),
	o => \entrada[25]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\entrada[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(26),
	o => \entrada[26]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\entrada[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(27),
	o => \entrada[27]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\entrada[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(28),
	o => \entrada[28]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\entrada[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(29),
	o => \entrada[29]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\entrada[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(30),
	o => \entrada[30]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\entrada[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(31),
	o => \entrada[31]~input_o\);

ww_sortida(0) <= \sortida[0]~output_o\;

ww_sortida(1) <= \sortida[1]~output_o\;

ww_sortida(2) <= \sortida[2]~output_o\;

ww_sortida(3) <= \sortida[3]~output_o\;

ww_sortida(4) <= \sortida[4]~output_o\;

ww_sortida(5) <= \sortida[5]~output_o\;

ww_sortida(6) <= \sortida[6]~output_o\;

ww_sortida(7) <= \sortida[7]~output_o\;

ww_sortida(8) <= \sortida[8]~output_o\;

ww_sortida(9) <= \sortida[9]~output_o\;

ww_sortida(10) <= \sortida[10]~output_o\;

ww_sortida(11) <= \sortida[11]~output_o\;

ww_sortida(12) <= \sortida[12]~output_o\;

ww_sortida(13) <= \sortida[13]~output_o\;

ww_sortida(14) <= \sortida[14]~output_o\;

ww_sortida(15) <= \sortida[15]~output_o\;

ww_sortida(16) <= \sortida[16]~output_o\;

ww_sortida(17) <= \sortida[17]~output_o\;

ww_sortida(18) <= \sortida[18]~output_o\;

ww_sortida(19) <= \sortida[19]~output_o\;

ww_sortida(20) <= \sortida[20]~output_o\;

ww_sortida(21) <= \sortida[21]~output_o\;

ww_sortida(22) <= \sortida[22]~output_o\;

ww_sortida(23) <= \sortida[23]~output_o\;

ww_sortida(24) <= \sortida[24]~output_o\;

ww_sortida(25) <= \sortida[25]~output_o\;

ww_sortida(26) <= \sortida[26]~output_o\;

ww_sortida(27) <= \sortida[27]~output_o\;

ww_sortida(28) <= \sortida[28]~output_o\;

ww_sortida(29) <= \sortida[29]~output_o\;

ww_sortida(30) <= \sortida[30]~output_o\;

ww_sortida(31) <= \sortida[31]~output_o\;
END structure;


