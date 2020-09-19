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
L Device:C C69
U 1 1 5F633B63
P 1300 2200
F 0 "C69" V 1048 2200 50  0000 C CNN
F 1 "1.0" V 1139 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1338 2050 50  0001 C CNN
F 3 "~" H 1300 2200 50  0001 C CNN
	1    1300 2200
	0    1    1    0   
$EndComp
$Comp
L Device:CP C68
U 1 1 5F636BB7
P 1600 1850
F 0 "C68" H 1718 1896 50  0000 L CNN
F 1 "10.0" H 1718 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1638 1700 50  0001 C CNN
F 3 "~" H 1600 1850 50  0001 C CNN
	1    1600 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R35
U 1 1 5F6386E6
P 1900 2200
F 0 "R35" V 1693 2200 50  0000 C CNN
F 1 "620" V 1784 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1830 2200 50  0001 C CNN
F 3 "~" H 1900 2200 50  0001 C CNN
	1    1900 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 2200 1600 2200
Wire Wire Line
	1600 2200 1600 2000
Connection ~ 1600 2200
Wire Wire Line
	1600 2200 1750 2200
$Comp
L power:GND #PWR065
U 1 1 5F655480
P 1600 950
F 0 "#PWR065" H 1600 700 50  0001 C CNN
F 1 "GND" H 1605 777 50  0000 C CNN
F 2 "" H 1600 950 50  0001 C CNN
F 3 "" H 1600 950 50  0001 C CNN
	1    1600 950 
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:1N4148W-7-F D2
U 1 1 5F68872D
P 3050 1450
F 0 "D2" H 3350 1715 50  0000 C CNN
F 1 "1N4148W-7-F" H 3350 1624 50  0000 C CNN
F 2 "SamacSys_Parts:SOD3716X145N" H 3500 1450 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/1N4148W-7-F.pdf" H 3500 1350 50  0001 L CNN
F 4 "Diode Switching 150mA 100V 400mW SOD123 Diodes Inc 1N4148W-7-F Switching Diode 100V, 2-Pin SOD-123" H 3500 1250 50  0001 L CNN "Description"
F 5 "1.45" H 3500 1150 50  0001 L CNN "Height"
F 6 "621-1N4148W-F" H 3500 1050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Diodes-Incorporated/1N4148W-7-F?qs=LHX0FizJzg7Ae9ZM8LTAWw%3D%3D" H 3500 950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Diodes Inc." H 3500 850 50  0001 L CNN "Manufacturer_Name"
F 9 "1N4148W-7-F" H 3500 750 50  0001 L CNN "Manufacturer_Part_Number"
	1    3050 1450
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:1N4148W-7-F D4
U 1 1 5F68BE6C
P 3650 1900
F 0 "D4" H 3950 1635 50  0000 C CNN
F 1 "1N4148W-7-F" H 3950 1726 50  0000 C CNN
F 2 "SamacSys_Parts:SOD3716X145N" H 4100 1900 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/1N4148W-7-F.pdf" H 4100 1800 50  0001 L CNN
F 4 "Diode Switching 150mA 100V 400mW SOD123 Diodes Inc 1N4148W-7-F Switching Diode 100V, 2-Pin SOD-123" H 4100 1700 50  0001 L CNN "Description"
F 5 "1.45" H 4100 1600 50  0001 L CNN "Height"
F 6 "621-1N4148W-F" H 4100 1500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Diodes-Incorporated/1N4148W-7-F?qs=LHX0FizJzg7Ae9ZM8LTAWw%3D%3D" H 4100 1400 50  0001 L CNN "Mouser Price/Stock"
F 8 "Diodes Inc." H 4100 1300 50  0001 L CNN "Manufacturer_Name"
F 9 "1N4148W-7-F" H 4100 1200 50  0001 L CNN "Manufacturer_Part_Number"
	1    3650 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 1450 2750 1900
Connection ~ 2750 1900
Wire Wire Line
	2750 1900 2750 2200
