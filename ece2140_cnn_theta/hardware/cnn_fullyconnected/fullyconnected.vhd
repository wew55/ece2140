----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2017 15:17:27
-- Design Name: 
-- Module Name: fullyconnected - rtl
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fullyconnected is
Port (
   input: in std_logic_vector(31 downto 0);
   clk: in STD_logic;
   rst: in STD_logic;
   last_input: in STD_logic;
   enable: in STD_logic;
   valid_in: in STD_logic;
   valid_out: out STD_logic;
   output: out std_logic_vector(15 downto 0);
   sim_write_enable: in STD_logic;
   sim_address_write: in std_logic_vector(8 downto 0);
   sim_data_in: in std_logic_vector(63 downto 0)
   );
end fullyconnected;

architecture behavioral of fullyconnected is
    signal valid_a: STD_logic;
    signal valid_b: STD_logic;
    signal valid_c: STD_logic;
    signal valid_d: STD_logic;
    signal last_a: STD_logic;
    signal last_b: STD_logic;
    signal last_c: STD_logic;
    signal last_d: STD_logic;
    signal softmax_output: std_logic_vector(127 downto 0);
    signal temp_total_output: std_logic_vector(63 downto 0);
    signal temp_output_exp: std_logic_vector(63 downto 0);
    signal total_output: std_logic_vector(63 downto 0);
    signal final_output: std_logic_vector(63 downto 0);
    signal shift_addr: std_logic_vector(15 downto 7);
    signal store_shift_addr: std_logic_vector(15 downto 10);
    signal read_enable: STD_logic;
    signal store_read_enable: STD_logic;
    signal exp_data_out: std_logic_vector(63 downto 0);
    signal store_data_in: std_logic_vector(63 downto 0);
    signal store_in_addr: std_logic_vector(5 downto 0);
    signal store_in_enable: STD_logic;
    signal store_data_out: std_logic_vector(63 downto 0);
    signal div_top: std_logic_vector(63 downto 0);
    signal div_bottom: std_logic_vector(63 downto 0);
    signal A: std_logic;
    signal B: std_logic;
    
    COMPONENT div_gen_0 PORT( s_axis_divisor_tdata : IN std_logic_vector(63 downto 0);
                              s_axis_divisor_tvalid : IN std_logic;
                              s_axis_dividend_tdata : In std_logic_vector(63 downto 0);
                              s_axis_dividend_tvalid : In std_logic;
                              m_axis_dout_tdata : OUT std_logic_vector(127 downto 0);
                              m_axis_dout_tvalid : OUT std_logic;
                              aclk : IN std_logic
                              ); 
    END COMPONENT;
    COMPONENT c_addsub_0 PORT( A : IN std_logic_vector(63 downto 0);
                               B : In std_logic_vector(63 downto 0);
                               S : OUT std_logic_vector(63 downto 0)
                                ); 
        END COMPONENT;
         
