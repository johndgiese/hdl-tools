-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_filterT_8 is
  port(f_i1     : in array_of_std_logic_vector_1(0 to 2);
       topLet_o : out std_logic_vector(0 downto 0));
end;

architecture structural of I2C_filterT_8 is
  signal repANF_0 : std_logic_vector(0 downto 0);
  signal repANF_1 : std_logic_vector(0 downto 0);
  signal repANF_2 : std_logic_vector(0 downto 0);
  signal repANF_3 : std_logic_vector(0 downto 0);
  signal repANF_4 : std_logic_vector(0 downto 0);
  signal repANF_5 : std_logic_vector(0 downto 0);
  signal repANF_6 : std_logic_vector(0 downto 0);
  signal tmp_11   : std_logic_vector(0 downto 0);
  signal tmp_14   : std_logic_vector(0 downto 0);
  signal tmp_16   : std_logic_vector(0 downto 0);
begin
  topLet_o <= repANF_1 or repANF_0;
  
  repANF_0 <= repANF_5 and repANF_3;
  
  repANF_1 <= repANF_4 or repANF_2;
  
  repANF_2 <= repANF_6 and repANF_3;
  
  -- index begin
  indexVec_n_12 : block
    signal vec       : array_of_std_logic_vector_1(0 to 2);
    signal vec_index : integer range 0 to 3-1;
  begin
    vec <= f_i1;
  
    vec_index <= 0
    -- pragma translate_off
                 mod 3
    -- pragma translate_on
                 ;
  
    tmp_11 <= vec(vec_index);
  end block;
  -- index end
  
  repANF_3 <= tmp_11;
  
  repANF_4 <= repANF_6 and repANF_5;
  
  -- index begin
  indexVec_n_15 : block
    signal vec       : array_of_std_logic_vector_1(0 to 2);
    signal vec_index : integer range 0 to 3-1;
  begin
    vec <= f_i1;
  
    vec_index <= 1
    -- pragma translate_off
                 mod 3
    -- pragma translate_on
                 ;
  
    tmp_14 <= vec(vec_index);
  end block;
  -- index end
  
  repANF_5 <= tmp_14;
  
  -- index begin
  indexVec_n_17 : block
    signal vec       : array_of_std_logic_vector_1(0 to 2);
    signal vec_index : integer range 0 to 3-1;
  begin
    vec <= f_i1;
  
    vec_index <= 2
    -- pragma translate_off
                 mod 3
    -- pragma translate_on
                 ;
  
    tmp_16 <= vec(vec_index);
  end block;
  -- index end
  
  repANF_6 <= tmp_16;
end;
