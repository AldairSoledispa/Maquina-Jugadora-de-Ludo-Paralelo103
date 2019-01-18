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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/15/2019 21:55:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Diagrama_prueba
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Diagrama_prueba_vhd_vec_tst IS
END Diagrama_prueba_vhd_vec_tst;
ARCHITECTURE Diagrama_prueba_arch OF Diagrama_prueba_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Acumulado_J1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Acumulado_J2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Fin_J1 : STD_LOGIC;
SIGNAL Fin_J2 : STD_LOGIC;
SIGNAL J1 : STD_LOGIC;
SIGNAL J1_anti : STD_LOGIC;
SIGNAL J2 : STD_LOGIC;
SIGNAL J2_anti : STD_LOGIC;
SIGNAL Led_J1 : STD_LOGIC;
SIGNAL Led_J2 : STD_LOGIC;
SIGNAL Numero_J1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Numero_J2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reloj : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL reset_anti : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
SIGNAL start_anti : STD_LOGIC;
COMPONENT Diagrama_prueba
	PORT (
	Acumulado_J1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Acumulado_J2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Fin_J1 : OUT STD_LOGIC;
	Fin_J2 : OUT STD_LOGIC;
	J1 : IN STD_LOGIC;
	J1_anti : OUT STD_LOGIC;
	J2 : IN STD_LOGIC;
	J2_anti : OUT STD_LOGIC;
	Led_J1 : OUT STD_LOGIC;
	Led_J2 : OUT STD_LOGIC;
	Numero_J1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Numero_J2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	reloj : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	reset_anti : OUT STD_LOGIC;
	Start : IN STD_LOGIC;
	start_anti : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Diagrama_prueba
	PORT MAP (
-- list connections between master ports and signals
	Acumulado_J1 => Acumulado_J1,
	Acumulado_J2 => Acumulado_J2,
	Fin_J1 => Fin_J1,
	Fin_J2 => Fin_J2,
	J1 => J1,
	J1_anti => J1_anti,
	J2 => J2,
	J2_anti => J2_anti,
	Led_J1 => Led_J1,
	Led_J2 => Led_J2,
	Numero_J1 => Numero_J1,
	Numero_J2 => Numero_J2,
	reloj => reloj,
	reset => reset,
	reset_anti => reset_anti,
	Start => Start,
	start_anti => start_anti
	);

-- J1
t_prcs_J1: PROCESS
BEGIN
	J1 <= '0';
WAIT;
END PROCESS t_prcs_J1;

-- J2
t_prcs_J2: PROCESS
BEGIN
	J2 <= '0';
WAIT;
END PROCESS t_prcs_J2;

-- reloj
t_prcs_reloj: PROCESS
BEGIN
LOOP
	reloj <= '0';
	WAIT FOR 5000 ps;
	reloj <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_reloj;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 50000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '0';
	WAIT FOR 150000 ps;
	Start <= '1';
	WAIT FOR 120000 ps;
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;
END Diagrama_prueba_arch;
