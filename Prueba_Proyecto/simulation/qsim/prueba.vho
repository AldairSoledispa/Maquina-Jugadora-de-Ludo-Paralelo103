-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "01/17/2019 09:50:29"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Diagrama_prueba IS
    PORT (
	Led_J1 : OUT std_logic;
	reloj_in : IN std_logic;
	reset : IN std_logic;
	Start : IN std_logic;
	J1 : IN std_logic;
	J2 : IN std_logic;
	Led_J2 : OUT std_logic;
	Fin_J1 : OUT std_logic;
	Fin_J2 : OUT std_logic;
	reset_anti : OUT std_logic;
	start_anti : OUT std_logic;
	J1_anti : OUT std_logic;
	J2_anti : OUT std_logic;
	cont_out : OUT std_logic;
	reset_t_out : OUT std_logic;
	Acumulado_J1 : OUT std_logic_vector(4 DOWNTO 0);
	Acumulado_J2 : OUT std_logic_vector(4 DOWNTO 0);
	Numero_J1 : OUT std_logic_vector(4 DOWNTO 0);
	Numero_J2 : OUT std_logic_vector(4 DOWNTO 0)
	);
END Diagrama_prueba;

ARCHITECTURE structure OF Diagrama_prueba IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Led_J1 : std_logic;
SIGNAL ww_reloj_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_J1 : std_logic;
SIGNAL ww_J2 : std_logic;
SIGNAL ww_Led_J2 : std_logic;
SIGNAL ww_Fin_J1 : std_logic;
SIGNAL ww_Fin_J2 : std_logic;
SIGNAL ww_reset_anti : std_logic;
SIGNAL ww_start_anti : std_logic;
SIGNAL ww_J1_anti : std_logic;
SIGNAL ww_J2_anti : std_logic;
SIGNAL ww_cont_out : std_logic;
SIGNAL ww_reset_t_out : std_logic;
SIGNAL ww_Acumulado_J1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Acumulado_J2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Numero_J1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Numero_J2 : std_logic_vector(4 DOWNTO 0);
SIGNAL \Led_J1~output_o\ : std_logic;
SIGNAL \Led_J2~output_o\ : std_logic;
SIGNAL \Fin_J1~output_o\ : std_logic;
SIGNAL \Fin_J2~output_o\ : std_logic;
SIGNAL \reset_anti~output_o\ : std_logic;
SIGNAL \start_anti~output_o\ : std_logic;
SIGNAL \J1_anti~output_o\ : std_logic;
SIGNAL \J2_anti~output_o\ : std_logic;
SIGNAL \cont_out~output_o\ : std_logic;
SIGNAL \reset_t_out~output_o\ : std_logic;
SIGNAL \Acumulado_J1[4]~output_o\ : std_logic;
SIGNAL \Acumulado_J1[3]~output_o\ : std_logic;
SIGNAL \Acumulado_J1[2]~output_o\ : std_logic;
SIGNAL \Acumulado_J1[1]~output_o\ : std_logic;
SIGNAL \Acumulado_J1[0]~output_o\ : std_logic;
SIGNAL \Acumulado_J2[4]~output_o\ : std_logic;
SIGNAL \Acumulado_J2[3]~output_o\ : std_logic;
SIGNAL \Acumulado_J2[2]~output_o\ : std_logic;
SIGNAL \Acumulado_J2[1]~output_o\ : std_logic;
SIGNAL \Acumulado_J2[0]~output_o\ : std_logic;
SIGNAL \Numero_J1[4]~output_o\ : std_logic;
SIGNAL \Numero_J1[3]~output_o\ : std_logic;
SIGNAL \Numero_J1[2]~output_o\ : std_logic;
SIGNAL \Numero_J1[1]~output_o\ : std_logic;
SIGNAL \Numero_J1[0]~output_o\ : std_logic;
SIGNAL \Numero_J2[4]~output_o\ : std_logic;
SIGNAL \Numero_J2[3]~output_o\ : std_logic;
SIGNAL \Numero_J2[2]~output_o\ : std_logic;
SIGNAL \Numero_J2[1]~output_o\ : std_logic;
SIGNAL \Numero_J2[0]~output_o\ : std_logic;
SIGNAL \reloj_in~input_o\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \J1~input_o\ : std_logic;
SIGNAL \mss|A1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \mss|y.Te~q\ : std_logic;
SIGNAL \mss|y~21_combout\ : std_logic;
SIGNAL \mss|y.Tf~q\ : std_logic;
SIGNAL \mss|y.Tg~q\ : std_logic;
SIGNAL \Aleatorio_J1|Add0~0_combout\ : std_logic;
SIGNAL \mss|Selector7~0_combout\ : std_logic;
SIGNAL \Aleatorio_J1|conteo[4]~0_combout\ : std_logic;
SIGNAL \Aleatorio_J1|Add0~1\ : std_logic;
SIGNAL \Aleatorio_J1|Add0~2_combout\ : std_logic;
SIGNAL \Aleatorio_J1|Equal0~0_combout\ : std_logic;
SIGNAL \Aleatorio_J1|conteo~2_combout\ : std_logic;
SIGNAL \Aleatorio_J1|Add0~3\ : std_logic;
SIGNAL \Aleatorio_J1|Add0~4_combout\ : std_logic;
SIGNAL \Aleatorio_J1|conteo~1_combout\ : std_logic;
SIGNAL \Aleatorio_J1|Add0~5\ : std_logic;
SIGNAL \Aleatorio_J1|Add0~6_combout\ : std_logic;
SIGNAL \Aleatorio_J1|Add0~7\ : std_logic;
SIGNAL \Aleatorio_J1|Add0~8_combout\ : std_logic;
SIGNAL \Registro_J1|Q[0]~5_combout\ : std_logic;
SIGNAL \Registro_J1|Q[0]~6\ : std_logic;
SIGNAL \Registro_J1|Q[1]~7_combout\ : std_logic;
SIGNAL \Registro_J1|Q[1]~8\ : std_logic;
SIGNAL \Registro_J1|Q[2]~9_combout\ : std_logic;
SIGNAL \Registro_J1|Q[2]~10\ : std_logic;
SIGNAL \Registro_J1|Q[3]~11_combout\ : std_logic;
SIGNAL \Registro_J1|Q[3]~12\ : std_logic;
SIGNAL \Registro_J1|Q[4]~13_combout\ : std_logic;
SIGNAL \inst7|LessThan1~0_combout\ : std_logic;
SIGNAL \mss|y~23_combout\ : std_logic;
SIGNAL \mss|y.Th~q\ : std_logic;
SIGNAL \J2~input_o\ : std_logic;
SIGNAL \inst|conteo~0_combout\ : std_logic;
SIGNAL \inst|conteo~q\ : std_logic;
SIGNAL \mss|Selector2~0_combout\ : std_logic;
SIGNAL \mss|Selector2~1_combout\ : std_logic;
SIGNAL \mss|y.Tp~q\ : std_logic;
SIGNAL \mss|A2~0_combout\ : std_logic;
SIGNAL \mss|y.Tq~q\ : std_logic;
SIGNAL \mss|y~20_combout\ : std_logic;
SIGNAL \mss|y.Tr~q\ : std_logic;
SIGNAL \mss|y.Ts~q\ : std_logic;
SIGNAL \Aleatorio_J2|Add0~0_combout\ : std_logic;
SIGNAL \Aleatorio_J2|conteo[4]~0_combout\ : std_logic;
SIGNAL \Aleatorio_J2|Add0~1\ : std_logic;
SIGNAL \Aleatorio_J2|Add0~2_combout\ : std_logic;
SIGNAL \Aleatorio_J2|Equal0~0_combout\ : std_logic;
SIGNAL \Aleatorio_J2|conteo~2_combout\ : std_logic;
SIGNAL \Aleatorio_J2|Add0~3\ : std_logic;
SIGNAL \Aleatorio_J2|Add0~4_combout\ : std_logic;
SIGNAL \Aleatorio_J2|conteo~1_combout\ : std_logic;
SIGNAL \Aleatorio_J2|Add0~5\ : std_logic;
SIGNAL \Aleatorio_J2|Add0~6_combout\ : std_logic;
SIGNAL \Aleatorio_J2|Add0~7\ : std_logic;
SIGNAL \Aleatorio_J2|Add0~8_combout\ : std_logic;
SIGNAL \Registro_J2|Q[0]~5_combout\ : std_logic;
SIGNAL \Registro_J2|Q[0]~6\ : std_logic;
SIGNAL \Registro_J2|Q[1]~7_combout\ : std_logic;
SIGNAL \Registro_J2|Q[1]~8\ : std_logic;
SIGNAL \Registro_J2|Q[2]~9_combout\ : std_logic;
SIGNAL \Registro_J2|Q[2]~10\ : std_logic;
SIGNAL \Registro_J2|Q[3]~11_combout\ : std_logic;
SIGNAL \Registro_J2|Q[3]~12\ : std_logic;
SIGNAL \Registro_J2|Q[4]~13_combout\ : std_logic;
SIGNAL \inst8|LessThan1~0_combout\ : std_logic;
SIGNAL \mss|y~24_combout\ : std_logic;
SIGNAL \mss|y.Tt~q\ : std_logic;
SIGNAL \mss|Selector0~0_combout\ : std_logic;
SIGNAL \mss|y.Ta~q\ : std_logic;
SIGNAL \mss|y~22_combout\ : std_logic;
SIGNAL \mss|y.Tb~q\ : std_logic;
SIGNAL \mss|y~19_combout\ : std_logic;
SIGNAL \mss|y.Tc~q\ : std_logic;
SIGNAL \mss|Selector1~0_combout\ : std_logic;
SIGNAL \mss|Selector1~1_combout\ : std_logic;
SIGNAL \mss|y.Td~q\ : std_logic;
SIGNAL \mss|Selector3~0_combout\ : std_logic;
SIGNAL \mss|Selector3~1_combout\ : std_logic;
SIGNAL \mss|Selector4~0_combout\ : std_logic;
SIGNAL \mss|Selector4~1_combout\ : std_logic;
SIGNAL \inst7|LessThan1~1_combout\ : std_logic;
SIGNAL \inst8|LessThan1~1_combout\ : std_logic;
SIGNAL \mss|cont~0_combout\ : std_logic;
SIGNAL \mss|reset_T~0_combout\ : std_logic;
SIGNAL \Aleatorio_J1|conteo\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Registro_J2|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Registro_J1|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Aleatorio_J2|conteo\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mss|ALT_INV_Selector7~0_combout\ : std_logic;

