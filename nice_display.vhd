library ieee;
use ieee.std_logic_1164.all;

entity nice_display is
	port (
		floor, semnal, date_scoase: in std_logic_vector (3 downto 0);
		floor0, floor1, semnal0, semnal1, date_scoase0, date_scoase1: out std_logic_vector (3 downto 0)
	);
end entity;

-- 0 cifra unitatilor, 1 cifra zecilor

architecture behavioral of nice_display is
begin
	process (floor, semnal, date_scoase)
	begin
		case floor is
			when "1100" => floor0 <= "0010"; floor1 <= "0001"; -- 12
			when "1011" => floor0 <= "0001"; floor1 <= "0001"; -- 11
			when "1010" => floor0 <= "0000"; floor1 <= "0001"; -- 10
			when others => floor0 <= floor; floor1 <= "0000"; -- < 10
		end case;
		
		case semnal is
			when "1100" => semnal0 <= "0010"; semnal1 <= "0001"; -- 12
			when "1011" => semnal0 <= "0001"; semnal1 <= "0001"; -- 11
			when "1010" => semnal0 <= "0000"; semnal1 <= "0001"; -- 10
			when others => semnal0 <= semnal; semnal1 <= "0000"; -- < 10
		end case;

		case date_scoase is
			when "1100" => date_scoase0 <= "0010"; date_scoase1 <= "0001"; -- 12
			when "1011" => date_scoase0 <= "0001"; date_scoase1 <= "0001"; -- 11
			when "1010" => date_scoase0 <= "0000"; date_scoase1 <= "0001"; -- 10
			when others => date_scoase0 <= date_scoase; date_scoase1 <= "0000"; -- < 10
		end case;
	end process;
end behavioral;
