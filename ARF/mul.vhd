library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
entity mul is port(
	A,B: IN STD_LOGIC_VECTOR(15 downto 0);
	en: IN STD_LOGIC;
	O: OUT STD_LOGIC_VECTOR(15 downto 0)
);
end entity;
architecture behavioral of mul is
signal S: STD_LOGIC_VECTOR(31 downto 0);
begin
process(A,B,en)
begin
	if en = '1' then
		S <= A * B;
	end if;
	for i in 0 to 15 loop
		O(i) <= S(i);
	end loop;
end process;
end architecture;