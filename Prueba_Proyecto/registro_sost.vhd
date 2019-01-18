library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro_sost is
	Port ( Reset, Clock : in std_logic;
			En : in std_logic;
			Entrada : in std_logic_vector(4 downto 0);
			Q : out std_logic_vector(4 downto 0));
end registro_sost;

Architecture sol of registro_sost is
Begin
	process (Reset, Clock)
	begin
		if Reset ='0' then Q <= "00000";
		elsif (Clock'event and Clock='1') then
			if En = '1' then
				Q <= Entrada;
			end if;
		end if;
	end process;	
end sol;