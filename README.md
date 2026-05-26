# Lab 1: Introduction to VHDL Programming and Open-Source Simulation Environment

## Objective
- To set up and configure the VHDL development environment using VS Code, GHDL, and GTKWave.  
- To understand the fundamental structure and components of a VHDL design.  
- To write, simulate, and visualize a basic VHDL program.

## Theory
VHDL (VHSIC Hardware Description Language) is an IEEE-standard hardware description language used to model digital systems. It allows designers to describe hardware behavior at different levels of abstraction, including behavioral, dataflow, and structural modeling.

A VHDL design consists of three main parts:

**1. Library and Packages**  
These contain predefined data types and functions. The IEEE library is commonly used to support `std_logic` and `std_logic_vector`.

**2. Entity**  
The entity defines the external interface of the circuit, including input and output ports. It represents the “black box” view of the design.

**3. Architecture**  
The architecture defines the internal behavior or structure of the entity. It describes how outputs are generated from inputs.

### VHDL Design Flow
1. Analysis (Compilation)  
2. Elaboration  
3. Simulation  
4. Waveform Visualization (GTKWave)

### Lab Setup
This lab uses an open-source toolchain:

- **VS Code** – Code editor  
- **GHDL** – VHDL compiler and simulator  
- **GTKWave** – Waveform viewer

## Output
![Waveform Output](lab1output.png)

## Conclusion
In this lab, the VHDL development environment was successfully installed and configured using VS Code, GHDL, and GTKWave. The basic structure of VHDL including library declarations, entity, and architecture was studied.A buffer circuit was implemented and simulated using a testbench. The simulation results confirmed that the output followed the input correctly, validating proper design behavior.
Overall, this lab provided hands-on experience in VHDL coding, simulation, and waveform analysis, establishing a strong foundation for digital system design using hardware description languages.

# Lab 2: VHDL Code for Realizing Logic Gates

## Objective
- To write VHDL code for basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR.  
- To simulate each logic gate and verify its truth table using GHDL and GTKWave.  
- To understand the implementation of Boolean logic using VHDL dataflow modeling.

## Theory
Logic gates are the fundamental building blocks of digital systems. They perform basic Boolean operations on binary inputs to produce a single binary output.
In VHDL, logic gates are implemented using built-in logical operators provided by the IEEE library.

### VHDL Logic Operations
- **AND** → `Y = A and B`
- **OR** → `Y = A or B`
- **NOT** → `Y = not A`
- **NAND** → `Y = not (A and B)`
- **NOR** → `Y = not (A or B)`
- **XOR** → `Y = A xor B`
- **XNOR** → `Y = A xnor B`

### VHDL Design Style
In this lab, **dataflow modeling** is used. It describes how signals flow through the circuit using concurrent statements such as:
Y <= A and B;

## OutPut
![GTKWave Output](lab2output.png)

## Discussion and Conclusion
In this lab, basic logic gates including AND, OR, NOT, NAND, NOR, XOR, and XNOR were successfully implemented using VHDL dataflow modeling. Each gate was designed using simple concurrent signal assignment statements, which allowed the behavior of digital logic circuits to be represented directly in hardware description form.
A combined testbench was created to simulate all gates simultaneously by applying all possible input combinations. The simulation was carried out using GHDL, and the resulting waveforms were observed in GTKWave. The output signals matched the expected truth table values for all logic operations, confirming the correctness of the design and implementation.
From this experiment, it is concluded that VHDL provides an efficient and accurate way to model and verify digital logic circuits before hardware implementation. The use of simulation tools such as GHDL and GTKWave helps in validating circuit behavior, reducing design errors, and improving understanding of digital system design principles.
