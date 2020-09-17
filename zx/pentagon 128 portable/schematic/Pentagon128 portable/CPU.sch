EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
$Comp
L Memory_RAM:IS61C5128AS-25TLI U?
U 1 1 5F4A84C9
P 5600 2450
F 0 "U?" H 5600 3931 50  0000 C CNN
F 1 "IS61C5128AS-25TLI" H 5600 3840 50  0000 C CNN
F 2 "Package_SO:TSOP-II-32_21.0x10.2mm_P1.27mm" H 5100 3600 50  0001 C CNN
F 3 "http://www.issi.com/WW/pdf/61-64C5128AL.pdf" H 5600 2450 50  0001 C CNN
	1    5600 2450
	1    0    0    -1  
$EndComp
$Comp
L pentagon128_portable:GLS29EE010-70-4C-PHE IC?
U 1 1 5F4AAAD7
P 7300 1450
F 0 "IC?" H 7850 1715 50  0000 C CNN
F 1 "GLS29EE010-70-4C-PHE" H 7850 1624 50  0000 C CNN
F 2 "DIP1556W56P254L4191H508Q32N" H 8250 1550 50  0001 L CNN
F 3 "https://www.greenliant.com/dotAsset/40840.pdf" H 8250 1450 50  0001 L CNN
F 4 "EEPROM 1MB, 5V, 70ns 128K x 8 Flash" H 8250 1350 50  0001 L CNN "Description"
F 5 "5.08" H 8250 1250 50  0001 L CNN "Height"
F 6 "Greenliant" H 8250 1150 50  0001 L CNN "Manufacturer_Name"
F 7 "GLS29EE010-70-4C-PHE" H 8250 1050 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "GLS29EE010-70-4C-PHE" H 8250 950 50  0001 L CNN "Arrow Part Number"
F 9 "804-GLS29EE010-70PHE" H 8250 750 50  0001 L CNN "Mouser Part Number"
F 10 "https://www.mouser.com/Search/Refine.aspx?Keyword=804-GLS29EE010-70PHE" H 8250 650 50  0001 L CNN "Mouser Price/Stock"
	1    7300 1450
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
Wire Wire Line
	5000 1350 4650 1350
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
Wire Wire Line
	5000 1450 4650 1450
Wire Wire Line
	5000 1550 4650 1550
Wire Wire Line
	5000 1650 4650 1650
Wire Wire Line
	5000 1750 4650 1750
Wire Wire Line
	5000 1850 4650 1850
Wire Wire Line
	5000 1950 4650 1950
Wire Wire Line
	5000 2050 4650 2050
Wire Wire Line
	5000 2150 4650 2150
Wire Wire Line
	5000 2250 4650 2250
Wire Wire Line
	5000 2350 4650 2350
Wire Wire Line
	5000 2450 4650 2450
Wire Wire Line
	5000 2550 4650 2550
Wire Wire Line
	5000 2650 4650 2650
Wire Wire Line
	5000 2750 4650 2750
Wire Wire Line
	5000 2850 4650 2850
Wire Wire Line
	5000 2950 4650 2950
Wire Wire Line
	5000 3050 4650 3050
Wire Wire Line
	5000 3150 4650 3150
Wire Wire Line
	6200 1350 6500 1350
Wire Wire Line
	6200 1450 6500 1450
Wire Wire Line
	6200 1550 6500 1550
Wire Wire Line
	6200 1650 6500 1650
Wire Wire Line
	6200 1750 6500 1750
Wire Wire Line
	6200 1850 6500 1850
Wire Wire Line
	6200 1950 6500 1950
Wire Wire Line
	6200 2050 6500 2050
