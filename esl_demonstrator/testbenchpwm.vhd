library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity testbench_pwm is
generic (wl : natural := 32);
end testbench_pwm;


architecture tb of testbench_pwm is

component PWM is
generic (wl : natural := 32;
	period : natural := 2500);
 port ( 
	clk   : in std_logic;
	reset  : in std_logic;
	enable : in std_logic;
	
	INA		: out std_logic;	--INA input of the H-Bridge.
	INB		: out std_logic;	--INB input of the H-bridge.
	C		: Out std_logic;	--PWM input of the H-Bridge.
	
	GPIO_0		: in std_logic_vector(wl -1 downto 0)

	);
end component PWM;

signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal enable : std_logic := '1';

signal GPIO_0 : std_logic_vector(wl-1 downto 0) := (others => '0');
signal GPIO : std_logic_vector(wl-1 downto 0) := (others => '0');

signal C : std_logic := '0';
signal INA: std_logic := '0';
signal INB: std_logic := '0';

begin

clk <= not clk after 10 ns;
reset <= '1', '0' after 100 ns; 
GPIO_0 <= GPIO;

PWMmodule : PWM 
		generic map (wl, 2500);
		port map (clk, reset, enable, INA, INB, C, GPIO_0);

process 
begin
  GPIO(wl-1 downto 10) <= (others => '0');
	--Start with clockwise
	GPIO(8) <= '1';
	GPIO(9) <= '0';
	
	for count in 0 to 25 loop
		GPIO(7 downto 0) <= std_logic_vector(to_unsigned(count*10, 8));
		wait for 100000 ns; -- 2 pwm periods
		
		if(count = 8) then
			--Brake
			GPIO(8) <= '0';
			GPIO(9) <= '0';
		end if;
	end loop;
	--Continue with counterclockwise
	GPIO_0(8) <= '0';
	GPIO_0(9) <= '1';
	
	for count in 0 to 25 loop
		GPIO_0(7 downto 0) <= std_logic_vector(to_unsigned(count*10, 8));
		wait for 5000 ns;
		if(count = 12) then
			--Brake
			GPIO(8) <= '1';
			GPIO(9) <= '1';
		end if;
	end loop;
	
end process;


end tb;

