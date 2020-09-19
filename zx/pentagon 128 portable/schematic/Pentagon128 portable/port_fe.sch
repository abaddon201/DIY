EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 950  2200 0    50   Input ~ 0
TAPE_IN
Connection ~ 1600 2200
$Comp
L power:GND #PWR068
U 1 1 5F655480
P 1600 950
F 0 "#PWR068" H 1600 700 50  0001 C CNN
F 1 "GND" H 1605 777 50  0000 C CNN
F 2 "" H 1600 950 50  0001 C CNN
F 3 "" H 1600 950 50  0001 C CNN
	1    1600 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 4450 8000 4450
Text HLabel 8000 4450 0    50   Input ~ 0
FE_WR_ENABLE
Wire Wire Line
	8400 4350 8000 4350
Text HLabel 8000 4350 0    50   Input ~ 0
D4
$Comp
L 74xx:74LS175 U7
U 1 1 5F70FF3A
P 2000 5200
F 0 "U7" H 2000 6081 50  0000 C CNN
F 1 "74LS175" H 2000 5990 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 2000 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS175" H 2000 5200 50  0001 C CNN
F 4 " 595-SN74LS175DR " H 2000 5200 50  0001 C CNN "Mouser Part Number"
	1    2000 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR077
U 1 1 5F7115B3
P 2000 6100
F 0 "#PWR077" H 2000 5850 50  0001 C CNN
F 1 "GND" H 2005 5927 50  0000 C CNN
F 2 "" H 2000 6100 50  0001 C CNN
F 3 "" H 2000 6100 50  0001 C CNN
	1    2000 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR076
U 1 1 5F717360
P 1150 5700
F 0 "#PWR076" H 1150 5550 50  0001 C CNN
F 1 "+5V" V 1165 5828 50  0000 L CNN
F 2 "" H 1150 5700 50  0001 C CNN
F 3 "" H 1150 5700 50  0001 C CNN
	1    1150 5700
	0    -1   -1   0   
$EndComp
Text HLabel 1150 5600 0    50   Input ~ 0
FE_WR_ENABLE
Wire Wire Line
	1150 5600 1500 5600
Wire Wire Line
	1150 5700 1500 5700
Text HLabel 1150 4800 0    50   Input ~ 0
D0
Text HLabel 1150 5000 0    50   Input ~ 0
D1
Text HLabel 1150 5200 0    50   Input ~ 0
D2
Text HLabel 1150 5400 0    50   Input ~ 0
D3
Wire Wire Line
	1150 4800 1500 4800
Wire Wire Line
	1150 5000 1500 5000
Wire Wire Line
	1150 5200 1500 5200
Wire Wire Line
	1150 5400 1500 5400
Text HLabel 2650 6700 3    50   Input ~ 0
TAPE_OUT
Wire Wire Line
	2500 4800 3900 4800
Wire Wire Line
	2500 5000 3900 5000
Wire Wire Line
	2500 5200 3900 5200
Wire Wire Line
	2000 6000 2000 6100
$Comp
L power:GND #PWR078
U 1 1 5F7FCD41
P 3100 6700
F 0 "#PWR078" H 3100 6450 50  0001 C CNN
F 1 "GND" H 3105 6527 50  0000 C CNN
F 2 "" H 3100 6700 50  0001 C CNN
F 3 "" H 3100 6700 50  0001 C CNN
	1    3100 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5400 2650 5400
Wire Wire Line
	3100 6100 2650 6100
Connection ~ 2650 6100
Text HLabel 3900 4800 2    50   Input ~ 0
BORDER_COLOR_0
Text HLabel 3900 5000 2    50   Input ~ 0
BORDER_COLOR_1
Text HLabel 3900 5200 2    50   Input ~ 0
BORDER_COLOR_2
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
L SamacSys_Parts:74HCT3G14DP,125 IC14
U 1 1 5F6A771D
P 2850 2450
F 0 "IC14" H 3350 2715 50  0000 C CNN
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
L power:GND #PWR070
U 1 1 5F629796
P 6600 4050
F 0 "#PWR070" H 6600 3800 50  0001 C CNN
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
Wire Wire Line
	5800 3900 5800 3650
