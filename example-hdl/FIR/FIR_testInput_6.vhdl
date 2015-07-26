-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.FIR_types.all;

entity FIR_testInput_6 is
  port(-- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       topLet_o        : out signed(15 downto 0));
end;

architecture structural of FIR_testInput_6 is
begin
  FIR_stimuliGeneratorzm_7_topLet_o : entity FIR_stimuliGeneratorzm_7
    port map
      (bodyVar_o       => topLet_o
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn);
end;
