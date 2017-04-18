-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity router is
generic (MOD_LINE: INTEGER := 1);
port (
	clk				: in STD_LOGIC;	
	rst 				: in STD_LOGIC;

	--Initial Value multiple of size output
	initialValue			: in integer;	

	--bias and weight in
	writeWeight			: in std_logic;
	weightIn			: in STD_LOGIC_VECTOR(15 downto 0);
	writeBias			: in std_logic;
	biasIn				: in STD_LOGIC_VECTOR(15 downto 0);

	--data from the FIFO at the end of the PE
	valid				: in STD_LOGIC;
	dataIn				: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	--controller signal
	nextLayer			: in STD_LOGIC;	
	NextOutputPixel			: in STD_LOGIC;
	nextLine			: in STD_LOGIC;
	nextFeature			: in STD_LOGIC;
	end_layer			: in STD_LOGIC;
    nextfeatureout      : in STD_LOGIC;
	enable 				: in STD_LOGIC;
	
	size_dataIn			: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	size_dataOut			: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	size_features			: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	--overflow
	ready_router			: out STD_LOGIC;
	
	-- DATA to the PE
	dataValid			: out STD_LOGIC;
	dataOut				: out STD_LOGIC_VECTOR(15 downto 0);
	weightOut			: out STD_LOGIC_VECTOR(15 downto 0);
	biasOut				: out STD_LOGIC_VECTOR(15 downto 0)
);
end entity;

architecture behavioral of router is 
	
	-- the maximum number of pixel we have it's for the second layer where we have:
	--14*14*6 = 1,176 pixel so 11 bit of DEPTH
	signal address_write: STD_LOGIC_VECTOR(11 downto 0);
	-- two diffrent BRAM for pixel DATA
	signal enable_write_pixel: STD_LOGIC_VECTOR(1 downto 0);
	signal choice_BRAM_write: STD_LOGIC;
	
	signal data_out_bram1: std_logic_vector(16 downto 0);
	signal data_out_bram2: std_logic_vector(16 downto 0);
	
	signal address_read: STD_LOGIC_VECTOR(11 downto 0);
	signal choice_BRAM_read: STD_LOGIC;
	signal enable_read_pixel: STD_LOGIC_VECTOR(1 downto 0);
	signal counter_kernel_row: integer;
	signal counter_kernel_col: integer;
	signal counter_kernel_features: integer;
	signal return_address: STD_LOGIC_VECTOR(11 downto 0);
	signal offset: integer;
	signal dataIn_q: STD_LOGIC_VECTOR(16 DOWNTO 0);	 

	signal address_bias_write: STD_LOGIC_VECTOR(4 downto 0);
	signal address_Weight_write: STD_LOGIC_VECTOR(11 downto 0);
	signal address_Weight_read: STD_LOGIC_VECTOR(11 downto 0);
	signal address_Weight_read_q: STD_LOGIC_VECTOR(11 downto 0);
	signal address_bias_read: STD_LOGIC_VECTOR(4 downto 0);
	signal enable_read_wb: STD_LOGIC;

	signal NextOutputPixel_q: STD_LOGIC;

	signal multiplication_time: integer;
	signal multiplication_time_1: integer;
	signal addition_time: integer;
	begin
-- ----------------------------------------------------------
-- BRAM empty so we have to wait => ready_router fall to 0
	process (choice_BRAM_read, choice_BRAM_write, address_read, address_write)
	begin
		ready_router <= '1';
		if choice_BRAM_read = choice_BRAM_write  then
			if address_write = address_read then 
				ready_router <= '0';
			end if;
		end if;
	end process;
-- --------------------------------------------------------------
-- Address Generation from PE to BRAM 
-- Enable memory
-- 
	process (clk, rst)
	variable calculation: integer;
	begin
		if rst = '1' then 
			address_write <= (others => '1');
			choice_BRAM_write <= '1';
		elsif rising_edge(clk) then 
			if end_layer = '1' then 
				address_write <= (others => '1');
				choice_BRAM_write <= not (choice_BRAM_write);
				enable_write_pixel(1 downto 0) <= "00";
			elsif valid = '1' then
				calculation := to_integer(unsigned(address_write)) + 1;
			 	address_write <= std_logic_vector(to_unsigned(calculation, 12));
			 	choice_BRAM_write <= choice_BRAM_write;
			 	if choice_BRAM_write = '1' then 
			 		enable_write_pixel(1 downto 0) <= "10";
			 	else 
			 		enable_write_pixel(1 downto 0) <= "01";			
			 	end if;
			 else 
			 	enable_write_pixel(1 downto 0) <= "00";
			 	address_write <= address_write;
			 	choice_BRAM_write <= choice_BRAM_write;			
			 end if;
		end if;	 	
	end process;

	process (clk, rst)
	begin
		if rst = '1' then 
			dataIn_q <= (others => '0');
		elsif rising_edge(clk) then
			dataIn_q <= valid & dataIn;
		end if;
	end process;
