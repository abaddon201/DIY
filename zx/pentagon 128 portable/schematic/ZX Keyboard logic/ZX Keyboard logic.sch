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
L SamacSys_Parts:SN74LS245DW IC1
U 1 1 5F635A2B
P 2200 950
F 0 "IC1" H 2700 1215 50  0000 C CNN
F 1 "SN74LS245DW" H 2700 1124 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P1030X265-20N" H 3050 1050 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls245" H 3050 950 50  0001 L CNN
F 4 "Octal bus transceivers" H 3050 850 50  0001 L CNN "Description"
F 5 "2.65" H 3050 750 50  0001 L CNN "Height"
F 6 "595-SN74LS245DW" H 3050 650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/SN74LS245DW?qs=ZA235jQDfbpxKQZqDHbgmw%3D%3D" H 3050 550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 3050 450 50  0001 L CNN "Manufacturer_Name"
F 9 "SN74LS245DW" H 3050 350 50  0001 L CNN "Manufacturer_Part_Number"
	1    2200 950 
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:SN74LS245DW IC3
U 1 1 5F638018
P 4950 1050
F 0 "IC3" H 5450 1315 50  0000 C CNN
F 1 "SN74LS245DW" H 5450 1224 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P1030X265-20N" H 5800 1150 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls245" H 5800 1050 50  0001 L CNN
F 4 "Octal bus transceivers" H 5800 950 50  0001 L CNN "Description"
F 5 "2.65" H 5800 850 50  0001 L CNN "Height"
F 6 "595-SN74LS245DW" H 5800 750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/SN74LS245DW?qs=ZA235jQDfbpxKQZqDHbgmw%3D%3D" H 5800 650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 5800 550 50  0001 L CNN "Manufacturer_Name"
F 9 "SN74LS245DW" H 5800 450 50  0001 L CNN "Manufacturer_Part_Number"
	1    4950 1050
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:SN74LS27N IC2
U 1 1 5F639610
P 8750 950
F 0 "IC2" H 9250 1215 50  0000 C CNN
F 1 "SN74LS27N" H 9250 1124 50  0000 C CNN
F 2 "SamacSys_Parts:DIP794W53P254L1930H508Q14N" H 9600 1050 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls27" H 9600 950 50  0001 L CNN
F 4 "Triple 3 i/p NOR gate,SN74LS27N DIP14" H 9600 850 50  0001 L CNN "Description"
F 5 "5.08" H 9600 750 50  0001 L CNN "Height"
F 6 "595-SN74LS27N" H 9600 650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/SN74LS27N?qs=SL3LIuy2dWyzTDlwJfCAiQ%3D%3D" H 9600 550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 9600 450 50  0001 L CNN "Manufacturer_Name"
F 9 "SN74LS27N" H 9600 350 50  0001 L CNN "Manufacturer_Part_Number"
	1    8750 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 950  1800 950 
Wire Wire Line
	2200 1050 1800 1050
Wire Wire Line
	2200 1150 1800 1150
Wire Wire Line
	2200 1250 1800 1250
Wire Wire Line
	2200 1350 1800 1350
Wire Wire Line
	2200 1450 1800 1450
Wire Wire Line
	2200 1550 1800 1550
Wire Wire Line
	2200 1650 1800 1650
Wire Wire Line
	2200 1750 1800 1750
Wire Wire Line
	2200 1850 1800 1850
Wire Wire Line
	3200 950  3550 950 
Wire Wire Line
	3200 1150 3550 1150
Wire Wire Line
	3200 1250 3550 1250
Wire Wire Line
	3200 1350 3550 1350
Wire Wire Line
	3200 1450 3550 1450
Wire Wire Line
	3200 1550 3550 1550
Wire Wire Line
	3200 1650 3550 1650
Wire Wire Line
	3200 1750 3550 1750
Wire Wire Line
	3200 1850 3550 1850
Text Label 1850 1050 0    50   ~ 0
A8
Text Label 1850 1150 0    50   ~ 0
A9
Text Label 1850 1250 0    50   ~ 0
A10
Text Label 1850 1350 0    50   ~ 0
A11
Text Label 1850 1450 0    50   ~ 0
A12
Text Label 1850 1550 0    50   ~ 0
A13
Text Label 1850 1650 0    50   ~ 0
A14
Text Label 1850 1750 0    50   ~ 0
A15
$Comp
L Device:R_Small R4
U 1 1 5F7762E9
P 4850 1550
F 0 "R4" H 4909 1596 50  0001 L CNN
F 1 "1.5K" H 4909 1550 50  0001 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4850 1550 50  0001 C CNN
F 3 "~" H 4850 1550 50  0001 C CNN
	1    4850 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F778111
