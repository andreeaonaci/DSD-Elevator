library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity counter is
	port (
		clk, reset, enable: in std_logic;
		etaj_curent: out std_logic_vector (3 downto 0)
	);
end counter;

architecture behavioral of counter is
	signal etajj: std_logic_vector (3 downto 0);
begin
	process (clk, reset, enable, etajj)
	begin 
		if reset = '1' then
			etajj <= "0000";
		elsif clk = '1' and clk'event and enable = '1' then 
			etajj <= etajj + 1;
		end if;
	etaj_curent <= etajj;
	end process;
end behavioral;
		
		
			