EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L SamacSys_Parts:8432-11B1-RK-TP J2
U 1 1 5F607CAE
P 3800 3800
F 0 "J2" H 4250 4065 50  0000 C CNN
F 1 "8432-11B1-RK-TP" H 4250 3974 50  0000 C CNN
F 2 "SamacSys_Parts:843211B1RKTP" H 4550 3900 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/8432-11B1-RK-TP.pdf" H 4550 3800 50  0001 L CNN
F 4 "PLCC32 socket IC & Component Sockets 32P PLCC SOCKET THRU-HOLE" H 4550 3700 50  0001 L CNN "Description"
F 5 "8" H 4550 3600 50  0001 L CNN "Height"
F 6 "517-8432-11B1-RK-TP" H 4550 3500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=517-8432-11B1-RK-TP" H 4550 3400 50  0001 L CNN "Mouser Price/Stock"
F 8 "3M" H 4550 3300 50  0001 L CNN "Manufacturer_Name"
F 9 "8432-11B1-RK-TP" H 4550 3200 50  0001 L CNN "Manufacturer_Part_Number"
	1    3800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3800 3500 3800
Wire Wire Line
	3800 3900 3500 3900
Wire Wire Line
	3800 4000 3500 4000
Wire Wire Line
	3800 4100 3500 4100
Wire Wire Line
	3800 4200 3500 4200
Wire Wire Line
	3800 4300 3500 4300
Wire Wire Line
	3800 4400 3500 4400
Wire Wire Line
	3800 4500 3500 4500
Wire Wire Line
	3800 4600 3500 4600
Wire Wire Line
	3800 4700 3500 4700
Wire Wire Line
	3800 4800 3500 4800
Wire Wire Line
	3800 4900 3500 4900
Wire Wire Line
	3800 5000 3500 5000
Wire Wire Line
	3800 5100 3500 5100
Wire Wire Line
	3800 5200 3500 5200
Wire Wire Line
	4700 3800 5050 3800
Wire Wire Line
	4700 3900 5050 3900
Wire Wire Line
	4700 4000 5050 4000
Wire Wire Line
	4700 4100 5050 4100
Wire Wire Line
	4700 4200 5050 4200
Wire Wire Line
	4700 4300 5050 4300
Wire Wire Line
	4700 4400 5050 4400
Wire Wire Line
	4700 4500 5050 4500
Wire Wire Line
	4700 4600 5050 4600
Wire Wire Line
	4700 4700 5050 4700
Wire Wire Line
	4700 4800 5050 4800
Wire Wire Line
	4700 4900 5050 4900
Wire Wire Line
	4700 5000 5050 5000
Wire Wire Line
	4700 5100 5050 5100
Wire Wire Line
	4700 5200 5050 5200
Text Label 3500 4900 0    50   ~ 0
A0
Text Label 3500 4800 0    50   ~ 0
A1
Text Label 3500 4700 0    50   ~ 0
A2
Text Label 3500 4600 0    50   ~ 0
A3
Text Label 3500 4500 0    50   ~ 0
A4
Text Label 3500 4400 0    50   ~ 0
A5
Text Label 3500 4300 0    50   ~ 0
A6
Text Label 3500 4200 0    50   ~ 0
A7
Text Label 3500 4100 0    50   ~ 0
A12
Text Label 3500 4000 0    50   ~ 0
ROM_A15
Text Label 3500 3900 0    50   ~ 0
ROM_A16
Text Label 3500 5000 0    50   ~ 0
D0
Text Label 3500 5100 0    50   ~ 0
D1
Text Label 3500 5200 0    50   ~ 0
D2
Text Label 4850 3800 0    50   ~ 0
D3
Text Label 4850 3900 0    50   ~ 0
D4
Text Label 4850 4000 0    50   ~ 0
D5
Text Label 4850 4100 0    50   ~ 0
D6
Text Label 4850 4200 0    50   ~ 0
D7
Text Label 4750 4300 0    50   ~ 0
~ROM_CE
Text Label 4850 4400 0    50   ~ 0
A10
Text Label 4750 4500 0    50   ~ 0
~ROM_OE
Text Label 4850 4600 0    50   ~ 0
A11
Text Label 4850 4700 0    50   ~ 0
A9
Text Label 4850 4800 0    50   ~ 0
A8
Text Label 4850 4900 0    50   ~ 0
A13
Text Label 4700 5000 0    50   ~ 0
ROM_A14
Text Label 4750 5200 0    50   ~ 0
~ROM_WE
$Comp
L power:GND #PWR0101
U 1 1 5F611417
P 3400 5450
F 0 "#PWR0101" H 3400 5200 50  0001 C CNN
F 1 "GND" H 3405 5277 50  0000 C CNN
F 2 "" H 3400 5450 50  0001 C CNN
F 3 "" H 3400 5450 50  0001 C CNN
	1    3400 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5F611B76
