# Lab 7: VHDL Code for Sequential Circuits – Flip-Flops

---

## Objective

- To design and simulate **SR, D, JK, and T flip-flops** using VHDL.
- To understand the operation of sequential circuits and the importance of the **clock signal**.
- To verify the functionality of different flip-flops using **GHDL** and **GTKWave** simulations.

---

## Theory

### Sequential Circuits

Sequential circuits are digital circuits whose outputs depend on both the **current inputs** and the **previous state**. Unlike combinational circuits, sequential circuits contain memory elements called **flip-flops**. Flip-flops change their output only when triggered by a clock signal, usually on the **rising edge** of the clock.

---

### 1. SR Flip-Flop

The **Set-Reset (SR) Flip-Flop** stores one bit of data using two inputs:

- **S (Set):** Sets the output to 1.
- **R (Reset):** Resets the output to 0.

The input combination **S = 1** and **R = 1** is considered invalid (forbidden).

#### Truth Table

| S | R | Next State (Q) |
|---|---|----------------|
| 0 | 0 | No Change |
| 0 | 1 | 0 (Reset) |
| 1 | 0 | 1 (Set) |
| 1 | 1 | Invalid |

### Example VHDL Code

```vhdl
if rising_edge(CLK) then
    if S='1' and R='0' then
        Q_int <= '1';
    elsif S='0' and R='1' then
        Q_int <= '0';
    end if;
end if;
```

---

### 2. D Flip-Flop

The **Data (D) Flip-Flop** stores the value present at the D input whenever a rising clock edge occurs.

The next state is:

**Q(next) = D**

### Example VHDL Code

```vhdl
if rising_edge(CLK) then
    Q_int <= D;
end if;
```

---

### 3. JK Flip-Flop

The JK Flip-Flop improves the SR Flip-Flop by eliminating the invalid state.

| J | K | Next State |
|---|---|------------|
| 0 | 0 | Hold |
| 0 | 1 | Reset |
| 1 | 0 | Set |
| 1 | 1 | Toggle |

### Example VHDL Code

```vhdl
if J='1' and K='1' then
    Q_int <= not Q_int;
end if;
```

---

### 4. T Flip-Flop

The **Toggle (T) Flip-Flop** changes its output whenever **T = 1** at the rising edge of the clock. When **T = 0**, the output remains unchanged.

### Example VHDL Code

```vhdl
if rising_edge(CLK) then
    if T='1' then
        Q_int <= not Q_int;
    end if;
end if;
```

---

## Simulation Commands

### Analyze

```bash
ghdl -a sr_ff.vhd d_ff.vhd jk_ff.vhd t_ff.vhd ff_tb.vhd
```

### Elaborate

```bash
ghdl -e FF_TB
```

### Run Simulation

```bash
ghdl -r FF_TB --vcd=flipflops.vcd
```

### Open GTKWave

```bash
gtkwave flipflops.vcd
```

---

# Output

## Flip-Flops Waveform



Example folder structure:

```
[Flip-Flops Waveform](output.PNG)
---

# Discussion

In this experiment, SR, D, JK, and T flip-flops were designed and simulated using VHDL. The simulation results verified that each flip-flop behaved according to its characteristic table. The SR Flip-Flop correctly performed set, reset, and hold operations. The D Flip-Flop transferred the input data to the output on the rising edge of the clock. The JK Flip-Flop successfully eliminated the invalid state by toggling the output when both inputs were high. The T Flip-Flop toggled its output whenever the T input was high. The GTKWave waveforms confirmed the correct operation of all sequential circuits.

---

# Conclusion

This laboratory successfully demonstrated the design and simulation of four basic flip-flops using VHDL. The experiment helped in understanding the behavior of sequential circuits and the importance of clock-triggered operations. The simulation results obtained from GHDL and GTKWave matched the expected outputs, confirming the correctness of the VHDL implementations. This lab strengthened the understanding of memory elements, state transitions, and sequential logic design.

---