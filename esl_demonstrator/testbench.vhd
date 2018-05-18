
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity testbench is

end testbench;


architecture tb of testbench is

component QuadratureDecoder is
 generic (wl : natural := 32);
 port ( 
	clk   : in std_logic;
	reset  : in std_logic;
	enable : in std_logic;
	GPIO_0		: inout std_logic_vector(wl -1 downto 0);
	GPIO_0_IN	: in    std_logic_vector(1 downto 0)

	);
end component QuadratureDecoder;

signal clk : std_logic := '0';
signal enable : std_logic := '1';
signal reset : std_logic;
signal GPIO_0 : std_logic_vector(31 downto 0);
signal GPIO_0_in : std_logic_vector(1 downto 0) := (others => '0');
begin
  
reset <= '1', '0' after 100 ns;
clk <= not clk after 10 ns;

enc : QuadratureDecoder 
	port map(clk,reset, enable, GPIO_0, GPIO_0_in);


process
begin
	
	for count in 0 to 15 loop
		GPIO_0_in(1) <= '1';
		wait for 25 ns;
		GPIO_0_in(0) <= '1';
		wait for 25 ns;
		GPIO_0_in(1) <= '0';
		wait for 25 ns;
		GPIO_0_in(0) <= '0';
		wait for 25 ns;
	end loop;

	for count in 0 to 15 loop
		GPIO_0_in(0) <= '1';
		wait for 25 ns;
		GPIO_0_in(1) <= '1';
		wait for 25 ns;
		GPIO_0_in(0) <= '0';
		wait for 25 ns;
		GPIO_0_in(1) <= '0';
		wait for 25 ns;
	end loop;
end process;

end tb;

