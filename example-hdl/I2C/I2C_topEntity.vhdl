-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_topEntity is
  port(input_0         : in unsigned(15 downto 0);
       input_1         : in boolean;
       input_2         : in boolean;
       input_3         : in boolean;
       input_4         : in boolean;
       input_5         : in boolean;
       input_6         : in std_logic_vector(7 downto 0);
       input_7_0       : in std_logic_vector(0 downto 0);
       input_7_1       : in std_logic_vector(0 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       output_0_0      : out std_logic_vector(7 downto 0);
       output_0_1      : out boolean;
       output_0_2      : out boolean;
       output_0_3      : out boolean;
       output_0_4      : out boolean;
       output_0_5_0    : out std_logic_vector(0 downto 0);
       output_0_5_1    : out boolean;
       output_0_5_2    : out std_logic_vector(0 downto 0);
       output_0_5_3    : out boolean);
end;

architecture structural of I2C_topEntity is
  signal input_7    : product0;
  signal output_0   : product1;
  signal output_0_5 : product2;
begin
  input_7 <= (product0_sel0 => input_7_0
             ,product0_sel1 => input_7_1);
  
  I2C_topEntity_0_inst : entity I2C_topEntity_0
    port map
      (eta_i1          => input_0
      ,eta_i2          => input_1
      ,eta_i3          => input_2
      ,eta_i4          => input_3
      ,eta_i5          => input_4
      ,eta_i6          => input_5
      ,eta_i7          => input_6
      ,eta_i8          => input_7
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,topLet_o        => output_0);
  
  output_0_0 <= output_0.product1_sel0;
  
  output_0_1 <= output_0.product1_sel1;
  
  output_0_2 <= output_0.product1_sel2;
  
  output_0_3 <= output_0.product1_sel3;
  
  output_0_4 <= output_0.product1_sel4;
  
  output_0_5 <= output_0.product1_sel5;
  
  output_0_5_0 <= output_0_5.product2_sel0;
  
  output_0_5_1 <= output_0_5.product2_sel1;
  
  output_0_5_2 <= output_0_5.product2_sel2;
  
  output_0_5_3 <= output_0_5.product2_sel3;
end;
