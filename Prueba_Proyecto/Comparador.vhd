LIBRARY  ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all ;

ENTITY  comparador  IS
PORT  (  N:  IN  STD_LOGIC_VECTOR(4  DOWNTO  0);
			igual,mayor,menor:  OUT  STD_LOGIC);
END  comparador;

ARCHITECTURE  solucion  OF  comparador  IS
signal A:std_logic_vector(4 downto 0);
BEGIN
	A<="11010";
	igual  <=  '1'    WHEN  A  =  N ELSE  '0';
	mayor  <=  '1'  WHEN  A  >  N  ELSE  '0';
	menor  <='1'  WHEN  A  <  N  ELSE'0';
END  solucion;  