EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 14
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
L pentagon128_portable:GLS29EE010-70-4C-PHE IC8
U 1 1 5F4AAAD7
P 8250 1350
F 0 "IC8" H 8800 1615 50  0000 C CNN
F 1 "GLS29EE010-70-4C-PHE" H 8800 1524 50  0000 C CNN
F 2 "Package_LCC:PLCC-32_11.4x14.0mm_P1.27mm" H 9200 1450 50  0001 L CNN
F 3 "https://www.greenliant.com/dotAsset/40840.pdf" H 9200 1350 50  0001 L CNN
F 4 "EEPROM 1MB, 5V, 70ns 128K x 8 Flash" H 9200 1250 50  0001 L CNN "Description"
F 5 "5.08" H 9200 1150 50  0001 L CNN "Height"
F 6 "Greenliant" H 9200 1050 50  0001 L CNN "Manufacturer_Name"
F 7 "GLS29EE010-70-4C-PHE" H 9200 950 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "GLS29EE010-70-4C-PHE" H 9200 850 50  0001 L CNN "Arrow Part Number"
F 9 "804-GLS29EE010-70PHE" H 9200 650 50  0001 L CNN "Mouser Part Number"
F 10 "https://www.mouser.com/Search/Refine.aspx?Keyword=804-GLS29EE010-70PHE" H 9200 550 50  0001 L CNN "Mouser Price/Stock"
	1    8250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2450 3300 2450
Wire Wire Line
	4650 2350 5000 2350
Wire Wire Line
	3650 2350 3300 2350
Wire Wire Line
	3650 2250 3300 2250
Wire Wire Line
	4650 2450 5000 2450
Text Label 3300 2450 0    50   ~ 0
RAM_PG0
Text Label 5000 2350 2    50   ~ 0
RAM_PG1
Text Label 3300 2350 0    50   ~ 0
RAM_PG2
Text Label 3300 2250 0    50   ~ 0
RAM_PG3
Text Label 5000 2450 2    50   ~ 0
RAM_PG4
Wire Wire Line
	8250 1450 8000 1450
Wire Wire Line
	8250 1550 8000 1550
Wire Wire Line
	8250 1650 8000 1650
Wire Wire Line
	8250 1750 8000 1750
Wire Wire Line
	8250 1850 8000 1850
Wire Wire Line
	8250 1950 8000 1950
Wire Wire Line
	8250 2050 8000 2050
Wire Wire Line
	8250 2150 8000 2150
Wire Wire Line
	8250 2250 8000 2250
Wire Wire Line
	8250 2350 8000 2350
Wire Wire Line
	8250 2450 8000 2450
Wire Wire Line
	8250 2550 8000 2550
Wire Wire Line
	8250 2650 8000 2650
Wire Wire Line
	8250 2750 8000 2750
Wire Wire Line
	9350 1650 9650 1650
Wire Wire Line
	9350 1750 9650 1750
Wire Wire Line
	9350 1850 9650 1850
Wire Wire Line
	9350 1950 9650 1950
Wire Wire Line
	9350 2050 9650 2050
Wire Wire Line
	9350 2150 9650 2150
Wire Wire Line
	9350 2250 9650 2250
Wire Wire Line
	9350 2350 9650 2350
Wire Wire Line
	9350 2450 9650 2450
Wire Wire Line
	9350 2550 9650 2550
Wire Wire Line
	9350 2650 9650 2650
Wire Wire Line
	9350 2750 9650 2750
Wire Wire Line
	9350 2850 9650 2850
