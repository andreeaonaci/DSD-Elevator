library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memram is
	port ( 
		clk : in STD_LOGIC;
		adresa : in STD_LOGIC_VECTOR (3 downto 0);
		we : in STD_LOGIC;
		date_in : in STD_LOGIC_VECTOR (3 downto 0);
		date_out : out STD_LOGIC_VECTOR (3 downto 0)
	);
end memram;

	architecture Behavioral of memram is

	type memorie is array (0 to 15) of std_logic_vector(3 downto 0);
	signal stocare:memorie;

begin

	process(clk)
	begin
		if (clk = '1' and clk'event) then
			if we = '1' then 
				stocare(conv_integer(adresa)) <= date_in; --la adresa scriu datele de pe intrare
			else 
				date_out <= stocare(conv_integer(adresa));
			end if;
		end if;
	end process;
end behavioral;
