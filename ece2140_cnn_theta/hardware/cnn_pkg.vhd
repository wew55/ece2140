library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package cnn_pkg is

constant PARALELISM: integer := 2;
type dataflow is array (PARALELISM - 1 downto 0) of STD_LOGIC_VECTOR(15 downto 0);

end cnn_pkg;

package body cnn_pkg is
end;