P 5150 5450
F 0 "#PWR0102" H 5150 5300 50  0001 C CNN
F 1 "+5V" H 5165 5623 50  0000 C CNN
F 2 "" H 5150 5450 50  0001 C CNN
F 3 "" H 5150 5450 50  0001 C CNN
	1    5150 5450
	-1   0    0    1   
$EndComp
NoConn ~ 5050 5100
NoConn ~ 3500 3800
Wire Wire Line
	3400 5300 3400 5450
Wire Wire Line
	3400 5300 3800 5300
Wire Wire Line
	5150 5300 5150 5450
Wire Wire Line
	4700 5300 5150 5300
Wire Wire Line
	4800 1550 5200 1550
Wire Wire Line
	4800 1650 5200 1650
Wire Wire Line
	4800 1750 5200 1750
Wire Wire Line
	4800 1850 5200 1850
Wire Wire Line
	4800 1950 5200 1950
Wire Wire Line
	4800 2050 5200 2050
Wire Wire Line
	4800 2150 5200 2150
Wire Wire Line
	4800 2250 5200 2250
Wire Wire Line
	4800 2350 5200 2350
Wire Wire Line
	4800 2450 5200 2450
Wire Wire Line
	4800 2550 5200 2550
Wire Wire Line
	4800 2650 5200 2650
Wire Wire Line
	4800 2750 5200 2750
Wire Wire Line
	4800 2850 5200 2850
Wire Wire Line
	4800 2950 5200 2950
Wire Wire Line
	4800 3050 5200 3050
Wire Wire Line
	3800 1650 3200 1650
Wire Wire Line
	3800 1750 3200 1750
Wire Wire Line
	3800 1850 3200 1850
Wire Wire Line
	3800 1950 3200 1950
Wire Wire Line
	3800 2050 3200 2050
Wire Wire Line
	3800 2150 3200 2150
Wire Wire Line
	3800 2250 3200 2250
Wire Wire Line
	3800 2350 3200 2350
Wire Wire Line
	3800 2450 3200 2450
Wire Wire Line
	3800 2550 3200 2550
Wire Wire Line
	3800 2650 3200 2650
Wire Wire Line
	3800 2750 3200 2750
Wire Wire Line
	3800 2850 3200 2850
Wire Wire Line
	3800 2950 3200 2950
Wire Wire Line
	3800 3050 3200 3050
Text Label 4850 1650 0    50   ~ 0
RAM_A15
Text Label 4850 1750 0    50   ~ 0
RAM_A18
Text Label 4850 1850 0    50   ~ 0
~RAM_WE
Text Label 4850 1950 0    50   ~ 0
A13
Text Label 4850 2050 0    50   ~ 0
A8
Text Label 4850 2150 0    50   ~ 0
A9
Text Label 4850 2250 0    50   ~ 0
A11
Text Label 4850 2350 0    50   ~ 0
~RAM_OE
Text Label 4850 2450 0    50   ~ 0
A10
Text Label 4850 2550 0    50   ~ 0
~RAM_CE
Text Label 4850 2650 0    50   ~ 0
D7
Text Label 4850 2750 0    50   ~ 0
D6
Text Label 4850 2850 0    50   ~ 0
D5
Text Label 4850 2950 0    50   ~ 0
D4
Text Label 4850 3050 0    50   ~ 0
D3
Text Label 3300 1650 0    50   ~ 0
RAM_A16
Text Label 3300 1750 0    50   ~ 0
RAM_A14
Text Label 3300 1850 0    50   ~ 0
A12
Text Label 3300 1950 0    50   ~ 0
A7
Text Label 3300 2050 0    50   ~ 0
A6
Text Label 3300 2150 0    50   ~ 0
A5
Text Label 3300 2250 0    50   ~ 0
A4
Text Label 3300 2350 0    50   ~ 0
A3
Text Label 3300 2450 0    50   ~ 0
A2
Text Label 3300 2550 0    50   ~ 0
A1
Text Label 3300 2650 0    50   ~ 0
A0
Text Label 3300 2750 0    50   ~ 0
D0
Text Label 3300 2850 0    50   ~ 0
D1
Text Label 3300 2950 0    50   ~ 0
D2
$Comp
L power:+5V #PWR0103
U 1 1 5F644EE7
P 5200 1550
F 0 "#PWR0103" H 5200 1400 50  0001 C CNN
F 1 "+5V" H 5215 1723 50  0000 C CNN
F 2 "" H 5200 1550 50  0001 C CNN
F 3 "" H 5200 1550 50  0001 C CNN
	1    5200 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F64E1DA
