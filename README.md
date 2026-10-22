# Mini-Processor & Assembly Project

Hi! This is my final project for the "Computer Architecture" course. I worked on it with my project partner, Sharbel, and it was a great way to learn how computers actually work behind the scenes.

The project is divided into two parts:

## 1. Hardware (Logisim)
We designed a very simple 10-bit mini-processor (called mini24) from scratch.
* Built using **Logisim**.
* Supports 4 basic commands: AND, ADD, LDB, and HLT.
* We connected basic components like Registers, an ALU, and a simple Control Unit.

## 2. Software (Assembly)
We wrote a short Assembly program and ran it on the **Mano CPU Simulator**.
* The program calculates the first 10 numbers of a geometric sequence.
* Since our basic Assembly didn't have a "multiply" command, we wrote a loop that adds a number to itself to simulate multiplication.

## Folders
* `/Hardware/` - Logisim `.circ` file and the hardware planning report.
* `/Software/` - The `.asm` code and the software report.