Text Notes 5900 4200 0    50   ~ 0
A0=0\n~IORQ=0\n~RD=0
Text HLabel 5800 3900 3    50   Input ~ 0
FE_RD_ENABLE
Wire Wire Line
	6950 2350 6950 2200
Wire Wire Line
	6600 2350 6950 2350
$Comp
L power:+5V #PWR069
U 1 1 5F62BD91
P 6950 2200
F 0 "#PWR069" H 6950 2050 50  0001 C CNN
F 1 "+5V" H 6965 2373 50  0000 C CNN
F 2 "" H 6950 2200 50  0001 C CNN
F 3 "" H 6950 2200 50  0001 C CNN
	1    6950 2200
	1    0    0    -1  
$EndComp
Text HLabel 7550 3350 2    50   Input ~ 0
D0
Text HLabel 7550 3250 2    50   Input ~ 0
D1
Text HLabel 7550 3150 2    50   Input ~ 0
D2
Text HLabel 7550 3050 2    50   Input ~ 0
D3
Text HLabel 7550 2950 2    50   Input ~ 0
D4
Text HLabel 7550 2750 2    50   Input ~ 0
D6
Text HLabel 7550 2850 2    50   Input ~ 0
D5
Text HLabel 7550 2650 2    50   Input ~ 0
D7
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
Wire Wire Line
	4300 2550 4300 2650
Wire Wire Line
	4300 2650 3850 2650
Wire Wire Line
	2850 2550 2750 2550
Wire Wire Line
	4300 2650 4300 3200
Connection ~ 4300 2650
Wire Wire Line
	2750 3200 2750 2550
Connection ~ 2750 2550
Wire Wire Line
	2400 2550 2400 2650
Wire Wire Line
	2400 2650 2850 2650
Connection ~ 3950 2550
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
$Comp
L SamacSys_Parts:SN74LS74ANSRG4 IC15
U 1 1 5F710322
P 8400 4250
F 0 "IC15" H 9000 4515 50  0000 C CNN
F 1 "SN74LS74ANSRG4" H 9000 4424 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P780X200-14N" H 9450 4350 50  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74ls74a" H 9450 4250 50  0001 L CNN
F 4 "Flip Flop D-Type Pos-Edge 2-Element 14-Pin SOP T/R" H 9450 4150 50  0001 L CNN "Description"
F 5 "2" H 9450 4050 50  0001 L CNN "Height"
F 6 "595-SN74LS74ANSRG4" H 9450 3950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/SN74LS74ANSRG4?qs=UG%2F8xqv%2F6WeCIASOw%2Fx%252BZg%3D%3D" H 9450 3850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 9450 3750 50  0001 L CNN "Manufacturer_Name"
F 9 "SN74LS74ANSRG4" H 9450 3650 50  0001 L CNN "Manufacturer_Part_Number"
	1    8400 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR073
U 1 1 5F71E815
P 8400 4550
F 0 "#PWR073" H 8400 4400 50  0001 C CNN
F 1 "+5V" H 8415 4723 50  0000 C CNN
F 2 "" H 8400 4550 50  0001 C CNN
F 3 "" H 8400 4550 50  0001 C CNN
	1    8400 4550
	0    -1   -1   0   
$EndComp
Text Notes 8750 5350 0    50   ~ 0
A0=0\n~IORQ=0\n~WR=0
Wire Wire Line
	8400 4650 8250 4650
Text HLabel 8100 4650 0    50   Input ~ 0
SOUND
Connection ~ 8250 4650
Wire Wire Line
	8250 4650 8100 4650
$Comp
L power:+5V #PWR071
U 1 1 5F72891D
P 8400 4250
F 0 "#PWR071" H 8400 4100 50  0001 C CNN
F 1 "+5V" H 8415 4423 50  0000 C CNN
F 2 "" H 8400 4250 50  0001 C CNN
F 3 "" H 8400 4250 50  0001 C CNN
	1    8400 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR072
