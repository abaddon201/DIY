EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Audio:YM2149 U?
U 1 1 5F5BE3B6
P 3350 3500
F 0 "U?" H 3350 4881 50  0000 C CNN
F 1 "YM2149" H 3350 4790 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 4000 2100 50  0001 C CNN
F 3 "http://www.ym2149.com/ym2149.pdf" H 3350 3500 50  0001 C CNN
	1    3350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3600 2500 3600
Wire Wire Line
	2850 3700 2500 3700
Text HLabel 2500 3600 0    50   Input ~ 0
BDIR
Text HLabel 2500 3700 0    50   Input ~ 0
BC1
Wire Wire Line
	2850 3900 2500 3900
Text HLabel 2500 3900 0    50   Input ~ 0
AY_CLK
Wire Wire Line
	2850 4100 2500 4100
Text HLabel 2500 4100 0    50   Input ~ 0
~RESET
Wire Wire Line
	2850 2500 2500 2500
Text HLabel 2500 2500 0    50   Input ~ 0
D0
Text HLabel 2500 2600 0    50   Input ~ 0
D1
Text HLabel 2500 2700 0    50   Input ~ 0
D2
Text HLabel 2500 2800 0    50   Input ~ 0
D3
Text HLabel 2500 2900 0    50   Input ~ 0
D4
Text HLabel 2500 3000 0    50   Input ~ 0
D5
Text HLabel 2500 3100 0    50   Input ~ 0
D6
Text HLabel 2500 3200 0    50   Input ~ 0
D7
Wire Wire Line
	2850 2600 2500 2600
Wire Wire Line
	2850 2700 2500 2700
Wire Wire Line
	2850 2800 2500 2800
Wire Wire Line
	2850 2900 2500 2900
Wire Wire Line
	2850 3000 2500 3000
Wire Wire Line
	2850 3100 2500 3100
Wire Wire Line
	2850 3200 2500 3200
$Comp
L power:+5V #PWR?
U 1 1 5F5C0B75
P 2000 3800
F 0 "#PWR?" H 2000 3650 50  0001 C CNN
F 1 "+5V" V 2015 3928 50  0000 L CNN
F 2 "" H 2000 3800 50  0001 C CNN
F 3 "" H 2000 3800 50  0001 C CNN
	1    2000 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 3800 2000 3800
Wire Wire Line
	2850 3400 2000 3400
$Comp
L power:+5V #PWR?
U 1 1 5F5C1A92
P 2000 3400
F 0 "#PWR?" H 2000 3250 50  0001 C CNN
F 1 "+5V" H 2015 3573 50  0000 C CNN
F 2 "" H 2000 3400 50  0001 C CNN
F 3 "" H 2000 3400 50  0001 C CNN
	1    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5C1DB3
P 2000 3500
F 0 "#PWR?" H 2000 3250 50  0001 C CNN
F 1 "GND" H 2005 3327 50  0000 C CNN
F 2 "" H 2000 3500 50  0001 C CNN
F 3 "" H 2000 3500 50  0001 C CNN
	1    2000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3500 2000 3500
$Comp
L power:GND #PWR?
U 1 1 5F5C263B
P 3350 4850
F 0 "#PWR?" H 3350 4600 50  0001 C CNN
F 1 "GND" H 3355 4677 50  0000 C CNN
F 2 "" H 3350 4850 50  0001 C CNN
F 3 "" H 3350 4850 50  0001 C CNN
	1    3350 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F5C2C20
P 3750 2100
F 0 "#PWR?" H 3750 1950 50  0001 C CNN
F 1 "+5V" H 3765 2273 50  0000 C CNN
F 2 "" H 3750 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2300 3750 2300
Wire Wire Line
	3750 2300 3750 2100
Wire Wire Line
	3350 4700 3350 4850
$Comp
L Device:R R?
U 1 1 5F5C365A
P 5500 1850
F 0 "R?" H 5570 1896 50  0000 L CNN
F 1 "4.7K" H 5570 1805 50  0000 L CNN
F 2 "" V 5430 1850 50  0001 C CNN
F 3 "~" H 5500 1850 50  0001 C CNN
	1    5500 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F5C4183
P 5850 1850
F 0 "R?" H 5920 1896 50  0000 L CNN
F 1 "4.7K" H 5920 1805 50  0000 L CNN
F 2 "" V 5780 1850 50  0001 C CNN
F 3 "~" H 5850 1850 50  0001 C CNN
	1    5850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F5C440C
P 5500 2900
F 0 "R?" H 5570 2946 50  0000 L CNN
F 1 "2K" H 5570 2855 50  0000 L CNN
F 2 "" V 5430 2900 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F5C4893
P 5850 2900
F 0 "R?" H 5920 2946 50  0000 L CNN
F 1 "2K" H 5920 2855 50  0000 L CNN
F 2 "" V 5780 2900 50  0001 C CNN
F 3 "~" H 5850 2900 50  0001 C CNN
	1    5850 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F5C4CDD
