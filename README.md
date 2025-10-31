# OneHzClock_FPGA_Blink

This project implements a 1 Hz LED blinker in VHDL using a simple frequency divider.

## Overview
The design uses a counter that runs over half the input clock frequency to toggle the LED every 0.5 seconds, achieving a 1 Hz blink.  
The input frequency is declared as a **generic parameter**, so it can be easily adjusted for different FPGA boards.

## Folder Structure
- `src/` — contains the main VHDL source file (`OneHzClock.vhd`)  
- `simu/` — optional testbench and simulation files  
- `demo/` — includes the demo video and related materials  

## Files
- `src/OneHzClock.vhd` — main VHDL source file
- `simu/OneHzClock_tb.vhd` —  Testbench of the top level
- `demo/demo_video.mp4` — short demo showing the LED blinking  
- `README.md` — project description  

## Demo
[Demo Video](./demo/demo_video.mp4)

## Author
Ahmed Amir

