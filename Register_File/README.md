  # Register File Module
# 8×8 Register File for 8-bit RISC Processor

This module implements an 8×8 register file that serves as a core building block
for an 8-bit RISC processor.

## Features
- 8 registers, each 8 bits wide
- Dual read ports
- Single synchronous write port
- Rising-edge triggered global clock
- Global reset support

## How It Works
- A 3-bit write address is decoded using a 3-to-8 decoder
- The decoder output is ANDed with a global RegWrite signal
- Only the selected register receives Write Enable
- Data is written on the rising edge of the clock
- Two multiplexers allow simultaneous reading of any two registers

## Timing Model
- Write: synchronous (posedge clock)
- Read: asynchronous (combinational)
- Reset: clears all registers to zero

## Tools Used
- Logisim-Evolution – schematic-level design
- Icarus Verilog – RTL reference simulation
- GTKWave – waveform and timing analysis

## Files
- `Register_Riscrev.circ` – Logisim register file design
- `screenshots/` – schematic and operation images
- `verilog/` – Verilog RTL and testbench