P 4850 1450
F 0 "R3" H 4909 1496 50  0001 L CNN
F 1 "1.5K" H 4909 1450 50  0001 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4850 1450 50  0001 C CNN
F 3 "~" H 4850 1450 50  0001 C CNN
	1    4850 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F778635
P 4850 1350
F 0 "R2" H 4909 1396 50  0001 L CNN
F 1 "1.5K" H 4909 1350 50  0001 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4850 1350 50  0001 C CNN
F 3 "~" H 4850 1350 50  0001 C CNN
	1    4850 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5F7789CC
P 4850 1250
F 0 "R1" H 4909 1296 50  0001 L CNN
F 1 "1.5K" H 4909 1250 50  0001 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4850 1250 50  0001 C CNN
F 3 "~" H 4850 1250 50  0001 C CNN
	1    4850 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?-R1
U 1 1 5F778D57
P 4850 1150
F 0 "R?-R1" H 4450 1200 50  0000 L CNN
F 1 "1.5K" H 4550 1100 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4850 1150 50  0001 C CNN
F 3 "~" H 4850 1150 50  0001 C CNN
	1    4850 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1150 4400 1150
Wire Wire Line
	4750 1250 4400 1250
Wire Wire Line
	4750 1350 4400 1350
Wire Wire Line
	4750 1450 4400 1450
Wire Wire Line
	4750 1550 4400 1550
Text Label 4400 1150 0    50   ~ 0
D0
Text Label 4400 1250 0    50   ~ 0
D1
Text Label 4400 1350 0    50   ~ 0
D2
Text Label 4400 1450 0    50   ~ 0
D3
Text Label 4400 1550 0    50   ~ 0
D4
$Comp
L power:GND #PWR0101
U 1 1 5F7AFB1D
P 4850 2050
F 0 "#PWR0101" H 4850 1800 50  0001 C CNN
F 1 "GND" H 4855 1877 50  0000 C CNN
F 2 "" H 4850 2050 50  0001 C CNN
F 3 "" H 4850 2050 50  0001 C CNN
	1    4850 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F7B050F
P 1800 1850
F 0 "#PWR0102" H 1800 1600 50  0001 C CNN
F 1 "GND" H 1805 1677 50  0000 C CNN
F 2 "" H 1800 1850 50  0001 C CNN
F 3 "" H 1800 1850 50  0001 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1950 4850 1950
Wire Wire Line
	4850 1950 4850 2050
$Comp
L power:GND #PWR0103
U 1 1 5F7B4A74
P 3800 1100
F 0 "#PWR0103" H 3800 850 50  0001 C CNN
F 1 "GND" H 3805 927 50  0000 C CNN
F 2 "" H 3800 1100 50  0001 C CNN
F 3 "" H 3800 1100 50  0001 C CNN
	1    3800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1050 3800 1100
Wire Wire Line
	3200 1050 3800 1050
Wire Wire Line
	4950 1050 3800 1050
Connection ~ 3800 1050
$Comp
L power:+5V #PWR0104
U 1 1 5F7BD7E0
P 3550 950
F 0 "#PWR0104" H 3550 800 50  0001 C CNN
F 1 "+5V" H 3565 1123 50  0000 C CNN
F 2 "" H 3550 950 50  0001 C CNN
F 3 "" H 3550 950 50  0001 C CNN
	1    3550 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5F7BE238
P 6100 1000
F 0 "#PWR0105" H 6100 850 50  0001 C CNN
F 1 "+5V" H 6115 1173 50  0000 C CNN
F 2 "" H 6100 1000 50  0001 C CNN
F 3 "" H 6100 1000 50  0001 C CNN
	1    6100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1050 6100 1050
Wire Wire Line
	6100 1050 6100 1000
