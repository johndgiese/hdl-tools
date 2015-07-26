-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_shiftRegister1_4 is
  port(ld_i1      : in boolean;
       shift_i2   : in boolean;
       dIn_i3     : in std_logic_vector(7 downto 0);
       coreRxd_i4 : in std_logic_vector(0 downto 0);
       eta_i5     : in product17;
       topLet_o   : out product19);
end;

architecture structural of I2C_shiftRegister1_4 is
  signal ds_0       : std_logic_vector(7 downto 0);
  signal y_1        : std_logic_vector(6 downto 0);
  signal altLet_2   : std_logic_vector(7 downto 0);
  signal subjLet_3  : product20;
  signal b1_4       : std_logic_vector(7 downto 0);
  signal altLet_5   : product17;
  signal x1_6       : unsigned(2 downto 0);
  signal altLet_7   : product17;
  signal repANF_8   : product17;
  signal repANF_9   : unsigned(2 downto 0);
  signal repANF_10  : product17;
  signal bodyVar_11 : product21;
  signal x_12       : std_logic_vector(7 downto 0);
  signal altLet_13  : product21;
  signal altLet_14  : product17;
  signal altLet_15  : product21;
  signal altLet_16  : product21;
  signal szm_17     : product17;
  signal altLet_18  : product17;
  signal altLet_19  : product17;
  signal subjLet_20 : product21;
  signal altLet_21  : product17;
  signal altLet_22  : product17;
  signal altLet_23  : product17;
  signal ds1_24     : unsigned(2 downto 0);
  signal altLet_25  : product17;
  signal altLet_26  : product17;
  signal repANF_27  : product17;
  signal repANF_28  : boolean;
  signal altLet_29  : product19;
  signal tmp_31     : product20;
begin
  topLet_o <= altLet_29;
  
  ds_0 <= eta_i5.product17_sel0;
  
  y_1 <= subjLet_3.product20_sel1;
  
  altLet_2 <= std_logic_vector'(y_1) & std_logic_vector'(coreRxd_i4);
  
  -- split begin
  split_n_32: block
    signal n_33 : std_logic_vector(7 downto 0);
  begin
    n_33 <= ds_0;
    tmp_31 <= ( n_33(tmp_31.product20_sel0'left + tmp_31.product20_sel1'length downto
                 tmp_31.product20_sel0'right + tmp_31.product20_sel1'length)
               , n_33(tmp_31.product20_sel1'left downto tmp_31.product20_sel1'right)
               );
  end block;
  -- split end
  
  subjLet_3 <= tmp_31;
  
  b1_4 <= altLet_2;
  
  altLet_5 <= (product17_sel0 => b1_4
              ,product17_sel1 => ds1_24);
  
  x1_6 <= szm_17.product17_sel1;
  
  altLet_7 <= (product17_sel0 => dIn_i3
              ,product17_sel1 => ds1_24);
  
  repANF_8 <= altLet_5;
  
  repANF_9 <= x1_6 - (to_unsigned(1,integer(ceil(log2(real(max(2,8)))))));
  
  repANF_10 <= altLet_7;
  
  bodyVar_11 <= (product21_sel0 => to_unsigned(0
                                              ,1)
                ,product21_sel1 => repANF_8);
  
  x_12 <= szm_17.product17_sel0;
  
  altLet_13 <= (product21_sel0 => to_unsigned(0
                                             ,1)
               ,product21_sel1 => eta_i5);
  
  altLet_14 <= (product17_sel0 => x_12
               ,product17_sel1 => repANF_9);
  
  altLet_15 <= (product21_sel0 => to_unsigned(0
                                             ,1)
               ,product21_sel1 => repANF_10);
  
  with (shift_i2) select
    altLet_16 <= bodyVar_11 when (true),
                 altLet_13 when others;
  
  szm_17 <= subjLet_20.product21_sel1;
  
  altLet_18 <= (product17_sel0 => x_12
               ,product17_sel1 => to_unsigned(7,integer(ceil(log2(real(max(2,8)))))));
  
  altLet_19 <= altLet_14;
  
  with (ld_i1) select
    subjLet_20 <= altLet_15 when (true),
                  altLet_16 when others;
  
  altLet_21 <= altLet_18;
  
  altLet_22 <= altLet_19;
  
  altLet_23 <= szm_17;
  
  ds1_24 <= eta_i5.product17_sel1;
  
  altLet_25 <= altLet_21;
  
  with (shift_i2) select
    altLet_26 <= altLet_22 when (true),
                 altLet_23 when others;
  
  with (ld_i1) select
    repANF_27 <= altLet_25 when (true),
                 altLet_26 when others;
  
  repANF_28 <= ds1_24 = (to_unsigned(0,integer(ceil(log2(real(max(2,8)))))));
  
  altLet_29 <= (product19_sel0 => repANF_28
               ,product19_sel1 => repANF_27);
end;
