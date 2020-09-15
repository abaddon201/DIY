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

## Description

Cone is built from "original" Z80 CPU. Rom is extended to 128K and it's EEPROM, this can help to program it from the 
STM32 microcontroller. RAM changed to the SRAM, it's a 128K parallel RAM chip (possibly I'll extend it, but nor sure).
Music soprocessor is a AY3-8910/8912 successor: ???.
All other parts would be replaced by STM32 microcontroller.
STM32 would emulate VG93 (Floppy drive), Tape playing, and create real image on the screen. It's also would
work as RAM/ROM page selector and would provide tact frequency for the CPU and AY. Also it would generate INT signal
to the CPU.

## Known issues

1.  STM32 is a 3.3V chip, but it has +5V tolerant inputs. Also all other selected chips are
TTL compatible, except Z80 CPU. Current approach to solve this: use signal converters for all input/output signals
for Z80. But it adds atleast 4 chips such that.
2. Joystick selector: I want to map different layouts to the joystic (Interface 2, QAOP_Space, Cursor, Kempston).
Possibly I can use a https://www.chipdip.ru/product/sn74ls125ad chip for that...

## Parts

STM32F469IIT6 - soldered by jlcpcb (too many small pins)
GLS29EE010-70-4C-NHE - ROM https://ru.mouser.com/ProductDetail/Greenliant/GLS29EE010-70-4C-NHE?qs=bAdOcXfFoy0toSXpScwIgg%3D%3D
IS62C1024AL-35QLI - RAM https://ru.mouser.com/ProductDetail/ISSI/IS62C1024AL-35QLI?qs=tFgq3%2FJV4HjpRgQnMjsF2Q%3D%3D
Screen - FSMC module with touchscreen http://www.lcdwiki.com/3.2inch_16BIT_Module_ILI9341_SKU:MRB3205

# Notes

## ZX Keyboard layout

https://d2j6dbq0eux0bg.cloudfront.net/images/9970794/532242200.jpg

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

http://zxbyte.ru/speccybob.htm

## INT

Freq 50Hz
Period: 20ms
Positive: 100 us
Negative: 19.9 ms

## Tape

### Sound gen

Calculation of the timer:

Arr = Fclk/(Nsamples*Fsound) - 1

### Format

Pilot tone: 807 Hz 2sec for data block, 5 sec for the header
Sync impulse: 667 tacts up, 735 tacts down
1: 1710 tacts up, down (2047 Hz)
0: 855 tacts up, down (1023 Hz)

### Links

https://documentation.help/BASin/format_tape.html
https://trolsoft.ru/ru/sch/zx-tapper
http://arduitape.blogspot.com/2016/10/introducing-tzxduino.html?m=1
https://m.habr.com/ru/post/330752/
http://zx-info.ru/?rc=12&id=5

Doing power lines right:
https://www.youtube.com/watch?v=klHu-08zyhw&list=PLiu4O2eIDAdURfQ2yeAJLD7160RrJCH3i&index=4

## Screen

### Colors table

https://en.m.wikipedia.org/wiki/ZX_Spectrum_graphic_modes

## VG93

https://zx-pk.ru/threads/30269-emulyator-kontrollera-diskovoda-beta-disk-na-avr.html

## Schemes

https://zx-pk.ru/threads/940-scorpion-zs-256-turbo-(skhema).html
https://zx-pk.ru/threads/27819-pentagon-128k-opisanie-naladki.html
https://zx-pk.ru/threads/23343-novaya-plata-pentagon-128k-modifikatsiya-2014-g.html
https://m.habr.com/ru/post/498222/
http://zxdn.narod.ru/hardware.htm
http://micklab.ru/ZX%20Spectrum/Pentagon128.htm
