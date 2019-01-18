LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Aleatorio_Turno IS
	PORT(reloj, reset, En : IN STD_LOGIC;
		 Q : out STD_LOGIC);
END Aleatorio_Turno;

ARCHITECTURE sol OF Aleatorio_Turno IS
SIGNAL conteo: STD_LOGIC; 	
BEGIN
	PROCESS(reloj,En,reset)
	BEGIN
		if reset='0' then Q<='0'; 
  		elsif (reloj'event and reloj='1') then
			if En='1' then 
				if conteo='0' then conteo<='1';
				else conteo<='0';
				end if;
			end if;
		end if;
		Q<=conteo;
	END PROCESS;
END sol;