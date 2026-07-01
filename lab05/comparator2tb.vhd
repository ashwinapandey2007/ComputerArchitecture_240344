library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATORTB is
end COMPARATORTB;

architecture Behavioral of COMPARATORTB is

```
signal A  : std_logic_vector(1 downto 0);
signal B  : std_logic_vector(1 downto 0);
signal EQ : std_logic;
signal GT : std_logic;
signal LT : std_logic;
```

begin

```
UUT : entity work.COMPARATOR_2BIT
    port map (
        A  => A,
        B  => B,
        EQ => EQ,
        GT => GT,
        LT => LT
    );

process
begin
    A <= "00"; B <= "00"; wait for 10 ns;
    A <= "00"; B <= "01"; wait for 10 ns;
    A <= "00"; B <= "10"; wait for 10 ns;
    A <= "00"; B <= "11"; wait for 10 ns;

    A <= "01"; B <= "00"; wait for 10 ns;
    A <= "01"; B <= "01"; wait for 10 ns;
    A <= "01"; B <= "10"; wait for 10 ns;
    A <= "01"; B <= "11"; wait for 10 ns;

    A <= "10"; B <= "00"; wait for 10 ns;
    A <= "10"; B <= "01"; wait for 10 ns;
    A <= "10"; B <= "10"; wait for 10 ns;
    A <= "10"; B <= "11"; wait for 10 ns;

    A <= "11"; B <= "00"; wait for 10 ns;
    A <= "11"; B <= "01"; wait for 10 ns;
    A <= "11"; B <= "10"; wait for 10 ns;
    A <= "11"; B <= "11"; wait for 10 ns;

    wait;
end process;
```

end Behavioral;
