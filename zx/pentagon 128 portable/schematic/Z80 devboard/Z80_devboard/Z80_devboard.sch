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
L SamacSys_Parts:Z84C0020AEG IC?
U 1 1 5F60EFC3
P 3450 2800
F 0 "IC?" H 4200 2650 50  0000 L CNN
F 1 "Z84C0020AEG" H 4050 2850 50  0000 L CNN
F 2 "QFP80P1200X1200X160-44N" H 4900 3200 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/Z84C0020AEG.pdf" H 4900 3100 50  0001 L CNN
F 4 "Microprocessors - MPU 20 MHZ Z80 CMOS CPU" H 4900 3000 50  0001 L CNN "Description"
F 5 "1.6" H 4900 2900 50  0001 L CNN "Height"
F 6 "692-Z84C0020AEG" H 4900 2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ZiLOG/Z84C0020AEG?qs=87AjWkFq0r57qleL5Y3D%2Fw%3D%3D" H 4900 2700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Zilog" H 4900 2600 50  0001 L CNN "Manufacturer_Name"
F 9 "Z84C0020AEG" H 4900 2500 50  0001 L CNN "Manufacturer_Part_Number"
	1    3450 2800
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TXB0108PWR IC?
U 1 1 5F610DE2
P 950 2900
F 0 "IC?" H 1500 3165 50  0000 C CNN
F 1 "TXB0108PWR" H 1500 3074 50  0000 C CNN
F 2 "SOP65P640X120-20N" H 1900 3000 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 1900 2900 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 1900 2800 50  0001 L CNN "Description"
F 5 "1.2" H 1900 2700 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 1900 2600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 1900 2500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 1900 2400 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 1900 2300 50  0001 L CNN "Manufacturer_Part_Number"
	1    950  2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F613079
P 6300 1850
F 0 "#PWR?" H 6300 1700 50  0001 C CNN
F 1 "+5V" H 6315 2023 50  0000 C CNN
F 2 "" H 6300 1850 50  0001 C CNN
F 3 "" H 6300 1850 50  0001 C CNN
	1    6300 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6135CC
P 6350 2400
F 0 "#PWR?" H 6350 2150 50  0001 C CNN
F 1 "GND" H 6355 2227 50  0000 C CNN
F 2 "" H 6350 2400 50  0001 C CNN
F 3 "" H 6350 2400 50  0001 C CNN
	1    6350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1850 6300 2000
Wire Wire Line
	6300 2000 6750 2000
Wire Wire Line
	6350 2400 6350 2300
Wire Wire Line
	6350 2300 6750 2300
Text Label 6400 2300 0    50   ~ 0
GND
Text Label 6400 2000 0    50   ~ 0
+5V
$Comp
L power:+3.3V #PWR?
U 1 1 5F6167BE
P 7300 1850
F 0 "#PWR?" H 7300 1700 50  0001 C CNN
F 1 "+3.3V" H 7315 2023 50  0000 C CNN
F 2 "" H 7300 1850 50  0001 C CNN
F 3 "" H 7300 1850 50  0001 C CNN
	1    7300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1850 7300 2000
Wire Wire Line
	7300 2000 7900 2000
Text Label 7500 2000 0    50   ~ 0
+3.3V
Wire Wire Line
	5050 2900 5550 2900
Wire Wire Line
	5050 3000 5550 3000
Wire Wire Line
	5050 3100 5550 3100
Wire Wire Line
	5050 3200 5550 3200
Wire Wire Line
	5050 3300 5550 3300
Wire Wire Line
	5050 3400 5550 3400
Wire Wire Line
	5050 3500 5550 3500
Wire Wire Line
	5050 3600 5550 3600
Wire Wire Line
	5050 3700 5550 3700
Wire Wire Line
	5050 3800 5550 3800
Wire Wire Line
	3450 2800 3000 2800
Wire Wire Line
	3450 2900 3000 2900
Wire Wire Line
	3450 3000 3000 3000
Wire Wire Line
	3450 3100 3000 3100
Wire Wire Line
	3450 3200 3000 3200
Wire Wire Line
	3450 3300 3000 3300
Wire Wire Line
	3450 3400 3000 3400
Wire Wire Line
	3450 3500 3000 3500
Wire Wire Line
	3450 3600 3000 3600
Wire Wire Line
	3450 3700 3000 3700
Wire Wire Line
	3750 4600 3750 5050
Wire Wire Line
	3850 4600 3850 5050
Wire Wire Line
	3950 4600 3950 5050
