-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_i2c_1 is
  port(clkCnt_i1       : in unsigned(15 downto 0);
       startCmd_i2     : in boolean;
       stopCmd_i3      : in boolean;
       readCmd_i4      : in boolean;
       writeCmd_i5     : in boolean;
       ackIn_i6        : in boolean;
       dIn_i7          : in std_logic_vector(7 downto 0);
       i2ci_i8         : in product0;
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out product1);
end;

architecture structural of I2C_i2c_1 is
  signal repANF_0   : std_logic_vector(7 downto 0);
  signal repANF_1   : boolean;
  signal repANF_2   : boolean;
  signal repANF_3   : boolean;
  signal repANF_4   : boolean;
  signal repANF_5   : product2;
  signal ds_6       : product3;
  signal ds1_7      : product4;
  signal w1_8       : product5;
  signal dOut_9     : std_logic_vector(7 downto 0);
  signal cmdAck_10  : boolean;
  signal ackOut_11  : boolean;
  signal x_12       : boolean;
  signal x_13       : boolean;
  signal i2co_14    : product2;
  signal repANF_15  : boolean;
  signal repANF_16  : std_logic_vector(0 downto 0);
  signal repANF_17  : unsigned(2 downto 0);
  signal repANF_18  : std_logic_vector(0 downto 0);
  signal bitOut_19  : product5;
  signal x_20       : boolean;
  signal x_21       : std_logic_vector(0 downto 0);
  signal cmd_22     : unsigned(2 downto 0);
  signal coreTxd_23 : std_logic_vector(0 downto 0);
begin
  bodyVar_o <= (product1_sel0 => repANF_0
               ,product1_sel1 => repANF_1
               ,product1_sel2 => repANF_2
               ,product1_sel3 => repANF_3
               ,product1_sel4 => repANF_4
               ,product1_sel5 => repANF_5);
  
  repANF_0 <= dOut_9;
  
  repANF_1 <= cmdAck_10;
  
  repANF_2 <= ackOut_11;
  
  repANF_3 <= x_12;
  
  repANF_4 <= x_13;
  
  repANF_5 <= i2co_14;
  
  I2C_masterByteCtrl_2_ds_6 : entity I2C_masterByteCtrl_2
    port map
      (bodyVar_o       => ds_6
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,startCmd_i1     => startCmd_i2
      ,stopCmd_i2      => stopCmd_i3
      ,readCmd_i3      => readCmd_i4
      ,writeCmd_i4     => writeCmd_i5
      ,ackIn_i5        => ackIn_i6
      ,dIn_i6          => dIn_i7
      ,coreAck_i7      => repANF_15
      ,coreRxd_i8      => repANF_16);
  
  I2C_masterBitCtrl1_5_ds1_7 : entity I2C_masterBitCtrl1_5
    port map
      (bodyVar_o       => ds1_7
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,clkCnt_i1       => clkCnt_i1
      ,cmd_i2          => repANF_17
      ,dIn_i3          => repANF_18
      ,i2ci_i4         => i2ci_i8);
  
  w1_8 <= bitOut_19;
  
  dOut_9 <= ds_6.product3_sel4;
  
  cmdAck_10 <= ds_6.product3_sel2;
  
  ackOut_11 <= ds_6.product3_sel3;
  
  x_12 <= w1_8.product5_sel1;
  
  x_13 <= w1_8.product5_sel2;
  
  i2co_14 <= ds1_7.product4_sel1;
  
  repANF_15 <= x_20;
  
  repANF_16 <= x_21;
  
  repANF_17 <= cmd_22;
  
  repANF_18 <= coreTxd_23;
  
  bitOut_19 <= ds1_7.product4_sel0;
  
  x_20 <= w1_8.product5_sel0;
  
  x_21 <= w1_8.product5_sel3;
  
  cmd_22 <= ds_6.product3_sel0;
  
  coreTxd_23 <= ds_6.product3_sel1;
end;
