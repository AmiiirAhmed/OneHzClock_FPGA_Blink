# OneHzClock_FPGA_Blink

This project implements a 1 Hz LED blinker in VHDL using a simple frequency divider.

## Overview
The design uses a counter that runs over half the input clock frequency to toggle the LED every 0.5 seconds, achieving a 1 Hz blink.  
The input frequency is declared as a **generic parameter**, so it can be easily adjusted for different FPGA boards.

## Folder Structure
- `src/` — contains the main VHDL source file (`OneHzClock.vhd`)  
- `simu/` — optional testbench and simulation files  

## Files
- `src/OneHzClock.vhd` — main VHDL source file
- `simu/OneHzClock_tb.vhd` —  Testbench of the top level
- `README.md` — project description  

## Demo
[▶️ Watch the Demo](https://youtu.be/xDTr1Q6OcI4)


## Author
Ahmed Amir

