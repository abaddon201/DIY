EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	1100 7100 1200 7200
$Comp
L CPU:Z80CPU U?
U 1 1 5F4A5FCC
P 2700 2600
F 0 "U?" H 2700 4281 50  0000 C CNN
F 1 "Z80CPU" H 2700 4190 50  0000 C CNN
F 2 "" H 2700 3000 50  0001 C CNN
F 3 "www.zilog.com/manage_directlink.php?filepath=docs/z80/um0080" H 2700 3000 50  0001 C CNN
	1    2700 2600
	1    0    0    -1  
$EndComp
Text HLabel 3750 2800 2    50   Input ~ 0
A14
Text HLabel 3750 2900 2    50   Input ~ 0
A15
Wire Wire Line
	3400 2800 3750 2800
Wire Wire Line
	3400 2900 3750 2900
Wire Wire Line
	3400 1400 3750 1400
Wire Wire Line
	3400 1500 3750 1500
Wire Wire Line
	3400 1600 3750 1600
Wire Wire Line
	3400 1700 3750 1700
Wire Wire Line
	3400 1800 3750 1800
Wire Wire Line
	3400 1900 3750 1900
Wire Wire Line
	3400 2000 3750 2000
Wire Wire Line
	3400 2100 3750 2100
Wire Wire Line
	3400 2200 3750 2200
Wire Wire Line
	3400 2300 3750 2300
Wire Wire Line
	3400 2400 3750 2400
Wire Wire Line
	3400 2500 3750 2500
Wire Wire Line
	3400 2600 3750 2600
Wire Wire Line
	3400 2700 3750 2700
Wire Wire Line
	3400 3100 3750 3100
Wire Wire Line
	3400 3200 3750 3200
Wire Wire Line
	3400 3300 3750 3300
Wire Wire Line
	3400 3400 3750 3400
Wire Wire Line
	3400 3500 3750 3500
Wire Wire Line
	3400 3600 3750 3600
Wire Wire Line
	3400 3700 3750 3700
Wire Wire Line
	3400 3800 3750 3800
Text HLabel 3750 1400 2    50   Input ~ 0
A0
Text HLabel 3750 1500 2    50   Input ~ 0
A1
Text HLabel 3750 1600 2    50   Input ~ 0
A2
Text HLabel 3750 1700 2    50   Input ~ 0
A3
Text HLabel 3750 1800 2    50   Input ~ 0
A4
Text HLabel 3750 1900 2    50   Input ~ 0
A5
Text HLabel 3750 2000 2    50   Input ~ 0
A6
Text HLabel 3750 2100 2    50   Input ~ 0
A7
Text HLabel 3750 2200 2    50   Input ~ 0
A8
Text HLabel 3750 2300 2    50   Input ~ 0
A9
Text HLabel 3750 2400 2    50   Input ~ 0
A10
Text HLabel 3750 2500 2    50   Input ~ 0
A11
Text HLabel 3750 2600 2    50   Input ~ 0
A12
Text HLabel 3750 2700 2    50   Input ~ 0
A13
Text Label 3500 1400 0    50   ~ 0
A0
Text Label 3500 1500 0    50   ~ 0
A1
Text Label 3500 1600 0    50   ~ 0
A2
Text Label 3500 1700 0    50   ~ 0
A3
Text Label 3500 1800 0    50   ~ 0
A4
Text Label 3500 1900 0    50   ~ 0
A5
Text Label 3500 2000 0    50   ~ 0
A6
Text Label 3500 2100 0    50   ~ 0
A7
Text Label 3500 2200 0    50   ~ 0
A8
Text Label 3500 2300 0    50   ~ 0
A9
Text Label 3500 2400 0    50   ~ 0
A10
Text Label 3500 2500 0    50   ~ 0
A11
Text Label 3500 2600 0    50   ~ 0
A12
Text Label 3500 2700 0    50   ~ 0
A13
Text Label 3500 2800 0    50   ~ 0
A14
Text Label 3500 2900 0    50   ~ 0
A15
Text Label 3500 3100 0    50   ~ 0
D0
Text Label 3500 3200 0    50   ~ 0
D1
Text Label 3500 3300 0    50   ~ 0
D2
Text Label 3500 3400 0    50   ~ 0
D3
Text Label 3500 3500 0    50   ~ 0
D4
Text Label 3500 3600 0    50   ~ 0
D5
Text Label 3500 3700 0    50   ~ 0
D6
Text Label 3500 3800 0    50   ~ 0
D7
Text HLabel 3750 3100 2    50   Input ~ 0
D0
Text HLabel 3750 3200 2    50   Input ~ 0
D1
Text HLabel 3750 3300 2    50   Input ~ 0
D2
Text HLabel 3750 3400 2    50   Input ~ 0
D3
Text HLabel 3750 3500 2    50   Input ~ 0
D4
Text HLabel 3750 3600 2    50   Input ~ 0
D5
Text HLabel 3750 3700 2    50   Input ~ 0
D6
Text HLabel 3750 3800 2    50   Input ~ 0
D7
$Comp
L power:+5V #PWR?
U 1 1 5F5547E5
P 1300 2600
F 0 "#PWR?" H 1300 2450 50  0001 C CNN
F 1 "+5V" V 1315 2728 50  0000 L CNN
F 2 "" H 1300 2600 50  0001 C CNN
F 3 "" H 1300 2600 50  0001 C CNN
	1    1300 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F5554FC
