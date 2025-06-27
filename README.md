# SARC18-CPU

**SARC18** is a fully custom 18-bit RISC CPU designed and implemented in VHDL. All components are built from the ground up with a custom instruction set, and behavior is verified through testbenches and waveform simulations. The design targets FPGA synthesis via Xilinx Vivado.

---

## Core Features

- 18-bit wide custom RISC ISA
- R-Type, I-Type, and J-Type instruction formats
- ALU with signed/unsigned arithmetic, logic, and shifts
- Register File with mux logic for all instruction types
- Control Unit with opcode + func decoding
- ROM instruction memory (via Vivado IP)
- Testbenches and waveform verification for each component

---

## Instruction Format

- `R-Type`:  `[00][4-bit FUNC][4-bit RD][4-bit RS][4-bit RT]`
- `I-Type`:  `[01][4-bit FUNC][4-bit RS][8-bit IMM/ADDR]`
- `J-Type`:  `[11][4-bit COND][4-bit RS][8-bit JMP_ADDR]`

Full details in [ISA.txt](./ISA.txt)

---

## Project Structure

<pre>
SARC18-CPU/
├── ISA.txt
├── README.md
│
├── src/
│   ├── alu.vhd
│   ├── program_counter.vhd
│   ├── register_file.vhd
│   ├── control_unit.vhd
│   └── sarc18_top.vhd
│
├── sim/
│   ├── testbenches/
│   │   ├── tb_alu.vhd
│   │   └── tb_control_unit.vhd
│   └── waveforms/
│       └── control_unit_tb_waveform.png
│
├── constraints/
│   └── sarc18.xdc
│
└── vivado_project/   # (Vivado XPR file, ignored by Git)
</pre>

---

## Simulations & Testing

Each component has been tested using VHDL testbenches. All waveform screenshots are in `sim/waveforms/` for verification of expected behavior.

---

## Next Steps

- Add branching logic for J-Type instructions
- Pipeline the architecture
- Create an assembler and/or compiler for the SARC18 ISA

---

## Inspiration

This project was originally inspired by the game *Turing Complete* and my *Ad and grew into a deeper exploration of real-world hardware design. Every module—from the program counter to the control unit—was built from scratch in VHDL. Logisim was used briefly for early prototyping, but all logic is now FPGA-ready and written in a hardware description language.

---

## Tools Used

- Vivado 2025.1
- VHDL
- GitHub for version control
