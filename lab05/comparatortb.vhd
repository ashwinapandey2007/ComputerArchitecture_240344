library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATOR_TB is
end COMPARATOR_TB;

architecture Simulation of COMPARATOR_TB is

    signal A  : STD_LOGIC_VECTOR(1 downto 0);
    signal B  : STD_LOGIC_VECTOR(1 downto 0);
    signal EQ : STD_LOGIC;
    signal GT : STD_LOGIC;
    signal LT : STD_LOGIC;

begin

    DUT: entity work.COMPARATOR_2BIT
        port map(
            A  => A,
            B  => B,
            EQ => EQ,
            GT => GT,
            LT => LT
        );

    stimulus: process
    begin
        A <= "00"; B <= "00"; wait for 10 ns; -- EQ
        A <= "01"; B <= "00"; wait for 10 ns; -- GT
        A <= "00"; B <= "01"; wait for 10 ns; -- LT
        A <= "10"; B <= "11"; wait for 10 ns; -- LT
        A <= "11"; B <= "10"; wait for 10 ns; -- GT
        A <= "11"; B <= "11"; wait for 10 ns; -- EQ

        wait;
    end process;

end Simulation;