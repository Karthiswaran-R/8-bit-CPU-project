# 8-bit RISC CPU Design  

![8-bit CPU Architecture](https://www.labs.cs.uregina.ca/301/cpu8bit/CPU-Structure-with-mem.jpg)  


## Overview  
This repository contains the design and implementation of a **custom-built 8-bit RISC CPU** using **Verilog HDL**. It is optimized for **FPGA prototyping** and **ASIC fabrication**, making it ideal for learning **digital design, microprocessor architecture, and hardware development**.  

## Features  
✔️ **8-bit Data Bus, 16-bit Address Bus** (Supports up to 64KB memory)  
✔️ **RISC-Based Instruction Set** (Efficient and simple to implement)  
✔️ **ALU Operations** (ADD, SUB, AND, OR, XOR, NOT, INC, DEC)  
✔️ **General-Purpose Registers** (Configurable 4–8 registers)  
✔️ **Stack & Program Counter** (Supports function calls and branching)  
✔️ **FPGA Compatibility** (Supports Xilinx & Intel FPGA boards)  
✔️ **ASIC Ready** (Includes synthesis scripts for fabrication)  

## CPU Architecture  
This CPU follows a **Von Neumann architecture**, where both instructions and data share the same memory space.  

### Core Components  
- **ALU (Arithmetic Logic Unit)** – Executes arithmetic & logic operations.  
- **Control Unit** – Decodes and executes instructions.  
- **Register File** – Stores temporary data and operands.  
- **Memory Interface** – Manages RAM and ROM access.  

### Instruction Set  
| Opcode | Operand 1 | Operand 2 | Description |
|--------|----------|----------|-------------|
| `0001` | `R1` | `R2` | ADD R1, R2 |
| `0010` | `R1` | `IMM` | MOV R1, IMM |
| `0100` | `ADDR` | - | JMP ADDR |
| ... | ... | ... | More Instructions |

## Getting Started  

### 1. Clone the Repository  
sh            
https://github.com/Karthiswaran-R/8-bit-CPU-project/tree/main           
cd 8bit-CPU  

### 2. Run Simulation  
Using ModelSim or QuestaSim:  
sh                              
vsim -do run_testbench.do 

### 3. FPGA Synthesis  
For Xilinx FPGA (Vivado):  
sh              
vivado -mode batch -source synthesize.tcl

For Intel FPGA (Quartus):  
sh        
quartus_sh --flow compile cpu_top.qpf

### 4. ASIC Synthesis  
Using Yosys:  
sh                
yosys -p "read_verilog cpu_top.v; synth; write_blif cpu.blif"

## Project Roadmap  
 Phase 1 – RTL Design & Simulation ("Upcoming")   
 Phase 2 – FPGA Implementation (Upcoming")   
 Phase 3 – ASIC Synthesis & Backend Flow ("Upcoming")   

## License  
This project is licensed under the **MIT License** – free to use, modify, and distribute.  

##  Contact & Support  
 Email: vlsidesignhub@gmail.com      
 Website: [VLSI Design Hub](https://vlsidesignhub.netlify.app/)    
 GitHub: [Karthiswaran-R](https://github.com/Karthiswaran-R/8-bit-CPU-project)  
