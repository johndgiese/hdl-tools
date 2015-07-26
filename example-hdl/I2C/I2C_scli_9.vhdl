-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_scli_9 is
  port(ds_i1    : in product0;
       topLet_o : out std_logic_vector(0 downto 0));
end;

architecture structural of I2C_scli_9 is
  signal ds1_0 : std_logic_vector(0 downto 0);
begin
  ds1_0 <= ds_i1.product0_sel0;
  
  topLet_o <= ds1_0;
end;
