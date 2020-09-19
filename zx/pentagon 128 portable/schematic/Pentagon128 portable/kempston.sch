EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 14
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
L power:+5V #PWR041
U 1 1 5F5D814B
P 7900 1050
F 0 "#PWR041" H 7900 900 50  0001 C CNN
F 1 "+5V" H 7915 1223 50  0000 C CNN
F 2 "" H 7900 1050 50  0001 C CNN
F 3 "" H 7900 1050 50  0001 C CNN
	1    7900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1250 7900 1050
$Comp
L Switch:SW_Push SW2
U 1 1 5F5D91B1
P 2250 4350
F 0 "SW2" H 2250 4635 50  0001 C CNN
F 1 "FIRE" H 2250 4543 50  0000 C CNN
F 2 "" H 2250 4550 50  0001 C CNN
F 3 "~" H 2250 4550 50  0001 C CNN
	1    2250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4350 1800 4350
$Comp
L Switch:SW_Push SW3
U 1 1 5F5E1EAF
P 2250 4600
F 0 "SW3" H 2250 4885 50  0001 C CNN
F 1 "UP" H 2250 4793 50  0000 C CNN
F 2 "" H 2250 4800 50  0001 C CNN
F 3 "~" H 2250 4800 50  0001 C CNN
	1    2250 4600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5F5E3BE1
P 2250 4850
F 0 "SW4" H 2250 5135 50  0001 C CNN
F 1 "DOWN" H 2250 5043 50  0000 C CNN
F 2 "" H 2250 5050 50  0001 C CNN
F 3 "~" H 2250 5050 50  0001 C CNN
	1    2250 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5F5E3F61
P 2250 5100
F 0 "SW5" H 2250 5385 50  0001 C CNN
F 1 "LEFT" H 2250 5293 50  0000 C CNN
F 2 "" H 2250 5300 50  0001 C CNN
F 3 "~" H 2250 5300 50  0001 C CNN
	1    2250 5100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5F5E4476
P 2250 5350
F 0 "SW6" H 2250 5635 50  0001 C CNN
F 1 "RIGHT" H 2250 5543 50  0000 C CNN
F 2 "" H 2250 5550 50  0001 C CNN
F 3 "~" H 2250 5550 50  0001 C CNN
	1    2250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4600 1800 4600
Wire Wire Line
	1800 4600 1800 4350
Wire Wire Line
	1800 4600 1800 4850
Wire Wire Line
	1800 5350 2050 5350
Connection ~ 1800 4600
Wire Wire Line
	2050 5100 1800 5100
Connection ~ 1800 5100
Wire Wire Line
	1800 5100 1800 5350
Wire Wire Line
	2050 4850 1800 4850
Connection ~ 1800 4850
Wire Wire Line
	1800 4850 1800 5100
$Comp
L power:GND #PWR046
U 1 1 5F5E8FDE
P 1800 5650
F 0 "#PWR046" H 1800 5400 50  0001 C CNN
F 1 "GND" H 1805 5477 50  0000 C CNN
F 2 "" H 1800 5650 50  0001 C CNN
F 3 "" H 1800 5650 50  0001 C CNN
	1    1800 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5350 1800 5650
Connection ~ 1800 5350
$Comp
L power:+5V #PWR045
U 1 1 5F5E9E08
P 3900 2600
F 0 "#PWR045" H 3900 2450 50  0001 C CNN
F 1 "+5V" H 3915 2773 50  0000 C CNN
F 2 "" H 3900 2600 50  0001 C CNN
F 3 "" H 3900 2600 50  0001 C CNN
	1    3900 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 2300 3900 2450
Wire Wire Line
	3400 2300 3400 2450
Wire Wire Line
	3400 2450 3650 2450
Connection ~ 3900 2450
Wire Wire Line
	3900 2450 3900 2600
Wire Wire Line
	3900 2450 4150 2450
Wire Wire Line
	4400 2450 4400 2300
Wire Wire Line
	4150 2300 4150 2450
Connection ~ 4150 2450
Wire Wire Line
	4150 2450 4400 2450
Wire Wire Line
	3650 2300 3650 2450
Connection ~ 3650 2450
Wire Wire Line
	3650 2450 3900 2450
Text HLabel 6400 1250 0    50   Input ~ 0
KEMPSTON_SELECT
Wire Wire Line
	6800 1250 6750 1250
Text Notes 5800 1150 0    50   ~ 0
A5=0,\n~IORQ=0\n~RD=0
Wire Wire Line
	7900 1450 8200 1450
Wire Wire Line
	7900 1650 8200 1650
Wire Wire Line
	7900 1850 8200 1850
Wire Wire Line
	7900 2050 8200 2050
