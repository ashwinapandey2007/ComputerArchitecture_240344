# Lab 5: Design and Simulation of a 2-Bit Magnitude Comparator using VHDL

## Objective

- To design and simulate a 2-bit magnitude comparator using VHDL.
- To understand how comparison operations are implemented using logic gates.
- To verify the functionality of the comparator through simulation.

## Theory

A magnitude comparator is a combinational logic circuit that compares two binary numbers and determines whether one number is equal to, greater than, or less than the other.

In this experiment, two 2-bit binary numbers, A (A1A0) and B (B1B0), are compared. The circuit produces three output signals:

- **EQ**: HIGH when A = B
- **GT**: HIGH when A > B
- **LT**: HIGH when A < B

The comparator is implemented using Boolean logic expressions instead of arithmetic comparison operators.

The output equations are:

- **EQ = (A1 XNOR B1) AND (A0 XNOR B0)**
- **GT = (A1 AND NOT B1) OR ((A1 XNOR B1) AND (A0 AND NOT B0))**
- **LT = (NOT A1 AND B1) OR ((A1 XNOR B1) AND (NOT A0 AND B0))**

The **XNOR** operation checks whether corresponding bits are equal. The most significant bits (A1 and B1) are compared first. If they are equal, the least significant bits (A0 and B0) determine whether A is greater than or less than B. This gate-level implementation demonstrates how magnitude comparison is realized using basic logic gates.

## Output
![Output Waveform1](lab05output.png)
![Output Waveform2](lab05newoutput.png)

### Simulation Commands

```bash
ghdl -a comparator_2bit.vhd comparator_tb.vhd
ghdl -e COMPARATOR_TB
ghdl -r COMPARATOR_TB --vcd=comparator.vcd
gtkwave comparator.vcd
```

### Expected Output

| A  | B  | EQ | GT | LT |
|----|----|----|----|----|
| 00 | 00 | 1  | 0  | 0  |
| 01 | 00 | 0  | 1  | 0  |
| 00 | 01 | 0  | 0  | 1  |
| 10 | 11 | 0  | 0  | 1  |
| 11 | 10 | 0  | 1  | 0  |
| 11 | 11 | 1  | 0  | 0  |

## Discussion and Conclusion

The 2-bit magnitude comparator was successfully designed and simulated using VHDL. The circuit correctly generated the EQ, GT, and LT outputs for all test cases. The simulation results matched the expected truth table, confirming the correctness of the Boolean logic implementation.

This experiment demonstrated how a comparator can be implemented at the gate level using XNOR, AND, OR, and NOT operations. It also reinforced the concepts of combinational logic design and VHDL modeling for digital circuits.
