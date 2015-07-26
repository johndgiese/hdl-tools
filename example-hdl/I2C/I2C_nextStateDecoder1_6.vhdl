-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_nextStateDecoder1_6 is
  port(cmd_i1   : in unsigned(2 downto 0);
       clkEn_i2 : in boolean;
       dIn_i3   : in std_logic_vector(0 downto 0);
       eta_i4   : in product9;
       topLet_o : out product10);
end;

architecture structural of I2C_nextStateDecoder1_6 is
  signal repANF_0  : boolean;
  signal altLet_1  : product9;
  signal altLet_2  : product9;
  signal altLet_3  : product9;
  signal altLet_4  : product9;
  signal altLet_5  : product9;
  signal ds2_6     : boolean;
  signal ds1_7     : boolean;
  signal ds_8      : boolean;
  signal repANF_9  : product9;
  signal repANF_10 : product9;
  signal repANF_11 : product9;
  signal repANF_12 : product9;
  signal repANF_13 : product9;
  signal repANF_14 : product9;
  signal repANF_15 : product9;
  signal ds4_16    : unsigned(4 downto 0);
  signal altLet_17 : product10;
  signal altLet_18 : product10;
  signal altLet_19 : product10;
  signal altLet_20 : product10;
  signal altLet_21 : product10;
  signal altLet_22 : product10;
  signal altLet_23 : product10;
  signal repANF_24 : product9;
  signal altLet_25 : product10;
  signal altLet_26 : product10;
  signal altLet_27 : product10;