Text HLabel 6800 2050 0    50   Input ~ 0
D0
Text HLabel 8200 1450 2    50   Input ~ 0
D7
Text HLabel 8200 1650 2    50   Input ~ 0
D6
Text HLabel 8200 1850 2    50   Input ~ 0
D5
Text HLabel 8200 2050 2    50   Input ~ 0
D4
Text HLabel 6800 1450 0    50   Input ~ 0
D3
Text HLabel 6800 1650 0    50   Input ~ 0
D2
Text HLabel 6800 1850 0    50   Input ~ 0
D1
$Comp
L SamacSys_Parts:74HC240PW,118 IC8
U 1 1 5F74DE9C
P 6800 1250
F 0 "IC8" H 7350 1515 50  0000 C CNN
F 1 "74HC240PW,118" H 7350 1424 50  0000 C CNN
F 2 "SamacSys_Parts:SOP65P640X110-20N" H 7750 1350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/74HC240PW,118.pdf" H 7750 1250 50  0001 L CNN
F 4 "74HC(T)240 - Octal buffer/line driver; 3-state; inverting@en-us" H 7750 1150 50  0001 L CNN "Description"
F 5 "1.1" H 7750 1050 50  0001 L CNN "Height"
F 6 "771-HC240PW118" H 7750 950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=771-HC240PW118" H 7750 850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Nexperia" H 7750 750 50  0001 L CNN "Manufacturer_Name"
F 9 "74HC240PW,118" H 7750 650 50  0001 L CNN "Manufacturer_Part_Number"
	1    6800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1250 6750 700 
Wire Wire Line
	6750 700  8100 700 
Wire Wire Line
	8100 700  8100 1350
Wire Wire Line
	8100 1350 7900 1350
Connection ~ 6750 1250
Wire Wire Line
	6750 1250 6400 1250
Wire Wire Line
	6800 1350 6400 1350
Wire Wire Line
	6400 1350 6400 1550
Wire Wire Line
	6400 1550 6800 1550
Wire Wire Line
	6800 1750 6400 1750
Wire Wire Line
	6400 1750 6400 1550
Connection ~ 6400 1550
$Comp
L power:+5V #PWR042
U 1 1 5F757A3D
P 6400 1350
F 0 "#PWR042" H 6400 1200 50  0001 C CNN
F 1 "+5V" V 6415 1523 50  0000 C CNN
F 2 "" H 6400 1350 50  0001 C CNN
F 3 "" H 6400 1350 50  0001 C CNN
	1    6400 1350
	0    -1   -1   0   
$EndComp
Connection ~ 6400 1350
Text Label 6550 1950 0    50   ~ 0
FIRE
Text Label 8000 1550 0    50   ~ 0
UP
Text Label 8000 1750 0    50   ~ 0
DOWN
Text Label 8000 1950 0    50   ~ 0
LEFT
Text Label 8000 2150 0    50   ~ 0
RIGHT
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 5F7594DC
P 5250 1750
F 0 "J4" H 5330 1742 50  0000 L CNN
F 1 "Conn_01x06" H 5330 1651 50  0000 L CNN
F 2 "" H 5250 1750 50  0001 C CNN
F 3 "~" H 5250 1750 50  0001 C CNN
	1    5250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2050 4800 2050
Text Label 4800 1550 0    50   ~ 0
FIRE
Text Label 4800 1650 0    50   ~ 0
UP
Text Label 4800 1750 0    50   ~ 0
DOWN
Text Label 4800 1850 0    50   ~ 0
LEFT
Text Label 4800 1950 0    50   ~ 0
RIGHT
$Comp
L power:GND #PWR043
U 1 1 5F75EF52
P 4800 2050
F 0 "#PWR043" H 4800 1800 50  0001 C CNN
F 1 "GND" H 4805 1877 50  0000 C CNN
F 2 "" H 4800 2050 50  0001 C CNN
F 3 "" H 4800 2050 50  0001 C CNN
	1    4800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1550 3400 1550
Wire Wire Line
	3400 1550 3400 2100
Wire Wire Line
	5050 1650 3650 1650
Wire Wire Line
	3650 1650 3650 2100
Wire Wire Line
	5050 1750 3900 1750
Wire Wire Line
	3900 1750 3900 2100
Wire Wire Line
	5050 1850 4150 1850
Wire Wire Line
	4150 1850 4150 2100
Wire Wire Line
	5050 1950 4400 1950
Wire Wire Line
	4400 1950 4400 2100
Wire Wire Line
	7900 1550 8200 1550
Wire Wire Line
	7900 1750 8200 1750
Wire Wire Line
	7900 1950 8200 1950
Wire Wire Line
	7900 2150 8200 2150
Wire Wire Line
	6800 1950 6400 1950