P 6900 2900
F 0 "R?" H 6970 2946 50  0000 L CNN
F 1 "5.1K" H 6970 2855 50  0000 L CNN
F 2 "" V 6830 2900 50  0001 C CNN
F 3 "~" H 6900 2900 50  0001 C CNN
	1    6900 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F5C4FC7
P 6850 1850
F 0 "R?" H 6920 1896 50  0000 L CNN
F 1 "5.1K" H 6920 1805 50  0000 L CNN
F 2 "" V 6780 1850 50  0001 C CNN
F 3 "~" H 6850 1850 50  0001 C CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F5C547E
P 4950 2150
F 0 "R?" V 4743 2150 50  0000 C CNN
F 1 "1K" V 4834 2150 50  0000 C CNN
F 2 "" V 4880 2150 50  0001 C CNN
F 3 "~" H 4950 2150 50  0001 C CNN
	1    4950 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F5C5A5C
P 4950 2650
F 0 "R?" V 4743 2650 50  0000 C CNN
F 1 "1K" V 4834 2650 50  0000 C CNN
F 2 "" V 4880 2650 50  0001 C CNN
F 3 "~" H 4950 2650 50  0001 C CNN
	1    4950 2650
	0    1    1    0   
$EndComp
$Comp
L Device:CP C?
U 1 1 5F5C5F2C
P 7400 2150
F 0 "C?" V 7145 2150 50  0000 C CNN
F 1 "10.0" V 7236 2150 50  0000 C CNN
F 2 "" H 7438 2000 50  0001 C CNN
F 3 "~" H 7400 2150 50  0001 C CNN
	1    7400 2150
	0    1    1    0   
$EndComp
$Comp
L Device:CP C?
U 1 1 5F5C6BAA
P 7400 2650
F 0 "C?" V 7145 2650 50  0000 C CNN
F 1 "10.0" V 7236 2650 50  0000 C CNN
F 2 "" H 7438 2500 50  0001 C CNN
F 3 "~" H 7400 2650 50  0001 C CNN
	1    7400 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 2150 6850 2150
Wire Wire Line
	7250 2650 6900 2650
Wire Wire Line
	5500 2750 5500 2650
Connection ~ 5500 2650
Wire Wire Line
	5500 2650 5100 2650
Wire Wire Line
	5500 2650 5500 2000
Wire Wire Line
	5850 2000 5850 2150
Connection ~ 5850 2150
Wire Wire Line
	5850 2150 5100 2150
Wire Wire Line
	5850 2150 5850 2750
Wire Wire Line
	6900 2750 6900 2650
Connection ~ 6900 2650
Wire Wire Line
	6900 2650 5500 2650
Wire Wire Line
	6850 2000 6850 2150
Connection ~ 6850 2150
Wire Wire Line
	6850 2150 5850 2150
$Comp
L power:GND #PWR?
U 1 1 5F5CDE29
P 6900 3150
F 0 "#PWR?" H 6900 2900 50  0001 C CNN
F 1 "GND" H 6905 2977 50  0000 C CNN
F 2 "" H 6900 3150 50  0001 C CNN
F 3 "" H 6900 3150 50  0001 C CNN
	1    6900 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5CE47F
P 6850 1600
F 0 "#PWR?" H 6850 1350 50  0001 C CNN
F 1 "GND" H 6855 1427 50  0000 C CNN
F 2 "" H 6850 1600 50  0001 C CNN
F 3 "" H 6850 1600 50  0001 C CNN
	1    6850 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 1600 6850 1700
Wire Wire Line
	6900 3050 6900 3150
Wire Wire Line
	5850 1700 5850 1550
Wire Wire Line
	5850 1550 5700 1550
Wire Wire Line
	5500 1550 5500 1700
Wire Wire Line
	5700 1550 5700 1250
Wire Wire Line
	5700 1250 4550 1250
Connection ~ 5700 1550
Wire Wire Line
	5700 1550 5500 1550
Text HLabel 4550 1250 0    50   Input ~ 0
SOUND
Wire Wire Line
	5500 3050 5500 3200
Wire Wire Line
	5500 3200 5700 3200
Wire Wire Line
	5850 3200 5850 3050
Wire Wire Line
	5700 3200 5700 3400
Wire Wire Line
	5700 3400 4400 3400
Wire Wire Line
	4400 3400 4400 2600
Wire Wire Line
	4400 2600 3850 2600
Connection ~ 5700 3200
Wire Wire Line
	5700 3200 5850 3200
Wire Wire Line
	3850 2500 4400 2500
Wire Wire Line
	4400 2500 4400 2150
Wire Wire Line
	4400 2150 4800 2150
Wire Wire Line
	3850 2700 4650 2700
Wire Wire Line
	4650 2700 4650 2650
Wire Wire Line
	4650 2650 4800 2650
Text HLabel 7900 2150 2    50   Input ~ 0
SOUND_RIGHT
Text HLabel 7900 2650 2    50   Input ~ 0
SOUND_LEFT
Wire Wire Line
	7550 2150 7900 2150
Wire Wire Line
	7550 2650 7900 2650
$EndSCHEMATC
