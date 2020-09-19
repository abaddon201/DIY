EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 14
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
L Audio:YM2149 U2
U 1 1 5F5BE3B6
P 3350 3500
F 0 "U2" H 3350 4881 50  0000 C CNN
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
L power:+5V #PWR039
U 1 1 5F5C0B75
P 2000 3800
F 0 "#PWR039" H 2000 3650 50  0001 C CNN
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
L power:+5V #PWR037
U 1 1 5F5C1A92
P 2000 3400
F 0 "#PWR037" H 2000 3250 50  0001 C CNN
F 1 "+5V" H 2015 3573 50  0000 C CNN
F 2 "" H 2000 3400 50  0001 C CNN
F 3 "" H 2000 3400 50  0001 C CNN
	1    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5F5C1DB3
P 2000 3500
F 0 "#PWR038" H 2000 3250 50  0001 C CNN
F 1 "GND" H 2005 3327 50  0000 C CNN
F 2 "" H 2000 3500 50  0001 C CNN
F 3 "" H 2000 3500 50  0001 C CNN
	1    2000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3500 2000 3500
$Comp
L power:GND #PWR040
U 1 1 5F5C263B
P 3350 4850
F 0 "#PWR040" H 3350 4600 50  0001 C CNN
F 1 "GND" H 3355 4677 50  0000 C CNN
F 2 "" H 3350 4850 50  0001 C CNN
F 3 "" H 3350 4850 50  0001 C CNN
	1    3350 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR035
U 1 1 5F5C2C20
P 3750 2100
F 0 "#PWR035" H 3750 1950 50  0001 C CNN
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
Wire Wire Line
	7250 2150 6850 2150
Wire Wire Line
	7250 2650 6900 2650
Wire Wire Line
	5500 2750 5500 2650
Connection ~ 5500 2650
Wire Wire Line
	5500 2650 5500 2000
Wire Wire Line
	5850 2000 5850 2150
Connection ~ 5850 2150
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
L power:GND #PWR036
U 1 1 5F5CDE29
P 6900 3050
F 0 "#PWR036" H 6900 2800 50  0001 C CNN
F 1 "GND" H 6905 2877 50  0000 C CNN
F 2 "" H 6900 3050 50  0001 C CNN
F 3 "" H 6900 3050 50  0001 C CNN
	1    6900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5F5CE47F
P 6850 1700
F 0 "#PWR034" H 6850 1450 50  0001 C CNN
F 1 "GND" H 6855 1527 50  0000 C CNN
F 2 "" H 6850 1700 50  0001 C CNN
F 3 "" H 6850 1700 50  0001 C CNN
	1    6850 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 1700 6850 1800
Wire Wire Line
	6900 2950 6900 3050
Wire Wire Line
	5850 1800 5850 1650
Wire Wire Line
	5850 1650 5700 1650
Wire Wire Line
	5500 1650 5500 1800
Wire Wire Line
	5700 1650 5700 1350
Wire Wire Line
	5700 1350 4550 1350
Connection ~ 5700 1650
Wire Wire Line
	5700 1650 5500 1650
Text HLabel 4550 1350 0    50   Input ~ 0
SOUND
Wire Wire Line
	5500 3200 5700 3200
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
Text HLabel 7800 2150 2    50   Input ~ 0
SOUND_RIGHT
Text HLabel 7800 2650 2    50   Input ~ 0
SOUND_LEFT
Wire Wire Line
	7450 2150 7800 2150
Wire Wire Line
	7450 2650 7800 2650