Text Label 2700 4350 2    50   ~ 0
FIRE
Text Label 2700 4600 2    50   ~ 0
UP
Text Label 2700 4850 2    50   ~ 0
DOWN
Text Label 2700 5100 2    50   ~ 0
LEFT
Text Label 2700 5350 2    50   ~ 0
RIGHT
Wire Wire Line
	2450 4350 4100 4350
Wire Wire Line
	2450 4600 3850 4600
Wire Wire Line
	2450 4850 3600 4850
Wire Wire Line
	2450 5100 3350 5100
Wire Wire Line
	2450 5350 3100 5350
$Comp
L power:GND #PWR044
U 1 1 5F79EDA2
P 6650 2350
F 0 "#PWR044" H 6650 2100 50  0001 C CNN
F 1 "GND" H 6655 2177 50  0000 C CNN
F 2 "" H 6650 2350 50  0001 C CNN
F 3 "" H 6650 2350 50  0001 C CNN
	1    6650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2150 6650 2150
Wire Wire Line
	6650 2150 6650 2350
$Comp
L SamacSys_Parts:1k R24
U 1 1 5F941390
P 3400 2200
F 0 "R24" H 3459 2246 50  0000 L CNN
F 1 "1k" H 3459 2155 50  0000 L CNN
F 2 "RESC1005X35N" H 3450 2050 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_9.pdf" H 3450 1950 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1K ohm 1% 1/16W" H 3450 1850 50  0001 L CNN "Description"
F 5 "0.35" H 3450 1750 50  0001 L CNN "Height"
F 6 "603-RT0402FRE071KL" H 3450 1650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE071KL?qs=BXCcY9r%252B08AJmLKodK5LLA%3D%3D" H 3450 1550 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 3450 1450 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE071KL" H 3450 1350 50  0001 L CNN "Manufacturer_Part_Number"
	1    3400 2200
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:1k R25
U 1 1 5F941FA0
P 3650 2200
F 0 "R25" H 3709 2246 50  0000 L CNN
F 1 "1k" H 3709 2155 50  0000 L CNN
F 2 "RESC1005X35N" H 3700 2050 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_9.pdf" H 3700 1950 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1K ohm 1% 1/16W" H 3700 1850 50  0001 L CNN "Description"
F 5 "0.35" H 3700 1750 50  0001 L CNN "Height"
F 6 "603-RT0402FRE071KL" H 3700 1650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE071KL?qs=BXCcY9r%252B08AJmLKodK5LLA%3D%3D" H 3700 1550 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 3700 1450 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE071KL" H 3700 1350 50  0001 L CNN "Manufacturer_Part_Number"
	1    3650 2200
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:1k R26
U 1 1 5F942199
P 3900 2200
F 0 "R26" H 3959 2246 50  0000 L CNN
F 1 "1k" H 3959 2155 50  0000 L CNN
F 2 "RESC1005X35N" H 3950 2050 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_9.pdf" H 3950 1950 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1K ohm 1% 1/16W" H 3950 1850 50  0001 L CNN "Description"
F 5 "0.35" H 3950 1750 50  0001 L CNN "Height"
F 6 "603-RT0402FRE071KL" H 3950 1650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE071KL?qs=BXCcY9r%252B08AJmLKodK5LLA%3D%3D" H 3950 1550 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 3950 1450 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE071KL" H 3950 1350 50  0001 L CNN "Manufacturer_Part_Number"
	1    3900 2200
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:1k R27
U 1 1 5F9423D3
P 4150 2200
F 0 "R27" H 4209 2246 50  0000 L CNN
F 1 "1k" H 4209 2155 50  0000 L CNN
F 2 "RESC1005X35N" H 4200 2050 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_9.pdf" H 4200 1950 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1K ohm 1% 1/16W" H 4200 1850 50  0001 L CNN "Description"
F 5 "0.35" H 4200 1750 50  0001 L CNN "Height"
F 6 "603-RT0402FRE071KL" H 4200 1650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE071KL?qs=BXCcY9r%252B08AJmLKodK5LLA%3D%3D" H 4200 1550 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 4200 1450 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE071KL" H 4200 1350 50  0001 L CNN "Manufacturer_Part_Number"
	1    4150 2200
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:1k R28
U 1 1 5F942862
P 4400 2200
F 0 "R28" H 4459 2246 50  0000 L CNN
F 1 "1k" H 4459 2155 50  0000 L CNN
F 2 "RESC1005X35N" H 4450 2050 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_9.pdf" H 4450 1950 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1K ohm 1% 1/16W" H 4450 1850 50  0001 L CNN "Description"
F 5 "0.35" H 4450 1750 50  0001 L CNN "Height"
F 6 "603-RT0402FRE071KL" H 4450 1650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE071KL?qs=BXCcY9r%252B08AJmLKodK5LLA%3D%3D" H 4450 1550 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 4450 1450 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE071KL" H 4450 1350 50  0001 L CNN "Manufacturer_Part_Number"
	1    4400 2200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