P 3200 3050
F 0 "#PWR0106" H 3200 2800 50  0001 C CNN
F 1 "GND" H 3205 2877 50  0000 C CNN
F 2 "" H 3200 3050 50  0001 C CNN
F 3 "" H 3200 3050 50  0001 C CNN
	1    3200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2200 1950 2200
Wire Wire Line
	1600 2300 1950 2300
Wire Wire Line
	1600 2400 1950 2400
Wire Wire Line
	1600 2500 1950 2500
Wire Wire Line
	1600 2600 1950 2600
Wire Wire Line
	1600 2700 1950 2700
Wire Wire Line
	1600 2800 1950 2800
Wire Wire Line
	1600 2900 1950 2900
Wire Wire Line
	1600 3000 1950 3000
Wire Wire Line
	1600 3100 1950 3100
Wire Wire Line
	1600 3200 1950 3200
Wire Wire Line
	1600 3300 1950 3300
Wire Wire Line
	1600 3400 1950 3400
Wire Wire Line
	1100 2200 750  2200
Wire Wire Line
	1100 2300 750  2300
Wire Wire Line
	1100 2400 750  2400
Wire Wire Line
	1100 2500 750  2500
Wire Wire Line
	1100 2600 750  2600
Wire Wire Line
	1100 2700 750  2700
Wire Wire Line
	1100 2800 750  2800
Wire Wire Line
	1100 2900 750  2900
Wire Wire Line
	1100 3000 750  3000
Wire Wire Line
	1100 3100 750  3100
Wire Wire Line
	1100 3200 750  3200
Wire Wire Line
	1100 3300 750  3300
Wire Wire Line
	1100 3400 750  3400
Text Label 750  2200 0    50   ~ 0
A0
Text Label 750  2300 0    50   ~ 0
A1
Text Label 750  2400 0    50   ~ 0
A2
Text Label 750  2500 0    50   ~ 0
A3
Text Label 750  2600 0    50   ~ 0
A4
Text Label 750  2700 0    50   ~ 0
A5
Text Label 750  2800 0    50   ~ 0
A6
Text Label 750  2900 0    50   ~ 0
A7
Text Label 750  3000 0    50   ~ 0
A8
Text Label 750  3100 0    50   ~ 0
A9
Text Label 750  3200 0    50   ~ 0
A10
Text Label 750  3300 0    50   ~ 0
A11
Text Label 750  3400 0    50   ~ 0
A12
Text Label 1750 2200 0    50   ~ 0
A0
Text Label 1750 2300 0    50   ~ 0
A1
Text Label 1750 2400 0    50   ~ 0
A2
Text Label 1750 2500 0    50   ~ 0
A3
Text Label 1750 2600 0    50   ~ 0
A4
Text Label 1750 2700 0    50   ~ 0
A5
Text Label 1750 2800 0    50   ~ 0
A6
Text Label 1750 2900 0    50   ~ 0
A7
Text Label 1750 3000 0    50   ~ 0
A8
Text Label 1750 3100 0    50   ~ 0
A9
Text Label 1750 3200 0    50   ~ 0
A10
Text Label 1750 3300 0    50   ~ 0
A11
Text Label 1750 3400 0    50   ~ 0
A12
$Comp
L Connector_Generic:Conn_02x14_Odd_Even J1
U 1 1 5F734626
P 1300 2800
F 0 "J1" H 1350 3617 50  0000 C CNN
F 1 "Conn_02x14_Odd_Even" H 1350 3526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x14_P2.54mm_Vertical" H 1300 2800 50  0001 C CNN
F 3 "~" H 1300 2800 50  0001 C CNN
	1    1300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3500 1950 3500
Wire Wire Line
	1100 3500 750  3500