BEGIN

Led_J1 <= ww_Led_J1;
ww_reloj_in <= reloj_in;
ww_reset <= reset;
ww_Start <= Start;
ww_J1 <= J1;
ww_J2 <= J2;
Led_J2 <= ww_Led_J2;
Fin_J1 <= ww_Fin_J1;
Fin_J2 <= ww_Fin_J2;
reset_anti <= ww_reset_anti;
start_anti <= ww_start_anti;
J1_anti <= ww_J1_anti;
J2_anti <= ww_J2_anti;
cont_out <= ww_cont_out;
reset_t_out <= ww_reset_t_out;
Acumulado_J1 <= ww_Acumulado_J1;
Acumulado_J2 <= ww_Acumulado_J2;
Numero_J1 <= ww_Numero_J1;
Numero_J2 <= ww_Numero_J2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\mss|ALT_INV_Selector7~0_combout\ <= NOT \mss|Selector7~0_combout\;

\Led_J1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mss|Selector3~1_combout\,
	devoe => ww_devoe,
	o => \Led_J1~output_o\);

\Led_J2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mss|Selector4~1_combout\,
	devoe => ww_devoe,
	o => \Led_J2~output_o\);

\Fin_J1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LessThan1~1_combout\,
	devoe => ww_devoe,
	o => \Fin_J1~output_o\);

