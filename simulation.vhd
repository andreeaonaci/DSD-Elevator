--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:04:48 05/10/2022
-- Design Name:   
-- Module Name:   C:/Xilinx/elevator_final_bun/simulation.vhd
-- Project Name:  elevator_final_bun
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: elevator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simulation IS
END simulation;
 
ARCHITECTURE behavior OF simulation IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT elevator
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ok : IN  std_logic;
         usa : IN  std_logic;
         sensor : IN  std_logic;
         floor : IN  std_logic_vector(3 downto 0);
         dir : IN  std_logic;
         buton : IN  std_logic;
         date_out : OUT  std_logic_vector(3 downto 0);
         cathode : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal ok : std_logic := '0';
   signal usa : std_logic := '0';
   signal sensor : std_logic := '0';
   signal floor : std_logic_vector(3 downto 0) := (others => '0');
   signal dir : std_logic := '0';
   signal buton : std_logic := '0';

 	--Outputs
   signal date_out : std_logic_vector(3 downto 0);
   signal cathode : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: elevator PORT MAP (
          clk => clk,
          reset => reset,
          ok => ok,
          usa => usa,
          sensor => sensor,
          floor => floor,
          dir => dir,
          buton => buton,
          date_out => date_out,
          cathode => cathode
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		reset <= '1';
		wait for 100 ns;
		reset <= '0';
      floor <= "0011";
		dir <= '1';
		usa <= '1';
		ok <= '1';
		sensor <= '1';
		wait for 100 ns;
   end process;

END;