Wire Wire Line
	4050 4600 4050 5050
Wire Wire Line
	4150 4600 4150 5050
Wire Wire Line
	4350 4600 4350 5050
Wire Wire Line
	4450 4600 4450 5050
Wire Wire Line
	4550 4600 4550 5050
Wire Wire Line
	4650 4600 4650 5050
Wire Wire Line
	4750 4600 4750 5050
Wire Wire Line
	3750 2200 3750 1700
Wire Wire Line
	3850 2200 3850 1700
Wire Wire Line
	3950 2200 3950 1700
Wire Wire Line
	4050 2200 4050 1700
Wire Wire Line
	4150 2200 4150 1700
Wire Wire Line
	4350 2200 4350 1700
Wire Wire Line
	4450 2200 4450 1700
Wire Wire Line
	4550 2200 4550 1700
Wire Wire Line
	4650 2200 4650 1700
Wire Wire Line
	4750 2200 4750 1700
Text Label 3150 3300 0    50   ~ 0
+5V
Text Label 5200 3500 0    50   ~ 0
GND
Text Label 3150 3600 0    50   ~ 0
+5V_D0
Text Label 3150 3700 0    50   ~ 0
+5V_D1
Text Label 3150 3500 0    50   ~ 0
+5V_D7
Text Label 3150 3400 0    50   ~ 0
+5V_D2
Text Label 3150 3200 0    50   ~ 0
+5V_D6
Text Label 3150 3100 0    50   ~ 0
+5V_D5
Text Label 3150 3000 0    50   ~ 0
+5V_D3
Text Label 3150 2900 0    50   ~ 0
+5V_D4
Text Label 3150 2800 0    50   ~ 0
+5V_CLK
NoConn ~ 3450 3800
NoConn ~ 4250 4600
NoConn ~ 4250 2200
NoConn ~ 5050 2800
Wire Wire Line
	2050 2900 2450 2900
Wire Wire Line
	2050 3000 2450 3000
Wire Wire Line
	2050 3100 2450 3100
Wire Wire Line
	2050 3200 2450 3200
Wire Wire Line
	2050 3300 2450 3300
Wire Wire Line
	2050 3400 2450 3400
Wire Wire Line
	2050 3500 2450 3500
Wire Wire Line
	2050 3600 2450 3600
Wire Wire Line
	2050 3700 2450 3700
Wire Wire Line
	2050 3800 2450 3800
Wire Wire Line
	950  2900 600  2900
Wire Wire Line
	950  3000 600  3000
Wire Wire Line
	950  3100 600  3100
Wire Wire Line
	950  3200 600  3200
Wire Wire Line
	950  3300 600  3300
Wire Wire Line
	950  3400 600  3400
Wire Wire Line
	950  3500 600  3500
Wire Wire Line
	950  3600 600  3600
Wire Wire Line
	950  3700 600  3700
Wire Wire Line
	950  3800 600  3800
Text Label 2100 3000 0    50   ~ 0
+5V
Text Label 700  3000 0    50   ~ 0
+3.3V
Text Label 2150 3800 0    50   ~ 0
GND
Text Label 2100 2900 0    50   ~ 0
+5V_D0
Text Label 2100 3100 0    50   ~ 0
+5V_D1
Text Label 2100 3200 0    50   ~ 0
+5V_D2
Text Label 2100 3300 0    50   ~ 0
+5V_D3
Text Label 2100 3400 0    50   ~ 0
+5V_D4
Text Label 2100 3500 0    50   ~ 0
+5V_D5
Text Label 2100 3600 0    50   ~ 0
+5V_D6
Text Label 2100 3700 0    50   ~ 0
+5V_D7
Text Label 650  2900 0    50   ~ 0
D0
Text Label 650  3100 0    50   ~ 0
D1
Text Label 650  3200 0    50   ~ 0
D2
Text Label 650  3300 0    50   ~ 0
D3
Text Label 650  3400 0    50   ~ 0
D4
Text Label 650  3500 0    50   ~ 0
D5
Text Label 650  3600 0    50   ~ 0
D6
Text Label 650  3700 0    50   ~ 0
D7
$Comp
L SamacSys_Parts:TXB0108PWR IC?
U 1 1 5F64E23E
P 1000 4650
F 0 "IC?" H 1550 4915 50  0000 C CNN
F 1 "TXB0108PWR" H 1550 4824 50  0000 C CNN
F 2 "SOP65P640X120-20N" H 1950 4750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 1950 4650 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 1950 4550 50  0001 L CNN "Description"
F 5 "1.2" H 1950 4450 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 1950 4350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 1950 4250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 1950 4150 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 1950 4050 50  0001 L CNN "Manufacturer_Part_Number"
	1    1000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4650 2600 4650