$Comp
L SamacSys_Parts:1N4148W-7-F D3
U 1 1 5F697C1F
P 1450 1600
F 0 "D3" V 1796 1472 50  0000 R CNN
F 1 "1N4148W-7-F" V 1650 2300 50  0000 R CNN
F 2 "SamacSys_Parts:SOD3716X145N" H 1900 1600 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/1N4148W-7-F.pdf" H 1900 1500 50  0001 L CNN
F 4 "Diode Switching 150mA 100V 400mW SOD123 Diodes Inc 1N4148W-7-F Switching Diode 100V, 2-Pin SOD-123" H 1900 1400 50  0001 L CNN "Description"
F 5 "1.45" H 1900 1300 50  0001 L CNN "Height"
F 6 "621-1N4148W-F" H 1900 1200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Diodes-Incorporated/1N4148W-7-F?qs=LHX0FizJzg7Ae9ZM8LTAWw%3D%3D" H 1900 1100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Diodes Inc." H 1900 1000 50  0001 L CNN "Manufacturer_Name"
F 9 "1N4148W-7-F" H 1900 900 50  0001 L CNN "Manufacturer_Part_Number"
	1    1450 1600
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:1N4148W-7-F D1
U 1 1 5F698A27
P 1800 1000
F 0 "D1" V 2054 1128 50  0000 L CNN
F 1 "1N4148W-7-F" V 2100 -50 50  0000 L CNN
F 2 "SamacSys_Parts:SOD3716X145N" H 2250 1000 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/1N4148W-7-F.pdf" H 2250 900 50  0001 L CNN
F 4 "Diode Switching 150mA 100V 400mW SOD123 Diodes Inc 1N4148W-7-F Switching Diode 100V, 2-Pin SOD-123" H 2250 800 50  0001 L CNN "Description"
F 5 "1.45" H 2250 700 50  0001 L CNN "Height"
F 6 "621-1N4148W-F" H 2250 600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Diodes-Incorporated/1N4148W-7-F?qs=LHX0FizJzg7Ae9ZM8LTAWw%3D%3D" H 2250 500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Diodes Inc." H 2250 400 50  0001 L CNN "Manufacturer_Name"
F 9 "1N4148W-7-F" H 2250 300 50  0001 L CNN "Manufacturer_Part_Number"
	1    1800 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 1600 1450 1700
Wire Wire Line
	1450 1700 1600 1700
Wire Wire Line
	1600 1700 1800 1700
Wire Wire Line
	1800 1700 1800 1600
Connection ~ 1600 1700
Wire Wire Line
	1800 1000 1800 950 
Wire Wire Line
	1800 950  1600 950 
Wire Wire Line
	1600 950  1450 950 
Wire Wire Line
	1450 950  1450 1000
Connection ~ 1600 950 
$Comp
L SamacSys_Parts:74HCT3G14DP,125 IC13
U 1 1 5F6A771D
P 2850 2450
F 0 "IC13" H 3350 2715 50  0000 C CNN
F 1 "74HCT3G14DP,125" H 3350 2624 50  0000 C CNN
F 2 "SamacSys_Parts:SOP65P400X110-8N" H 3700 2550 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT3G14.pdf" H 3700 2450 50  0001 L CNN
F 4 "74HC(T)3G14 - Triple inverting Schmitt trigger@en-us" H 3700 2350 50  0001 L CNN "Description"
F 5 "1.1" H 3700 2250 50  0001 L CNN "Height"
F 6 "771-HCT3G14DP125" H 3700 2150 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Nexperia/74HCT3G14DP125?qs=me8TqzrmIYVpvGZNIKsTsw%3D%3D" H 3700 2050 50  0001 L CNN "Mouser Price/Stock"
F 8 "Nexperia" H 3700 1950 50  0001 L CNN "Manufacturer_Name"
F 9 "74HCT3G14DP,125" H 3700 1850 50  0001 L CNN "Manufacturer_Part_Number"
	1    2850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2550 3950 2550
Wire Wire Line
	6600 4050 6600 3950