-- --------------------------------------------------------------

-- --------------------------------------------------------------
-- Address Generation from BRAM to PE (read the BRAM and send to the conv)
-- Enable memory
-- 
	process (clk, rst)
	variable calculation: integer;
	begin
		if rst = '1' then 
			address_read <= std_logic_vector(to_unsigned(initialValue,12));
			choice_BRAM_read <= '0';
			counter_kernel_row <= 0;
			counter_kernel_col <= 0;
			counter_kernel_features <= 0;
			offset <= 0;
		elsif rising_edge(clk) then 
		
		multiplication_time <= (to_integer(unsigned(size_features)) - 1) + to_integer(unsigned(size_dataIn))*(to_integer(unsigned(size_features)) - 1); 
		multiplication_time_1 <= to_integer(unsigned(size_dataIn))*(to_integer(unsigned(size_dataIn)));
		addition_time <= multiplication_time - multiplication_time_1;
		
		--calculation := to_integer(unsigned(address_read)) - (to_integer(unsigned(size_features)) - 1) - to_integer(unsigned(size_dataIn))*(to_integer(unsigned(size_features)) - 1) + to_integer(unsigned(size_dataIn))*(to_integer(unsigned(size_dataIn)));
		
			if nextLayer = '1' then 
				-- for synthetysis do not use multiplication but rather a LUT where we have the different entries
				address_read <= std_logic_vector(to_unsigned(initialValue*to_integer(unsigned(size_dataIn)) - 1, 12));
				choice_BRAM_read <= not (choice_BRAM_read);
				enable_read_pixel(1 downto 0) <= "00";
				offset <= 0;
			elsif enable = '1' then
				-- 1  | 2  | 3
				-- 29 | 30 | 31
				-- 59 | 60 | 61
				-- Three times + 1 
				-- Plus size output - 3
				-- Until all features are done
				-- first_calc => return_address 
				-- line => add size_dataIn
				-- I didn't check for a number of features superior to 1
				-- features => add  size_dataIn*sizeDataIn
				-- for synthetysis do not use multiplication but rather a LUT where we have the different entries
				if nextLine = '1' then
					calculation := to_integer(unsigned(address_read)) + to_integer(unsigned(size_dataIn)) - to_integer(unsigned(size_features)) + 1;
				elsif nextFeature = '1' then
					calculation := to_integer(unsigned(address_read)) - addition_time;
				elsif NextOutputPixel = '1' then 
					calculation := to_integer(unsigned(return_address)) + 1;
					if offset < (to_integer(unsigned(size_dataIn)) - to_integer(unsigned(size_features))) then
						 offset <= offset + 1;
					else 
						offset <= 0;
					end if;
				else 
					calculation := to_integer(unsigned(address_read)) + 1;
				end if;	
				address_read <= std_logic_vector(to_unsigned(calculation, 12));
			 	choice_BRAM_read <= choice_BRAM_read;
			 	if choice_BRAM_read = '1' then 
			 		enable_read_pixel(1 downto 0) <= "10";
			 	else 
			 		enable_read_pixel(1 downto 0) <= "01";			
			 	end if;
			 else 
			 	enable_read_pixel(1 downto 0) <= "00";
			 	address_read <= address_read;
			 	choice_BRAM_read <= choice_BRAM_read;			
			 end if;
		end if;	 	
	end process;
	
	process (clk, rst)
	variable calculation: integer;
	begin
		if rst = '1' then 
			return_address <= std_logic_vector(to_unsigned(initialValue,12));
			NextOutputPixel_q <= '0';
		elsif rising_edge(clk) then
			if nextLayer = '1' then 
				-- for synthetysis do not use multiplication but rather a LUT where we have the different entries
					return_address <= std_logic_vector(to_unsigned(initialValue*to_integer(unsigned(size_dataIn)), 12));
			elsif enable = '1' then
				NextOutputPixel_q <= NextOutputPixel;
				if NextOutputPixel_q = '1' then 
					if (offset) < (to_integer(unsigned(size_dataIn)) - to_integer(unsigned(size_features))) then
						calculation := to_integer(unsigned(address_read)); 
					else 
						calculation := to_integer(unsigned(address_read)) + (MOD_LINE-1)*to_integer(unsigned(size_dataIn)) + to_integer(unsigned(size_features)) - 1;
					end if;	
					return_address <= std_logic_vector(to_unsigned(calculation, 12));
				end if;
			end if;			
		end if;		
	end process;
-- --------------------------------------------------------------

