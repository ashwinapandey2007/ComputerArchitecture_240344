# Lab 4: VHDL Code for Combinational Circuits (MUX and DEMUX)

## Objective
- To design and simulate a 4-to-1 Multiplexer (MUX) in VHDL.
- To design and simulate a 1-to-4 Demultiplexer (DEMUX) in VHDL.

---

## Theory

### Multiplexer (MUX)
A multiplexer is a combinational circuit that selects one of \(2^n\) input lines and forwards it to a single output line based on n select lines.

A 4-to-1 MUX has:
- 4 data inputs (D0–D3)
- 2 select lines (S1, S0)
- 1 output (Y)

| S1 | S0 | Output |
|----|----|--------|
| 0  | 0  | D0     |
| 0  | 1  | D1     |
| 1  | 0  | D2     |
| 1  | 1  | D3     |

---

### Demultiplexer (DEMUX)
A demultiplexer routes a single input signal to one of \(2^n\) outputs based on select lines.

A 1-to-4 DEMUX has:
- 1 input (D)
- 2 select lines (S1, S0)
- 4 outputs (Y0–Y3)

| S1 | S0 | Active Output |
|----|----|--------------|
| 0  | 0  | Y0 = D       |
| 0  | 1  | Y1 = D       |
| 1  | 0  | Y2 = D       |
| 1  | 1  | Y3 = D       |

---

## Conclusion

In this lab, a 4-to-1 Multiplexer (MUX) and a 1-to-4 Demultiplexer (DEMUX) were successfully designed and simulated using VHDL. The simulation results verified the correct functionality of both combinational circuits.

The MUX correctly selected one of the four input lines based on the select signals and forwarded it to the output. Similarly, the DEMUX correctly routed a single input signal to one of the four output lines according to the select inputs.

This experiment helped in understanding the working principle of combinational logic circuits and improved practical knowledge of VHDL coding, simulation using GHDL, and waveform analysis using GTKWave.  