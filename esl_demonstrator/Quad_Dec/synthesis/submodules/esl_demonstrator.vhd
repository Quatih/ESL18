library ieee;
use ieee.std_logic_1164.all;

entity esl_demonstrator is
generic (
		DATA_WIDTH : natural := 32	-- word size of each input and output register
	);
	port (
	-- CLOCK
	clk	: in std_logic;
	reset		: in std_logic;

	-- signals to connect to an Avalon-MM slave interface
	slave_address		: in  std_logic_vector(7 downto 0);
	slave_read		: in  std_logic;
	slave_write		: in  std_logic;
	slave_readdata		: out std_logic_vector(DATA_WIDTH-1 downto 0);
	slave_writedata		: in  std_logic_vector(DATA_WIDTH-1 downto 0);
	slave_byteenable	: in  std_logic_vector((DATA_WIDTH/8)-1 downto 0);

	inputs			: in std_logic_vector(1 downto 0)
	);
end esl_demonstrator;


architecture behavior of esl_demonstrator is
	signal enable			: std_logic := '1';
	signal mem        	: std_logic_vector(31 downto 0);
begin
	encoder : entity work.QuadratureDecoder
		port map (
			clk => clk,
			reset => reset,
			enable => enable,
			GPIO_0 => mem,
			GPIO_0_IN => inputs
			-- Map your encoder here to the I/O
		);
		
	--pwm : entity work.PulseWidthModulator
	--	port map (
			-- Map your pulse width modulator here to the I/O
	--	);


	-- Communication with the bus
	p_avalon : process(clk, reset)
	begin
		--if (reset = '1') then
			--mem <= (others => '0');
		if (rising_edge(clk)) then
			if (slave_read = '1') then
				slave_readdata <= mem;
			end if;
			
			if (slave_write = '1') then
				--mem <= slave_writedata;
				
			end if;
		end if;
	end process;
	
	-- Only select the amount bits that the logic can handle


end architecture;
