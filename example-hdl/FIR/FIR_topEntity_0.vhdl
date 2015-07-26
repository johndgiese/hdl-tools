-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.FIR_types.all;

entity FIR_topEntity_0 is
  port(eta1_i1         : in signed(15 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       topLet_o        : out signed(15 downto 0));
end;

architecture structural of FIR_topEntity_0 is
  signal repANF_0 : array_of_signed_16(0 to 3);
begin
  FIR_zdwwindowzm_1_repANF_0 : entity FIR_zdwwindowzm_1
    port map
      (topLet_o        => repANF_0
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,eta_i1          => eta1_i1);
  
  FIR_dotp_2_topLet_o : entity FIR_dotp_2
    port map
      (bodyVar_o => topLet_o
      ,eta_i1    => repANF_0);
end;
