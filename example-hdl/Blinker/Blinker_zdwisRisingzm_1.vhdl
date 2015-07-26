-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Blinker_types.all;

entity Blinker_zdwisRisingzm_1 is
  port(eta_i1          : in std_logic_vector(0 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out boolean);
end;

architecture structural of Blinker_zdwisRisingzm_1 is
  signal subjLet_0 : boolean;
  signal altLet_1  : boolean;
  signal x_2       : std_logic_vector(0 downto 0);
  signal tmp_7     : std_logic_vector(0 downto 0);
begin
  subjLet_0 <= x_2 = (std_logic_vector'(1-1 downto 0 => '0'));
  
  altLet_1 <= eta_i1 = (std_logic_vector'(1-1 downto 0 => '1'));
  
  -- register begin
  register_Blinker_zdwisRisingzm_1_n_9 : block
    signal n_10 : std_logic_vector(0 downto 0);
    signal n_11 : std_logic_vector(0 downto 0);
  begin
    n_10 <= std_logic_vector'("1");
  
    process(system1000,system1000_rstn,n_10)
    begin
      if system1000_rstn = '0' then
        n_11 <= n_10;
      elsif rising_edge(system1000) then
        n_11 <= eta_i1;
      end if;
    end process;
  
    tmp_7 <= n_11;
  end block;
  -- register end
  
  x_2 <= tmp_7;
  
  with (subjLet_0) select
    bodyVar_o <= altLet_1 when (true),
                 false when others;
end;