$Comp
L power:+5V #PWR0106
U 1 1 5F7C29E8
P 1800 950
F 0 "#PWR0106" H 1800 800 50  0001 C CNN
F 1 "+5V" H 1815 1123 50  0000 C CNN
F 2 "" H 1800 950 50  0001 C CNN
F 3 "" H 1800 950 50  0001 C CNN
	1    1800 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1150 6400 1150
Wire Wire Line
	5950 1250 6400 1250
Wire Wire Line
	5950 1350 6400 1350
Wire Wire Line
	5950 1450 6400 1450
Wire Wire Line
	5950 1550 6400 1550
Wire Wire Line
	5950 1650 6400 1650
Text Label 6000 1150 0    50   ~ 0
KEY_ENBL
Text Label 3250 1150 0    50   ~ 0
K_A8
Text Label 3250 1250 0    50   ~ 0
K_A9
Text Label 3250 1350 0    50   ~ 0
K_A10
Text Label 3250 1450 0    50   ~ 0
K_A11
Text Label 3250 1550 0    50   ~ 0
K_A12
Text Label 3250 1650 0    50   ~ 0
K_A13
Text Label 3250 1750 0    50   ~ 0
K_A14
Text Label 3250 1850 0    50   ~ 0
K_A15
Text Label 6000 1250 0    50   ~ 0
K_D0
Text Label 6000 1350 0    50   ~ 0
K_D1
Text Label 6000 1450 0    50   ~ 0
K_D2
Text Label 6000 1550 0    50   ~ 0
K_D3
Text Label 6000 1650 0    50   ~ 0
K_D4
Wire Wire Line
	8750 950  8350 950 
Wire Wire Line
	8750 1050 8350 1050
Wire Wire Line
	9750 1050 10100 1050
$Comp
L power:+5V #PWR0107
U 1 1 5FBD27E7
P 9750 950
F 0 "#PWR0107" H 9750 800 50  0001 C CNN
F 1 "+5V" H 9765 1123 50  0000 C CNN
F 2 "" H 9750 950 50  0001 C CNN
F 3 "" H 9750 950 50  0001 C CNN
	1    9750 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FBD2F9F
P 8750 1550
F 0 "#PWR0108" H 8750 1300 50  0001 C CNN
F 1 "GND" H 8755 1377 50  0000 C CNN
F 2 "" H 8750 1550 50  0001 C CNN
F 3 "" H 8750 1550 50  0001 C CNN
	1    8750 1550
	1    0    0    -1  
$EndComp
Text Label 8350 950  0    50   ~ 0
A0
Text Label 8350 1050 0    50   ~ 0
~IORQ
Text Label 9850 1050 0    50   ~ 0
~RD
Wire Wire Line
	9750 1150 9750 1250
Wire Wire Line
	9750 1250 9750 1350
Connection ~ 9750 1250
Wire Wire Line
	9750 1350 9750 1450
Connection ~ 9750 1350
Wire Wire Line
	9750 1550 10150 1550
Text Label 9800 1550 0    50   ~ 0
KEY_ENBL
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5F648B45
P 10950 900
F 0 "J1" H 11030 942 50  0000 L CNN
F 1 "Conn_01x03" H 11030 851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10950 900 50  0001 C CNN
F 3 "~" H 10950 900 50  0001 C CNN
	1    10950 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 800  10400 800 
Wire Wire Line
	10750 900  10400 900 
Wire Wire Line
	10750 1000 10400 1000
Text Label 10400 800  0    50   ~ 0
A0
Text Label 10400 1000 0    50   ~ 0
~RD
Text Label 10400 900  0    50   ~ 0
~IORQ
$Comp
L Connector_Generic:Conn_01x14 J2
U 1 1 5F68D465
P 10950 2000
F 0 "J2" H 11030 1992 50  0000 L CNN
F 1 "Conn_01x14" H 11030 1901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 10950 2000 50  0001 C CNN
F 3 "~" H 10950 2000 50  0001 C CNN
	1    10950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 1400 10400 1400
Wire Wire Line
	10750 1500 10400 1500
Wire Wire Line
	10750 1600 10400 1600
Wire Wire Line
	10750 1700 10400 1700
Wire Wire Line
	10750 1800 10400 1800
Wire Wire Line
	10750 1900 10400 1900
Wire Wire Line
	10750 2000 10400 2000
Wire Wire Line
	10750 2100 10400 2100
Wire Wire Line
	10750 2200 10400 2200