$Comp
L SamacSys_Parts:10uF C57
U 1 1 5F8B1D34
P 7350 2150
F 0 "C57" V 7121 2150 50  0000 C CNN
F 1 "10uF" V 7212 2150 50  0000 C CNN
F 2 "CAPC1005X55N" H 7450 2000 50  0001 L CNN
F 3 "" H 7450 1900 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10uF 20% 6.3 Volts 0402" H 7450 1800 50  0001 L CNN "Description"
F 5 "0.55" H 7450 1700 50  0001 L CNN "Height"
F 6 "791-0402X106M6R3CT" H 7450 1600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Walsin/0402X106M6R3CT?qs=K66U1JmYfS7Y7bXr0va0Xw%3D%3D" H 7450 1500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Walsin Technology Corporation" H 7450 1400 50  0001 L CNN "Manufacturer_Name"
F 9 "0402X106M6R3CT" H 7450 1300 50  0001 L CNN "Manufacturer_Part_Number"
	1    7350 2150
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:10uF C58
U 1 1 5F8B27E1
P 7350 2650
F 0 "C58" V 7121 2650 50  0000 C CNN
F 1 "10uF" V 7212 2650 50  0000 C CNN
F 2 "CAPC1005X55N" H 7450 2500 50  0001 L CNN
F 3 "" H 7450 2400 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10uF 20% 6.3 Volts 0402" H 7450 2300 50  0001 L CNN "Description"
F 5 "0.55" H 7450 2200 50  0001 L CNN "Height"
F 6 "791-0402X106M6R3CT" H 7450 2100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Walsin/0402X106M6R3CT?qs=K66U1JmYfS7Y7bXr0va0Xw%3D%3D" H 7450 2000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Walsin Technology Corporation" H 7450 1900 50  0001 L CNN "Manufacturer_Name"
F 9 "0402X106M6R3CT" H 7450 1800 50  0001 L CNN "Manufacturer_Part_Number"
	1    7350 2650
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:4.7k R17
U 1 1 5F8D5C65
P 5500 1900
F 0 "R17" H 5558 1946 50  0000 L CNN
F 1 "4.7k" H 5558 1855 50  0000 L CNN
F 2 "RESC1005X35N" H 5600 1750 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_9.pdf" H 5600 1650 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1/16W 4.7K ohm 1% 50ppm" H 5600 1550 50  0001 L CNN "Description"
F 5 "0.35" H 5600 1450 50  0001 L CNN "Height"
F 6 "603-RT0402FRE074K7L" H 5600 1350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=603-RT0402FRE074K7L" H 5600 1250 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 5600 1150 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE074K7L" H 5600 1050 50  0001 L CNN "Manufacturer_Part_Number"
	1    5500 1900
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:4.7k R18
U 1 1 5F8D6232
P 5850 1900
F 0 "R18" H 5908 1946 50  0000 L CNN
F 1 "4.7k" H 5908 1855 50  0000 L CNN
F 2 "RESC1005X35N" H 5950 1750 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_9.pdf" H 5950 1650 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1/16W 4.7K ohm 1% 50ppm" H 5950 1550 50  0001 L CNN "Description"
F 5 "0.35" H 5950 1450 50  0001 L CNN "Height"
F 6 "603-RT0402FRE074K7L" H 5950 1350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=603-RT0402FRE074K7L" H 5950 1250 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 5950 1150 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE074K7L" H 5950 1050 50  0001 L CNN "Manufacturer_Part_Number"
	1    5850 1900
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:5.1k R16
U 1 1 5F933375
P 6850 1900
F 0 "R16" H 6908 1946 50  0000 L CNN
F 1 "5.1k" H 6908 1855 50  0000 L CNN
F 2 "RESC1005X40N" H 6900 1750 50  0001 L CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C237.pdf" H 6900 1650 50  0001 L CNN
F 4 "Panasonic ERA Series Thin Film Surface Mount Resistor 0402 Case 5.1k +/-0.1% 63mW +/-25ppm/C" H 6900 1550 50  0001 L CNN "Description"
F 5 "0.4" H 6900 1450 50  0001 L CNN "Height"
F 6 "667-ERA-2AEB512X" H 6900 1350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Panasonic/ERA-2AEB512X?qs=YFwoyZoVY0ghygGvNfkWgQ%3D%3D" H 6900 1250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 6900 1150 50  0001 L CNN "Manufacturer_Name"
F 9 "ERA-2AEB512X" H 6900 1050 50  0001 L CNN "Manufacturer_Part_Number"
	1    6850 1900
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:5.1k R23
U 1 1 5F93399B
P 6900 2850
F 0 "R23" H 6958 2896 50  0000 L CNN
F 1 "5.1k" H 6958 2805 50  0000 L CNN
F 2 "RESC1005X40N" H 6950 2700 50  0001 L CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C237.pdf" H 6950 2600 50  0001 L CNN
F 4 "Panasonic ERA Series Thin Film Surface Mount Resistor 0402 Case 5.1k +/-0.1% 63mW +/-25ppm/C" H 6950 2500 50  0001 L CNN "Description"
F 5 "0.4" H 6950 2400 50  0001 L CNN "Height"
F 6 "667-ERA-2AEB512X" H 6950 2300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Panasonic/ERA-2AEB512X?qs=YFwoyZoVY0ghygGvNfkWgQ%3D%3D" H 6950 2200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 6950 2100 50  0001 L CNN "Manufacturer_Name"
F 9 "ERA-2AEB512X" H 6950 2000 50  0001 L CNN "Manufacturer_Part_Number"
	1    6900 2850
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:1k R19
U 1 1 5F93DAD2
P 4900 2150
F 0 "R19" V 4675 2150 50  0000 C CNN
F 1 "1k" V 4766 2150 50  0000 C CNN
F 2 "RESC1005X35N" H 4950 2000 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_9.pdf" H 4950 1900 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1K ohm 1% 1/16W" H 4950 1800 50  0001 L CNN "Description"
F 5 "0.35" H 4950 1700 50  0001 L CNN "Height"
F 6 "603-RT0402FRE071KL" H 4950 1600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE071KL?qs=BXCcY9r%252B08AJmLKodK5LLA%3D%3D" H 4950 1500 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 4950 1400 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE071KL" H 4950 1300 50  0001 L CNN "Manufacturer_Part_Number"
	1    4900 2150
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:1k R20
U 1 1 5F93E57E
P 4900 2650
F 0 "R20" V 4675 2650 50  0000 C CNN
F 1 "1k" V 4766 2650 50  0000 C CNN
F 2 "RESC1005X35N" H 4950 2500 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_9.pdf" H 4950 2400 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1K ohm 1% 1/16W" H 4950 2300 50  0001 L CNN "Description"
F 5 "0.35" H 4950 2200 50  0001 L CNN "Height"
F 6 "603-RT0402FRE071KL" H 4950 2100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE071KL?qs=BXCcY9r%252B08AJmLKodK5LLA%3D%3D" H 4950 2000 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 4950 1900 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE071KL" H 4950 1800 50  0001 L CNN "Manufacturer_Part_Number"
	1    4900 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2150 5850 2150
