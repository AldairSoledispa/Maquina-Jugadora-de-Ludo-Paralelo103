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
-- Generated on "01/16/2019 00:39:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mss
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mss_vhd_vec_tst IS
END mss_vhd_vec_tst;
ARCHITECTURE mss_arch OF mss_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL Clock1 : STD_LOGIC;
SIGNAL cont : STD_LOGIC;
SIGNAL ct1 : STD_LOGIC;
SIGNAL Gana_J1 : STD_LOGIC;
SIGNAL Gana_J2 : STD_LOGIC;
SIGNAL J1 : STD_LOGIC;
SIGNAL J2 : STD_LOGIC;
SIGNAL Led_J1 : STD_LOGIC;
SIGNAL Led_J2 : STD_LOGIC;
SIGNAL Reg_1 : STD_LOGIC;
SIGNAL Reg_2 : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL reset_A1 : STD_LOGIC;
SIGNAL reset_A2 : STD_LOGIC;
SIGNAL reset_R1 : STD_LOGIC;
SIGNAL reset_R2 : STD_LOGIC;
SIGNAL reset_T : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
COMPONENT mss
	PORT (
	A1 : BUFFER STD_LOGIC;
	A2 : BUFFER STD_LOGIC;
	Clock1 : IN STD_LOGIC;
	cont : BUFFER STD_LOGIC;
	ct1 : IN STD_LOGIC;
	Gana_J1 : IN STD_LOGIC;
	Gana_J2 : IN STD_LOGIC;
	J1 : IN STD_LOGIC;
	J2 : IN STD_LOGIC;
	Led_J1 : BUFFER STD_LOGIC;
	Led_J2 : BUFFER STD_LOGIC;
	Reg_1 : BUFFER STD_LOGIC;
	Reg_2 : BUFFER STD_LOGIC;
	Reset : IN STD_LOGIC;
	reset_A1 : BUFFER STD_LOGIC;
	reset_A2 : BUFFER STD_LOGIC;
	reset_R1 : BUFFER STD_LOGIC;
	reset_R2 : BUFFER STD_LOGIC;
	reset_T : BUFFER STD_LOGIC;
	Start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mss
	PORT MAP (
-- list connections between master ports and signals
	A1 => A1,
	A2 => A2,
	Clock1 => Clock1,
	cont => cont,
	ct1 => ct1,
	Gana_J1 => Gana_J1,
	Gana_J2 => Gana_J2,
	J1 => J1,
	J2 => J2,
	Led_J1 => Led_J1,
	Led_J2 => Led_J2,
	Reg_1 => Reg_1,
	Reg_2 => Reg_2,
	Reset => Reset,
	reset_A1 => reset_A1,
	reset_A2 => reset_A2,
	reset_R1 => reset_R1,
	reset_R2 => reset_R2,
	reset_T => reset_T,
	Start => Start
	);

-- Clock1
t_prcs_Clock1: PROCESS
BEGIN
LOOP
	Clock1 <= '0';
	WAIT FOR 5000 ps;
	Clock1 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock1;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '1';
	WAIT FOR 20000 ps;
	Reset <= '0';
	WAIT FOR 100000 ps;
	Reset <= '1';
WAIT;
END PROCESS t_prcs_Reset;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '0';
	WAIT FOR 180000 ps;
	Start <= '1';
	WAIT FOR 80000 ps;
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;

-- ct1
t_prcs_ct1: PROCESS
BEGIN
	ct1 <= '0';
WAIT;
END PROCESS t_prcs_ct1;

-- Gana_J1
t_prcs_Gana_J1: PROCESS
BEGIN
	Gana_J1 <= '0';
WAIT;
END PROCESS t_prcs_Gana_J1;

-- Gana_J2
t_prcs_Gana_J2: PROCESS
BEGIN
	Gana_J2 <= '0';
WAIT;
END PROCESS t_prcs_Gana_J2;

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
END mss_arch;
