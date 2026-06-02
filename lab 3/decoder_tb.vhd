library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER_TB is
end entity DECODER_TB;

architecture Simulation of DECODER_TB is

    signal A  : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal EN : STD_LOGIC := '1';
    signal Y  : STD_LOGIC_VECTOR(3 downto 0);

begin

    DUT : entity work.DECODER_2TO4
        port map (
            A  => A,
            EN => EN,
            Y  => Y
        );

    STIMULUS : process
    begin
        EN <= '1';

        A <= "00"; wait for 10 ns; -- Y = 0001
        A <= "01"; wait for 10 ns; -- Y = 0010
        A <= "10"; wait for 10 ns; -- Y = 0100
        A <= "11"; wait for 10 ns; -- Y = 1000

        EN <= '0';
        A <= "10"; wait for 10 ns; -- Y = 0000

        wait;
    end process;

end architecture Simulation;