# Custom 10-Bit Mini-Processor Architecture (mini24)

Designed as part of the **Computer Architecture** course, this repository contains the complete gate- and block-level hardware implementation of **mini24**, a custom 10-bit CPU built from scratch in **Logisim**.

---

## Processor Architecture & Specifications

* **Word & Bus Width:** 10-bit datapath and instruction format.
* **Core Components:**
  * **ALU (Arithmetic Logic Unit):** Executes arithmetic and bitwise logic operations (`ADD`, `AND`).
  * **Register File:** Dedicated internal registers for operand storage and accumulator operations.
  * **Control Unit & Instruction Decoder:** Decodes opcodes and generates synchronous control signals across the datapath.
* **Supported Instruction Set (ISA):**
  * `ADD` – Arithmetic addition.
  * `AND` – Bitwise logical AND.
  * `LDB` – Load byte/word from memory into register.
  * `HLT` – Halt processor execution.

---

## Repository Contents
* **Logisim Circuit (`.circ`):** Complete interactive processor schematic and simulation model.
* **Hardware Design Report:** Detailed documentation of the instruction format, datapath routing, control logic truth tables, and simulation waveforms.

---

## Authors
* **Noam Hayu**
* **Sharbel**
