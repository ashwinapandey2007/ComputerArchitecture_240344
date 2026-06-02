# Lab 3: VHDL Code for Combinational Circuits (Encoder and Decoder)

---

## Objective
- To design and simulate a 4-to-2 priority encoder using VHDL.
- To design and simulate a 2-to-4 decoder using VHDL.
- To understand the working of combinational circuits in digital logic design.
- To verify the functionality using simulation results.

---

## Theory

### Encoder
An encoder is a combinational circuit that converts 2ⁿ input lines into an n-bit binary output. Only one input is assumed to be HIGH at a time.
A 4-to-2 encoder has four inputs (I0–I3) and produces a 2-bit output (Y1Y0).

#### Priority Encoder
A priority encoder assigns priority when multiple inputs are HIGH simultaneously. The highest-order input has the highest priority.

| Inputs (I3 I2 I1 I0) | Output (Y1 Y0) |
|----------------------|----------------|
| 0 0 0 1              | 00             |
| 0 0 1 X              | 01             |
| 0 1 X X              | 10             |
| 1 X X X              | 11             |

---

### Decoder
A decoder is a combinational circuit that converts an n-bit input into 2ⁿ output lines. Only one output is HIGH at a time.
A 2-to-4 decoder has:
- Inputs: A1, A0  
- Outputs: Y0, Y1, Y2, Y3  

| A1 | A0 | Y3 | Y2 | Y1 | Y0 |
|----|----|----|----|----|----|
| 0  | 0  | 0  | 0  | 0  | 1  |
| 0  | 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 0  | 1  | 0  | 0  |
| 1  | 1  | 0  | 0  | 0  | 1 |

---

## Output 
![Encoder](output lab3encoder.png)
![Decoder](output lab2decoder.png)

---

### Discussion
In this lab, a 4-to-2 priority encoder and a 2-to-4 decoder were designed using VHDL. The encoder correctly resolved multiple active inputs by selecting the highest-priority input. The decoder successfully converted binary input values into corresponding one outputs. Simulation results matched the expected truth tables.

### Conclusion
This lab helped in understanding combinational logic design using VHDL. The successful simulation of both encoder and decoder confirmed correct implementation and improved understanding of digital system design concepts.
