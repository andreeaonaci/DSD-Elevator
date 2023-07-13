library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ssd is
    port ( 
		digit0: in std_logic_vector (3 downto 0);
		digit1: in std_logic_vector (3 downto 0);
		digit2: in std_logic_vector (3 downto 0);
		digit3: in std_logic_vector (3 downto 0);
		digit4: in std_logic_vector (3 downto 0);
		digit5: in std_logic_vector (3 downto 0);
		clk: in std_logic;
		anod: out std_logic_vector (5 downto 0);
		catod: out std_logic_vector (6 downto 0)
	 );
end ssd;

architecture behavioral of ssd is
	signal contor: std_logic_vector (15 downto 0) := x"0000";
	signal y_temp: std_logic_vector (3 downto 0) := x"0";  ---"0000"  iesirea de la mux cu digit
begin
	process (clk)
	begin
		if clk'event and clk = '1' then 
			contor <= contor+1;
		end if;
	end process;

--selectie anod 
	process (contor)
	begin
		case contor (15 downto 13) is   ---2 biiti 
			when "000" => anod <= "111110"; --activeaza primul anod
			when "001" => anod <= "111101";
			when "010" => anod <= "111011";
			when "011" => anod <= "110111";
			when "100" => anod <= "101111";
			when others => anod <= "011111";
		end case;
	end process;

	process (contor, digit0, digit1, digit2, digit3, digit4, digit5)
	begin
		case contor (15 downto 13) is 
			when "000" => y_temp <= digit0;
			when "001" => y_temp <= digit1;
			when "010" => y_temp <= digit2;
			when "011" => y_temp <= digit3;
			when "100" => y_temp <= digit4;
			when "101" => y_temp <= digit5;
			when others => null;
		end case;
	end process;


	process (y_temp)
	begin
		case y_temp is
			when "0000" => catod <= "0000001";
			when "0001" => catod <= "1001111";
			when "0010" => catod <= "0010010";
			when "0011" => catod <= "0000110";

			when "0100" => catod <= "1001100";
			when "0101" => catod <= "0100100";
			when "0110" => catod <= "0100000";
			when "0111" => catod <= "0001111";

			when "1000" => catod <= "0000000";
			when "1001" => catod <= "0000100";
			when "1010" => catod <= "0001000";
			when "1011" => catod <= "1100000";

			when "1100" => catod <= "0110001";
			when "1101" => catod <= "1000010";
			when "1110" => catod <= "0110000";
			when others => catod <= "0111000";

		end case;
	end process;
end behavioral;
