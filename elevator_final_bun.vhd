library ieee;
use ieee.std_logic_1164.all;

entity elevator is
	port (
		clk, reset, ok, usa, sensor: in std_logic;
		floor: in std_logic_vector (3 downto 0);
		dir: in std_logic;
		-- ud: in std_logic_vector (1 downto 0);
		buton: in std_logic;
		date_out: out std_logic_vector (5 downto 0);
		cathode: out std_logic_vector (6 downto 0)
		--anode: out std_logic_vector (5 downto 0)
	);
end elevator;

architecture behavioral of elevator is
	signal iesire_db: std_logic;
	signal clk_div: std_logic;
	signal date_scoase: std_logic_vector (3 downto 0);
	signal datee: std_logic_vector (3 downto 0);
	signal semnal: std_logic_vector (3 downto 0);
	
	signal floor0: std_logic_vector (3 downto 0);
	signal floor1: std_logic_vector (3 downto 0);
	signal date_scoase0: std_logic_vector (3 downto 0);
	signal date_scoase1: std_logic_vector (3 downto 0);
	signal semnal0: std_logic_vector (3 downto 0);
	signal semnal1: std_logic_vector (3 downto 0);

component memram is
    Port ( adresa : in  std_logic_vector (3 downto 0);
           clk : in  std_logic;
           we : in  std_logic;
           date_in : in  std_logic_vector (3 downto 0);
           date_out : out  std_logic_vector (3 downto 0));
end component;

component debouncer is
    Port ( clk : in  std_logic;
           buton : in  std_logic;
           enable_iesire : out  std_logic);
end component;

component divizor is
    Port ( clk : in  std_logic;
           reset : in  std_logic;
           clk_divizat : out  std_logic);
end component;

component counter is
	port (
		clk, reset, enable: in std_logic;
		etaj_curent: out std_logic_vector (3 downto 0)
	);
end component;

component ssd is
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
end component;

component registru is
	port (
		clk, reset, usa, sensor, dir: in std_logic;
		etajdemers: in std_logic_vector (3 downto 0);
		undeeram: in std_logic_vector (3 downto 0);
		undeajung: out std_logic_vector (3 downto 0)
	);
end component;

component nice_display is
	port (
		floor, semnal, date_scoase: in std_logic_vector (3 downto 0);
		floor0, floor1, semnal0, semnal1, date_scoase0, date_scoase1: out std_logic_vector (3 downto 0)
	);
end component;

begin
	step1: memram port map (floor, clk, ok, floor, datee);
	step2: debouncer port map (clk, buton, iesire_db);
	step3: counter port map (clk, reset, iesire_db, date_scoase); 
	step4: registru port map (clk_div, reset, usa, sensor, dir, datee, date_scoase, semnal);
	step5: divizor port map (clk, reset, clk_div);
	step6: nice_display port map (floor, semnal, date_scoase, floor0, floor1, semnal0, semnal1, date_scoase0, date_scoase1);
	step7: ssd port map (floor0, floor1, semnal0, semnal1, date_scoase0, date_scoase1, clk, date_out, cathode);
end behavioral;
