library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
entity add is port(
	A,B: IN STD_LOGIC_VECTOR(15 downto 0);
	en: IN STD_LOGIC;
	O: OUT STD_LOGIC_VECTOR(15 downto 0)
);
end entity;
architecture behavioral of add is
begin
process(A,B,en)
begin
	if en = '1' then
		O <= A + B;
	end if;
end process;
end architecture;