Wire Wire Line
	5000 2650 5500 2650
$Comp
L SamacSys_Parts:2k R21
U 1 1 5F949D64
P 5500 2850
F 0 "R21" H 5559 2896 50  0000 L CNN
F 1 "2k" H 5559 2805 50  0000 L CNN
F 2 "RESC1005X35N" H 5550 2700 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_8.pdf" H 5550 2600 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1/16W 2K ohm 1% 50ppm" H 5550 2500 50  0001 L CNN "Description"
F 5 "0.35" H 5550 2400 50  0001 L CNN "Height"
F 6 "603-RT0402FRE072KL" H 5550 2300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE072KL?qs=BXCcY9r%252B08AaoyuNta8Ffg%3D%3D" H 5550 2200 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 5550 2100 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE072KL" H 5550 2000 50  0001 L CNN "Manufacturer_Part_Number"
	1    5500 2850
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:2k R22
U 1 1 5F94A449
P 5850 2850
F 0 "R22" H 5909 2896 50  0000 L CNN
F 1 "2k" H 5909 2805 50  0000 L CNN
F 2 "RESC1005X35N" H 5900 2700 50  0001 L CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RT_1-to-0.01_RoHS_L_8.pdf" H 5900 2600 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1/16W 2K ohm 1% 50ppm" H 5900 2500 50  0001 L CNN "Description"
F 5 "0.35" H 5900 2400 50  0001 L CNN "Height"
F 6 "603-RT0402FRE072KL" H 5900 2300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE072KL?qs=BXCcY9r%252B08AaoyuNta8Ffg%3D%3D" H 5900 2200 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 5900 2100 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE072KL" H 5900 2000 50  0001 L CNN "Manufacturer_Part_Number"
	1    5850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2950 5500 3200
Wire Wire Line
	5850 2950 5850 3200
$EndSCHEMATC