$Comp
L power:GND #PWR068
U 1 1 5F629796
P 6600 4050
F 0 "#PWR068" H 6600 3800 50  0001 C CNN
F 1 "GND" H 6605 3877 50  0000 C CNN
F 2 "" H 6600 4050 50  0001 C CNN
F 3 "" H 6600 4050 50  0001 C CNN
	1    6600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3650 5800 3550
Connection ~ 5800 3650
Wire Wire Line
	6100 3650 5800 3650
Wire Wire Line
	5800 3550 6100 3550
Text Notes 5900 4200 0    50   ~ 0
A0=0\n~IORQ=0\n~RD=0
Wire Wire Line
	6950 2350 6950 2200
Wire Wire Line
	6600 2350 6950 2350
$Comp
L power:+5V #PWR066
U 1 1 5F62BD91
P 6950 2200
F 0 "#PWR066" H 6950 2050 50  0001 C CNN
F 1 "+5V" H 6965 2373 50  0000 C CNN
F 2 "" H 6950 2200 50  0001 C CNN
F 3 "" H 6950 2200 50  0001 C CNN
	1    6950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3350 7550 3350
Wire Wire Line
	7100 3250 7550 3250
Wire Wire Line
	7100 3050 7550 3050
Wire Wire Line
	7100 2950 7550 2950
Wire Wire Line
	7100 2850 7550 2850
Wire Wire Line
	7100 2750 7550 2750
Wire Wire Line
	7100 2650 7550 2650
Text Label 5600 2750 0    50   ~ 0
TAPE_IN_DIGIT
$Comp
L Device:C C71
U 1 1 5F6C9F7A
P 4150 2550
F 0 "C71" V 3898 2550 50  0000 C CNN
F 1 "0.1uF" V 3989 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4188 2400 50  0001 C CNN
F 3 "~" H 4150 2550 50  0001 C CNN
	1    4150 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2550 4300 2650
Wire Wire Line
	4300 2650 3850 2650
Wire Wire Line
	2850 2550 2750 2550
$Comp
L Device:C C70
U 1 1 5F6CE3D2
P 2550 2550
F 0 "C70" V 2298 2550 50  0000 C CNN
F 1 "0.1uF" V 2389 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2588 2400 50  0001 C CNN
F 3 "~" H 2550 2550 50  0001 C CNN
	1    2550 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 5F6CEC88
P 3600 3200
F 0 "R34" V 3393 3200 50  0000 C CNN
F 1 "100k" V 3484 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3530 3200 50  0001 C CNN
F 3 "~" H 3600 3200 50  0001 C CNN
	1    3600 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2650 4300 3200
Wire Wire Line
	4300 3200 3750 3200
Connection ~ 4300 2650
Wire Wire Line
	3450 3200 2750 3200
Wire Wire Line
	2750 3200 2750 2550
Connection ~ 2750 2550
Wire Wire Line
	2750 2550 2700 2550
Wire Wire Line
	2400 2550 2400 2650
Wire Wire Line
	2400 2650 2850 2650
Connection ~ 3950 2550
Wire Wire Line
	3950 2550 4000 2550
Wire Wire Line
	2050 2200 2750 2200
Connection ~ 2750 2200
Wire Wire Line
	2750 2450 2850 2450
Wire Wire Line
	2750 2200 2750 2450
Wire Wire Line
	2750 1900 3050 1900
Wire Wire Line
	2750 1450 3050 1450
Wire Wire Line
	3650 1450 3950 1450
Wire Wire Line
	3950 1450 3950 1900
Wire Wire Line
	3650 1900 3950 1900
Connection ~ 3950 1900
Wire Wire Line
	3950 1900 3950 2550
Wire Wire Line
	3850 2750 6100 2750
Wire Wire Line
	7100 3150 7550 3150
$Comp
L 74xx:74LS244 U10
U 1 1 5F5F9FD0
P 6600 3150
F 0 "U10" H 6600 4131 50  0000 C CNN
F 1 "74LS244" H 6600 4040 50  0000 C CNN
F 2 "Package_SO:SSOP-20_5.3x7.2mm_P0.65mm" H 6600 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 6600 3150 50  0001 C CNN
F 4 " 595-SN74LS244DBR " H 6600 3150 50  0001 C CNN "Mouser Part Number"
F 5 "SN74LS244DBR " H 6600 3150 50  0001 C CNN "Manufacturer_Part_Number"
	1    6600 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5F6B0548
