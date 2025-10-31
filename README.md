# OneHzClock_FPGA_Blink

This project implements a 1 Hz LED blinker in VHDL using a simple frequency divider.

## Overview
The design uses a counter that runs over half the input clock frequency to toggle the LED every 0.5 seconds, achieving a 1 Hz blink.  
The input frequency is declared as a generic parameter, making it easy to adapt for other FPGA boards.

## Files
- `OneHzClock.vhd` — main VHDL code
- `demo_video.mp4` — short demo of the LED blinking
- `README.md` — project description

## Demo
[Demo Video](./demo_video.mp4)

## Author
Ahmed Amir