Wire Wire Line
	2100 4750 2600 4750
Wire Wire Line
	2100 4850 2600 4850
Wire Wire Line
	2100 4950 2600 4950
Wire Wire Line
	2100 5050 2600 5050
Wire Wire Line
	2100 5150 2600 5150
Wire Wire Line
	2100 5250 2600 5250
Wire Wire Line
	2100 5350 2600 5350
Wire Wire Line
	2100 5450 2600 5450
Wire Wire Line
	2100 5550 2600 5550
Text Label 2250 4750 0    50   ~ 0
+5V
Text Label 2250 5550 0    50   ~ 0
GND
Text Label 2200 4650 0    50   ~ 0
+5V_CLK
Text Label 3750 4950 1    50   ~ 0
~+5V_INT
Text Label 2200 4850 0    50   ~ 0
~+5V_INT
$Comp
L SamacSys_Parts:TXB0108PWR IC?
U 1 1 5F661E46
P 6700 3000
F 0 "IC?" H 7250 3265 50  0000 C CNN
F 1 "TXB0108PWR" H 7250 3174 50  0000 C CNN
F 2 "SOP65P640X120-20N" H 7650 3100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 7650 3000 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 7650 2900 50  0001 L CNN "Description"
F 5 "1.2" H 7650 2800 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 7650 2700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 7650 2600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7650 2500 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 7650 2400 50  0001 L CNN "Manufacturer_Part_Number"
	1    6700 3000
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TXB0108PWR IC?
U 1 1 5F663EF3
P 6700 4400
F 0 "IC?" H 7250 4665 50  0000 C CNN
F 1 "TXB0108PWR" H 7250 4574 50  0000 C CNN
F 2 "SOP65P640X120-20N" H 7650 4500 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 7650 4400 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 7650 4300 50  0001 L CNN "Description"
F 5 "1.2" H 7650 4200 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 7650 4100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 7650 4000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7650 3900 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 7650 3800 50  0001 L CNN "Manufacturer_Part_Number"
	1    6700 4400
	1    0    0    -1  
$EndComp
Text Label 5150 3400 0    50   ~ 0
+5V_A0
Text Label 5150 3300 0    50   ~ 0
+5V_A1
Text Label 5150 3200 0    50   ~ 0
+5V_A2
Text Label 5150 3100 0    50   ~ 0
+5V_A3
Text Label 5150 3000 0    50   ~ 0
+5V_A4
Text Label 5150 2900 0    50   ~ 0
+5V_A5
Text Label 4750 2050 1    50   ~ 0
+5V_A6
Text Label 4650 2050 1    50   ~ 0
+5V_A7
Text Label 4550 2050 1    50   ~ 0
+5V_A8
Text Label 4450 2050 1    50   ~ 0
+5V_A9
Text Label 4350 2050 1    50   ~ 0
+5V_A10
Text Label 4150 2050 1    50   ~ 0
+5V_A11
Text Label 4050 2050 1    50   ~ 0
+5V_A12
Text Label 3950 2050 1    50   ~ 0
+5V_A13
Text Label 3850 2050 1    50   ~ 0
+5V_A14
Text Label 3750 2050 1    50   ~ 0
+5V_A15
Wire Wire Line
	7800 3000 8250 3000
Wire Wire Line
	7800 3100 8250 3100
Wire Wire Line
	7800 3200 8250 3200
Wire Wire Line
	7800 3300 8250 3300
Wire Wire Line
	7800 3400 8250 3400
Wire Wire Line
	7800 3500 8250 3500
Wire Wire Line
	7800 3600 8250 3600
Wire Wire Line
	7800 3700 8250 3700
Wire Wire Line
	7800 3800 8250 3800
Wire Wire Line
	7800 3900 8250 3900
Text Label 7900 3000 0    50   ~ 0
+5V_A0
Text Label 7900 3200 0    50   ~ 0
+5V_A1
Text Label 7900 3300 0    50   ~ 0
+5V_A2
Text Label 7900 3400 0    50   ~ 0
+5V_A3
Text Label 7900 3500 0    50   ~ 0
+5V_A4
Text Label 7900 3600 0    50   ~ 0
+5V_A5
Text Label 7900 3700 0    50   ~ 0
+5V_A6
Text Label 7900 3800 0    50   ~ 0
+5V_A7
Wire Wire Line
	7800 4400 8250 4400
