library ieee;
use ieee.std_logic_1164.all;

entity NIOS_Interface is
generic (
		DATA_WIDTH : natural := 32;	-- word size of each input and output register
		pwm_frequency : natural := 20000
	);
	port (
	-- CLOCK
	clk	: in std_logic;
	reset	: in std_logic;
	enable  : in std_logic;
	INA	: out std_logic;	--INA input of the H-Bridge.
	INB	: out std_logic;	--INB input of the H-bridge.
	C	: out std_logic;	--PWM input of the H-Bridge.
	-- signals to connect to an Avalon-MM slave interface
	slave_address		: in  std_logic_vector(7 downto 0);
	slave_read		: in  std_logic;
	slave_write		: in  std_logic;
	slave_readdata		: out std_logic_vector(DATA_WIDTH-1 downto 0);
	slave_writedata		: in  std_logic_vector(DATA_WIDTH-1 downto 0);
	slave_byteenable	: in  std_logic_vector((DATA_WIDTH/8)-1 downto 0)
	);
end NIOS_Interface;


architecture behavior of NIOS_Interface is
	signal mem : std_logic_vector(DATA_WIDTH-1 downto 0);
begin
	encoder : entity work.Motor_Controller
		generic map (DATA_WIDTH, 50000000/pwm_frequency) --hard wired for 50MHz clock
		port map (
			clk => clk,
			reset => reset,
			enable => enable,
			INA => INA,
			INB => INB,
			C => C,
			GPIO_0 => mem
			-- Map your encoder here to the I/O
		);

	-- Communication with the bus
	p_avalon : process(clk, reset)
	begin
		if (reset = '1') then
			mem <= (others => '0');
		elsif (rising_edge(clk)) then
			--if (slave_read = '1') then
				--slave_readdata <= mem;
			--end if;
			if (slave_write = '1') then
				mem <= slave_writedata;
				
			end if;
		end if;
	end process;
	
	-- Only select the amount bits that the logic can handle


end architecture;
