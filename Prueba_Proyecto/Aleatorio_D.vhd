LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Aleatorio_D IS
	PORT(reloj, reset, En : IN STD_LOGIC;
		 Q : OUT STD_LOGIC_VECTOR (4 DOWNTO 0));
END Aleatorio_D;

ARCHITECTURE sol OF Aleatorio_D IS
SIGNAL conteo: STD_LOGIC_VECTOR (4 DOWNTO 0); 
signal aux: STD_LOGIC_VECTOR (0 DOWNTO 0);	
BEGIN
	PROCESS(reloj,En,reset)
	BEGIN
		if reset='0' then Q<="00000"; 
  		elsif (reloj'event and reloj='1') then 
			if En='1' then 
				if aux="1" then
					conteo<=conteo + '1';
					if conteo ="00110" then conteo<="00001";
					end if;
				end if;
				aux<=aux + '1';
			end if;
		end if;
		Q<=conteo;
	END PROCESS;
END sol;