U 1 1 5F728E5F
P 9600 4250
F 0 "#PWR072" H 9600 4100 50  0001 C CNN
F 1 "+5V" H 9615 4423 50  0000 C CNN
F 2 "" H 9600 4250 50  0001 C CNN
F 3 "" H 9600 4250 50  0001 C CNN
	1    9600 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR074
U 1 1 5F72AE49
P 8250 5150
F 0 "#PWR074" H 8250 5000 50  0001 C CNN
F 1 "+5V" H 8265 5323 50  0000 C CNN
F 2 "" H 8250 5150 50  0001 C CNN
F 3 "" H 8250 5150 50  0001 C CNN
	1    8250 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 4850 8400 5450
$Comp
L power:GND #PWR075
U 1 1 5F730301
P 8400 5450
F 0 "#PWR075" H 8400 5200 50  0001 C CNN
F 1 "GND" H 8405 5277 50  0000 C CNN
F 2 "" H 8400 5450 50  0001 C CNN
F 3 "" H 8400 5450 50  0001 C CNN
	1    8400 5450
	1    0    0    -1  
$EndComp
NoConn ~ 8400 4750
NoConn ~ 9600 4350
NoConn ~ 9600 4450
NoConn ~ 9600 4550
NoConn ~ 9600 4650
NoConn ~ 9600 4750
NoConn ~ 9600 4850
Wire Wire Line
	7100 3150 7550 3150
$Comp
L 74xx:74LS244 U6
U 1 1 5F5F9FD0
P 6600 3150
F 0 "U6" H 6600 4131 50  0000 C CNN
F 1 "74LS244" H 6600 4040 50  0000 C CNN
F 2 "Package_SO:SSOP-20_5.3x7.2mm_P0.65mm" H 6600 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 6600 3150 50  0001 C CNN
F 4 " 595-SN74LS244DBR " H 6600 3150 50  0001 C CNN "Mouser Part Number"
F 5 "SN74LS244DBR " H 6600 3150 50  0001 C CNN "Manufacturer_Part_Number"
	1    6600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3200 4300 3200
Wire Wire Line
	2750 3200 3500 3200
Wire Wire Line
	2650 2550 2750 2550
Wire Wire Line
	2450 2550 2400 2550
Wire Wire Line
	3950 2550 4050 2550
Wire Wire Line
	4250 2550 4300 2550
Wire Wire Line
	2000 2200 2750 2200
Wire Wire Line
	1600 2200 1800 2200
Wire Wire Line
	1400 2200 1600 2200
Wire Wire Line
	950  2200 1200 2200
Wire Wire Line
	1600 1750 1600 1700
Wire Wire Line
	1600 1950 1600 2200
Wire Wire Line
	8250 4650 8250 4800
Wire Wire Line
	8250 5000 8250 5150
Wire Wire Line
	2650 6100 2650 6250
Wire Wire Line
	2650 6450 2650 6700
Wire Wire Line
	3100 6450 3100 6700
Wire Wire Line
	3100 6100 3100 6250
Wire Wire Line
	2650 5400 2650 5700
Wire Wire Line
	2650 5900 2650 6100
