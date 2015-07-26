-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.FIR_types.all;

entity FIR_zdwwindowzm_1 is
  port(eta_i1          : in signed(15 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       topLet_o        : out array_of_signed_16(0 to 3));
end;

architecture structural of FIR_zdwwindowzm_1 is
  signal x_0       : array_of_signed_16(0 to 2);
  signal vs_1      : array_of_signed_16(0 to 2);
  signal subjLet_2 : product2;
  signal repANF_3  : array_of_signed_16(0 to 3);
  signal x_4       : array_of_signed_16(0 to 2);
  signal repANF_5  : array_of_signed_16(0 to 0);
  signal tmp_6     : array_of_signed_16(0 to 2);
  signal tmp_13    : product2;
begin
  -- register begin
  register_FIR_zdwwindowzm_1_n_10 : block
    signal n_11 : array_of_signed_16(0 to 2);
    signal n_12 : array_of_signed_16(0 to 2);
  begin
    n_11 <= (array_of_signed_16'(0 to (3)-1 => signed'("0000000000000000")));
  
    process(system1000,system1000_rstn,n_11)
    begin
      if system1000_rstn = '0' then
        n_12 <= n_11;
      elsif rising_edge(system1000) then
        n_12 <= vs_1;
      end if;
    end process;
  
    tmp_6 <= n_12;
  end block;
  -- register end
  
  x_0 <= tmp_6;
  
  vs_1 <= x_4;
  
  -- sliptAt begin
  splitAt_n_15 : block
    signal n_16 : array_of_signed_16(0 to 3);
  begin
    n_16 <= repANF_3;
    tmp_13 <= (n_16(tmp_13.product2_sel0'left to tmp_13.product2_sel0'right)
               ,n_16(tmp_13.product2_sel1'left + tmp_13.product2_sel0'length to tmp_13.product2_sel1'right + tmp_13.product2_sel0'length));
  end block;
  -- splitAt end
  
  subjLet_2 <= tmp_13;
  
  repANF_3 <= array_of_signed_16'(repANF_5) & array_of_signed_16'(x_0);
  
  x_4 <= subjLet_2.product2_sel0;
  
  repANF_5 <= array_of_signed_16'(0 => eta_i1);
  
  topLet_o <= array_of_signed_16'(signed'(eta_i1) & x_0);
end;