begin
     d1 : div_gen_0 port map(s_axis_divisor_tdata => div_bottom,
                             s_axis_divisor_tvalid => B,
                             s_axis_dividend_tdata => div_top,
                             s_axis_dividend_tvalid => B,
                             m_axis_dout_tdata => softmax_output,
                             m_axis_dout_tvalid => A,
                             aclk => clk
                             );
     add1 : c_addsub_0 port map(A => temp_output_exp,
                                B => total_output,
                                S => temp_total_output
                                );             
                            
                
    reg_d: process(clk)
        begin
            if rst = '1' then
                B <= '0';
                last_d <= '0';
                valid_d <= '0';
            elsif rising_edge(clk) then
                valid_d <= valid_c;
                last_d <= last_c;
                if last_c = '1' and valid_d = '1' then
                    B <= '1';
                elsif last_b = '1' then
                    B <= '0';
                end if;
                if (store_shift_addr /= "000000") then
                    div_top <= store_data_out;
                    div_bottom <= final_output;
                end if;  
            end if;
         end process;
                
    reg_c: process(clk)
        begin
            if rst = '1' then
                final_output <= (others => '0');
                last_c <= '0';
                valid_c <= '0';
            elsif rising_edge(clk) then
                last_c <= last_b;
                valid_c <= valid_b;
                if last_b = '1' then
                    final_output <= total_output;
                end if;
            end if;
        end process;
        
    reg_b: process(clk)
        begin
            if rst = '1' then
                total_output <= (others => '0');
                last_b <= '0';
                valid_b <= '0';
            elsif rising_edge(clk) then
                if valid_c = '1' then
                    total_output <= temp_total_output;
                end if;
                last_b <= last_a;
                valid_b <= valid_a;
            end if;
        end process;

    reg_a: process(clk)
        begin
            if rst = '1' then
                read_enable <= '0';
                temp_output_exp <= (others => '0');
                shift_addr <= (others => '0');
                last_a <= '0';
                valid_a <= '0';
            elsif rising_edge(clk) then
                last_a <= last_input;
                valid_a <= valid_in;
                if valid_in = '1' then
                    read_enable <= '1';
                else
                    read_enable <= '0';
                end if;
                if input(31) = '1' then
                    shift_addr <= (others => '0');
                else
                    shift_addr <= input(15 downto 7);
                end if;
                temp_output_exp <= exp_data_out;
            end if;
        end process;
        
    store_out: process(clk)
        begin
            if rst = '1' then
                store_read_enable <= '0';
                store_shift_addr <= (others => '0');
            elsif rising_edge(clk) then
                if last_a = '1' and valid_b = '1' then
                    store_read_enable <= '1';
                    store_shift_addr <= (others => '0');
                elsif last_a = '1' and valid_b = '0' then
                    store_read_enable <= '0';
                elsif last_b = '1' then 
                    store_shift_addr <= std_logic_vector(to_unsigned(to_integer(unsigned( store_shift_addr )) + 1, 6));
                elsif store_shift_addr /= "000000" then
                    store_shift_addr <= std_logic_vector(to_unsigned(to_integer(unsigned( store_shift_addr )) + 1, 6));
                else
                    store_read_enable <= '0';
                    store_shift_addr <= (others => '0');
                end if;
            end if;
        end process;      
        
    store_in: process(clk)
        begin
            if rst = '1' then
                store_data_in <= (others => '0');
                store_in_addr <= (others => '0');                
                store_in_enable <= '0';
            elsif rising_edge(clk) then
                store_data_in <= exp_data_out;
                if valid_b = '1' then
                    store_in_enable <= '1';
                else
                    store_in_enable <= '0';
                end if;
                if last_b = '1' then
                    store_in_addr <= (others => '0');
                elsif valid_c = '1' then
                    store_in_addr <= std_logic_vector(to_unsigned(to_integer(unsigned( store_in_addr )) + 1, 6));
                end if;
            end if;
        end process;
    
    result: process(clk)
        begin
            if rst = '1' then
                output <= (others => '0');
            elsif rising_edge(clk) then
                if A = '1' then
                    output <= '0' & softmax_output(63 downto 49);
                    valid_out <= '1';
                else
                    valid_out <= '0';
                end if;
            end if;
        end process;
        
    BRAM_exponential: entity work.bram (behavior)
            generic map( WIDTH => 64, DEPTH => 9)
            port map(
            clk            => clk,
            enable            => '1',
            write_enable        => sim_write_enable,
            addr_write          => sim_address_write,
            data_in             => sim_data_in,
            read_enable        => read_enable,
            addr_read        => shift_addr,
            data_out        => exp_data_out
            );
            
     BRAM_output_storage: entity work.bram (rtl)
           generic map( WIDTH => 64, DEPTH => 6)
           port map(
           clk            => clk,
           enable            => '1',  
           write_enable        => store_in_enable,
           addr_write          => store_in_addr,
           data_in             => store_data_in,
           read_enable        => store_read_enable,
           addr_read        => store_shift_addr,
           data_out        => store_data_out
           );
    
end behavioral;
