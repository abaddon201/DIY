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
Music soprocessor is a AY3-8910/8912 successor: YM2149F.
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
crystal - 8MHz https://ru.mouser.com/ProductDetail/815-ABM3B8MHZ101UT
tantalum capacitors - https://ru.mouser.com/ProductDetail/581-TPSB225K025R1200
miniUSB - https://ru.mouser.com/ProductDetail/Amphenol-FCI/10033526-N3212LF?qs=LmzVcvYPptRTPTxae6JWyQ%3D%3D
TXB0108 - level converter - https://www.ti.com/lit/ds/symlink/txb0108.pdf?HQS=TI-null-null-mousermode-df-pf-null-wwe&ts=1600075026418&ref_url=https%253A%252F%252Fru.mouser.com%252F

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
http://zx-info.ru/?rc=12&id=5

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
https://www.cxemateka.ru/en/building_zx_spectrum_128k_clone_beta_disk_interface_ay_3_8910_ym2149f/all
https://zx-pk.ru/threads/27819-pentagon-128k-opisanie-naladki.html
https://zx-pk.ru/threads/23343-novaya-plata-pentagon-128k-modifikatsiya-2014-g.html
http://sblive.narod.ru/ZX-Spectrum/Pentagon128k/Pentagon128k.htm

## File formats

http://speccy.info/SCL
https://github.com/shred/tzxtools/tree/master/docs
http://www.seasip.info/ZX/unix.html

# Links

AY https://bulba.untergrund.net/elect.htm

https://documentation.help/BASin/format_tape.html
https://trolsoft.ru/ru/sch/zx-tapper
http://arduitape.blogspot.com/2016/10/introducing-tzxduino.html?m=1
https://m.habr.com/ru/post/330752/
http://zx-info.ru/?rc=12&id=5

Doing power lines right:
https://www.youtube.com/watch?v=klHu-08zyhw&list=PLiu4O2eIDAdURfQ2yeAJLD7160RrJCH3i&index=4

Ben Heck's pzx v2: https://github.com/thebenheckshow/204-tbhs-zx-kit
chips analogues: https://cxem.net/sprav/sprav48.php
zx hardware articles: https://zxpress.ru/menu/1/193
zx extended memory (128K) 
https://zxpress.ru/article.php?id=9971
http://speccy.info/%D0%9F%D0%BE%D1%80%D1%82_7FFD

pentagon timings: 
http://hype.retroscene.org/blog/773.html
https://zx-pk.ru/threads/21212-tajmingi-pentagon-128-).html?p=598258&viewfull=1#post598258

zx tr-dos: http://zxpress.ru/book_articles.php?id=1868

zx ULA verilog: 
https://github.com/fabriziotappero/ip-cores/tree/video_controller_ula_chip_for_zx_spectrum
https://opencores.org/projects/zx_ula

NedoPc:
http://nedopc.com/zxevo/zxevo.php

emulators: https://www.emu-land.net/computers/zx_spectrum/emuls/windows
zx rom disassembly: https://www.esocop.org/docs/CompleteSpectrumROMDisassemblyThe.pdf


# Datasheets

Z80 http://www.farnell.com/datasheets/91822.pdf?_ga=2.86094616.1077264973.1600187324-1828024949.1597676628
DataSheet https://ru.mouser.com/datasheet/2/176/71061-1102136.pdf
crystal https://ru.mouser.com/datasheet/2/3/abm3b-1774998.pdf
ferrite bead https://ru.mouser.com/datasheet/2/281/ENFA0003-1879738.pdf