Text Label 750  3500 0    50   ~ 0
A13
Text Label 1750 3500 0    50   ~ 0
A13
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J3
U 1 1 5F742A9A
P 1300 4250
F 0 "J3" H 1350 4767 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 1350 4676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 1300 4250 50  0001 C CNN
F 3 "~" H 1300 4250 50  0001 C CNN
	1    1300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3950 1900 3950
Wire Wire Line
	1600 4050 1900 4050
Wire Wire Line
	1600 4150 1900 4150
Wire Wire Line
	1600 4250 1900 4250
Wire Wire Line
	1600 4350 1900 4350
Wire Wire Line
	1600 4450 1900 4450
Wire Wire Line
	1600 4550 1900 4550
Wire Wire Line
	1600 4650 1900 4650
Wire Wire Line
	1100 3950 750  3950
Wire Wire Line
	1100 4050 750  4050
Wire Wire Line
	1100 4150 750  4150
Wire Wire Line
	1100 4250 750  4250
Wire Wire Line
	1100 4350 750  4350
Wire Wire Line
	1100 4450 750  4450
Wire Wire Line
	1100 4550 750  4550
Wire Wire Line
	1100 4650 750  4650
Text Label 1650 3950 0    50   ~ 0
D0
Text Label 1650 4050 0    50   ~ 0
D1
Text Label 1650 4150 0    50   ~ 0
D2
Text Label 1650 4250 0    50   ~ 0
D3
Text Label 1650 4350 0    50   ~ 0
D4
Text Label 1650 4450 0    50   ~ 0
D5
Text Label 1650 4550 0    50   ~ 0
D6
Text Label 1650 4650 0    50   ~ 0
D7
Text Label 750  3950 0    50   ~ 0
D0
Text Label 750  4050 0    50   ~ 0
D1
Text Label 750  4150 0    50   ~ 0
D2
Text Label 750  4250 0    50   ~ 0
D3
Text Label 750  4350 0    50   ~ 0
D4
Text Label 750  4450 0    50   ~ 0
D5
Text Label 750  4550 0    50   ~ 0
D6
Text Label 750  4650 0    50   ~ 0
D7
Wire Wire Line
	3400 6300 3900 6300
Wire Wire Line
	3400 6400 3900 6400
Wire Wire Line
	3400 6500 3900 6500
Wire Wire Line
	3400 6800 3900 6800
Wire Wire Line
	3400 6900 3900 6900
Wire Wire Line
	3400 7000 3900 7000
Wire Wire Line
	2900 6300 2400 6300
Wire Wire Line
	2900 6400 2400 6400
Wire Wire Line
	2900 6500 2400 6500
Wire Wire Line
	2900 6800 2400 6800
Wire Wire Line
	2900 6900 2400 6900
Wire Wire Line
	2900 7000 2400 7000
Text Label 3500 6300 0    50   ~ 0
RAM_A14
Text Label 3500 6400 0    50   ~ 0
RAM_A15
Text Label 3500 6500 0    50   ~ 0
RAM_A16
Text Label 3500 6900 0    50   ~ 0
~RAM_OE
Text Label 3500 6800 0    50   ~ 0
~RAM_CE
Text Label 3500 7000 0    50   ~ 0
~RAM_WE
Text Label 2450 7000 0    50   ~ 0
~RAM_WE
Text Label 2450 6800 0    50   ~ 0
~RAM_CE
Text Label 2450 6900 0    50   ~ 0
~RAM_OE
Text Label 2450 6300 0    50   ~ 0
RAM_A14
Text Label 2450 6400 0    50   ~ 0
RAM_A15
Text Label 2450 6500 0    50   ~ 0
RAM_A16
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J6
U 1 1 5F894915
P 1300 6700
F 0 "J6" H 1350 7117 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 1350 7026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 1300 6700 50  0001 C CNN
F 3 "~" H 1300 6700 50  0001 C CNN
	1    1300 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6500 2100 6500
Wire Wire Line
	1600 6600 2100 6600
Wire Wire Line
	1600 6700 2100 6700
Wire Wire Line
	1600 6800 2100 6800
Wire Wire Line
	1600 6900 2100 6900
Wire Wire Line
	1600 7000 2100 7000
Wire Wire Line
	1100 6500 600  6500
Wire Wire Line
	1100 6600 600  6600
Wire Wire Line
	1100 6700 600  6700
Wire Wire Line
	1100 6800 600  6800