-- --------------------------------------------------------------
-- Address Generation for the weight Read
-- Enable memory for the weight when we read pixel 
-- --------------------------------------------------------------
	process (clk, rst)
	variable calculation: integer;
	begin
		if rst = '1' then 
			address_Weight_read <= (others => '1');
		elsif rising_edge (clk) then
			if nextLayer = '1' then
				address_Weight_read_q <= address_Weight_read;
			elsif nextfeatureout = '1' then
                        calculation := to_integer(unsigned(address_Weight_read_q)) + 1;
                        address_Weight_read <= std_logic_vector(to_unsigned(calculation,12));
			elsif NextOutputPixel = '1'then
				if address_Weight_read = "111111111111" then
					address_Weight_read <= address_Weight_read_q;
				else 
					calculation := to_integer(unsigned(address_Weight_read_q)) + 1;
					address_Weight_read <= std_logic_vector(to_unsigned(calculation,12));
				end if;
			else 
				if enable = '1' then
					calculation := to_integer(unsigned(address_Weight_read));						
					calculation := calculation + 1;
					address_Weight_read <= std_logic_vector(to_unsigned(calculation,12));
				end if;
			end if;
		end if;
	end process;
-- --------------------------------------------------------------
-- Address Generation for the weight write
-- Enable memory for the weight 
-- Write the weight is only one time at the begining
--size: 3*3*1*6 + 3*3*6*16 = 918 so 1024 so 10 bit
	process (clk, rst)
	variable calculation: integer;
	begin
		if rst = '1' then 
			address_Weight_write <= (others => '0');
		elsif rising_edge (clk) then
			if writeWeight = '1' then 
				calculation := to_integer(unsigned(address_Weight_write)) + 1;
				address_Weight_write <= std_logic_vector(to_unsigned(calculation,12));
			end if;
		end if;
	end process;
-- --------------------------------------------------------------
-- --------------------------------------------------------------
-- Address Generation for the bias write
-- Enable memory for the bias 
-- Write the bias is only one time at the begining
-- size: 6 + 16 = 32 =>
	process (clk, rst)
	variable calculation: integer;
	begin
		if rst = '1' then 
			address_bias_write <= (others => '0');
		elsif rising_edge (clk) then
			if writeBias = '1' then 
				calculation := to_integer(unsigned(address_bias_write)) + 1;
				address_bias_write <= std_logic_vector(to_unsigned(calculation,5));
			end if;
		end if;
	end process;
-- --------------------------------------------------------------
-- Address Generation for the bias Read
-- Enable memory for the weight when we read pixel 
-- --------------------------------------------------------------
	process (clk, rst)
	variable calculation: integer;
	begin
		if rst = '1' then 
			address_bias_read <= (others => '1');
		elsif rising_edge (clk) then 
			if nextLayer = '1' then
				calculation :=  to_integer(unsigned(address_bias_read)) + 1;	
				address_bias_read <= std_logic_vector(to_unsigned(calculation,5));	
			end if;
		end if;
	end process;
-- --------------------------------------------------------------
-- --------------------------------------------------------------
	process (choice_BRAM_read, data_out_bram1, data_out_bram2)
	begin
		if choice_BRAM_read = '0' then 
			dataOut <= data_out_bram1(15 downto 0);
			dataValid <= data_out_bram1(16);
		else 
			dataOut <= data_out_bram2(15 downto 0);
			dataValid <= data_out_bram2(16)	;
		end if;		
	end process;
	enable_read_wb <= (enable_read_pixel(1) or enable_read_pixel(1));
-- --------------------------------------------------------------
-- BRAM
	BRAM_1_data: entity work.bram (rtl)
	generic map (WIDTH => 17, DEPTH => 12)
	port map(
	clk				=> clk,
	enable			=> '1',
		
	write_enable		=> enable_write_pixel(0),
	addr_write 		=> address_write,
	data_in 		=> dataIn_q,
	
	read_enable		=> enable_read_pixel(0),
	addr_read		=> address_read,
	data_out		=> data_out_bram1
	);
	
	BRAM_2_data: entity work.bram (rtl)
	generic map (WIDTH => 17, DEPTH => 12)
	port map(
	clk				=> clk,
	enable			=> '1',
		
	write_enable	=> enable_write_pixel(1),
	addr_write 		=> address_write,
	data_in 		=> dataIn_q,
	
	read_enable		=> enable_read_pixel(1),
	addr_read		=> address_read,
	data_out		=> data_out_bram2
	);
	
	BRAM_weight: entity work.bram (rtl)
	generic map (WIDTH => 16, DEPTH => 12)
	port map(
	clk			=> clk,
	enable			=> '1',
		
	write_enable		=> writeWeight,
	addr_write 		=> address_Weight_write,
	data_in 		=> WeightIn,
	
	read_enable		=> enable_read_wb,
	addr_read		=> address_Weight_read,
	data_out		=> weightOut
	);

	BRAM_bias: entity work.bram (rtl)
	generic map (WIDTH => 16, DEPTH => 5)
	port map(
	clk			=> clk,
	enable			=> '1',
		
	write_enable		=> writeBias,
	addr_write 		=> address_bias_write,
	data_in 		=> BiasIn,
	
	read_enable		=> enable_read_wb,
	addr_read		=> address_bias_read,
	data_out		=> BiasOut
	);
end architecture;

