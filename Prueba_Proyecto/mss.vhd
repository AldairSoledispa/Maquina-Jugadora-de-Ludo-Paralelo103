Library ieee;
use ieee.std_logic_1164.all;

Entity mss is
Port(	Clock1, Reset, Start, ct1, J1, J2, Gana_J1, Gana_J2: in std_logic;
	cont, reset_T, A1, A2, reset_A1, reset_A2, Led_J1, Led_J2, Reg_1, Reg_2, reset_R1, reset_R2: out std_logic);
end mss;

Architecture arq_mss of mss is 
type estado is (Ta, Tb, Tc, Td, Te, Tf, Tg, Th, Tp, Tq, Tr, Ts, Tt);
signal y : estado;
begin
	process(Reset, clock1)
	begin
		if Reset = '0' then y <= Ta;
		elsif clock1'event and clock1 = '1' then 
			case y is
				when Ta =>
					if start = '1' then y<=Tb;
					else y<=Ta;
					end if;
				when Tb =>
					if start = '0' then y<=Tc;
					else y<=Tb;
					end if;
				when Tc =>
					if ct1 = '1' then y<=Tp;
					else y<=Td;
					end if;
				when Td =>
					if J1 = '1' then y<=Te;
					else y<=Td;
					end if;
				when Te =>
					if J1 = '0' then y<=Tf;
					else y<=Te;
					end if;
				when Tf =>
					y<=Tg;
				when Tg =>
					if Gana_J1 = '1' then y<=Th;
					else y<=Tp;
					end if;
				when Th =>
					y<=Ta;
				when Tp =>
					if J2 = '1' then y<=Tq;
					else y<=Tp;
					end if;
				when Tq =>
					if J2 = '0' then y<=Tr;
					else y<=Tq;
					end if;
				when Tr =>
					y<=Ts;
				when Ts =>
					if Gana_J2 = '1' then y<=Tt;
					else y<=Td;
					end if;
				when Tt =>
					y<=Ta;
			end case;
		end if;
	end process;
	process (y)
	begin
		case y is
			when Ta =>
				Cont<='0';A1<='0'; A2<='0'; Led_J1<='0'; Led_J2<='0'; Reg_1<='0'; Reg_2<='0';
				reset_T<='0'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				if start = '1' then 
				reset_T<='1'; reset_A1<='0'; reset_A2<='0'; reset_R1<='0'; reset_R2<='0'; 
				end if;

			when Tb =>
				reset_T<='1'; reset_A1<='0'; reset_A2<='0'; reset_R1<='0'; reset_R2<='0';
				A1<='0'; A2<='0'; Led_J1<='0'; Led_J2<='0'; Reg_1<='0'; Reg_2<='0';
				
				if start = '0' then Cont<='0';
				else Cont<='1';
				end if;
				
			when Tc =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A1<='0'; A2<='0'; Reg_1<='0'; Reg_2<='0'; Cont<='0';
				
				if ct1 = '0' then Led_J1<='1'; Led_J2<='0';
				else Led_J1<='0'; Led_J2<='1';
				end if;
				
			when Td =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A2<='0'; Led_J1<='1'; Led_J2<='0'; Reg_1<='0'; Reg_2<='0'; Cont<='0';
				
				if J1 = '1' then A1<='1'; 
				else A1<='0'; 
				end if;
				
			when Te =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A2<='0'; Led_J1<='1'; Led_J2<='0'; Reg_1<='0'; Reg_2<='0'; Cont<='0';
				
				if J1 = '0' then A1<='0';
				else A1<='1';
				end if;
				
			when Tf =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A1<='0'; A2<='0'; Led_J1<='0'; Led_J2<='1'; Reg_1<='1'; Reg_2<='0'; Cont<='0';
				
			when Tg =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A1<='0'; A2<='0'; Led_J1<='0'; Led_J2<='1'; Reg_1<='0'; Reg_2<='0'; Cont<='0';
				
			when Th =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A1<='0'; A2<='0'; Led_J1<='0'; Led_J2<='0'; Reg_1<='0'; Reg_2<='0'; Cont<='0';
				
			when Tp =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A1<='0'; Led_J1<='0'; Led_J2<='1'; Reg_1<='0'; Reg_2<='0'; Cont<='0';
				
				if J2 = '1' then A2<='1'; 
				else A2<='0'; 
				end if;
				
			when Tq =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A1<='0'; Led_J1<='0'; Led_J2<='1'; Reg_1<='0'; Reg_2<='0'; Cont<='0';
				
				if J2 = '0' then A2<='0';
				else A2<='1';
				end if;
				
			when Tr =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A1<='0'; A2<='0'; Led_J1<='1'; Led_J2<='0'; Reg_1<='0'; Reg_2<='1'; Cont<='0';
				
			when Ts =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A1<='0'; A2<='0'; Led_J1<='1'; Led_J2<='0'; Reg_1<='0'; Reg_2<='0'; Cont<='0';
				
			when Tt =>
				reset_T<='1'; reset_A1<='1'; reset_A2<='1'; reset_R1<='1'; reset_R2<='1';
				A1<='0'; A2<='0'; Led_J1<='0'; Led_J2<='0'; Reg_1<='0'; Reg_2<='0'; Cont<='0';
				
		end case;
	end process;
end arq_mss;