P 600 2300
F 0 "J1" H 518 1975 50  0000 C CNN
F 1 "Conn_01x02" H 518 2066 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 600 2300 50  0001 C CNN
F 3 "~" H 600 2300 50  0001 C CNN
	1    600  2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	800  2200 1150 2200
Text Label 850  2200 0    50   ~ 0
TAPE_IN
$Comp
L power:GND #PWR0101
U 1 1 5F6B3849
P 850 2450
F 0 "#PWR0101" H 850 2200 50  0001 C CNN
F 1 "GND" H 855 2277 50  0000 C CNN
F 2 "" H 850 2450 50  0001 C CNN
F 3 "" H 850 2450 50  0001 C CNN
	1    850  2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2300 850  2300
Wire Wire Line
	850  2300 850  2450
$Comp
L power:GND #PWR0102
U 1 1 5F6B54E1
P 2850 2800
F 0 "#PWR0102" H 2850 2550 50  0001 C CNN
F 1 "GND" H 2855 2627 50  0000 C CNN
F 2 "" H 2850 2800 50  0001 C CNN
F 3 "" H 2850 2800 50  0001 C CNN
	1    2850 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5F6B5BF2
P 3850 2400
F 0 "#PWR0103" H 3850 2250 50  0001 C CNN
F 1 "+5V" H 3865 2573 50  0000 C CNN
F 2 "" H 3850 2400 50  0001 C CNN
F 3 "" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J2
U 1 1 5F6B68FB
P 7750 3050
F 0 "J2" H 7830 3092 50  0000 L CNN
F 1 "Conn_01x09" H 7830 3001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 7750 3050 50  0001 C CNN
F 3 "~" H 7750 3050 50  0001 C CNN
	1    7750 3050
	1    0    0    -1  
$EndComp
Text Label 7250 2650 0    50   ~ 0
D7
Text Label 7250 2750 0    50   ~ 0
D6
Text Label 7250 2850 0    50   ~ 0
D5
Text Label 7250 2950 0    50   ~ 0
D4
Text Label 7250 3050 0    50   ~ 0
D3
Text Label 7250 3150 0    50   ~ 0
D2
Text Label 7250 3250 0    50   ~ 0
D1
Text Label 7250 3350 0    50   ~ 0
D0
Wire Wire Line
	5800 4450 7500 4450
Wire Wire Line
	7500 4450 7500 3450
Wire Wire Line
	7500 3450 7550 3450
Wire Wire Line
	5800 3650 5800 4450
Text Label 6250 4450 0    50   ~ 0
FE_RD_ENABLED
Wire Wire Line
	2850 2750 2850 2800
Wire Wire Line
	3850 2400 3850 2450
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5F6C0AAE
P 1600 3450
F 0 "J3" H 1650 3667 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 1650 3576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 1600 3450 50  0001 C CNN
F 3 "~" H 1600 3450 50  0001 C CNN
	1    1600 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F6C2431
P 1400 3700
F 0 "#PWR02" H 1400 3450 50  0001 C CNN
F 1 "GND" H 1405 3527 50  0000 C CNN
F 2 "" H 1400 3700 50  0001 C CNN
F 3 "" H 1400 3700 50  0001 C CNN
	1    1400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3550 1400 3700
Wire Wire Line
	1900 3450 1900 3300
$Comp
L power:+5V #PWR01
U 1 1 5F6C3DA9
P 1900 3300
F 0 "#PWR01" H 1900 3150 50  0001 C CNN
F 1 "+5V" H 1915 3473 50  0000 C CNN
F 2 "" H 1900 3300 50  0001 C CNN
F 3 "" H 1900 3300 50  0001 C CNN
	1    1900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3450 1400 3550
Connection ~ 1400 3550
Wire Wire Line
	1900 3550 1900 3450
Connection ~ 1900 3450
$EndSCHEMATC