begin
  topLet_o <= altLet_27;
  
  repANF_0 <= dIn_i3 = std_logic_vector'("1");
  
  altLet_1 <= (product9_sel0 => ds_8
              ,product9_sel1 => ds1_7
              ,product9_sel2 => false
              ,product9_sel3 => false
              ,product9_sel4 => to_unsigned(14
                                           ,5));
  
  altLet_2 <= (product9_sel0 => ds_8
              ,product9_sel1 => ds1_7
              ,product9_sel2 => false
              ,product9_sel3 => false
              ,product9_sel4 => to_unsigned(10
                                           ,5));
  
  altLet_3 <= (product9_sel0 => ds_8
              ,product9_sel1 => ds1_7
              ,product9_sel2 => false
              ,product9_sel3 => false
              ,product9_sel4 => to_unsigned(6
                                           ,5));
  
  altLet_4 <= (product9_sel0 => ds_8
              ,product9_sel1 => ds1_7
              ,product9_sel2 => false
              ,product9_sel3 => false
              ,product9_sel4 => to_unsigned(1
                                           ,5));
  
  altLet_5 <= (product9_sel0 => ds_8
              ,product9_sel1 => ds1_7
              ,product9_sel2 => false
              ,product9_sel3 => false
              ,product9_sel4 => to_unsigned(0
                                           ,5));
  
  ds2_6 <= eta_i4.product9_sel2;
  
  ds1_7 <= eta_i4.product9_sel1;
  
  ds_8 <= eta_i4.product9_sel0;
  
  repANF_9 <= (product9_sel0 => false
              ,product9_sel1 => repANF_0
              ,product9_sel2 => false
              ,product9_sel3 => true
              ,product9_sel4 => to_unsigned(0
                                           ,5));
  
  repANF_10 <= (product9_sel0 => true
               ,product9_sel1 => repANF_0
               ,product9_sel2 => true
               ,product9_sel3 => false
               ,product9_sel4 => to_unsigned(17
                                            ,5));
  
  repANF_11 <= (product9_sel0 => true
               ,product9_sel1 => repANF_0
               ,product9_sel2 => false
               ,product9_sel3 => false
               ,product9_sel4 => to_unsigned(16
                                            ,5));
  
  repANF_12 <= (product9_sel0 => false
               ,product9_sel1 => repANF_0
               ,product9_sel2 => false
               ,product9_sel3 => false
               ,product9_sel4 => to_unsigned(15
                                            ,5));
  
  repANF_13 <= (product9_sel0 => false
               ,product9_sel1 => ds1_7
               ,product9_sel2 => false
               ,product9_sel3 => true
               ,product9_sel4 => to_unsigned(0
                                            ,5));
  
  repANF_14 <= (product9_sel0 => ds_8
               ,product9_sel1 => true
               ,product9_sel2 => false
               ,product9_sel3 => false
               ,product9_sel4 => to_unsigned(2
                                            ,5));
  
  with (cmd_i1) select
    repANF_15 <= altLet_1 when ("100"),
                 altLet_2 when ("011"),
                 altLet_3 when ("010"),
                 altLet_4 when ("001"),
                 altLet_5 when others;
  
  ds4_16 <= eta_i4.product9_sel4;
  
  altLet_17 <= (product10_sel0 => to_unsigned(0
                                             ,1)
               ,product10_sel1 => repANF_9);
  
  altLet_18 <= (product10_sel0 => to_unsigned(0
                                             ,1)
               ,product10_sel1 => repANF_10);
  
  altLet_19 <= (product10_sel0 => to_unsigned(0
                                             ,1)
               ,product10_sel1 => repANF_11);
  
  altLet_20 <= (product10_sel0 => to_unsigned(0
                                             ,1)
               ,product10_sel1 => repANF_12);
  
  altLet_21 <= (product10_sel0 => to_unsigned(0
                                             ,1)
               ,product10_sel1 => repANF_13);
  
  altLet_22 <= (product10_sel0 => to_unsigned(0
                                             ,1)
               ,product10_sel1 => repANF_14);
  
  altLet_23 <= (product10_sel0 => to_unsigned(0
                                             ,1)
               ,product10_sel1 => repANF_15);
  
  repANF_24 <= (product9_sel0 => ds_8
               ,product9_sel1 => ds1_7
               ,product9_sel2 => ds2_6
               ,product9_sel3 => false
               ,product9_sel4 => ds4_16);
  
  with (ds4_16) select
    altLet_25 <= altLet_17 when ("10001"),
                 altLet_18 when ("10000"),
                 altLet_19 when ("01111"),
                 altLet_20 when ("01110"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => false
                                    ,product9_sel1 => true
                                    ,product9_sel2 => false
                                    ,product9_sel3 => true
                                    ,product9_sel4 => to_unsigned(0
                                                                 ,5))) when ("01101"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => true
                                    ,product9_sel1 => true
                                    ,product9_sel2 => false
                                    ,product9_sel3 => false
                                    ,product9_sel4 => to_unsigned(13
                                                                 ,5))) when ("01100"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => true
                                    ,product9_sel1 => true
                                    ,product9_sel2 => false
                                    ,product9_sel3 => false
                                    ,product9_sel4 => to_unsigned(12
                                                                 ,5))) when ("01011"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => false
                                    ,product9_sel1 => true
                                    ,product9_sel2 => false
                                    ,product9_sel3 => false
                                    ,product9_sel4 => to_unsigned(11
                                                                 ,5))) when ("01010"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => true
                                    ,product9_sel1 => true
                                    ,product9_sel2 => false
                                    ,product9_sel3 => true
                                    ,product9_sel4 => to_unsigned(0
                                                                 ,5))) when ("01001"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => true
                                    ,product9_sel1 => false
                                    ,product9_sel2 => false
                                    ,product9_sel3 => false
                                    ,product9_sel4 => to_unsigned(9
                                                                 ,5))) when ("01000"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => true
                                    ,product9_sel1 => false
                                    ,product9_sel2 => false
                                    ,product9_sel3 => false
                                    ,product9_sel4 => to_unsigned(8
                                                                 ,5))) when ("00111"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => false
                                    ,product9_sel1 => false
                                    ,product9_sel2 => false
                                    ,product9_sel3 => false
                                    ,product9_sel4 => to_unsigned(7
                                                                 ,5))) when ("00110"),
                 altLet_21 when ("00101"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => true
                                    ,product9_sel1 => false
                                    ,product9_sel2 => false
                                    ,product9_sel3 => false
                                    ,product9_sel4 => to_unsigned(5
                                                                 ,5))) when ("00100"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => true
                                    ,product9_sel1 => false
                                    ,product9_sel2 => false
                                    ,product9_sel3 => false
                                    ,product9_sel4 => to_unsigned(4
                                                                 ,5))) when ("00011"),
                 (product10_sel0 => to_unsigned(0
                                               ,1)
                 ,product10_sel1 => (product9_sel0 => true
                                    ,product9_sel1 => true
                                    ,product9_sel2 => false
                                    ,product9_sel3 => false
                                    ,product9_sel4 => to_unsigned(3
                                                                 ,5))) when ("00010"),
                 altLet_22 when ("00001"),
                 altLet_23 when others;
  
  altLet_26 <= (product10_sel0 => to_unsigned(0
                                             ,1)
               ,product10_sel1 => repANF_24);
  
  with (clkEn_i2) select
    altLet_27 <= altLet_25 when (true),
                 altLet_26 when others;
end;
