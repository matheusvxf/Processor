library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux is
	port(
		PC, DIN, G, R0, R1, R2, R3, R4, R5, R6:in std_logic_vector(15 downto 0);
		control:in std_logic_vector(10 downto 0);
		Mbus:buffer std_logic_vector (15 downto 0)
	);	
end Mux;

architecture behavior of Mux is
	begin
	process(control, PC, DIN, G, R0, R1, R2, R3, R4, R5, R6)
		begin
		case control is 
			when "00000000001"=> Mbus <= R0;
			when "00000000010"=> Mbus <= R1;
			when "00000000100"=> Mbus <= R2;
			when "00000001000"=> Mbus <= R3;
			when "00000010000"=> Mbus <= R4;
			when "00000100000"=> Mbus <= R5;
			when "00001000000"=> Mbus <= R6;
			when "00010000000"=> Mbus <= PC;
			when "00100000000"=> Mbus <= G;
			when "01000000000"=> Mbus <= DIN;
			when "10000000000"=> Mbus <= PC;
			when others => Mbus <= "0000000000000000";
		end case;
	end process;	
end behavior;