P 1550 2600
F 0 "R?" V 1343 2600 50  0000 C CNN
F 1 "10K" V 1434 2600 50  0000 C CNN
F 2 "" V 1480 2600 50  0001 C CNN
F 3 "~" H 1550 2600 50  0001 C CNN
	1    1550 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 2600 2000 2600
Wire Wire Line
	1300 2600 1400 2600
$Comp
L power:+5V #PWR?
U 1 1 5F55F3E3
P 1300 3700
F 0 "#PWR?" H 1300 3550 50  0001 C CNN
F 1 "+5V" V 1315 3828 50  0000 L CNN
F 2 "" H 1300 3700 50  0001 C CNN
F 3 "" H 1300 3700 50  0001 C CNN
	1    1300 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F55F3E9
P 1550 3700
F 0 "R?" V 1343 3700 50  0000 C CNN
F 1 "10K" V 1434 3700 50  0000 C CNN
F 2 "" V 1480 3700 50  0001 C CNN
F 3 "~" H 1550 3700 50  0001 C CNN
	1    1550 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 3700 2000 3700
Wire Wire Line
	1300 3700 1400 3700
Text HLabel 1800 2400 0    50   Input ~ 0
~M1
Text HLabel 1750 2000 0    50   Input ~ 0
~NMI
Text HLabel 1750 2100 0    50   Input ~ 0
~INT
Text HLabel 2000 1700 0    50   Input ~ 0
~CLK
Wire Wire Line
	2000 3100 1750 3100
Wire Wire Line
	2000 3200 1750 3200
Wire Wire Line
	2000 3300 1750 3300
Wire Wire Line
	2000 3400 1750 3400
Text HLabel 1750 3100 0    50   Input ~ 0
~RD
Text HLabel 1750 3200 0    50   Input ~ 0
~WR
Text HLabel 1750 3300 0    50   Input ~ 0
~MREQ
Text HLabel 1750 3400 0    50   Input ~ 0
~IORQ
NoConn ~ 2000 2500
NoConn ~ 2000 2700
NoConn ~ 2000 3800
Wire Wire Line
	1750 2000 2000 2000
Wire Wire Line
	1750 2100 2000 2100
Wire Wire Line
	1800 2400 2000 2400
Text Label 1800 3100 0    50   ~ 0
~RD
Text Label 1800 3200 0    50   ~ 0
~WR
Text Label 1800 3300 0    50   ~ 0
~MREQ
Wire Wire Line
	2000 1400 1750 1400
Text HLabel 1750 1400 0    50   Input ~ 0
~RESET
$Comp
L power:GND #PWR?
U 1 1 5F5AB325
P 2700 4250
F 0 "#PWR?" H 2700 4000 50  0001 C CNN
F 1 "GND" H 2705 4077 50  0000 C CNN
F 2 "" H 2700 4250 50  0001 C CNN
F 3 "" H 2700 4250 50  0001 C CNN
	1    2700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4100 2700 4250
$Comp
L power:+5V #PWR?
U 1 1 5F5B48A7
P 3150 1100
F 0 "#PWR?" H 3150 950 50  0001 C CNN
F 1 "+5V" H 3165 1273 50  0000 C CNN
F 2 "" H 3150 1100 50  0001 C CNN
F 3 "" H 3150 1100 50  0001 C CNN
	1    3150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1100 3150 1100
$EndSCHEMATC