Text Label 8000 2550 0    50   ~ 0
D0
Text Label 8000 2650 0    50   ~ 0
D1
Text Label 8000 2750 0    50   ~ 0
D2
Text Label 9450 2450 0    50   ~ 0
D7
Text Label 9450 2550 0    50   ~ 0
D6
Text Label 9450 2650 0    50   ~ 0
D5
Text Label 9450 2750 0    50   ~ 0
D4
Text Label 9450 2850 0    50   ~ 0
D3
Text Label 8000 2450 0    50   ~ 0
A0
Text Label 8000 2350 0    50   ~ 0
A1
Text Label 8000 2250 0    50   ~ 0
A2
Text Label 8000 2150 0    50   ~ 0
A3
Text Label 8000 2050 0    50   ~ 0
A4
Text Label 8000 1950 0    50   ~ 0
A5
Text Label 8000 1850 0    50   ~ 0
A6
Text Label 8000 1750 0    50   ~ 0
A7
Text Label 8000 1650 0    50   ~ 0
A12
Text Label 9450 2250 0    50   ~ 0
A10
Text Label 9450 1850 0    50   ~ 0
A8
Text Label 9450 1950 0    50   ~ 0
A9
Text Label 9450 2050 0    50   ~ 0
A11
Text Label 9450 1750 0    50   ~ 0
A13
Text Label 9350 1650 0    50   ~ 0
ROM_PG0
Text Label 8000 1550 0    50   ~ 0
ROM_PG1
Text Label 8000 1450 0    50   ~ 0
ROM_PG2
Text HLabel 3300 2450 0    50   Input ~ 0
RAM_PG0
Text HLabel 5000 2350 2    50   Input ~ 0
RAM_PG1
Text HLabel 3300 2350 0    50   Input ~ 0
RAM_PG2
Text HLabel 3300 2250 0    50   Input ~ 0
RAM_PG3
Text HLabel 5000 2450 2    50   Input ~ 0
RAM_PG4
NoConn ~ 8250 1350
NoConn ~ 9350 1550
Text HLabel 8000 1450 0    50   Input ~ 0
ROM_PG2
Text HLabel 8000 1550 0    50   Input ~ 0
ROM_PG1
Text HLabel 9650 1650 2    50   Input ~ 0
ROM_PG0
Text HLabel 9650 2150 2    50   Input ~ 0
~ROM_OE
Text HLabel 9650 2350 2    50   Input ~ 0
~ROM_CE
Wire Wire Line
	9350 1450 9650 1450
Text HLabel 9650 1450 2    50   Input ~ 0
~ROM_WE
Wire Wire Line
	4650 3250 5000 3250
Wire Wire Line
	4650 3050 5000 3050
Wire Wire Line
	4650 2550 5000 2550
Text HLabel 5000 3250 2    50   Input ~ 0
~RAM_CE
Text HLabel 5000 3050 2    50   Input ~ 0
~RAM_OE
Text HLabel 5000 2550 2    50   Input ~ 0
~RAM_WE
$Comp
L power:+5V #PWR044
U 1 1 5F5A1528
P 9500 1200
F 0 "#PWR044" H 9500 1050 50  0001 C CNN
F 1 "+5V" H 9515 1373 50  0000 C CNN
F 2 "" H 9500 1200 50  0001 C CNN
F 3 "" H 9500 1200 50  0001 C CNN
	1    9500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1200 9500 1350
Wire Wire Line
	9500 1350 9350 1350
$Comp
L power:GND #PWR046
U 1 1 5F5A5F83
P 8150 3050
F 0 "#PWR046" H 8150 2800 50  0001 C CNN
F 1 "GND" H 8155 2877 50  0000 C CNN
F 2 "" H 8150 3050 50  0001 C CNN
F 3 "" H 8150 3050 50  0001 C CNN
	1    8150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2850 8150 2850
Wire Wire Line
	8150 2850 8150 3050
Wire Wire Line
	4650 2650 5000 2650
Text Label 4950 2950 2    50   ~ 0
A11
Wire Wire Line
	4650 2950 5000 2950
Text Label 4950 3150 2    50   ~ 0
A10
Wire Wire Line
	4650 3150 5000 3150
Text Label 4950 2850 2    50   ~ 0
A9
Wire Wire Line
	4650 2850 5000 2850
Text Label 4950 2750 2    50   ~ 0
A8
Wire Wire Line
	4650 2750 5000 2750
Text HLabel 5000 2650 2    50   Input ~ 0
A13
Text HLabel 5000 2950 2    50   Input ~ 0
A11
Text HLabel 5000 3150 2    50   Input ~ 0
A10
Text HLabel 5000 2850 2    50   Input ~ 0
A9
Text HLabel 5000 2750 2    50   Input ~ 0
A8
Text HLabel 3300 2550 0    50   Input ~ 0
A12
Wire Wire Line
	3650 2550 3300 2550
Text Label 3350 2550 0    50   ~ 0
A12
Text Label 4950 2650 2    50   ~ 0
A13
Text Label 3350 2650 0    50   ~ 0
A7
Text Label 3350 2750 0    50   ~ 0
A6
Text Label 3350 2850 0    50   ~ 0
A5
Text Label 3350 2950 0    50   ~ 0
A4
Text Label 3350 3050 0    50   ~ 0
A3
Text Label 3350 3150 0    50   ~ 0
A2
Text Label 3350 3250 0    50   ~ 0
A1
Text Label 3350 3350 0    50   ~ 0
A0
Wire Wire Line
	3650 2650 3300 2650
