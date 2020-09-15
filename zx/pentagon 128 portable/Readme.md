# Tasks
1. build devboard for stm32f469II
2. build devboard for rom/ram
3. build devboard for Z80
3. create tap player
4. build prototype
5. create vg93 emulation
6. add AY

# Thougths
1. Use PF register for address line (placed on two neightbour sides)
2. PG0-PG7 - data pins (PI8 - slow, PI2 - absent)

2. Use PI4-11 for data line (also)

Don't use PA4, PA5 for +5V
PI8 - sow port
PC13, PC14, PC15 - slow ports (2 MHz max)

# Hardware

# Notes

## ZX memory layout

Memory selector port:
0x7ffd

D0-D2 - page number at 0xC000-0xFFFF
D3 - 0 - regular screen, 1 - extended (0xC000-)
D4 - 0 - 128K ROM, 1 - 48K ROM
D5 - port lock
D6-D7 - unused

Pages layouted as:

| | | | |
| 0xFFFF | | | |
| |    CPU3 | RAM0 | A14=1,A15=1 |
| 0xC000 | | | |
| 0xBFFF | | | |
| | CPU2 | RAM2 | A14=0, A15=1 |
| 0x8000 | | | |
| 0x7FFF | | | |
| | CPU1 | RAM5 | A14=1, A15=0 |
| 0x4000 | | | |
| 0x3FFF | | | |
| | CPU0 | ROM0 | A14=0, A15=0 |
| 0x0000 | | | |

# INT

Freq 50Hz
Period: 20ms
Positive: 100 us
Negative: 19.9 ms

# Tape

## Sound gen

Calculation of the timer:

Arr = Fclk/(Nsamples*Fsound) - 1

## Format

Pilot tone: 807 Hz 2sec for data block, 5 sec for the header
Sync impulse: 667 tacts up, 735 tacts down
1: 1710 tacts up, down (2047 Hz)
0: 855 tacts up, down (1023 Hz)
