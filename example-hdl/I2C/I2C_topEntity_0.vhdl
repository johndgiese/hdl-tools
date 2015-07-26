-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_topEntity_0 is
  port(eta_i1          : in unsigned(15 downto 0);
       eta_i2          : in boolean;
       eta_i3          : in boolean;
       eta_i4          : in boolean;
       eta_i5          : in boolean;
       eta_i6          : in boolean;
       eta_i7          : in std_logic_vector(7 downto 0);
       eta_i8          : in product0;
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       topLet_o        : out product1);
end;

architecture structural of I2C_topEntity_0 is
begin
  I2C_i2c_1_topLet_o : entity I2C_i2c_1
    port map
      (bodyVar_o       => topLet_o
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,clkCnt_i1       => eta_i1
      ,startCmd_i2     => eta_i2
      ,stopCmd_i3      => eta_i3
      ,readCmd_i4      => eta_i4
      ,writeCmd_i5     => eta_i5
      ,ackIn_i6        => eta_i6
      ,dIn_i7          => eta_i7
      ,i2ci_i8         => eta_i8);
end;
