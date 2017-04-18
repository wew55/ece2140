	
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.cnn_pkg.all;

entity cnn_top is
generic (PARALELISM: integer := PARALELISM; Z_PARALELISM: integer := Z_PARALELISM);
port (
	clk			: in STD_LOGIC;	
	rst 			: in STD_LOGIC;
	
	-- FROM CPU
	cpuTask			: in STD_LOGIC;
	kernelSize		: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	sizeInput		: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	sizeOutput		: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	featuresIn		: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	featuresOut		: in STD_LOGIC_VECTOR(15 DOWNTO 0);

	--bias and weight in
	writeWeight			: in std_logic;
	weightIn			: in STD_LOGIC_VECTOR(15 downto 0);
	writeBias			: in std_logic;
	biasIn				: in STD_LOGIC_VECTOR(15 downto 0);

	--FIXME
	--data from the FIFO at the end of the PE
	validIn				: in STD_LOGIC;
	dataIn				: in STD_LOGIC_VECTOR(15 DOWNTO 0);

	--data_out_convolution_debug	: out dataflow_parallel;
	--valid_out_convolution_debug	: out control_parralel;
	
	data_out_f: out STD_LOGIC_VECTOR(15 downto 0);
	valid_out: out STD_LOGIC;
	mode_sel: in STD_logic
	
);
end entity;


