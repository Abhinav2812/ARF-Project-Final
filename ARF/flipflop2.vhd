library ieee;
use ieee.std_logic_1164.all;
entity flipflop2 is port(
	A: IN STD_LOGIC_VECTOR(15 downto 0);
	strobe: IN STD_LOGIC;
	O: OUT STD_LOGIC_VECTOR(15 downto 0);
	clk: IN STD_LOGIC
);
end entity;
architecture behavioral of flipflop2 is
signal temp: STD_LOGIC_VECTOR(15 downto 0);
begin
process(A,strobe)
begin
	if strobe = '1' then
		O <= A;
	end if;
end process;
end architecture;