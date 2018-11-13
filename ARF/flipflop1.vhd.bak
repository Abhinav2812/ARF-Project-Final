library ieee;
use ieee.std_logic_1164.all;
entity latch1 is port(
	A: IN STD_LOGIC_VECTOR(15 downto 0);
	strobe: IN STD_LOGIC;
	O: OUT STD_LOGIC_VECTOR(15 downto 0)
);
end entity;
architecture behavioral of latch1 is
begin
process(A,strobe)
begin
	if strobe = '1' then
		O <= A;
	end if;
end process;
end architecture;