library  IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_signed.all;
use  IEEE.NUMERIC_STD.all;

ENTITY  Sumador  IS
PORT  (a  :  IN  std_logic_vector(4  DOWNTO  0);  
	b  :  IN  std_logic_vector(4  DOWNTO  0);  
	salida  :  OUT  std_logic_vector(4  DOWNTO  0);
	c:  OUT  std_logic);
END  Sumador;

ARCHITECTURE  synth  OF  Sumador  IS
signal  suma:  std_logic_vector(4  DOWNTO  0);
BEGIN
PROCESS  (a,  b)  IS
BEGIN
suma  <=  a+b;
	salida<=  suma(4  DOWNTO  0); 
	c<=  suma(4);
END  PROCESS;
END  synth;