Wire Wire Line
	3650 2750 3300 2750
Wire Wire Line
	3650 2850 3300 2850
Wire Wire Line
	3650 2950 3300 2950
Wire Wire Line
	3650 3050 3300 3050
Wire Wire Line
	3650 3150 3300 3150
Wire Wire Line
	3650 3250 3300 3250
Wire Wire Line
	3650 3350 3300 3350
Text HLabel 3300 2650 0    50   Input ~ 0
A7
Text HLabel 3300 2750 0    50   Input ~ 0
A6
Text HLabel 3300 2850 0    50   Input ~ 0
A5
Text HLabel 3300 2950 0    50   Input ~ 0
A4
Text HLabel 3300 3050 0    50   Input ~ 0
A3
Text HLabel 3300 3150 0    50   Input ~ 0
A2
Text HLabel 3300 3250 0    50   Input ~ 0
A1
Text HLabel 3300 3350 0    50   Input ~ 0
A0
Text HLabel 4950 3350 2    50   Input ~ 0
D7
Text HLabel 4950 3450 2    50   Input ~ 0
D6
Text HLabel 4950 3550 2    50   Input ~ 0
D5
Text HLabel 4950 3650 2    50   Input ~ 0
D4
Text HLabel 4950 3750 2    50   Input ~ 0
D3
Text Label 4750 3350 0    50   ~ 0
D7
Text Label 4750 3450 0    50   ~ 0
D6
Text Label 4750 3550 0    50   ~ 0
D5
Text Label 4750 3650 0    50   ~ 0
D4
Text Label 4750 3750 0    50   ~ 0
D3
Wire Wire Line
	4650 3350 4950 3350
Wire Wire Line
	4650 3450 4950 3450
Wire Wire Line
	4650 3550 4950 3550
Wire Wire Line
	4650 3650 4950 3650
Wire Wire Line
	4650 3750 4950 3750
Text HLabel 3350 3650 0    50   Input ~ 0
D2
Text HLabel 3350 3550 0    50   Input ~ 0
D1
Text HLabel 3350 3450 0    50   Input ~ 0
D0
Text Label 3550 3650 2    50   ~ 0
D2
Text Label 3550 3550 2    50   ~ 0
D1
Text Label 3550 3450 2    50   ~ 0
D0
Wire Wire Line
	3650 3650 3350 3650
Wire Wire Line
	3650 3550 3350 3550
Wire Wire Line
	3650 3450 3350 3450
Wire Wire Line
	4650 2250 4650 2150
$Comp
L SamacSys_Parts:IS61C5128AS-25TLI IC9
U 1 1 5F88C91C
P 3650 2250
F 0 "IC9" H 4150 2515 50  0000 C CNN
F 1 "IS61C5128AS-25TLI" H 4150 2424 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P1176X120-32N" H 4500 2350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/IS61C5128AS-25TLI.pdf" H 4500 2250 50  0001 L CNN
F 4 "SRAM 4M (512Kx8) 25ns Async SRAM" H 4500 2150 50  0001 L CNN "Description"
F 5 "1.2" H 4500 2050 50  0001 L CNN "Height"
F 6 "870-61C5128AS-25TLI" H 4500 1950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=870-61C5128AS-25TLI" H 4500 1850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Integrated Silicon Solution Inc." H 4500 1750 50  0001 L CNN "Manufacturer_Name"
F 9 "IS61C5128AS-25TLI" H 4500 1650 50  0001 L CNN "Manufacturer_Part_Number"
	1    3650 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR045
U 1 1 5F5B424F
P 4650 2150
F 0 "#PWR045" H 4650 2000 50  0001 C CNN
F 1 "+5V" H 4665 2323 50  0000 C CNN
F 2 "" H 4650 2150 50  0001 C CNN
F 3 "" H 4650 2150 50  0001 C CNN
	1    4650 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 5F5AAD46
P 3650 3900
F 0 "#PWR047" H 3650 3650 50  0001 C CNN
F 1 "GND" H 3655 3727 50  0000 C CNN
F 2 "" H 3650 3900 50  0001 C CNN
F 3 "" H 3650 3900 50  0001 C CNN
	1    3650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3750 3650 3900
$EndSCHEMATC