Wire Wire Line
	1100 6900 600  6900
Wire Wire Line
	1100 7000 600  7000
Text Label 1700 6500 0    50   ~ 0
ROM_A14
Text Label 1700 6600 0    50   ~ 0
ROM_A15
Text Label 1700 6700 0    50   ~ 0
ROM_A16
Text Label 1700 6800 0    50   ~ 0
~ROM_OE
Text Label 1700 6900 0    50   ~ 0
~ROM_CE
Text Label 1700 7000 0    50   ~ 0
~ROM_WE
Text Label 650  7000 0    50   ~ 0
~ROM_WE
Text Label 650  6900 0    50   ~ 0
~ROM_CE
Text Label 650  6800 0    50   ~ 0
~ROM_OE
Text Label 650  6500 0    50   ~ 0
ROM_A14
Text Label 650  6600 0    50   ~ 0
ROM_A15
Text Label 650  6700 0    50   ~ 0
ROM_A16
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J4
U 1 1 5F8A2078
P 6250 4400
F 0 "J4" H 6300 4717 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 6300 4626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 6250 4400 50  0001 C CNN
F 3 "~" H 6250 4400 50  0001 C CNN
	1    6250 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F8A2633
P 5950 4750
F 0 "#PWR0107" H 5950 4500 50  0001 C CNN
F 1 "GND" H 5955 4577 50  0000 C CNN
F 2 "" H 5950 4750 50  0001 C CNN
F 3 "" H 5950 4750 50  0001 C CNN
	1    5950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5F8A33A9
P 6800 4150
F 0 "#PWR0108" H 6800 4000 50  0001 C CNN
F 1 "+5V" H 6815 4323 50  0000 C CNN
F 2 "" H 6800 4150 50  0001 C CNN
F 3 "" H 6800 4150 50  0001 C CNN
	1    6800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4750 6050 4750
Wire Wire Line
	6050 4750 6050 4600
Wire Wire Line
	6800 4300 6550 4300
Wire Wire Line
	6800 4150 6800 4300
Wire Wire Line
	6550 4600 6550 4500
Wire Wire Line
	6550 4500 6550 4400
Connection ~ 6550 4500
Wire Wire Line
	6550 4400 6550 4300
Connection ~ 6550 4400
Connection ~ 6550 4300
Wire Wire Line
	6050 4600 6050 4500
Connection ~ 6050 4600
Wire Wire Line
	6050 4500 6050 4400
Connection ~ 6050 4500
Wire Wire Line
	6050 4400 6050 4300
Connection ~ 6050 4400
$Comp
L SamacSys_Parts:IS61C5128AS-25TLI IC1
U 1 1 5F65AB95
P 3800 1550
F 0 "IC1" H 4300 1815 50  0000 C CNN
F 1 "IS61C5128AS-25TLI" H 4300 1724 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P1176X120-32N" H 4650 1650 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/IS61C5128AS-25TLI.pdf" H 4650 1550 50  0001 L CNN
F 4 "SRAM 4M (512Kx8) 25ns Async SRAM" H 4650 1450 50  0001 L CNN "Description"
F 5 "1.2" H 4650 1350 50  0001 L CNN "Height"
F 6 "870-61C5128AS-25TLI" H 4650 1250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=870-61C5128AS-25TLI" H 4650 1150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Integrated Silicon Solution Inc." H 4650 1050 50  0001 L CNN "Manufacturer_Name"
F 9 "IS61C5128AS-25TLI" H 4650 950 50  0001 L CNN "Manufacturer_Part_Number"
	1    3800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1550 3200 1550
Text Label 3300 1550 0    50   ~ 0
RAM_A17
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J7
U 1 1 5F686725
P 3100 6600
F 0 "J7" H 3150 7117 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3150 7026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 3100 6600 50  0001 C CNN
F 3 "~" H 3100 6600 50  0001 C CNN
	1    3100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6600 2400 6600
Wire Wire Line
	2900 6700 2400 6700
Text Label 2450 6600 0    50   ~ 0
RAM_A17
Text Label 2450 6700 0    50   ~ 0
RAM_A18
Wire Wire Line
	3900 6600 3400 6600
Wire Wire Line
	3900 6700 3400 6700
Text Label 3500 6600 0    50   ~ 0
RAM_A17
Text Label 3500 6700 0    50   ~ 0
RAM_A18
$EndSCHEMATC