Text Label 4700 1350 0    50   ~ 0
A0
Text Label 4700 1450 0    50   ~ 0
A1
Text Label 4700 1550 0    50   ~ 0
A2
Text Label 4700 1650 0    50   ~ 0
A3
Text Label 4700 1750 0    50   ~ 0
A4
Text Label 4700 1850 0    50   ~ 0
A5
Text Label 4700 1950 0    50   ~ 0
A6
Text Label 4700 2050 0    50   ~ 0
A7
Text Label 4700 2150 0    50   ~ 0
A8
Text Label 4700 2250 0    50   ~ 0
A9
Text Label 4700 2350 0    50   ~ 0
A10
Text Label 4700 2450 0    50   ~ 0
A11
Text Label 4700 2550 0    50   ~ 0
A12
Text Label 4700 2650 0    50   ~ 0
A13
Text Label 4650 2750 0    50   ~ 0
RAM_PG0
Text Label 4650 2850 0    50   ~ 0
RAM_PG1
Text Label 4650 2950 0    50   ~ 0
RAM_PG2
Text Label 4650 3050 0    50   ~ 0
RAM_PG3
Text Label 4650 3150 0    50   ~ 0
RAM_PG4
Text Label 6300 1350 0    50   ~ 0
D0
Text Label 6300 1450 0    50   ~ 0
D1
Text Label 6300 1550 0    50   ~ 0
D2
Text Label 6300 1650 0    50   ~ 0
D3
Text Label 6300 1750 0    50   ~ 0
D4
Text Label 6300 1850 0    50   ~ 0
D5
Text Label 6300 1950 0    50   ~ 0
D6
Text Label 6300 2050 0    50   ~ 0
D7
Wire Wire Line
	7300 1550 7050 1550
Wire Wire Line
	7300 1650 7050 1650
Wire Wire Line
	7300 1750 7050 1750
Wire Wire Line
	7300 1850 7050 1850
Wire Wire Line
	7300 1950 7050 1950
Wire Wire Line
	7300 2050 7050 2050
Wire Wire Line
	7300 2150 7050 2150
Wire Wire Line
	7300 2250 7050 2250
Wire Wire Line
	7300 2350 7050 2350
Wire Wire Line
	7300 2450 7050 2450
Wire Wire Line
	7300 2550 7050 2550
Wire Wire Line
	7300 2650 7050 2650
Wire Wire Line
	7300 2750 7050 2750
Wire Wire Line
	7300 2850 7050 2850
Wire Wire Line
	8400 1750 8700 1750
Wire Wire Line
	8400 1850 8700 1850
Wire Wire Line
	8400 1950 8700 1950
Wire Wire Line
	8400 2050 8700 2050
Wire Wire Line
	8400 2150 8700 2150
Wire Wire Line
	8400 2250 8700 2250
Wire Wire Line
	8400 2350 8700 2350
Wire Wire Line
	8400 2450 8700 2450
Wire Wire Line
	8400 2550 8700 2550
Wire Wire Line
	8400 2650 8700 2650
Wire Wire Line
	8400 2750 8700 2750
Wire Wire Line
	8400 2850 8700 2850
Wire Wire Line
	8400 2950 8700 2950
