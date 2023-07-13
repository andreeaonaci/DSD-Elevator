library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity divizor is
    port ( 
		clk: in std_logic;
      reset: in std_logic;
      clk_divizat: out std_logic
	 );
end divizor;

architecture behavioral of divizor is

	signal counter:integer:=0;
	signal semnal_divizat:std_logic := '0'; --noul clock
	signal numarator_minut:integer := 0; ----numar pt numaratorul 1 minut

begin

	process (clk, reset)
	begin
		if reset = '1' then 
			counter <= 0;
		elsif clk='1' and clk'event then 
			if counter = 100000000 then
				counter <= 0;
				semnal_divizat <= not(semnal_divizat);
			else 
				counter <= counter + 1;
			end if;
		end if;
	end process;

	clk_divizat <= semnal_divizat; -- asta se vede pe placa 

	process (semnal_divizat, reset)
	begin
		if reset = '1' then 
			numarator_minut <= 0;
		elsif semnal_divizat = '1' and semnal_divizat'event then ----rising_edge(semnal_divizat)
			if numarator_minut = 60 then
				numarator_minut <= 0;
			else 
				numarator_minut <= numarator_minut + 1;
			end if;
		end if;
	end process;
---- aici , nu se vede pe placa..asta e doar ca exemplu cum sa folositi clockul divizat
end behavioral;
