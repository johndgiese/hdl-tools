-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_masterByteCtrl_2 is
  port(startCmd_i1     : in boolean;
       stopCmd_i2      : in boolean;
       readCmd_i3      : in boolean;
       writeCmd_i4     : in boolean;
       ackIn_i5        : in boolean;
       dIn_i6          : in std_logic_vector(7 downto 0);
       coreAck_i7      : in boolean;
       coreRxd_i8      : in std_logic_vector(0 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out product3);
end;

architecture structural of I2C_masterByteCtrl_2 is
  signal repANF_0   : unsigned(2 downto 0);
  signal repANF_1   : std_logic_vector(0 downto 0);
  signal repANF_2   : boolean;
  signal repANF_3   : boolean;
  signal repANF_4   : std_logic_vector(7 downto 0);
  signal x_5        : unsigned(2 downto 0);
  signal x_6        : std_logic_vector(0 downto 0);
  signal x_7        : boolean;
  signal x_8        : boolean;
  signal x_9        : std_logic_vector(7 downto 0);
  signal bodyVar_10 : product3;
  signal x_11       : product3;
  signal bodyVar_12 : product16;
  signal x_13       : product15;
  signal repANF_14  : product15;
  signal y_15       : product15;
  signal tmp_16     : product15;
begin
  bodyVar_o <= (product3_sel0 => repANF_0
               ,product3_sel1 => repANF_1
               ,product3_sel2 => repANF_2
               ,product3_sel3 => repANF_3
               ,product3_sel4 => repANF_4);
  
  repANF_0 <= x_5;
  
  repANF_1 <= x_6;
  
  repANF_2 <= x_7;
  
  repANF_3 <= x_8;
  
  repANF_4 <= x_9;
  
  x_5 <= bodyVar_10.product3_sel0;
  
  x_6 <= bodyVar_10.product3_sel1;
  
  x_7 <= bodyVar_10.product3_sel2;
  
  x_8 <= bodyVar_10.product3_sel3;
  
  x_9 <= bodyVar_10.product3_sel4;
  
  bodyVar_10 <= x_11;
  
  x_11 <= bodyVar_12.product16_sel0;
  
  I2C_masterByteCtrlT_3_bodyVar_12 : entity I2C_masterByteCtrlT_3
    port map
      (bodyVar_o   => bodyVar_12
      ,startCmd_i1 => startCmd_i1
      ,stopCmd_i2  => stopCmd_i2
      ,readCmd_i3  => readCmd_i3
      ,writeCmd_i4 => writeCmd_i4
      ,ackIn_i5    => ackIn_i5
      ,dIn_i6      => dIn_i6
      ,coreAck_i7  => coreAck_i7
      ,coreRxd_i8  => coreRxd_i8
      ,eta_i9      => x_13);
  
  -- register begin
  register_I2C_masterByteCtrl_2_n_20 : block
    signal n_21 : product15;
    signal n_22 : product15;
  begin
    n_21 <= (product15_sel0 => to_unsigned(0,3),product15_sel1 => to_unsigned(0,3),product15_sel2 => std_logic_vector'("0"),product15_sel3 => false,product15_sel4 => false,product15_sel5 => false,product15_sel6 => false,product15_sel7 => (product17_sel0 => std_logic_vector'("00000000"),product17_sel1 => to_unsigned(0,integer(ceil(log2(real(max(2,8))))))));
  
    process(system1000,system1000_rstn,n_21)
    begin
      if system1000_rstn = '0' then
        n_22 <= n_21;
      elsif rising_edge(system1000) then
        n_22 <= repANF_14;
      end if;
    end process;
  
    tmp_16 <= n_22;
  end block;
  -- register end
  
  x_13 <= tmp_16;
  
  repANF_14 <= y_15;
  
  y_15 <= bodyVar_12.product16_sel1;
end;