$Comp
L SamacSys_Parts:100nF C70
U 1 1 5F815B9D
P 2550 2550
F 0 "C70" V 2321 2550 50  0000 C CNN
F 1 "100nF" V 2412 2550 50  0000 C CNN
F 2 "CAPC1005X55N" H 2650 2400 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 2650 2300 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 2650 2200 50  0001 L CNN "Description"
F 5 "0.55" H 2650 2100 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 2650 2000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 2650 1900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 2650 1800 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 2650 1700 50  0001 L CNN "Manufacturer_Part_Number"
	1    2550 2550
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:100nF C71
U 1 1 5F816114
P 4150 2550
F 0 "C71" V 3921 2550 50  0000 C CNN
F 1 "100nF" V 4012 2550 50  0000 C CNN
F 2 "CAPC1005X55N" H 4250 2400 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 4250 2300 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 4250 2200 50  0001 L CNN "Description"
F 5 "0.55" H 4250 2100 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 4250 2000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 4250 1900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 4250 1800 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 4250 1700 50  0001 L CNN "Manufacturer_Part_Number"
	1    4150 2550
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:100nF C73
U 1 1 5F81713C
P 3100 6350
F 0 "C73" H 3008 6304 50  0000 R CNN
F 1 "100nF" H 3008 6395 50  0000 R CNN
F 2 "CAPC1005X55N" H 3200 6200 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 3200 6100 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 3200 6000 50  0001 L CNN "Description"
F 5 "0.55" H 3200 5900 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 3200 5800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 3200 5700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 3200 5600 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 3200 5500 50  0001 L CNN "Manufacturer_Part_Number"
	1    3100 6350
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:10uF C68
U 1 1 5F8B7BB4
P 1600 1850
F 0 "C68" H 1692 1896 50  0000 L CNN
F 1 "10uF" H 1692 1805 50  0000 L CNN
F 2 "CAPC1005X55N" H 1700 1700 50  0001 L CNN
F 3 "" H 1700 1600 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10uF 20% 6.3 Volts 0402" H 1700 1500 50  0001 L CNN "Description"
F 5 "0.55" H 1700 1400 50  0001 L CNN "Height"
F 6 "791-0402X106M6R3CT" H 1700 1300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Walsin/0402X106M6R3CT?qs=K66U1JmYfS7Y7bXr0va0Xw%3D%3D" H 1700 1200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Walsin Technology Corporation" H 1700 1100 50  0001 L CNN "Manufacturer_Name"
F 9 "0402X106M6R3CT" H 1700 1000 50  0001 L CNN "Manufacturer_Part_Number"
	1    1600 1850
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:1uF C69
U 1 1 5F8B90F4
P 1300 2200
F 0 "C69" V 1071 2200 50  0000 C CNN
F 1 "1uF" V 1162 2200 50  0000 C CNN
F 2 "CAPC1005X33N" H 1400 2050 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/JMK105BJ105KP-F.pdf" H 1400 1950 50  0001 L CNN
F 4 "Taiyo Yuden JMK105BJ105KP-F 1F MLCC 6.3V dc +/-10% Tolerance SMD" H 1400 1850 50  0001 L CNN "Description"
F 5 "0.33" H 1400 1750 50  0001 L CNN "Height"
F 6 "963-JMK105BJ105KP-F" H 1400 1650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Taiyo-Yuden/JMK105BJ105KP-F?qs=vF%252B8ahGVilcfgxT2k6hjqQ%3D%3D" H 1400 1550 50  0001 L CNN "Mouser Price/Stock"
F 8 "TAIYO YUDEN" H 1400 1450 50  0001 L CNN "Manufacturer_Name"
F 9 "JMK105BJ105KP-F" H 1400 1350 50  0001 L CNN "Manufacturer_Part_Number"
	1    1300 2200
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:0.22uF C72
U 1 1 5F8C143E
P 2650 5800
F 0 "C72" H 2742 5846 50  0000 L CNN
F 1 "0.22uF" H 2742 5755 50  0000 L CNN
F 2 "CAPC1005X56N" H 2750 5650 50  0001 L CNN
F 3 "" H 2750 5550 50  0001 L CNN
F 4 "" H 2750 5450 50  0001 L CNN "Description"
F 5 "0.56" H 2750 5350 50  0001 L CNN "Height"
F 6 "581-0402ZD224K" H 2750 5250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/AVX/0402ZD224KAT2A?qs=q%252BYstVZXB1kcnMe2oVlTyQ%3D%3D" H 2750 5150 50  0001 L CNN "Mouser Price/Stock"
F 8 "AVX" H 2750 5050 50  0001 L CNN "Manufacturer_Name"
F 9 "0402ZD224KAT2A" H 2750 4950 50  0001 L CNN "Manufacturer_Part_Number"
	1    2650 5800
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:10k R38
U 1 1 5F90EB5D
P 2650 6350
F 0 "R38" H 2563 6304 50  0000 R CNN
F 1 "10k" H 2563 6395 50  0000 R CNN
F 2 "RESC1005X37N" H 2700 6200 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402MC1002FE000.pdf" H 2700 6100 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .1W 10Kohms 1% 0402 50ppm Auto" H 2700 6000 50  0001 L CNN "Description"
F 5 "0.37" H 2700 5900 50  0001 L CNN "Height"
F 6 "594-MCS0402MC1002FE0" H 2700 5800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402MC1002FE0" H 2700 5700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 2700 5600 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402MC1002FE000" H 2700 5500 50  0001 L CNN "Manufacturer_Part_Number"
	1    2650 6350
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:100k R36
U 1 1 5F923994
P 3600 3200
F 0 "R36" V 3375 3200 50  0000 C CNN
F 1 "100k" V 3466 3200 50  0000 C CNN
F 2 "RESC1005X40N" H 3650 3050 50  0001 L CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C237.pdf" H 3650 2950 50  0001 L CNN
F 4 "Panasonic ERA Series Thin Film Surface Mount Resistor 0402 Case 100k +/-0.5% 63mW +/-25ppm/C" H 3650 2850 50  0001 L CNN "Description"
F 5 "0.4" H 3650 2750 50  0001 L CNN "Height"
F 6 "667-ERA-2AED104X" H 3650 2650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Panasonic/ERA-2AED104X?qs=nho8PGNfA6oWiExMQMbJyw%3D%3D" H 3650 2550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 3650 2450 50  0001 L CNN "Manufacturer_Name"
F 9 "ERA-2AED104X" H 3650 2350 50  0001 L CNN "Manufacturer_Part_Number"
	1    3600 3200
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:620 R35
U 1 1 5F969489
P 1900 2200
F 0 "R35" V 1675 2200 50  0000 C CNN
F 1 "620" V 1766 2200 50  0000 C CNN
F 2 "RESC1005X35N" H 1950 2050 50  0001 L CNN
F 3 "" H 1950 1950 50  0001 L CNN
F 4 "TE Connectivity CPF Series Precision Thin Film Surface Mount Resistor 0402 Case 620 +/-0.1% 0.063W +/-25ppm/C" H 1950 1850 50  0001 L CNN "Description"
F 5 "0.35" H 1950 1750 50  0001 L CNN "Height"
F 6 "TE Connectivity" H 1950 1450 50  0001 L CNN "Manufacturer_Name"
F 7 "CPF0402B620RE1" H 1950 1350 50  0001 L CNN "Manufacturer_Part_Number"
	1    1900 2200
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:430 R37
U 1 1 5F96A0B8
P 8250 4900
F 0 "R37" H 8450 4850 50  0000 R CNN
F 1 "430" H 8450 4950 50  0000 R CNN
F 2 "RESC1005X35N" H 8300 4750 50  0001 L CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_11.pdf" H 8300 4650 50  0001 L CNN
F 4 "Thin Film Resistors - SMD" H 8300 4550 50  0001 L CNN "Description"
F 5 "0.35" H 8300 4450 50  0001 L CNN "Height"
F 6 "603-RT0402FRE07430RL" H 8300 4350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Yageo/RT0402FRE07430RL?qs=gY0y7AQI9SOig4wFT5o%2FZQ%3D%3D" H 8300 4250 50  0001 L CNN "Mouser Price/Stock"
F 8 "YAGEO (PHYCOMP)" H 8300 4150 50  0001 L CNN "Manufacturer_Name"
F 9 "RT0402FRE07430RL" H 8300 4050 50  0001 L CNN "Manufacturer_Part_Number"
	1    8250 4900
	-1   0    0    1   
$EndComp
$EndSCHEMATC
