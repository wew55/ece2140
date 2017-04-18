-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;

use work.cnn_pkg.all;

use work.txt_util.all;

entity test_top is
end entity;

architecture behavioral of test_top is 
	signal clk: STD_LOGIC := '0';	
	signal rst: STD_LOGIC;
	signal cpu_task: STD_LOGIC;
	signal kernel_Size: STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal size_Output: STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal features_In: STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal features_Out: STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal size_Input: STD_LOGIC_VECTOR(15 DOWNTO 0);

	signal writeWeight: std_logic;
	signal weightIn: STD_LOGIC_VECTOR(15 downto 0);
	signal writeBias: std_logic;
	signal biasIn: STD_LOGIC_VECTOR(15 downto 0);

	file out_conv: text open write_mode is "/home/wen/Documents/CNN_SoC/output_file/out_conv.txt";
	file out_pool: text open write_mode is "/home/wen/Documents/CNN_SoC/output_file/out_pool.txt";	

	--FIXME
	--data from the FIFO at the end of the PE
	signal valid: STD_LOGIC;
	signal dataIn: STD_LOGIC_VECTOR(15 DOWNTO 0);

	signal data_out_convolution: dataflow_parallel;
	signal valid_out_convolution: control_parralel;

	signal data_out_pooling: STD_LOGIC_VECTOR (15 downto 0);
	signal valid_out_pooling: STD_LOGIC;
	signal mode_sel: STD_logic := '0';



	begin
	

	CNN: entity work.cnn_top(behavioral)
	port map(
	clk				=> clk,	
	rst 				=> rst, 
	cpuTask				=> cpu_task,
	kernelSize			=> kernel_Size,
	sizeOutput			=> size_Output,
	featuresIn			=> features_In,
	featuresOut			=> features_Out,
	sizeInput 			=> size_Input,
	writeWeight			=> writeWeight,
	weightIn			=> weightIn,
	writeBias			=> writeBias,
	biasIn				=> biasIn,
	validIn				=> valid,
	dataIn				=> dataIn,
	--data_out_convolution_debug	=> data_out_convolution,
	--valid_out_convolution_debug	=> valid_out_convolution,
	data_out_f		=> data_out_pooling,
	valid_out		=> valid_out_pooling,
	mode_sel => mode_sel
	);

	
	-- Clock generation: Repeats forever
	clock: process
		begin
   		 -- Toggle clock signal
    		clk <= not(clk);
   		 -- Wait for half of the clock period
    		wait for 5 ns;
	end process;
	
	-- Reset Process
	process
		begin
    		rst <= '0';
    		-- Wait 1 clock cycle
    		wait for 10 ns;
   		-- Reset design for 5 clock cycles
    		rst <= '1';
    		wait for 50 ns;
    		rst <= '0';
   	 	-- Wait forever (so reset doesn't occur again)
    		wait;
	end process;
	

	
--	write_convo: process (clk)
--
	--	variable dout: std_logic_vector(15 downto 0); 		
	--	variable buff: line;
	--	variable size: integer := 0;

	--	begin

		--if (size < 28*28) then
			--if rising_edge(clk) then 
				--if valid_out_convolution(0) = '1' then
					--size := size + 1;
					--dout := data_out_convolution(0);
					--write(buff, hstr(dout));
					--writeline(out_conv, buff);
			--	end if;
		--		if valid_out_convolution(1) = '1' then
			--		size := size + 1;
				--	dout := data_out_convolution(1);
			--		write(buff, hstr(dout));
		--			writeline(out_conv, buff);
	--			end if;
	--		end if;
	--	end if;
--	end process;

	write_pool: process (clk)

		variable dout: std_logic_vector(15 downto 0); 		
		variable buff: line;
		variable size: integer := 0;

		begin
			if size < 5*5*10 then
				if rising_edge(clk) then
					if valid_out_pooling = '1' then
						size := size + 1;
						dout := data_out_pooling;
						write(buff, hstr(dout));
						writeline(out_pool, buff);
					end if;
				end if;
			else
			 assert(false) severity failure;				
			end if;
		end process;




	test: process

		FILE input_file: text;		
		variable rdata: line;
		variable word: std_logic_vector(15 downto 0); 

		begin
		cpu_Task <= '0';
	--Simple input just for first testing 
		--wait for 50 ns;
		--for I in 0 to 5 loop
		--	for J in 0 to 2 loop
		--		for K in 0 to 2 loop
		--			wait for 10ns;
		--			writeWeight <= '1';
		--			weightIn <= std_logic_vector(to_unsigned(I,4)) & std_logic_vector(to_unsigned(J,4)) & "0000" & std_logic_vector(to_unsigned(K,4));
		--		end loop;
		--	end loop;
		--end loop;
		--writeWeight <= '0';
		--biasIn <= (others => '1');
		--writeBias <= '1';
		--for J in 0 to 31 loop
		--	for I in 0 to 31 loop
		--		wait for 10 ns;
		--		valid <= '1';
		--		dataIn <= std_logic_vector(to_unsigned(J, 8)) & std_logic_vector(to_unsigned(I, 8));
		--	end loop;
		--end loop;
		--wait for 10 ns;
	--ONLY THE FIRST LAYER 
	-- WE HAVE TO READ THIS INFORMATION IN A FIFO FILL BY THE CPU
		--cpu_task <= '1';
	 	--kernel_Size <= std_logic_vector(to_unsigned(3, 16));
		--size_Output <= std_logic_vector(to_unsigned(14, 16));
		--features_In <= std_logic_vector(to_unsigned(1, 16));
		--features_Out <= std_logic_vector(to_unsigned(1, 16));
		--size_Input <= std_logic_vector(to_unsigned(32, 16));
		--wait;
	--In order to simulate with input file you have to comment everything before 
		wait for 50 ns;
		cpu_Task <= '0';
	    features_In <= std_logic_vector(to_unsigned(6, 16));
         kernel_Size <= std_logic_vector(to_unsigned(5, 16));
        size_Output <= std_logic_vector(to_unsigned(5, 16));
        features_Out <= std_logic_vector(to_unsigned(16, 16));
        size_Input <= std_logic_vector(to_unsigned(14, 16));
		wait for 10 ns;
		file_open(input_file, "/home/wen/Documents/CNN_SoC/input_file/first_convolution_in.txt", READ_MODE);
		while not endfile(input_file) loop 
			wait for 10 ns;
			readline(input_file, rdata);
			hread(rdata, word);
			valid <= '1';
			dataIn <= word;
		end loop;
		wait for 10 ns;
		valid <= '0';
		file_close(input_file);
		wait for 10 ns;
		file_open(input_file, "/home/wen/Documents/CNN_SoC/input_file/first_convolution_weight.txt", READ_MODE);
		while not endfile(input_file) loop 
			wait for 10 ns;
			readline(input_file, rdata);
			hread(rdata, word);
			writeWeight <= '1';
			weightIn <= word;
		end loop;
		wait for 10 ns;
		writeWeight <= '0';
		file_close(input_file);
		wait for 10 ns;
		file_open(input_file, "/home/wen/Documents/CNN_SoC/input_file/first_convolution_bias.txt", READ_MODE);
		while not endfile(input_file) loop 
			wait for 10 ns;
			readline(input_file, rdata);
			hread(rdata, word);
			writeBias <= '1';
			biasIn <= word;
		end loop;
		wait for 10 ns;
		writeBias <= '0';
		file_close(input_file);
		wait for 10 ns;
		cpu_task <= '1';
		wait;
	end process;

		
end architecture;