architecture behavioral of cnn_top is

	signal counter_read_fifo: integer;

	signal data_out_pooling : data_out_parallel;
    signal valid_out_pooling:  STD_LOGIC_VECTOR(Z_PARALELISM - 1 downto 0);

	signal data_Out: dataflow_parallel;
	
	signal weight_Out: dataflow_parallel;
	signal bias_Out: dataflow_parallel;
	signal data_valid: control_parralel;
	signal ready_router: control_parralel;
	
	signal readyRouter: STD_LOGIC;
	signal enable: STD_LOGIC;
	signal next_line: STD_LOGIC;
	signal next_feature: STD_LOGIC;
	signal end_layer: STD_LOGIC;
	signal next_Output_Pixel: STD_LOGIC;
	signal next_Layer: STD_LOGIC;
	
	signal valid_out_convolution: control_parralel;
	signal data_out_convolution: dataflow_parallel;
	
	signal writeWeight_array: STD_LOGIC_VECTOR(Z_PARALELISM - 1  downto 0);
	signal writeBias_array: STD_LOGIC_VECTOR(Z_PARALELISM - 1  downto 0);
	
	signal counter_weight: integer;
	
	signal data_out_fifo: data_out_parallel;
	
	signal valid_out_fifo: STD_LOGIC_VECTOR(Z_PARALELISM - 1  downto 0);
	
	signal read_fifo: STD_LOGIC_VECTOR(Z_PARALELISM - 1  downto 0);
	--signal read_fifo_q: STD_LOGIC_VECTOR(Z_PARALELISM - 1  downto 0);
	
	--signal multiplication : integer;
	signal multiplication : STD_LOGIC_VECTOR(15 downto 0);
	
	--signal counter_bias: integer;
	
	constant all_zero:STD_LOGIC_VECTOR(Z_PARALELISM - 1  downto 0) := (others => '0');
	
	signal weightIn_q:STD_LOGIC_VECTOR(15 downto 0);
	signal biasIn_q:STD_LOGIC_VECTOR(15 downto 0);
	
	--signal multiplication_weight1: integer;
	--signal multiplication_weight0: integer;
	signal multiplication_weight1: STD_LOGIC_VECTOR(15 downto 0);
    signal multiplication_weight0: STD_LOGIC_VECTOR(15 downto 0);
	signal nextfeatureout : STD_LOGIC;
	signal relu_control: control_parralel;

	COMPONENT mult_gen_1 PORT( A : IN std_logic_vector(15 downto 0);
                               B : In std_logic_vector(15 downto 0);
                               P : OUT std_logic_vector(15 downto 0);
                               CLK : IN std_logic
                               ); 
    END COMPONENT;

	
	
	
	begin
	
	
	m2 : mult_gen_1 port map(A => sizeOutput,
                             B => sizeOutput,
                             P => multiplication,
                             CLK => clk
                            );
	m3 : mult_gen_1 port map(A => kernelSize,
                              B => kernelSize,
                              P => multiplication_weight0,
                              CLK => clk
                              );
	m4 : mult_gen_1 port map(A => featuresIn,
                              B => multiplication_weight0,
                             P => multiplication_weight1,
                             CLK => clk
                             );   
	process(valid_out_fifo, data_out_fifo)
	begin
	   --case valid_out_fifo:
	     --  when std_logic_vector(to_unsigned（1, Z_PARALELISM) => 
	
	
	
	
	
		for I in 0 to Z_PARALELISM - 1 loop
			if valid_out_fifo(I) = '1' then
				data_out_f <= data_out_fifo(I);
				valid_out <= valid_out_fifo(I); 
			    exit;
			else
				data_out_f <= data_out_fifo(Z_PARALELISM - 1);
				valid_out <= valid_out_fifo(0);
			end if;
		end loop;		
	end process;
	
	
	--data_out_convolution_debug <= data_out_convolution;
	--valid_out_convolution_debug <= valid_out_convolution;

	process(clk, rst)
	begin
		if rst = '1' then
			counter_read_fifo <= 1;
			--multiplication <= 0;--to_integer(unsigned(sizeOutput))*to_integer(unsigned(sizeOutput));

			read_fifo <= std_logic_vector(to_unsigned(1, Z_PARALELISM));
		elsif rising_edge(clk) then
			--read_fifo_q <= read_fifo;
			--multiplication <= to_integer(unsigned(sizeOutput))*to_integer(unsigned(sizeOutput));
			for I in 0 	to Z_PARALELISM - 1 loop
				if valid_out_fifo(I) = '1' then
					--if counter_read_fifo < multiplication then
					if counter_read_fifo < to_integer(unsigned(multiplication)) then

						counter_read_fifo <= counter_read_fifo + 1;
					else
						counter_read_fifo <= 1;
						read_fifo <= read_fifo(Z_PARALELISM - 2  downto 0) & read_fifo(Z_PARALELISM - 1);
					end if;		
				end if;
			end loop;
		end if;			
	end process;
	
    process(mode_sel)
    begin
        if mode_sel = '1' then
            relu_control <= (others => (others => '1'));
        else
            relu_control <= (others => (others => '0'));
        end if;
    end process;

	process(ready_router)
	begin
		readyRouter <= '1';
		for J in 0 to Z_PARALELISM - 1 loop
			for I in 0 to PARALELISM - 1 loop
				if ready_router(J)(I) = '0' then 
					readyRouter <= '0';
				end if;
			end loop;	
		end loop;
	end process;




	controller: entity work.controller (behavior)
	Port map (
	clk					=> clk,	
	rst 				=> rst,

	readyFifo			=> '1',
	valid				=> data_valid(0)(0),
	readyRouter			=> readyRouter,
	
	numberValidPE 		=> std_logic_vector(to_unsigned(2,16)),

	cpuTask	 			=> cpuTask,
	kernelSize			=> kernelSize,
	sizeOutput			=> sizeOutput,
	featuresIn			=> featuresIn,
	featuresOut			=> featuresOut,
	nextfeatureout      => nextfeatureout,
	
	--stop the pipe
	enable				=> enable,
	--new layer
	nextLayer			=> next_Layer, 
	--new calculation for one output pixel 
	nextOutputPixel 		=> next_Output_Pixel,
	--new line
	nextLine			=> next_line,
	--new features
	nextFeature			=> next_feature,
	--end layer
	endLayer			=> end_layer
	); 
	
	process(clk, rst)
	begin
		if rst = '1' then
			counter_weight <= 0;
			writeWeight_array <= (others => '0');
		    --multiplication_weight0 <= 0;--to_integer(unsigned(kernelSize))*to_integer(unsigned(kernelSize));
            --multiplication_weight1 <= 0;--to_integer(unsigned(featuresIn))*multiplication_weight0;
		elsif rising_edge(clk) then
		  --multiplication_weight0 <= to_integer(unsigned(kernelSize))*to_integer(unsigned(kernelSize));
		  --multiplication_weight1 <= to_integer(unsigned(featuresIn))*multiplication_weight0;
			if writeWeight = '1' then
				if counter_weight < to_integer(unsigned(multiplication_weight1)) then
				    if writeWeight_array = all_zero then
                        writeWeight_array <= std_logic_vector(to_unsigned(1,Z_PARALELISM));
                    end if;  
					counter_weight <= counter_weight + 1;	
				else  
				    counter_weight <= 1;
                    writeWeight_array <= writeWeight_array(Z_PARALELISM-2 downto 0) & writeWeight_array(Z_PARALELISM - 1);
				end if;	
			end if;
		end if;
	end process;
	
	process(clk, rst)
	begin
		if rst = '1' then
		      --counter_bias <= 0;
			writeBias_array <= (others => '0');
			weightIn_q <= (others => '0');
			biasIn_q <= (others => '0');
		elsif rising_edge(clk) then
		  weightIn_q <= weightIn;
		  biasIn_q <= biasIn;
			if writeBias = '1' then
                --if counter_bias < to_integer(unsigned(featuresIn)) then
                    if writeBias_array = all_zero then
                        writeBias_array <= std_logic_vector(to_unsigned(1,Z_PARALELISM));
                    --end if;  
                    --counter_bias <= counter_bias + 1;    
                    else  
                    --counter_bias <= 0;
                        writeBias_array <= writeBias_array(Z_PARALELISM-2 downto 0) & writeBias_array(Z_PARALELISM - 1);
                    end if;    
            end if;
		end if;
	end process;		
	para: for J in 0 to Z_PARALELISM - 1 generate		
	datapath: for I in 0 to PARALELISM - 1 generate
		router: entity work.router (behavioral)
		generic map (MOD_LINE => PARALELISM)
		port map(
			clk					=> clk,	
			rst 				=> rst,
	
			initialValue		=> I,

			writeWeight			=> writeWeight_array(J),
			weightIn			=> weightIn_q,
			writeBias			=> writeBias_array(J),
			biasIn				=> biasIn_q,

			--data from the FIFO at the end of the PE
			valid				=> validIn,
			dataIn				=> dataIn,
	
			--controller signal
			NextOutputPixel			=> next_Output_Pixel,
			nextLayer			=> next_Layer,
			nextLine			=> next_line,
			nextFeature			=> next_feature,
			nextfeatureout      => nextfeatureout,
			end_layer			=> end_layer,
			enable 				=> enable,
	
			-- PE perspective (so In means out for the router and Out means in for the router)
			size_dataIn			=> sizeInput,
			size_dataOut			=> sizeOutput,
			size_features			=> kernelSize,
	
			--overflow
			ready_router			=> ready_router(J)(I),
	
			-- DATA to the PE
			dataValid			=> data_valid(J)(I),
			dataOut				=> data_out(J)(I),
			weightOut			=> weight_Out(J)(I),
			biasOut				=> bias_Out(J)(I)
		);

		convolution: entity work.convo
		port map(
    		weight			=> weight_Out(J)(I),
    		input			=> data_out(J)(I),
    		bias			=> bias_Out(J)(I),
    		output			=> data_out_convolution(J)(I),
    		clk				=> clk,	
    		rst 			=> rst,
    		next_output		=> next_Output_Pixel,
    		enable 			=> enable,
    		valid_in		=> data_valid(J)(I),
    		valid_out		=> valid_out_convolution(J)(I),
    		mode_sel        => relu_control(J)(I)
    		);
	end generate datapath;

	pooling: entity work.fifo
    port map(
        clk 			=> clk,	
        rst  			=> rst,
        wr_en1			=> valid_out_convolution(J)(0),
        --rd_en1 : in STD_LOGIC;
        wr_en2			=> valid_out_convolution(J)(1),
        --rd_en2 : in STD_LOGIC;
        data_in1		=> data_out_convolution(J)(0),
        --data_out1 : out STD_LOGIC_VECTOR (15 downto 0);
        data_in2		=> data_out_convolution(J)(1),
        --data_out2 : out STD_LOGIC_VECTOR (15 downto 0);
        data_label 		=> data_out_pooling(J),
        --empty1 : out STD_LOGIC;
        --full1 : out STD_LOGIC;
        --empty2 : out STD_LOGIC;
        --full2 : out STD_LOGIC;
        --empty : out STD_LOGIC;
        full 			=> valid_out_pooling(J)   
        );
        
    pa_fifo: entity work.fifo_parallel
	port map(
		 clk 			=> clk,	
		enable			=> '1',
		rst  			=> rst,
	
		valid_in		=> valid_out_pooling(J),
		data_in			=> data_out_pooling(J),
	
		read			=> read_fifo(J),
		data_out		=> data_out_fifo(J),
		valid_out		=> valid_out_fifo(J));
    end generate para;
end architecture;
