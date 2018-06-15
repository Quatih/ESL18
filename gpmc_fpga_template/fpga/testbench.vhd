
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity testbench is

end testbench;


architecture tb of testbench is

component QuadratureDecoder is
 generic (wl : natural := 32; 
	  debounce_cycles : natural := 50);
 port ( 
	clk   : in std_logic;
	reset  : in std_logic;
	enable : in std_logic;
	GPIO_0		: inout std_logic_vector(wl -1 downto 0);
	ENC_A : in std_logic;
	ENC_B : in std_logic

	);
end component QuadratureDecoder;

signal clk : std_logic := '0';
signal enable : std_logic := '1';
signal reset : std_logic;
signal GPIO_0 : std_logic_vector(31 downto 0);
signal GPIO_0_in : std_logic_vector(1 downto 0) := (others => '0');
signal ENC_A, ENC_B : std_logic := '0';
begin
  
reset <= '1', '0' after 100 ns;
clk <= not clk after 10 ns;


enc : QuadratureDecoder 
	port map(clk,reset, enable, GPIO_0, ENC_A, ENC_B);

ENC_A <= GPIO_0_IN(0);
ENC_B <= GPIO_0_IN(1);

process
begin
	wait until reset = '0';
	GPIO_0_IN <= "00";
	wait until rising_edge(clk);
	GPIO_0_IN <= "10";
	for i in 0 to 55 loop
		wait until rising_edge(clk);
	end loop;
	GPIO_0_IN <= "00";
	for i in 0 to 5 loop
		wait until rising_edge(clk);
	end loop;
	for i in 0 to 20 loop
		GPIO_0_IN <= "01";
		wait until rising_edge(clk);
		GPIO_0_IN <= "00";
		wait until rising_edge(clk);
	end loop;
	GPIO_0_IN <= "01";
	for i in 0 to 55 loop
		wait until rising_edge(clk);
	end loop;
	GPIO_0_IN <= "00";
	for i in 0 to 5 loop
		wait until rising_edge(clk);
	end loop;
	for i in 0 to 20 loop
		GPIO_0_IN <= "01";
		wait until rising_edge(clk);
		GPIO_0_IN <= "00";
		wait until rising_edge(clk);
	end loop;
	GPIO_0_IN <= "10";
	for i in 0 to 55 loop
		wait until rising_edge(clk);
	end loop;
	assert false report "finished" severity failure; 
end process;

end tb;

