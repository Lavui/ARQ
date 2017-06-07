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

-- DATE "04/18/2017 17:24:08"

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

ENTITY 	ControlALU IS
    PORT (
	funcio : IN std_logic_vector(5 DOWNTO 0);
	CodiOP : IN std_logic_vector(1 DOWNTO 0);
	Operacio : OUT std_logic_vector(2 DOWNTO 0)
	);
END ControlALU;

-- Design Ports Information
-- funcio[4]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funcio[5]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operacio[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operacio[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operacio[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CodiOP[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funcio[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funcio[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funcio[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CodiOP[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funcio[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_funcio : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_CodiOP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Operacio : std_logic_vector(2 DOWNTO 0);
SIGNAL \funcio[4]~input_o\ : std_logic;
SIGNAL \funcio[5]~input_o\ : std_logic;
SIGNAL \Operacio[0]~output_o\ : std_logic;
SIGNAL \Operacio[1]~output_o\ : std_logic;
SIGNAL \Operacio[2]~output_o\ : std_logic;
SIGNAL \funcio[0]~input_o\ : std_logic;
SIGNAL \CodiOP[1]~input_o\ : std_logic;
SIGNAL \funcio[3]~input_o\ : std_logic;
SIGNAL \Control~0_combout\ : std_logic;
SIGNAL \funcio[2]~input_o\ : std_logic;
SIGNAL \Control~1_combout\ : std_logic;
SIGNAL \CodiOP[0]~input_o\ : std_logic;
SIGNAL \funcio[1]~input_o\ : std_logic;
SIGNAL \Control~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_funcio <= funcio;
ww_CodiOP <= CodiOP;
Operacio <= ww_Operacio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N9
\Operacio[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Control~0_combout\,
	devoe => ww_devoe,
	o => \Operacio[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\Operacio[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Control~1_combout\,
	devoe => ww_devoe,
	o => \Operacio[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Operacio[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Control~2_combout\,
	devoe => ww_devoe,
	o => \Operacio[2]~output_o\);

-- Location: IOIBUF_X5_Y0_N15
\funcio[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funcio(0),
	o => \funcio[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\CodiOP[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CodiOP(1),
	o => \CodiOP[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\funcio[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funcio(3),
	o => \funcio[3]~input_o\);

-- Location: LCCOMB_X5_Y1_N16
\Control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control~0_combout\ = (\CodiOP[1]~input_o\ & ((\funcio[0]~input_o\) # (\funcio[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcio[0]~input_o\,
	datab => \CodiOP[1]~input_o\,
	datac => \funcio[3]~input_o\,
	combout => \Control~0_combout\);

-- Location: IOIBUF_X0_Y4_N22
\funcio[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funcio(2),
	o => \funcio[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\Control~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control~1_combout\ = (!\CodiOP[1]~input_o\) # (!\funcio[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcio[2]~input_o\,
	datad => \CodiOP[1]~input_o\,
	combout => \Control~1_combout\);

-- Location: IOIBUF_X5_Y0_N8
\CodiOP[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CodiOP(0),
	o => \CodiOP[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\funcio[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funcio(1),
	o => \funcio[1]~input_o\);

-- Location: LCCOMB_X5_Y1_N18
\Control~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control~2_combout\ = (\CodiOP[0]~input_o\) # ((\CodiOP[1]~input_o\ & \funcio[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CodiOP[1]~input_o\,
	datac => \CodiOP[0]~input_o\,
	datad => \funcio[1]~input_o\,
	combout => \Control~2_combout\);

-- Location: IOIBUF_X0_Y23_N22
\funcio[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funcio(4),
	o => \funcio[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\funcio[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funcio(5),
	o => \funcio[5]~input_o\);

ww_Operacio(0) <= \Operacio[0]~output_o\;

ww_Operacio(1) <= \Operacio[1]~output_o\;

ww_Operacio(2) <= \Operacio[2]~output_o\;
END structure;