\Fin_J2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|LessThan1~1_combout\,
	devoe => ww_devoe,
	o => \Fin_J2~output_o\);

\reset_anti~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset~input_o\,
	devoe => ww_devoe,
	o => \reset_anti~output_o\);

\start_anti~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Start~input_o\,
	devoe => ww_devoe,
	o => \start_anti~output_o\);

\J1_anti~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J1~input_o\,
	devoe => ww_devoe,
	o => \J1_anti~output_o\);

\J2_anti~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J2~input_o\,
	devoe => ww_devoe,
	o => \J2_anti~output_o\);

\cont_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mss|cont~0_combout\,
	devoe => ww_devoe,
	o => \cont_out~output_o\);

\reset_t_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mss|reset_T~0_combout\,
	devoe => ww_devoe,
	o => \reset_t_out~output_o\);

\Acumulado_J1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J1|Q\(4),
	devoe => ww_devoe,
	o => \Acumulado_J1[4]~output_o\);

\Acumulado_J1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J1|Q\(3),
	devoe => ww_devoe,
	o => \Acumulado_J1[3]~output_o\);

\Acumulado_J1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J1|Q\(2),
	devoe => ww_devoe,
	o => \Acumulado_J1[2]~output_o\);

\Acumulado_J1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J1|Q\(1),
	devoe => ww_devoe,
	o => \Acumulado_J1[1]~output_o\);

\Acumulado_J1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J1|Q\(0),
	devoe => ww_devoe,
	o => \Acumulado_J1[0]~output_o\);

\Acumulado_J2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J2|Q\(4),
	devoe => ww_devoe,
	o => \Acumulado_J2[4]~output_o\);

\Acumulado_J2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J2|Q\(3),
	devoe => ww_devoe,
	o => \Acumulado_J2[3]~output_o\);

\Acumulado_J2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J2|Q\(2),
	devoe => ww_devoe,
	o => \Acumulado_J2[2]~output_o\);

\Acumulado_J2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J2|Q\(1),
	devoe => ww_devoe,
	o => \Acumulado_J2[1]~output_o\);

\Acumulado_J2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registro_J2|Q\(0),
	devoe => ww_devoe,
	o => \Acumulado_J2[0]~output_o\);

\Numero_J1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J1|conteo\(4),
	devoe => ww_devoe,
	o => \Numero_J1[4]~output_o\);

\Numero_J1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J1|conteo\(3),
	devoe => ww_devoe,
	o => \Numero_J1[3]~output_o\);

\Numero_J1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J1|conteo\(2),
	devoe => ww_devoe,
	o => \Numero_J1[2]~output_o\);

\Numero_J1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J1|conteo\(1),
	devoe => ww_devoe,
	o => \Numero_J1[1]~output_o\);

\Numero_J1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J1|conteo\(0),
	devoe => ww_devoe,
	o => \Numero_J1[0]~output_o\);

\Numero_J2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J2|conteo\(4),
	devoe => ww_devoe,
	o => \Numero_J2[4]~output_o\);

\Numero_J2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J2|conteo\(3),
	devoe => ww_devoe,
	o => \Numero_J2[3]~output_o\);

\Numero_J2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J2|conteo\(2),
	devoe => ww_devoe,
	o => \Numero_J2[2]~output_o\);

\Numero_J2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J2|conteo\(1),
	devoe => ww_devoe,
	o => \Numero_J2[1]~output_o\);

\Numero_J2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Aleatorio_J2|conteo\(0),
	devoe => ww_devoe,
	o => \Numero_J2[0]~output_o\);

\reloj_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj_in,
	o => \reloj_in~input_o\);

\Start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

\J1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J1,
	o => \J1~input_o\);

\mss|A1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|A1~0_combout\ = (\J1~input_o\ & ((\mss|y.Td~q\) # (\mss|y.Te~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J1~input_o\,
	datab => \mss|y.Td~q\,
	datac => \mss|y.Te~q\,
	combout => \mss|A1~0_combout\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\mss|y.Te\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|A1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Te~q\);

\mss|y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|y~21_combout\ = (!\J1~input_o\ & \mss|y.Te~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J1~input_o\,
	datad => \mss|y.Te~q\,
	combout => \mss|y~21_combout\);

\mss|y.Tf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|y~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Tf~q\);

\mss|y.Tg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|y.Tf~q\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Tg~q\);

\Aleatorio_J1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J1|Add0~0_combout\ = \Aleatorio_J1|conteo\(0) $ (VCC)
-- \Aleatorio_J1|Add0~1\ = CARRY(\Aleatorio_J1|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(0),
	datad => VCC,
	combout => \Aleatorio_J1|Add0~0_combout\,
	cout => \Aleatorio_J1|Add0~1\);

\mss|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector7~0_combout\ = (\mss|y.Ta~q\ & (\mss|y.Tb~q\)) # (!\mss|y.Ta~q\ & ((\Start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|y.Tb~q\,
	datab => \Start~input_o\,
	datad => \mss|y.Ta~q\,
	combout => \mss|Selector7~0_combout\);

