-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.FIR_types.all;

entity FIR_stimuliGeneratorzm_7 is
  port(-- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out signed(15 downto 0));
end;

architecture structural of FIR_stimuliGeneratorzm_7 is
  signal y_0       : signed(15 downto 0);
  signal bodyVar_1 : product3;
  signal repANF_2  : unsigned(1 downto 0);
  signal bodyVar_3 : signed(15 downto 0);
  signal subjLet_4 : boolean;
  signal altLet_5  : unsigned(1 downto 0);
  signal repANF_6  : integer;
  signal x_7       : unsigned(1 downto 0);
  signal wild_8    : integer;
  signal repANF_9  : unsigned(1 downto 0);
  signal repANF_10 : integer;
  signal x_11      : unsigned(1 downto 0);
  signal tmp_12    : signed(15 downto 0);
  signal tmp_27    : unsigned(1 downto 0);
begin
  bodyVar_o <= y_0;
  
  y_0 <= bodyVar_1.product3_sel1;
  
  bodyVar_1 <= (product3_sel0 => repANF_2
               ,product3_sel1 => bodyVar_3);
  
  with (subjLet_4) select
    repANF_2 <= altLet_5 when (true),
                x_7 when others;
  
  -- index begin
  indexVec_n_17 : block
    signal vec       : array_of_signed_16(0 to 3);
    signal vec_index : integer range 0 to 4-1;
  begin
    vec <= array_of_signed_16'(signed'("0000000000000010"),signed'("0000000000000011"),signed'("1111111111111110"),signed'("0000000000001000"));
  
    vec_index <= repANF_6
    -- pragma translate_off
                 mod 4
    -- pragma translate_on
                 ;
  
    tmp_12 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_3 <= tmp_12;
  
  subjLet_4 <= x_7 < (to_unsigned((4 - 1),integer(ceil(log2(real(max(2,4)))))));
  
  altLet_5 <= x_7 + (to_unsigned(1,integer(ceil(log2(real(max(2,4)))))));
  
  repANF_6 <= wild_8;
  
  -- register begin
  register_FIR_stimuliGeneratorzm_7_n_29 : block
    signal n_30 : unsigned(1 downto 0);
    signal n_31 : unsigned(1 downto 0);
  begin
    n_30 <= (to_unsigned(0,integer(ceil(log2(real(max(2,4)))))));
  
    process(system1000,system1000_rstn,n_30)
    begin
      if system1000_rstn = '0' then
        n_31 <= n_30;
      elsif rising_edge(system1000) then
        n_31 <= repANF_9;
      end if;
    end process;
  
    tmp_27 <= n_31;
  end block;
  -- register end
  
  x_7 <= tmp_27;
  
  wild_8 <= repANF_10;
  
  repANF_9 <= x_11;
  
  repANF_10 <= to_integer(x_7);
  
  x_11 <= bodyVar_1.product3_sel0;
end;