Wire Wire Line
	10750 2300 10400 2300
Wire Wire Line
	10750 2400 10400 2400
Wire Wire Line
	10750 2500 10400 2500
Wire Wire Line
	10750 2600 10400 2600
Wire Wire Line
	10750 2700 10400 2700
Text Label 10400 2700 0    50   ~ 0
KEY_ENBL
Text Label 10400 1400 0    50   ~ 0
A8
Text Label 10400 1500 0    50   ~ 0
A9
Text Label 10400 1600 0    50   ~ 0
A10
Text Label 10400 1700 0    50   ~ 0
A11
Text Label 10400 1800 0    50   ~ 0
A12
Text Label 10400 1900 0    50   ~ 0
A13
Text Label 10400 2000 0    50   ~ 0
A14
Text Label 10400 2100 0    50   ~ 0
A15
Text Label 10400 2600 0    50   ~ 0
D0
Text Label 10400 2500 0    50   ~ 0
D1
Text Label 10400 2400 0    50   ~ 0
D2
Text Label 10400 2300 0    50   ~ 0
D3
Text Label 10400 2200 0    50   ~ 0
D4
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5F885BE0
P 7400 950
F 0 "J3" H 7480 942 50  0000 L CNN
F 1 "Conn_01x02" H 7480 851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7400 950 50  0001 C CNN
F 3 "~" H 7400 950 50  0001 C CNN
	1    7400 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5F8866E2
P 7200 950
F 0 "#PWR0109" H 7200 800 50  0001 C CNN
F 1 "+5V" H 7215 1123 50  0000 C CNN
F 2 "" H 7200 950 50  0001 C CNN
F 3 "" H 7200 950 50  0001 C CNN
	1    7200 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F886BFC
P 7200 1050
F 0 "#PWR0110" H 7200 800 50  0001 C CNN
F 1 "GND" H 7205 877 50  0000 C CNN
F 2 "" H 7200 1050 50  0001 C CNN
F 3 "" H 7200 1050 50  0001 C CNN
	1    7200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1150 8750 1250
Wire Wire Line
	8750 1250 8750 1350
Connection ~ 8750 1250
Wire Wire Line
	8750 1350 8600 1350
Wire Wire Line
	8600 1350 8600 1550
Wire Wire Line
	8600 1550 8750 1550
Connection ~ 8750 1350
Connection ~ 8750 1550
$Comp
L Connector_Generic:Conn_01x13 J4
U 1 1 5F69613A
P 8600 2900
F 0 "J4" H 8680 2942 50  0000 L CNN
F 1 "Conn_01x13" H 8680 2851 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x13_P2.54mm_Vertical" H 8600 2900 50  0001 C CNN
F 3 "~" H 8600 2900 50  0001 C CNN
	1    8600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2300 8050 2300
Wire Wire Line
	8400 2400 8050 2400
Wire Wire Line
	8400 2500 8050 2500
Wire Wire Line
	8400 2600 8050 2600
Wire Wire Line
	8400 2700 8050 2700
Wire Wire Line
	8400 2800 8050 2800
Wire Wire Line
	8400 2900 8050 2900
Wire Wire Line
	8400 3000 8050 3000
Wire Wire Line
	8400 3100 8050 3100
Wire Wire Line
	8400 3200 8050 3200
Wire Wire Line
	8400 3300 8050 3300
Wire Wire Line
	8400 3400 8050 3400
Wire Wire Line
	8400 3500 8050 3500
Text Label 8050 2300 0    50   ~ 0
K_A8
Text Label 8050 2400 0    50   ~ 0
K_A9
Text Label 8050 2500 0    50   ~ 0
K_A10
Text Label 8050 2600 0    50   ~ 0
K_A11
Text Label 8050 2700 0    50   ~ 0
K_A12
Text Label 8050 2800 0    50   ~ 0
K_A13
Text Label 8050 2900 0    50   ~ 0
K_A14
Text Label 8050 3000 0    50   ~ 0
K_A15
Text Label 8050 3500 0    50   ~ 0
K_D0
Text Label 8050 3400 0    50   ~ 0
K_D1
Text Label 8050 3300 0    50   ~ 0
K_D2
Text Label 8050 3200 0    50   ~ 0
K_D3
Text Label 8050 3100 0    50   ~ 0
K_D4
$EndSCHEMATC