\Aleatorio_J1|conteo[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J1|conteo[4]~0_combout\ = (\J1~input_o\ & (!\mss|Selector7~0_combout\ & ((\mss|y.Td~q\) # (\mss|y.Te~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J1~input_o\,
	datab => \mss|y.Td~q\,
	datac => \mss|y.Te~q\,
	datad => \mss|Selector7~0_combout\,
	combout => \Aleatorio_J1|conteo[4]~0_combout\);

\Aleatorio_J1|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J1|Add0~0_combout\,
	ena => \Aleatorio_J1|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J1|conteo\(0));

\Aleatorio_J1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J1|Add0~2_combout\ = (\Aleatorio_J1|conteo\(1) & (!\Aleatorio_J1|Add0~1\)) # (!\Aleatorio_J1|conteo\(1) & ((\Aleatorio_J1|Add0~1\) # (GND)))
-- \Aleatorio_J1|Add0~3\ = CARRY((!\Aleatorio_J1|Add0~1\) # (!\Aleatorio_J1|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(1),
	datad => VCC,
	cin => \Aleatorio_J1|Add0~1\,
	combout => \Aleatorio_J1|Add0~2_combout\,
	cout => \Aleatorio_J1|Add0~3\);

\Aleatorio_J1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J1|Equal0~0_combout\ = (\Aleatorio_J1|conteo\(2) & (!\Aleatorio_J1|conteo\(4) & (!\Aleatorio_J1|conteo\(3) & !\Aleatorio_J1|conteo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(2),
	datab => \Aleatorio_J1|conteo\(4),
	datac => \Aleatorio_J1|conteo\(3),
	datad => \Aleatorio_J1|conteo\(0),
	combout => \Aleatorio_J1|Equal0~0_combout\);

\Aleatorio_J1|conteo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J1|conteo~2_combout\ = (\Aleatorio_J1|Add0~2_combout\ & ((!\Aleatorio_J1|Equal0~0_combout\) # (!\Aleatorio_J1|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|Add0~2_combout\,
	datac => \Aleatorio_J1|conteo\(1),
	datad => \Aleatorio_J1|Equal0~0_combout\,
	combout => \Aleatorio_J1|conteo~2_combout\);

\Aleatorio_J1|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J1|conteo~2_combout\,
	ena => \Aleatorio_J1|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J1|conteo\(1));

\Aleatorio_J1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J1|Add0~4_combout\ = (\Aleatorio_J1|conteo\(2) & (\Aleatorio_J1|Add0~3\ $ (GND))) # (!\Aleatorio_J1|conteo\(2) & (!\Aleatorio_J1|Add0~3\ & VCC))
-- \Aleatorio_J1|Add0~5\ = CARRY((\Aleatorio_J1|conteo\(2) & !\Aleatorio_J1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(2),
	datad => VCC,
	cin => \Aleatorio_J1|Add0~3\,
	combout => \Aleatorio_J1|Add0~4_combout\,
	cout => \Aleatorio_J1|Add0~5\);

\Aleatorio_J1|conteo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J1|conteo~1_combout\ = (\Aleatorio_J1|Add0~4_combout\ & ((!\Aleatorio_J1|Equal0~0_combout\) # (!\Aleatorio_J1|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|Add0~4_combout\,
	datac => \Aleatorio_J1|conteo\(1),
	datad => \Aleatorio_J1|Equal0~0_combout\,
	combout => \Aleatorio_J1|conteo~1_combout\);

\Aleatorio_J1|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J1|conteo~1_combout\,
	ena => \Aleatorio_J1|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J1|conteo\(2));

\Aleatorio_J1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J1|Add0~6_combout\ = (\Aleatorio_J1|conteo\(3) & (!\Aleatorio_J1|Add0~5\)) # (!\Aleatorio_J1|conteo\(3) & ((\Aleatorio_J1|Add0~5\) # (GND)))
-- \Aleatorio_J1|Add0~7\ = CARRY((!\Aleatorio_J1|Add0~5\) # (!\Aleatorio_J1|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(3),
	datad => VCC,
	cin => \Aleatorio_J1|Add0~5\,
	combout => \Aleatorio_J1|Add0~6_combout\,
	cout => \Aleatorio_J1|Add0~7\);

\Aleatorio_J1|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J1|Add0~6_combout\,
	ena => \Aleatorio_J1|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J1|conteo\(3));

\Aleatorio_J1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J1|Add0~8_combout\ = \Aleatorio_J1|conteo\(4) $ (!\Aleatorio_J1|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(4),
	cin => \Aleatorio_J1|Add0~7\,
	combout => \Aleatorio_J1|Add0~8_combout\);

\Aleatorio_J1|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J1|Add0~8_combout\,
	ena => \Aleatorio_J1|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J1|conteo\(4));

\Registro_J1|Q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J1|Q[0]~5_combout\ = (\Aleatorio_J1|conteo\(0) & (\Registro_J1|Q\(0) $ (VCC))) # (!\Aleatorio_J1|conteo\(0) & (\Registro_J1|Q\(0) & VCC))
-- \Registro_J1|Q[0]~6\ = CARRY((\Aleatorio_J1|conteo\(0) & \Registro_J1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(0),
	datab => \Registro_J1|Q\(0),
	datad => VCC,
	combout => \Registro_J1|Q[0]~5_combout\,
	cout => \Registro_J1|Q[0]~6\);

\Registro_J1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J1|Q[0]~5_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tf~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J1|Q\(0));

\Registro_J1|Q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J1|Q[1]~7_combout\ = (\Aleatorio_J1|conteo\(1) & ((\Registro_J1|Q\(1) & (\Registro_J1|Q[0]~6\ & VCC)) # (!\Registro_J1|Q\(1) & (!\Registro_J1|Q[0]~6\)))) # (!\Aleatorio_J1|conteo\(1) & ((\Registro_J1|Q\(1) & (!\Registro_J1|Q[0]~6\)) # 
-- (!\Registro_J1|Q\(1) & ((\Registro_J1|Q[0]~6\) # (GND)))))
-- \Registro_J1|Q[1]~8\ = CARRY((\Aleatorio_J1|conteo\(1) & (!\Registro_J1|Q\(1) & !\Registro_J1|Q[0]~6\)) # (!\Aleatorio_J1|conteo\(1) & ((!\Registro_J1|Q[0]~6\) # (!\Registro_J1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(1),
	datab => \Registro_J1|Q\(1),
	datad => VCC,
	cin => \Registro_J1|Q[0]~6\,
	combout => \Registro_J1|Q[1]~7_combout\,
	cout => \Registro_J1|Q[1]~8\);

\Registro_J1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J1|Q[1]~7_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tf~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J1|Q\(1));

\Registro_J1|Q[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J1|Q[2]~9_combout\ = ((\Aleatorio_J1|conteo\(2) $ (\Registro_J1|Q\(2) $ (!\Registro_J1|Q[1]~8\)))) # (GND)
-- \Registro_J1|Q[2]~10\ = CARRY((\Aleatorio_J1|conteo\(2) & ((\Registro_J1|Q\(2)) # (!\Registro_J1|Q[1]~8\))) # (!\Aleatorio_J1|conteo\(2) & (\Registro_J1|Q\(2) & !\Registro_J1|Q[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(2),
	datab => \Registro_J1|Q\(2),
	datad => VCC,
	cin => \Registro_J1|Q[1]~8\,
	combout => \Registro_J1|Q[2]~9_combout\,
	cout => \Registro_J1|Q[2]~10\);

\Registro_J1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J1|Q[2]~9_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tf~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J1|Q\(2));

\Registro_J1|Q[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J1|Q[3]~11_combout\ = (\Aleatorio_J1|conteo\(3) & ((\Registro_J1|Q\(3) & (\Registro_J1|Q[2]~10\ & VCC)) # (!\Registro_J1|Q\(3) & (!\Registro_J1|Q[2]~10\)))) # (!\Aleatorio_J1|conteo\(3) & ((\Registro_J1|Q\(3) & (!\Registro_J1|Q[2]~10\)) # 
-- (!\Registro_J1|Q\(3) & ((\Registro_J1|Q[2]~10\) # (GND)))))
-- \Registro_J1|Q[3]~12\ = CARRY((\Aleatorio_J1|conteo\(3) & (!\Registro_J1|Q\(3) & !\Registro_J1|Q[2]~10\)) # (!\Aleatorio_J1|conteo\(3) & ((!\Registro_J1|Q[2]~10\) # (!\Registro_J1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(3),
	datab => \Registro_J1|Q\(3),
	datad => VCC,
	cin => \Registro_J1|Q[2]~10\,
	combout => \Registro_J1|Q[3]~11_combout\,
	cout => \Registro_J1|Q[3]~12\);

\Registro_J1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J1|Q[3]~11_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tf~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J1|Q\(3));

\Registro_J1|Q[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J1|Q[4]~13_combout\ = \Aleatorio_J1|conteo\(4) $ (\Registro_J1|Q\(4) $ (!\Registro_J1|Q[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J1|conteo\(4),
	datab => \Registro_J1|Q\(4),
	cin => \Registro_J1|Q[3]~12\,
	combout => \Registro_J1|Q[4]~13_combout\);

\Registro_J1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J1|Q[4]~13_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tf~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J1|Q\(4));

\inst7|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~0_combout\ = (\Registro_J1|Q\(2) & (\Registro_J1|Q\(3) & ((\Registro_J1|Q\(0)) # (\Registro_J1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro_J1|Q\(2),
	datab => \Registro_J1|Q\(3),
	datac => \Registro_J1|Q\(0),
	datad => \Registro_J1|Q\(1),
	combout => \inst7|LessThan1~0_combout\);

\mss|y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|y~23_combout\ = (\mss|y.Tg~q\ & ((\Registro_J1|Q\(4)) # (\inst7|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|y.Tg~q\,
	datab => \Registro_J1|Q\(4),
	datac => \inst7|LessThan1~0_combout\,
	combout => \mss|y~23_combout\);

\mss|y.Th\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|y~23_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Th~q\);

\J2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2,
	o => \J2~input_o\);

\inst|conteo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conteo~0_combout\ = \inst|conteo~q\ $ (((\Start~input_o\ & \mss|y.Tb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|conteo~q\,
	datac => \Start~input_o\,
	datad => \mss|y.Tb~q\,
	combout => \inst|conteo~0_combout\);

\inst|conteo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \inst|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conteo~q\);

\mss|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector2~0_combout\ = (\inst|conteo~q\ & ((\mss|y.Tc~q\) # ((\mss|y.Tp~q\ & !\J2~input_o\)))) # (!\inst|conteo~q\ & (((\mss|y.Tp~q\ & !\J2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conteo~q\,
	datab => \mss|y.Tc~q\,
	datac => \mss|y.Tp~q\,
	datad => \J2~input_o\,
	combout => \mss|Selector2~0_combout\);

\mss|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector2~1_combout\ = (\mss|Selector2~0_combout\) # ((\mss|y.Tg~q\ & (!\Registro_J1|Q\(4) & !\inst7|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|Selector2~0_combout\,
	datab => \mss|y.Tg~q\,
	datac => \Registro_J1|Q\(4),
	datad => \inst7|LessThan1~0_combout\,
	combout => \mss|Selector2~1_combout\);

\mss|y.Tp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|Selector2~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Tp~q\);

\mss|A2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|A2~0_combout\ = (\J2~input_o\ & ((\mss|y.Tp~q\) # (\mss|y.Tq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J2~input_o\,
	datab => \mss|y.Tp~q\,
	datac => \mss|y.Tq~q\,
	combout => \mss|A2~0_combout\);

\mss|y.Tq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|A2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Tq~q\);

\mss|y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|y~20_combout\ = (!\J2~input_o\ & \mss|y.Tq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J2~input_o\,
	datad => \mss|y.Tq~q\,
	combout => \mss|y~20_combout\);

\mss|y.Tr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|y~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Tr~q\);

\mss|y.Ts\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|y.Tr~q\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Ts~q\);

\Aleatorio_J2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J2|Add0~0_combout\ = \Aleatorio_J2|conteo\(0) $ (VCC)
-- \Aleatorio_J2|Add0~1\ = CARRY(\Aleatorio_J2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(0),
	datad => VCC,
	combout => \Aleatorio_J2|Add0~0_combout\,
	cout => \Aleatorio_J2|Add0~1\);

\Aleatorio_J2|conteo[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J2|conteo[4]~0_combout\ = (\J2~input_o\ & (!\mss|Selector7~0_combout\ & ((\mss|y.Tp~q\) # (\mss|y.Tq~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J2~input_o\,
	datab => \mss|y.Tp~q\,
	datac => \mss|y.Tq~q\,
	datad => \mss|Selector7~0_combout\,
	combout => \Aleatorio_J2|conteo[4]~0_combout\);

\Aleatorio_J2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J2|Add0~0_combout\,
	ena => \Aleatorio_J2|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J2|conteo\(0));

\Aleatorio_J2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J2|Add0~2_combout\ = (\Aleatorio_J2|conteo\(1) & (!\Aleatorio_J2|Add0~1\)) # (!\Aleatorio_J2|conteo\(1) & ((\Aleatorio_J2|Add0~1\) # (GND)))
-- \Aleatorio_J2|Add0~3\ = CARRY((!\Aleatorio_J2|Add0~1\) # (!\Aleatorio_J2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(1),
	datad => VCC,
	cin => \Aleatorio_J2|Add0~1\,
	combout => \Aleatorio_J2|Add0~2_combout\,
	cout => \Aleatorio_J2|Add0~3\);

\Aleatorio_J2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J2|Equal0~0_combout\ = (\Aleatorio_J2|conteo\(2) & (!\Aleatorio_J2|conteo\(4) & (!\Aleatorio_J2|conteo\(3) & !\Aleatorio_J2|conteo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(2),
	datab => \Aleatorio_J2|conteo\(4),
	datac => \Aleatorio_J2|conteo\(3),
	datad => \Aleatorio_J2|conteo\(0),
	combout => \Aleatorio_J2|Equal0~0_combout\);

\Aleatorio_J2|conteo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J2|conteo~2_combout\ = (\Aleatorio_J2|Add0~2_combout\ & ((!\Aleatorio_J2|Equal0~0_combout\) # (!\Aleatorio_J2|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|Add0~2_combout\,
	datac => \Aleatorio_J2|conteo\(1),
	datad => \Aleatorio_J2|Equal0~0_combout\,
	combout => \Aleatorio_J2|conteo~2_combout\);

\Aleatorio_J2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J2|conteo~2_combout\,
	ena => \Aleatorio_J2|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J2|conteo\(1));

\Aleatorio_J2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J2|Add0~4_combout\ = (\Aleatorio_J2|conteo\(2) & (\Aleatorio_J2|Add0~3\ $ (GND))) # (!\Aleatorio_J2|conteo\(2) & (!\Aleatorio_J2|Add0~3\ & VCC))
-- \Aleatorio_J2|Add0~5\ = CARRY((\Aleatorio_J2|conteo\(2) & !\Aleatorio_J2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(2),
	datad => VCC,
	cin => \Aleatorio_J2|Add0~3\,
	combout => \Aleatorio_J2|Add0~4_combout\,
	cout => \Aleatorio_J2|Add0~5\);

\Aleatorio_J2|conteo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J2|conteo~1_combout\ = (\Aleatorio_J2|Add0~4_combout\ & ((!\Aleatorio_J2|Equal0~0_combout\) # (!\Aleatorio_J2|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|Add0~4_combout\,
	datac => \Aleatorio_J2|conteo\(1),
	datad => \Aleatorio_J2|Equal0~0_combout\,
	combout => \Aleatorio_J2|conteo~1_combout\);

\Aleatorio_J2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J2|conteo~1_combout\,
	ena => \Aleatorio_J2|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J2|conteo\(2));

\Aleatorio_J2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J2|Add0~6_combout\ = (\Aleatorio_J2|conteo\(3) & (!\Aleatorio_J2|Add0~5\)) # (!\Aleatorio_J2|conteo\(3) & ((\Aleatorio_J2|Add0~5\) # (GND)))
-- \Aleatorio_J2|Add0~7\ = CARRY((!\Aleatorio_J2|Add0~5\) # (!\Aleatorio_J2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(3),
	datad => VCC,
	cin => \Aleatorio_J2|Add0~5\,
	combout => \Aleatorio_J2|Add0~6_combout\,
	cout => \Aleatorio_J2|Add0~7\);

\Aleatorio_J2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J2|Add0~6_combout\,
	ena => \Aleatorio_J2|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J2|conteo\(3));

\Aleatorio_J2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aleatorio_J2|Add0~8_combout\ = \Aleatorio_J2|conteo\(4) $ (!\Aleatorio_J2|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(4),
	cin => \Aleatorio_J2|Add0~7\,
	combout => \Aleatorio_J2|Add0~8_combout\);

\Aleatorio_J2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Aleatorio_J2|Add0~8_combout\,
	ena => \Aleatorio_J2|conteo[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aleatorio_J2|conteo\(4));

\Registro_J2|Q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J2|Q[0]~5_combout\ = (\Aleatorio_J2|conteo\(0) & (\Registro_J2|Q\(0) $ (VCC))) # (!\Aleatorio_J2|conteo\(0) & (\Registro_J2|Q\(0) & VCC))
-- \Registro_J2|Q[0]~6\ = CARRY((\Aleatorio_J2|conteo\(0) & \Registro_J2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(0),
	datab => \Registro_J2|Q\(0),
	datad => VCC,
	combout => \Registro_J2|Q[0]~5_combout\,
	cout => \Registro_J2|Q[0]~6\);

\Registro_J2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J2|Q[0]~5_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tr~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J2|Q\(0));

\Registro_J2|Q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J2|Q[1]~7_combout\ = (\Aleatorio_J2|conteo\(1) & ((\Registro_J2|Q\(1) & (\Registro_J2|Q[0]~6\ & VCC)) # (!\Registro_J2|Q\(1) & (!\Registro_J2|Q[0]~6\)))) # (!\Aleatorio_J2|conteo\(1) & ((\Registro_J2|Q\(1) & (!\Registro_J2|Q[0]~6\)) # 
-- (!\Registro_J2|Q\(1) & ((\Registro_J2|Q[0]~6\) # (GND)))))
-- \Registro_J2|Q[1]~8\ = CARRY((\Aleatorio_J2|conteo\(1) & (!\Registro_J2|Q\(1) & !\Registro_J2|Q[0]~6\)) # (!\Aleatorio_J2|conteo\(1) & ((!\Registro_J2|Q[0]~6\) # (!\Registro_J2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(1),
	datab => \Registro_J2|Q\(1),
	datad => VCC,
	cin => \Registro_J2|Q[0]~6\,
	combout => \Registro_J2|Q[1]~7_combout\,
	cout => \Registro_J2|Q[1]~8\);

\Registro_J2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J2|Q[1]~7_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tr~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J2|Q\(1));

\Registro_J2|Q[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J2|Q[2]~9_combout\ = ((\Aleatorio_J2|conteo\(2) $ (\Registro_J2|Q\(2) $ (!\Registro_J2|Q[1]~8\)))) # (GND)
-- \Registro_J2|Q[2]~10\ = CARRY((\Aleatorio_J2|conteo\(2) & ((\Registro_J2|Q\(2)) # (!\Registro_J2|Q[1]~8\))) # (!\Aleatorio_J2|conteo\(2) & (\Registro_J2|Q\(2) & !\Registro_J2|Q[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(2),
	datab => \Registro_J2|Q\(2),
	datad => VCC,
	cin => \Registro_J2|Q[1]~8\,
	combout => \Registro_J2|Q[2]~9_combout\,
	cout => \Registro_J2|Q[2]~10\);

\Registro_J2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J2|Q[2]~9_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tr~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J2|Q\(2));

\Registro_J2|Q[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J2|Q[3]~11_combout\ = (\Aleatorio_J2|conteo\(3) & ((\Registro_J2|Q\(3) & (\Registro_J2|Q[2]~10\ & VCC)) # (!\Registro_J2|Q\(3) & (!\Registro_J2|Q[2]~10\)))) # (!\Aleatorio_J2|conteo\(3) & ((\Registro_J2|Q\(3) & (!\Registro_J2|Q[2]~10\)) # 
-- (!\Registro_J2|Q\(3) & ((\Registro_J2|Q[2]~10\) # (GND)))))
-- \Registro_J2|Q[3]~12\ = CARRY((\Aleatorio_J2|conteo\(3) & (!\Registro_J2|Q\(3) & !\Registro_J2|Q[2]~10\)) # (!\Aleatorio_J2|conteo\(3) & ((!\Registro_J2|Q[2]~10\) # (!\Registro_J2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(3),
	datab => \Registro_J2|Q\(3),
	datad => VCC,
	cin => \Registro_J2|Q[2]~10\,
	combout => \Registro_J2|Q[3]~11_combout\,
	cout => \Registro_J2|Q[3]~12\);

\Registro_J2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J2|Q[3]~11_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tr~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J2|Q\(3));

\Registro_J2|Q[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registro_J2|Q[4]~13_combout\ = \Aleatorio_J2|conteo\(4) $ (\Registro_J2|Q\(4) $ (!\Registro_J2|Q[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aleatorio_J2|conteo\(4),
	datab => \Registro_J2|Q\(4),
	cin => \Registro_J2|Q[3]~12\,
	combout => \Registro_J2|Q[4]~13_combout\);

\Registro_J2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \Registro_J2|Q[4]~13_combout\,
	clrn => \mss|ALT_INV_Selector7~0_combout\,
	ena => \mss|y.Tr~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro_J2|Q\(4));

\inst8|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~0_combout\ = (\Registro_J2|Q\(2) & (\Registro_J2|Q\(3) & ((\Registro_J2|Q\(0)) # (\Registro_J2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro_J2|Q\(2),
	datab => \Registro_J2|Q\(3),
	datac => \Registro_J2|Q\(0),
	datad => \Registro_J2|Q\(1),
	combout => \inst8|LessThan1~0_combout\);

\mss|y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|y~24_combout\ = (\mss|y.Ts~q\ & ((\Registro_J2|Q\(4)) # (\inst8|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|y.Ts~q\,
	datab => \Registro_J2|Q\(4),
	datac => \inst8|LessThan1~0_combout\,
	combout => \mss|y~24_combout\);

\mss|y.Tt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|y~24_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Tt~q\);

\mss|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector0~0_combout\ = (!\mss|y.Th~q\ & (!\mss|y.Tt~q\ & ((\Start~input_o\) # (\mss|y.Ta~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|y.Th~q\,
	datab => \mss|y.Tt~q\,
	datac => \Start~input_o\,
	datad => \mss|y.Ta~q\,
	combout => \mss|Selector0~0_combout\);

\mss|y.Ta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Ta~q\);

\mss|y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|y~22_combout\ = (\Start~input_o\ & ((\mss|y.Tb~q\) # (!\mss|y.Ta~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \mss|y.Tb~q\,
	datad => \mss|y.Ta~q\,
	combout => \mss|y~22_combout\);

\mss|y.Tb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|y~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Tb~q\);

\mss|y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|y~19_combout\ = (!\Start~input_o\ & \mss|y.Tb~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datad => \mss|y.Tb~q\,
	combout => \mss|y~19_combout\);

\mss|y.Tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|y~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Tc~q\);

\mss|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector1~0_combout\ = (\mss|y.Tc~q\ & (((\mss|y.Td~q\ & !\J1~input_o\)) # (!\inst|conteo~q\))) # (!\mss|y.Tc~q\ & (\mss|y.Td~q\ & ((!\J1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|y.Tc~q\,
	datab => \mss|y.Td~q\,
	datac => \inst|conteo~q\,
	datad => \J1~input_o\,
	combout => \mss|Selector1~0_combout\);

\mss|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector1~1_combout\ = (\mss|Selector1~0_combout\) # ((\mss|y.Ts~q\ & (!\Registro_J2|Q\(4) & !\inst8|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|Selector1~0_combout\,
	datab => \mss|y.Ts~q\,
	datac => \Registro_J2|Q\(4),
	datad => \inst8|LessThan1~0_combout\,
	combout => \mss|Selector1~1_combout\);

\mss|y.Td\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~input_o\,
	d => \mss|Selector1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mss|y.Td~q\);

\mss|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector3~0_combout\ = (\mss|y.Td~q\) # ((\mss|y.Te~q\) # ((\mss|y.Tc~q\ & !\inst|conteo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|y.Td~q\,
	datab => \mss|y.Te~q\,
	datac => \mss|y.Tc~q\,
	datad => \inst|conteo~q\,
	combout => \mss|Selector3~0_combout\);

\mss|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector3~1_combout\ = (\mss|Selector3~0_combout\) # ((\mss|y.Tr~q\) # (\mss|y.Ts~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|Selector3~0_combout\,
	datab => \mss|y.Tr~q\,
	datac => \mss|y.Ts~q\,
	combout => \mss|Selector3~1_combout\);

\mss|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector4~0_combout\ = (\mss|y.Tp~q\) # ((\mss|y.Tq~q\) # ((\inst|conteo~q\ & \mss|y.Tc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|y.Tp~q\,
	datab => \mss|y.Tq~q\,
	datac => \inst|conteo~q\,
	datad => \mss|y.Tc~q\,
	combout => \mss|Selector4~0_combout\);

\mss|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|Selector4~1_combout\ = (\mss|Selector4~0_combout\) # ((\mss|y.Tf~q\) # (\mss|y.Tg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mss|Selector4~0_combout\,
	datab => \mss|y.Tf~q\,
	datac => \mss|y.Tg~q\,
	combout => \mss|Selector4~1_combout\);

\inst7|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~1_combout\ = (\Registro_J1|Q\(4)) # (\inst7|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro_J1|Q\(4),
	datab => \inst7|LessThan1~0_combout\,
	combout => \inst7|LessThan1~1_combout\);

\inst8|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~1_combout\ = (\Registro_J2|Q\(4)) # (\inst8|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro_J2|Q\(4),
	datab => \inst8|LessThan1~0_combout\,
	combout => \inst8|LessThan1~1_combout\);

\mss|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|cont~0_combout\ = (\Start~input_o\ & \mss|y.Tb~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \mss|y.Tb~q\,
	combout => \mss|cont~0_combout\);

\mss|reset_T~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mss|reset_T~0_combout\ = (\Start~input_o\) # (\mss|y.Ta~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \mss|y.Ta~q\,
	combout => \mss|reset_T~0_combout\);

ww_Led_J1 <= \Led_J1~output_o\;

ww_Led_J2 <= \Led_J2~output_o\;

ww_Fin_J1 <= \Fin_J1~output_o\;

ww_Fin_J2 <= \Fin_J2~output_o\;

ww_reset_anti <= \reset_anti~output_o\;

ww_start_anti <= \start_anti~output_o\;

ww_J1_anti <= \J1_anti~output_o\;

ww_J2_anti <= \J2_anti~output_o\;

ww_cont_out <= \cont_out~output_o\;

ww_reset_t_out <= \reset_t_out~output_o\;

ww_Acumulado_J1(4) <= \Acumulado_J1[4]~output_o\;

ww_Acumulado_J1(3) <= \Acumulado_J1[3]~output_o\;

ww_Acumulado_J1(2) <= \Acumulado_J1[2]~output_o\;

ww_Acumulado_J1(1) <= \Acumulado_J1[1]~output_o\;

ww_Acumulado_J1(0) <= \Acumulado_J1[0]~output_o\;

ww_Acumulado_J2(4) <= \Acumulado_J2[4]~output_o\;

ww_Acumulado_J2(3) <= \Acumulado_J2[3]~output_o\;

ww_Acumulado_J2(2) <= \Acumulado_J2[2]~output_o\;

ww_Acumulado_J2(1) <= \Acumulado_J2[1]~output_o\;

ww_Acumulado_J2(0) <= \Acumulado_J2[0]~output_o\;

ww_Numero_J1(4) <= \Numero_J1[4]~output_o\;

ww_Numero_J1(3) <= \Numero_J1[3]~output_o\;

ww_Numero_J1(2) <= \Numero_J1[2]~output_o\;

ww_Numero_J1(1) <= \Numero_J1[1]~output_o\;

ww_Numero_J1(0) <= \Numero_J1[0]~output_o\;

ww_Numero_J2(4) <= \Numero_J2[4]~output_o\;

ww_Numero_J2(3) <= \Numero_J2[3]~output_o\;

ww_Numero_J2(2) <= \Numero_J2[2]~output_o\;

ww_Numero_J2(1) <= \Numero_J2[1]~output_o\;

ww_Numero_J2(0) <= \Numero_J2[0]~output_o\;
END structure;