Wire Wire Line
	7800 4500 8250 4500
Wire Wire Line
	7800 4600 8250 4600
Wire Wire Line
	7800 4700 8250 4700
Wire Wire Line
	7800 4800 8250 4800
Wire Wire Line
	7800 4900 8250 4900
Wire Wire Line
	7800 5000 8250 5000
Wire Wire Line
	7800 5100 8250 5100
Wire Wire Line
	7800 5200 8250 5200
Wire Wire Line
	7800 5300 8250 5300
Text Label 7900 3100 0    50   ~ 0
+5V
Text Label 7900 3900 0    50   ~ 0
GND
Text Label 7900 5300 0    50   ~ 0
GND
Text Label 7900 4500 0    50   ~ 0
+5V
Text Label 7900 4400 0    50   ~ 0
+5V_A8
Text Label 7900 4600 0    50   ~ 0
+5V_A9
Text Label 7900 4700 0    50   ~ 0
+5V_A10
Text Label 7900 4800 0    50   ~ 0
+5V_A11
Text Label 7900 4900 0    50   ~ 0
+5V_A12
Text Label 7900 5000 0    50   ~ 0
+5V_A13
Text Label 7900 5100 0    50   ~ 0
+5V_A14
Text Label 7900 5200 0    50   ~ 0
+5V_A15
Wire Wire Line
	6700 3000 6400 3000
Wire Wire Line
	6700 3100 6400 3100
Wire Wire Line
	6700 3200 6400 3200
Wire Wire Line
	6700 3300 6400 3300
Wire Wire Line
	6700 3400 6400 3400
Wire Wire Line
	6700 3500 6400 3500
Wire Wire Line
	6700 3600 6400 3600
Wire Wire Line
	6700 3700 6400 3700
Wire Wire Line
	6700 3800 6400 3800
Wire Wire Line
	6700 3900 6400 3900
Text Label 6500 3000 0    50   ~ 0
A0
Text Label 6500 3100 0    50   ~ 0
+3.3V
Text Label 6500 3200 0    50   ~ 0
A1
Text Label 6500 3300 0    50   ~ 0
A2
Text Label 6500 3400 0    50   ~ 0
A3
Text Label 6500 3500 0    50   ~ 0
A4
Text Label 6500 3600 0    50   ~ 0
A5
Text Label 6500 3700 0    50   ~ 0
A6
Text Label 6500 3800 0    50   ~ 0
A7
Wire Wire Line
	6700 4400 6400 4400
Wire Wire Line
	6700 4500 6400 4500
Wire Wire Line
	6700 4600 6400 4600
Wire Wire Line
	6700 4700 6400 4700
Wire Wire Line
	6700 4800 6400 4800
Wire Wire Line
	6700 4900 6400 4900
Wire Wire Line
	6700 5000 6400 5000
Wire Wire Line
	6700 5100 6400 5100
Wire Wire Line
	6700 5200 6400 5200
Wire Wire Line
	6700 5300 6400 5300
Text Label 6500 4400 0    50   ~ 0
A8
Text Label 6500 4500 0    50   ~ 0
+3.3V
Text Label 6500 4600 0    50   ~ 0
A9
Text Label 6500 4700 0    50   ~ 0
A10
Text Label 6500 4800 0    50   ~ 0
A11
Text Label 6500 4900 0    50   ~ 0
A12
Text Label 6500 5000 0    50   ~ 0
A13
Text Label 6500 5100 0    50   ~ 0
A14
Text Label 6500 5200 0    50   ~ 0
A15
Text Label 4350 4950 1    50   ~ 0
~+5V_RD
Text Label 2200 4950 0    50   ~ 0
~+5V_RD
Text Label 4450 4950 1    50   ~ 0
~+5V_WR
Text Label 2200 5050 0    50   ~ 0
~+5V_WR
Text Label 4050 5050 1    50   ~ 0
~+5V_MREQ
Text Label 2150 5150 0    50   ~ 0
~+5V_MREQ
Text Label 4150 5050 1    50   ~ 0
~+5V_IORQ
Text Label 2150 5250 0    50   ~ 0
~+5V_IORQ
Text Label 3850 5050 1    50   ~ 0
~+5V_NMI
Text Label 2150 5350 0    50   ~ 0
~+5V_NMI
$EndSCHEMATC
