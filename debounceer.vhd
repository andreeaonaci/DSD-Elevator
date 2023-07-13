library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity debouncer is
    port ( 
		clk: in std_logic;
		buton: in std_logic;
		enable_iesire: out std_logic
	 );
end debouncer;

architecture behavioral of debouncer is
	signal contor: std_logic_vector(15 downto 0) := x"ffff";
	signal q1,q2,q3: std_logic;
begin
	process (clk)
	begin
		if rising_edge(clk) then 
			contor <= contor - 1;
		end if;
	end process;

	process (clk)
	begin
		if rising_edge(clk) then 
			if contor(15 downto 0) = x"0000" then 
				q1 <= buton;
			end if;
		end if;
	end process;

	process(clk)
	begin
		if rising_edge(clk) then 
			q2 <= q1;
			q3 <= q2;
		end if;
	end process;

	enable_iesire <= q2 and (not(q3));
end behavioral;
