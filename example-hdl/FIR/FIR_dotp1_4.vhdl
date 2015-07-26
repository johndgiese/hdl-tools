-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.FIR_types.all;

entity FIR_dotp1_4 is
  port(x_i1     : in signed(15 downto 0);
       y_i2     : in signed(15 downto 0);
       topLet_o : out signed(15 downto 0));
end;

architecture structural of FIR_dotp1_4 is
begin
  FIR_satPlus_5_topLet_o : entity FIR_satPlus_5
    port map
      (bodyVar_o => topLet_o
      ,eta_i1    => y_i2
      ,eta_i2    => x_i1);
end;
