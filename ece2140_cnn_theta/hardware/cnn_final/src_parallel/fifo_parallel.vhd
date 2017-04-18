library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fifo_parallel is 
port (
	clk:				 in STD_LOGIC;
	enable:				 in STD_LOGIC;
	rst:				 in STD_LOGIC;
	
	valid_in:			 in STD_LOGIC;
	data_in:			 in STD_LOGIC_VECTOR(15 downto 0);
	
	read:				 in STD_LOGIC;
	data_out:			 out STD_LOGIC_VECTOR(15 downto 0);
	valid_out:			 out STD_LOGIC);
end entity;
	
architecture behavior of fifo_parallel is 
	signal address_write: STD_LOGIC_VECTOR(8 downto 0);
	signal address_read: STD_LOGIC_VECTOR(8 downto 0);
	signal empty: STD_LOGIC;
begin
	process (clk)
	begin
		if rising_edge(clk) then
			valid_out <= not(empty) and read;
		end if;
	end process;		
	
	add_write:process(clk, rst)
	variable calculation: integer;
	begin
		if rst = '1' then
			address_write <= (others => '0');
		elsif rising_edge(clk) then
			if valid_in = '1' then
				calculation := to_integer(unsigned(address_write)) + 1;
				address_write <= std_logic_vector(to_unsigned(calculation, 9));
			end if;	
		end if;		
	end process;
	
	add_read:process(clk, rst)
	variable calculation: integer;
	begin
		if rst = '1' then
			address_read <= (others => '0');
		elsif rising_edge(clk) then
			if read = '1' and empty = '0' then
				calculation := to_integer(unsigned(address_read)) + 1;
				address_read <= std_logic_vector(to_unsigned(calculation, 9));
			end if;	
		end if;		
	end process;	
	
	empty_proc: process(address_write, address_read)
	begin
		if address_read = address_write then
			empty <= '1';
		else 
			empty <= '0';
		end if;		
	end process;
	
	MEMORY: entity work.bram
	generic map(WIDTH => 16, DEPTH => 9)
	port map(
		clk => clk,
		enable => enable,
		
		write_enable => valid_in,
		addr_write => address_write,
		data_in => data_in,
		
		read_enable => read,
		addr_read => address_read,
		data_out => data_out);
	
end architecture;	