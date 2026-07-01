library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATOR_2BIT is
    Port (
        A  : in  STD_LOGIC_VECTOR(1 downto 0);
        B  : in  STD_LOGIC_VECTOR(1 downto 0);
        EQ : out STD_LOGIC;
        GT : out STD_LOGIC;
        LT : out STD_LOGIC
    );
end COMPARATOR_2BIT;

architecture Behavioral of COMPARATOR_2BIT is
begin

    -- Equal
    EQ <= (A(1) XNOR B(1)) AND (A(0) XNOR B(0));

    -- Greater Than
    GT <= (A(1) AND (NOT B(1))) OR
          ((A(1) XNOR B(1)) AND (A(0) AND (NOT B(0))));

    -- Less Than
    LT <= ((NOT A(1)) AND B(1)) OR
          ((A(1) XNOR B(1)) AND ((NOT A(0)) AND B(0)));

end Behavioral;