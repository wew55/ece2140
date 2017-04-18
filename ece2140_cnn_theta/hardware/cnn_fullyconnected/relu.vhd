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
   weight: in std_logic_vector(15 downto 0);
   input: in std_logic_vector(15 downto 0);
   bias: in std_logic_vector(15 downto 0);
   clk: in STD_logic;
   rst: in STD_logic;
   next_output: in STD_logic;
   mode_sel: in STD_logic;
   enable: in STD_logic;
   valid_in: in STD_logic;
   valid_out: out STD_logic;
   output: out std_logic_vector(15 downto 0)
   );
end fullyconnected;

architecture behavioral of fullyconnected is
    signal convo_out: std_logic_vector(15 downto 0);
    signal convo_valid: STD_logic;
    
    begin
    
         Convo: entity work.convo (rtl)
           port map(
           weight => weight,
           input => input,
           bias => bias,
           output => convo_out,
           clk => clk,
           rst => rst,
           next_output => next_output,
           enable => enable,
           valid_in => valid_in,
           valid_out => convo_valid
           );
            
    relu: process(convo_out, convo_valid)
          begin
            if convo_valid = '1' then
                  if mode_sel = '1' then
                      if convo_out(15) = '1' then
                            output <= (others => '0');
                      else
                            output <= convo_out;
                      end if;
                  else
                      output <= (others => '0');
                  end if;
                  valid_out <= convo_valid;
            else
                  output <= (others => '0');
                  valid_out <= '0';
            end if; 
          end process;
    
end behavioral;
