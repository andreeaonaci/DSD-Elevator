library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registru is
	port (
		clk, reset, usa, sensor, dir: in std_logic;
		etajdemers: in std_logic_vector (3 downto 0);
		undeeram: in std_logic_vector (3 downto 0);
		undeajung: out std_logic_vector (3 downto 0)
	);
end registru;

architecture behavioral of registru is
	signal iesire: std_logic_vector (3 downto 0);
begin
	process (clk, reset, usa, sensor, iesire, dir)
	begin
		if reset = '1' then
			iesire <= "0000";
		elsif clk = '1' and clk'event then
			if usa = '0' or sensor = '0' then
				iesire <= undeeram;
			else
				case dir is
					when '0' => if iesire > etajdemers then iesire <= iesire - 1; end if;
					when '1' => if iesire < etajdemers then iesire <= iesire + 1; end if;
					when others => null;
				end case;
			end if;
	   end if;
		
		undeajung <= iesire;
	end process;
end architecture;