Text Label 7050 2650 0    50   ~ 0
D0
Text Label 7050 2750 0    50   ~ 0
D1
Text Label 7050 2850 0    50   ~ 0
D2
Text Label 8500 2550 0    50   ~ 0
D7
Text Label 8500 2650 0    50   ~ 0
D6
Text Label 8500 2750 0    50   ~ 0
D5
Text Label 8500 2850 0    50   ~ 0
D4
Text Label 8500 2950 0    50   ~ 0
D3
Text Label 7050 2550 0    50   ~ 0
A0
Text Label 7050 2450 0    50   ~ 0
A1
Text Label 7050 2350 0    50   ~ 0
A2
Text Label 7050 2250 0    50   ~ 0
A3
Text Label 7050 2150 0    50   ~ 0
A4
Text Label 7050 2050 0    50   ~ 0
A5
Text Label 7050 1950 0    50   ~ 0
A6
Text Label 7050 1850 0    50   ~ 0
A7
Text Label 7050 1750 0    50   ~ 0
A12
Text Label 8500 2350 0    50   ~ 0
A10
Text Label 8500 1950 0    50   ~ 0
A8
Text Label 8500 2050 0    50   ~ 0
A9
Text Label 8500 2150 0    50   ~ 0
A11
Text Label 8500 1850 0    50   ~ 0
A13
Text Label 8500 1750 0    50   ~ 0
ROM_PG0
Text Label 7050 1650 0    50   ~ 0
ROM_PG1
Text Label 7050 1550 0    50   ~ 0
ROM_PG2
Text HLabel 4650 2750 0    50   Input ~ 0
RAM_PG0
Text HLabel 4650 2850 0    50   Input ~ 0
RAM_PG1
Text HLabel 4650 2950 0    50   Input ~ 0
RAM_PG2
Text HLabel 4650 3050 0    50   Input ~ 0
RAM_PG3
Text HLabel 4650 3150 0    50   Input ~ 0
RAM_PG4
NoConn ~ 7300 1450
NoConn ~ 8400 1650
Text HLabel 7050 1550 0    50   Input ~ 0
ROM_PG2
Text HLabel 7050 1650 0    50   Input ~ 0
ROM_PG1
Text HLabel 8700 1750 2    50   Input ~ 0
ROM_PG0
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
Text HLabel 8700 2250 2    50   Input ~ 0
~ROM_OE
Text HLabel 8700 2450 2    50   Input ~ 0
~ROM_CE
Wire Wire Line
	8400 1550 8700 1550
Text HLabel 8700 1550 2    50   Input ~ 0
~ROM_WE
Wire Wire Line
	5000 3350 4650 3350
Wire Wire Line
	5000 3450 4650 3450
Wire Wire Line
	5000 3550 4650 3550
Text HLabel 4650 3350 0    50   Input ~ 0
~RAM_CE
Text HLabel 4650 3450 0    50   Input ~ 0
~RAM_OE
Text HLabel 4650 3550 0    50   Input ~ 0
~RAM_WE
Wire Wire Line
	2000 1400 1750 1400
Text HLabel 1750 1400 0    50   Input ~ 0
~RESET
$Comp
L power:+5V #PWR?
U 1 1 5F5A1528
P 8550 1300
F 0 "#PWR?" H 8550 1150 50  0001 C CNN
F 1 "+5V" H 8565 1473 50  0000 C CNN
F 2 "" H 8550 1300 50  0001 C CNN
F 3 "" H 8550 1300 50  0001 C CNN
	1    8550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1300 8550 1450
Wire Wire Line
	8550 1450 8400 1450
$Comp
L power:GND #PWR?
U 1 1 5F5A5F83
P 7200 3150
F 0 "#PWR?" H 7200 2900 50  0001 C CNN
F 1 "GND" H 7205 2977 50  0000 C CNN
F 2 "" H 7200 3150 50  0001 C CNN
F 3 "" H 7200 3150 50  0001 C CNN
	1    7200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2950 7200 2950
Wire Wire Line
	7200 2950 7200 3150
$Comp
L power:GND #PWR?
U 1 1 5F5AAD46
P 5600 3900
F 0 "#PWR?" H 5600 3650 50  0001 C CNN
F 1 "GND" H 5605 3727 50  0000 C CNN
F 2 "" H 5600 3900 50  0001 C CNN
F 3 "" H 5600 3900 50  0001 C CNN
	1    5600 3900
	1    0    0    -1  
$EndComp
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
	5600 3750 5600 3900
Wire Wire Line
	2700 4100 2700 4250
$Comp
L power:+5V #PWR?
U 1 1 5F5B424F
P 6200 1050
F 0 "#PWR?" H 6200 900 50  0001 C CNN
F 1 "+5V" H 6215 1223 50  0000 C CNN
F 2 "" H 6200 1050 50  0001 C CNN
F 3 "" H 6200 1050 50  0001 C CNN
	1    6200 1050
	1    0    0    -1  
$EndComp
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
Wire Wire Line
	5600 1150 6200 1150
Wire Wire Line
	6200 1150 6200 1050
$EndSCHEMATC
