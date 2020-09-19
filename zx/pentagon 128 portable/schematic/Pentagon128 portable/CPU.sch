EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 14
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
L SamacSys_Parts:Z84C0020AEG IC1
U 1 1 5F60EFC3
P 3850 2800
F 0 "IC1" H 4600 2650 50  0000 L CNN
F 1 "Z84C0020AEG" H 4450 2850 50  0000 L CNN
F 2 "SamacSys_Parts:QFP80P1200X1200X160-44N" H 5300 3200 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/Z84C0020AEG.pdf" H 5300 3100 50  0001 L CNN
F 4 "Microprocessors - MPU 20 MHZ Z80 CMOS CPU" H 5300 3000 50  0001 L CNN "Description"
F 5 "1.6" H 5300 2900 50  0001 L CNN "Height"
F 6 "692-Z84C0020AEG" H 5300 2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ZiLOG/Z84C0020AEG?qs=87AjWkFq0r57qleL5Y3D%2Fw%3D%3D" H 5300 2700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Zilog" H 5300 2600 50  0001 L CNN "Manufacturer_Name"
F 9 "Z84C0020AEG" H 5300 2500 50  0001 L CNN "Manufacturer_Part_Number"
	1    3850 2800
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TXB0108PWR IC2
U 1 1 5F610DE2
P 1350 2900
F 0 "IC2" H 1900 3165 50  0000 C CNN
F 1 "TXB0108PWR" H 1900 3074 50  0000 C CNN
F 2 "SamacSys_Parts:SOP65P640X120-20N" H 2300 3000 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 2300 2900 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 2300 2800 50  0001 L CNN "Description"
F 5 "1.2" H 2300 2700 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 2300 2600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 2300 2500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 2300 2400 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 2300 2300 50  0001 L CNN "Manufacturer_Part_Number"
	1    1350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2900 5950 2900
Wire Wire Line
	5450 3000 5950 3000
Wire Wire Line
	5450 3100 5950 3100
Wire Wire Line
	5450 3200 5950 3200
Wire Wire Line
	5450 3300 5950 3300
Wire Wire Line
	5450 3400 5950 3400
Wire Wire Line
	5450 3500 5950 3500
Wire Wire Line
	5450 3600 5950 3600
Wire Wire Line
	5450 3700 5950 3700
Wire Wire Line
	5450 3800 5950 3800
Wire Wire Line
	3850 2800 3400 2800
Wire Wire Line
	3850 2900 3400 2900
Wire Wire Line
	3850 3000 3400 3000
Wire Wire Line
	3850 3100 3400 3100
Wire Wire Line
	3850 3200 3400 3200
Wire Wire Line
	3850 3300 3400 3300
Wire Wire Line
	3850 3400 3400 3400
Wire Wire Line
	3850 3500 3400 3500
Wire Wire Line
	3850 3600 3400 3600
Wire Wire Line
	3850 3700 3400 3700
Wire Wire Line
	4150 4600 4150 5050
Wire Wire Line
	4250 4600 4250 5050
Wire Wire Line
	4350 4600 4350 5050
Wire Wire Line
	4450 4600 4450 5050
Wire Wire Line
	4550 4600 4550 5050
Wire Wire Line
	4750 4600 4750 5050
Wire Wire Line
	4850 4600 4850 5050
Wire Wire Line
	4950 4600 4950 5050
Wire Wire Line
	4150 2200 4150 1700
Wire Wire Line
	4250 2200 4250 1700
Wire Wire Line
	4350 2200 4350 1700
Wire Wire Line
	4450 2200 4450 1700
Wire Wire Line
	4550 2200 4550 1700
Wire Wire Line
	4750 2200 4750 1700
Wire Wire Line
	4850 2200 4850 1700
Wire Wire Line
	4950 2200 4950 1700
Wire Wire Line
	5050 2200 5050 1700
Wire Wire Line
	5150 2200 5150 1700
Text Label 3550 3300 0    50   ~ 0
+5V
Text Label 5600 3500 0    50   ~ 0
GND
Text Label 3550 3600 0    50   ~ 0
+5V_D0
Text Label 3550 3700 0    50   ~ 0
+5V_D1
Text Label 3550 3500 0    50   ~ 0
+5V_D7
Text Label 3550 3400 0    50   ~ 0
+5V_D2
Text Label 3550 3200 0    50   ~ 0
+5V_D6
Text Label 3550 3100 0    50   ~ 0
+5V_D5
Text Label 3550 3000 0    50   ~ 0
+5V_D3
Text Label 3550 2900 0    50   ~ 0
+5V_D4
Text Label 3550 2800 0    50   ~ 0
+5V_CLK
NoConn ~ 3850 3800
NoConn ~ 4650 4600
NoConn ~ 4650 2200
NoConn ~ 5450 2800
Wire Wire Line
	2450 2900 2850 2900
Wire Wire Line
	2450 3000 2850 3000
Wire Wire Line
	2450 3100 2850 3100
Wire Wire Line
	2450 3200 2850 3200
Wire Wire Line
	2450 3300 2850 3300
Wire Wire Line
	2450 3400 2850 3400
Wire Wire Line
	2450 3500 2850 3500
Wire Wire Line
	2450 3600 2850 3600
Wire Wire Line
	2450 3700 2850 3700
Wire Wire Line
	2450 3800 2850 3800
Wire Wire Line
	1350 2900 1000 2900
Wire Wire Line
	1350 3000 1000 3000
Wire Wire Line
	1350 3100 1000 3100
Wire Wire Line
	1350 3200 1000 3200
Wire Wire Line
	1350 3300 1000 3300
Wire Wire Line
	1350 3400 1000 3400
Wire Wire Line
	1350 3500 1000 3500
Wire Wire Line
	1350 3600 1000 3600
Wire Wire Line
	1350 3700 1000 3700
Text Label 2500 3000 0    50   ~ 0
+5V
Text Label 1100 3000 0    50   ~ 0
+3.3V
Text Label 2550 3800 0    50   ~ 0
GND
Text Label 2500 2900 0    50   ~ 0
+5V_D0
Text Label 2500 3100 0    50   ~ 0
+5V_D1
Text Label 2500 3200 0    50   ~ 0
+5V_D2
Text Label 2500 3300 0    50   ~ 0
+5V_D3
Text Label 2500 3400 0    50   ~ 0
+5V_D4
Text Label 2500 3500 0    50   ~ 0
+5V_D5
Text Label 2500 3600 0    50   ~ 0
+5V_D6
Text Label 2500 3700 0    50   ~ 0
+5V_D7
Text Label 1050 2900 0    50   ~ 0
D0
Text Label 1050 3100 0    50   ~ 0
D1
Text Label 1050 3200 0    50   ~ 0
D2
Text Label 1050 3300 0    50   ~ 0
D3
Text Label 1050 3400 0    50   ~ 0
D4
Text Label 1050 3500 0    50   ~ 0
D5
Text Label 1050 3600 0    50   ~ 0
D6
Text Label 1050 3700 0    50   ~ 0
D7
$Comp
L SamacSys_Parts:TXB0108PWR IC5
U 1 1 5F64E23E
P 1400 4650
F 0 "IC5" H 1950 4915 50  0000 C CNN
F 1 "TXB0108PWR" H 1950 4824 50  0000 C CNN
F 2 "SamacSys_Parts:SOP65P640X120-20N" H 2350 4750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 2350 4650 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 2350 4550 50  0001 L CNN "Description"
F 5 "1.2" H 2350 4450 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 2350 4350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 2350 4250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 2350 4150 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 2350 4050 50  0001 L CNN "Manufacturer_Part_Number"
	1    1400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4650 3000 4650
Wire Wire Line
	2500 4750 3000 4750
Wire Wire Line
	2500 4850 3000 4850
Wire Wire Line
	2500 4950 3000 4950
Wire Wire Line
	2500 5050 3000 5050
Wire Wire Line
	2500 5150 3000 5150
Wire Wire Line
	2500 5250 3000 5250
Wire Wire Line
	2500 5350 3000 5350
Wire Wire Line
	2500 5450 3000 5450
Wire Wire Line
	2500 5550 3000 5550
Text Label 2650 4750 0    50   ~ 0
+5V
Text Label 2650 5550 0    50   ~ 0
GND
Text Label 2600 4650 0    50   ~ 0
+5V_CLK
Text Label 4150 5050 1    50   ~ 0
~+5V_INT
Text Label 2600 4850 0    50   ~ 0
~+5V_INT
$Comp
L SamacSys_Parts:TXB0108PWR IC3
U 1 1 5F661E46
P 7100 3000
F 0 "IC3" H 7650 3265 50  0000 C CNN
F 1 "TXB0108PWR" H 7650 3174 50  0000 C CNN
F 2 "SamacSys_Parts:SOP65P640X120-20N" H 8050 3100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 8050 3000 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 8050 2900 50  0001 L CNN "Description"
F 5 "1.2" H 8050 2800 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 8050 2700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 8050 2600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 8050 2500 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 8050 2400 50  0001 L CNN "Manufacturer_Part_Number"
	1    7100 3000
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TXB0108PWR IC4
U 1 1 5F663EF3
P 7100 4400
F 0 "IC4" H 7650 4665 50  0000 C CNN
F 1 "TXB0108PWR" H 7650 4574 50  0000 C CNN
F 2 "SamacSys_Parts:SOP65P640X120-20N" H 8050 4500 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 8050 4400 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 8050 4300 50  0001 L CNN "Description"
F 5 "1.2" H 8050 4200 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 8050 4100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 8050 4000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 8050 3900 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 8050 3800 50  0001 L CNN "Manufacturer_Part_Number"
	1    7100 4400
	1    0    0    -1  
$EndComp
Text Label 5550 3400 0    50   ~ 0
+5V_A0
Text Label 5550 3300 0    50   ~ 0
+5V_A1
Text Label 5550 3200 0    50   ~ 0
+5V_A2
Text Label 5550 3100 0    50   ~ 0
+5V_A3
Text Label 5550 3000 0    50   ~ 0
+5V_A4
Text Label 5550 2900 0    50   ~ 0
+5V_A5
Text Label 5150 2050 1    50   ~ 0
+5V_A6
Text Label 5050 2050 1    50   ~ 0
+5V_A7
Text Label 4950 2050 1    50   ~ 0
+5V_A8
Text Label 4850 2050 1    50   ~ 0
+5V_A9
Text Label 4750 2050 1    50   ~ 0
+5V_A10
Text Label 4550 2050 1    50   ~ 0
+5V_A11
Text Label 4450 2050 1    50   ~ 0
+5V_A12
Text Label 4350 2050 1    50   ~ 0
+5V_A13
Text Label 4250 2050 1    50   ~ 0
+5V_A14
Text Label 4150 2050 1    50   ~ 0
+5V_A15
Wire Wire Line
	8200 3000 8650 3000
Wire Wire Line
	8200 3100 8650 3100
Wire Wire Line
	8200 3200 8650 3200
Wire Wire Line
	8200 3300 8650 3300
Wire Wire Line
	8200 3400 8650 3400
Wire Wire Line
	8200 3500 8650 3500
Wire Wire Line
	8200 3600 8650 3600
Wire Wire Line
	8200 3700 8650 3700
Wire Wire Line
	8200 3800 8650 3800
Wire Wire Line
	8200 3900 8650 3900
Text Label 8300 3000 0    50   ~ 0
+5V_A0
Text Label 8300 3200 0    50   ~ 0
+5V_A1
Text Label 8300 3300 0    50   ~ 0
+5V_A2
Text Label 8300 3400 0    50   ~ 0
+5V_A3
Text Label 8300 3500 0    50   ~ 0
+5V_A4
Text Label 8300 3600 0    50   ~ 0
+5V_A5
Text Label 8300 3700 0    50   ~ 0
+5V_A6
Text Label 8300 3800 0    50   ~ 0
+5V_A7
Wire Wire Line
	8200 4400 8650 4400
Wire Wire Line
	8200 4500 8650 4500
Wire Wire Line
	8200 4600 8650 4600
Wire Wire Line
	8200 4700 8650 4700
Wire Wire Line
	8200 4800 8650 4800
Wire Wire Line
	8200 4900 8650 4900
Wire Wire Line
	8200 5000 8650 5000
Wire Wire Line
	8200 5100 8650 5100
Wire Wire Line
	8200 5200 8650 5200
Wire Wire Line
	8200 5300 8650 5300
Text Label 8300 3100 0    50   ~ 0
+5V
Text Label 8300 3900 0    50   ~ 0
GND
Text Label 8300 5300 0    50   ~ 0
GND
Text Label 8300 4500 0    50   ~ 0
+5V
Text Label 8300 4400 0    50   ~ 0
+5V_A8
Text Label 8300 4600 0    50   ~ 0
+5V_A9
Text Label 8300 4700 0    50   ~ 0
+5V_A10
Text Label 8300 4800 0    50   ~ 0
+5V_A11
Text Label 8300 4900 0    50   ~ 0
+5V_A12
Text Label 8300 5000 0    50   ~ 0
+5V_A13
Text Label 8300 5100 0    50   ~ 0
+5V_A14
Text Label 8300 5200 0    50   ~ 0
+5V_A15
Wire Wire Line
	7100 3000 6800 3000
Wire Wire Line
	7100 3100 6800 3100
Wire Wire Line
	7100 3200 6800 3200
Wire Wire Line
	7100 3300 6800 3300
Wire Wire Line
	7100 3400 6800 3400
Wire Wire Line
	7100 3500 6800 3500
Wire Wire Line
	7100 3600 6800 3600
Wire Wire Line
	7100 3700 6800 3700
Wire Wire Line
	7100 3800 6800 3800
Wire Wire Line
	7100 3900 6800 3900
Text Label 6900 3000 0    50   ~ 0
A0
Text Label 6900 3100 0    50   ~ 0
+3.3V
Text Label 6900 3200 0    50   ~ 0
A1
Text Label 6900 3300 0    50   ~ 0
A2
Text Label 6900 3400 0    50   ~ 0
A3
Text Label 6900 3500 0    50   ~ 0
A4
Text Label 6900 3600 0    50   ~ 0
A5
Text Label 6900 3700 0    50   ~ 0
A6
Text Label 6900 3800 0    50   ~ 0
A7
Wire Wire Line
	7100 4400 6800 4400
Wire Wire Line
	7100 4500 6800 4500
Wire Wire Line
	7100 4600 6800 4600
Wire Wire Line
	7100 4700 6800 4700
Wire Wire Line
	7100 4800 6800 4800
Wire Wire Line
	7100 4900 6800 4900
Wire Wire Line
	7100 5000 6800 5000
Wire Wire Line
	7100 5100 6800 5100
Wire Wire Line
	7100 5200 6800 5200
Wire Wire Line
	7100 5300 6800 5300
Text Label 6900 4400 0    50   ~ 0
A8
Text Label 6900 4500 0    50   ~ 0
+3.3V
Text Label 6900 4600 0    50   ~ 0
A9
Text Label 6900 4700 0    50   ~ 0
A10
Text Label 6900 4800 0    50   ~ 0
A11
Text Label 6900 4900 0    50   ~ 0
A12
Text Label 6900 5000 0    50   ~ 0
A13
Text Label 6900 5100 0    50   ~ 0
A14
Text Label 6900 5200 0    50   ~ 0
A15
Text Label 4750 4950 1    50   ~ 0
~+5V_RD
Text Label 2600 5350 0    50   ~ 0
~+5V_RD
Text Label 4850 4950 1    50   ~ 0
~+5V_WR
Text Label 2600 5450 0    50   ~ 0
~+5V_WR
Text Label 4450 5050 1    50   ~ 0
~+5V_MREQ
Text Label 2600 5150 0    50   ~ 0
~+5V_MREQ
Text Label 4550 5050 1    50   ~ 0
~+5V_IORQ
Text Label 2600 5250 0    50   ~ 0
~+5V_IORQ
Text Label 4250 5050 1    50   ~ 0
~+5V_NMI
Text Label 2600 4950 0    50   ~ 0
~+5V_NMI
Wire Wire Line
	5150 5150 5350 5150
Wire Wire Line
	5150 4600 5150 5150
Wire Wire Line
	5050 5450 5350 5450
Wire Wire Line
	5050 4600 5050 5450
Text Label 5550 3800 0    50   ~ 0
~+5V_RESET
Text Label 4650 6050 0    50   ~ 0
~+5V_RESET
$Comp
L SamacSys_Parts:TXB0108PWR IC6
U 1 1 5F6A7D27
P 3500 6050
F 0 "IC6" H 4050 6315 50  0000 C CNN
F 1 "TXB0108PWR" H 4050 6224 50  0000 C CNN
F 2 "SamacSys_Parts:SOP65P640X120-20N" H 4450 6150 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 4450 6050 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 4450 5950 50  0001 L CNN "Description"
F 5 "1.2" H 4450 5850 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 4450 5750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 4450 5650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 4450 5550 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 4450 5450 50  0001 L CNN "Manufacturer_Part_Number"
	1    3500 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6050 5050 6050
Wire Wire Line
	4600 6150 5050 6150
Wire Wire Line
	4600 6250 5050 6250
Wire Wire Line
	4600 6350 5050 6350
Wire Wire Line
	4600 6450 5050 6450
Wire Wire Line
	4600 6550 5050 6550
Wire Wire Line
	4600 6650 5050 6650
Wire Wire Line
	4600 6750 5050 6750
Wire Wire Line
	4600 6850 5050 6850
Wire Wire Line
	4600 6950 5050 6950
Text Label 5550 3700 0    50   ~ 0
~+5V_M1
Text Label 4650 6250 0    50   ~ 0
~+5V_M1
Text Label 4700 6150 0    50   ~ 0
+5V
Text Label 5550 3600 0    50   ~ 0
~+5V_RFSH
Text Label 4650 6350 0    50   ~ 0
~+5V_RFSH
$Comp
L power:+5V #PWR07
U 1 1 5F6DEA7A
P 5700 5000
F 0 "#PWR07" H 5700 4850 50  0001 C CNN
F 1 "+5V" H 5715 5173 50  0000 C CNN
F 2 "" H 5700 5000 50  0001 C CNN
F 3 "" H 5700 5000 50  0001 C CNN
	1    5700 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5450 5700 5450
Wire Wire Line
	5700 5450 5700 5150
Wire Wire Line
	5550 5150 5700 5150
Connection ~ 5700 5150
Wire Wire Line
	5700 5150 5700 5000
Text Label 4350 5050 1    50   ~ 0
~+5V_HALT
Text Label 2600 5050 0    50   ~ 0
~+5V_HALT
Wire Wire Line
	1400 4650 1000 4650
Wire Wire Line
	1400 4750 1000 4750
Wire Wire Line
	1400 4850 1000 4850
Wire Wire Line
	1400 4950 1000 4950
Wire Wire Line
	1400 5050 1000 5050
Wire Wire Line
	1400 5150 1000 5150
Wire Wire Line
	1400 5250 1000 5250
Wire Wire Line
	1400 5350 1000 5350
Wire Wire Line
	1400 5450 1000 5450
Text Label 1050 4650 0    50   ~ 0
CLK
Text Label 1050 4750 0    50   ~ 0
+3.3V
Text Label 1050 4850 0    50   ~ 0
~INT
Text Label 1050 4950 0    50   ~ 0
~NMI
Text Label 1050 5350 0    50   ~ 0
~RD
Text Label 1050 5450 0    50   ~ 0
~WR
Text Label 1050 5150 0    50   ~ 0
~MREQ
Text Label 1050 5250 0    50   ~ 0
~IORQ
Text Label 3150 6050 0    50   ~ 0
~RESET
Wire Wire Line
	3500 6050 3050 6050
Wire Wire Line
	3500 6150 3050 6150
Wire Wire Line
	3500 6250 3050 6250
Wire Wire Line
	3500 6350 3050 6350
Wire Wire Line
	3500 6450 3050 6450
Wire Wire Line
	3500 6550 3050 6550
Wire Wire Line
	3500 6650 3050 6650
Wire Wire Line
	3500 6750 3050 6750
Wire Wire Line
	3500 6850 3050 6850
Text Label 3150 6250 0    50   ~ 0
~M1
Text Label 3150 6150 0    50   ~ 0
+3.3V
Text Label 3150 6350 0    50   ~ 0
~RFSH
Text Label 1050 5050 0    50   ~ 0
~HALT
Text Label 4750 6950 0    50   ~ 0
GND
Connection ~ 8900 700 
Connection ~ 8900 900 
$Comp
L power:GND #PWR02
U 1 1 5F7D448A
P 8900 900
F 0 "#PWR02" H 8900 650 50  0001 C CNN
F 1 "GND" H 8905 727 50  0000 C CNN
F 2 "" H 8900 900 50  0001 C CNN
F 3 "" H 8900 900 50  0001 C CNN
	1    8900 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5F7D5047
P 8900 700
F 0 "#PWR01" H 8900 550 50  0001 C CNN
F 1 "+5V" H 8915 873 50  0000 C CNN
F 2 "" H 8900 700 50  0001 C CNN
F 3 "" H 8900 700 50  0001 C CNN
	1    8900 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5F7F0A0A
P 8900 1400
F 0 "#PWR03" H 8900 1250 50  0001 C CNN
F 1 "+3.3V" H 8915 1573 50  0000 C CNN
F 2 "" H 8900 1400 50  0001 C CNN
F 3 "" H 8900 1400 50  0001 C CNN
	1    8900 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5F83733F
P 800 3800
F 0 "#PWR05" H 800 3650 50  0001 C CNN
F 1 "+3.3V" H 815 3973 50  0000 C CNN
F 2 "" H 800 3800 50  0001 C CNN
F 3 "" H 800 3800 50  0001 C CNN
	1    800  3800
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5FD7662A
P 6600 5300
F 0 "#PWR08" H 6600 5150 50  0001 C CNN
F 1 "+3.3V" H 6615 5473 50  0000 C CNN
F 2 "" H 6600 5300 50  0001 C CNN
F 3 "" H 6600 5300 50  0001 C CNN
	1    6600 5300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5FD8AD76
P 800 5550
F 0 "#PWR09" H 800 5400 50  0001 C CNN
F 1 "+3.3V" H 815 5723 50  0000 C CNN
F 2 "" H 800 5550 50  0001 C CNN
F 3 "" H 800 5550 50  0001 C CNN
	1    800  5550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5FD9F753
P 2600 6950
F 0 "#PWR010" H 2600 6800 50  0001 C CNN
F 1 "+3.3V" H 2615 7123 50  0000 C CNN
F 2 "" H 2600 6950 50  0001 C CNN
F 3 "" H 2600 6950 50  0001 C CNN
	1    2600 6950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5FDB5282
P 6600 3900
F 0 "#PWR06" H 6600 3750 50  0001 C CNN
F 1 "+3.3V" H 6615 4073 50  0000 C CNN
F 2 "" H 6600 3900 50  0001 C CNN
F 3 "" H 6600 3900 50  0001 C CNN
	1    6600 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 6950 3500 6950
Wire Wire Line
	1400 5550 1000 5550
Wire Wire Line
	1350 3800 1000 3800
Text Notes 10600 7650 0    50   ~ 0
1.00
Text Notes 7400 7500 0    50   ~ 0
CPU
$Comp
L SamacSys_Parts:100nF C1
U 1 1 5F7984EE
P 8100 800
F 0 "C1" H 8192 846 50  0000 L CNN
F 1 "100nF" H 8192 755 50  0000 L CNN
F 2 "CAPC1005X55N" H 8200 650 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 8200 550 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 8200 450 50  0001 L CNN "Description"
F 5 "0.55" H 8200 350 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 8200 250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 8200 150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 8200 50  50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 8200 -50 50  0001 L CNN "Manufacturer_Part_Number"
	1    8100 800 
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C2
U 1 1 5F798D94
P 8500 800
F 0 "C2" H 8592 846 50  0000 L CNN
F 1 "100nF" H 8592 755 50  0000 L CNN
F 2 "CAPC1005X55N" H 8600 650 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 8600 550 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 8600 450 50  0001 L CNN "Description"
F 5 "0.55" H 8600 350 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 8600 250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 8600 150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 8600 50  50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 8600 -50 50  0001 L CNN "Manufacturer_Part_Number"
	1    8500 800 
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C3
U 1 1 5F7990E0
P 8900 800
F 0 "C3" H 8992 846 50  0000 L CNN
F 1 "100nF" H 8992 755 50  0000 L CNN
F 2 "CAPC1005X55N" H 9000 650 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 9000 550 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 9000 450 50  0001 L CNN "Description"
F 5 "0.55" H 9000 350 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 9000 250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 9000 150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 9000 50  50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 9000 -50 50  0001 L CNN "Manufacturer_Part_Number"
	1    8900 800 
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C4
U 1 1 5F799301
P 9300 800
F 0 "C4" H 9392 846 50  0000 L CNN
F 1 "100nF" H 9392 755 50  0000 L CNN
F 2 "CAPC1005X55N" H 9400 650 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 9400 550 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 9400 450 50  0001 L CNN "Description"
F 5 "0.55" H 9400 350 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 9400 250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 9400 150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 9400 50  50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 9400 -50 50  0001 L CNN "Manufacturer_Part_Number"
	1    9300 800 
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C5
U 1 1 5F799522
P 9700 800
F 0 "C5" H 9792 846 50  0000 L CNN
F 1 "100nF" H 9792 755 50  0000 L CNN
F 2 "CAPC1005X55N" H 9800 650 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 9800 550 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 9800 450 50  0001 L CNN "Description"
F 5 "0.55" H 9800 350 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 9800 250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 9800 150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 9800 50  50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 9800 -50 50  0001 L CNN "Manufacturer_Part_Number"
	1    9700 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 900  9300 900 
Wire Wire Line
	8100 900  8500 900 
Wire Wire Line
	8900 700  9300 700 
Wire Wire Line
	8100 700  8500 700 
Connection ~ 8500 700 
Wire Wire Line
	8500 700  8900 700 
Connection ~ 9300 700 
Wire Wire Line
	9300 700  9700 700 
Connection ~ 8500 900 
Wire Wire Line
	8500 900  8900 900 
Connection ~ 9300 900 
Wire Wire Line
	9300 900  9700 900 
Connection ~ 8900 1400
Connection ~ 8900 1600
$Comp
L power:GND #PWR04
U 1 1 5F7D8C2B
P 8900 1600
F 0 "#PWR04" H 8900 1350 50  0001 C CNN
F 1 "GND" H 8905 1427 50  0000 C CNN
F 2 "" H 8900 1600 50  0001 C CNN
F 3 "" H 8900 1600 50  0001 C CNN
	1    8900 1600
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C6
U 1 1 5F7D8C45
P 8100 1500
F 0 "C6" H 8192 1546 50  0000 L CNN
F 1 "100nF" H 8192 1455 50  0000 L CNN
F 2 "CAPC1005X55N" H 8200 1350 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 8200 1250 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 8200 1150 50  0001 L CNN "Description"
F 5 "0.55" H 8200 1050 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 8200 950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 8200 850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 8200 750 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 8200 650 50  0001 L CNN "Manufacturer_Part_Number"
	1    8100 1500
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C7
U 1 1 5F7D8C55
P 8500 1500
F 0 "C7" H 8592 1546 50  0000 L CNN
F 1 "100nF" H 8592 1455 50  0000 L CNN
F 2 "CAPC1005X55N" H 8600 1350 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 8600 1250 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 8600 1150 50  0001 L CNN "Description"
F 5 "0.55" H 8600 1050 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 8600 950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 8600 850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 8600 750 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 8600 650 50  0001 L CNN "Manufacturer_Part_Number"
	1    8500 1500
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C8
U 1 1 5F7D8C65
P 8900 1500
F 0 "C8" H 8992 1546 50  0000 L CNN
F 1 "100nF" H 8992 1455 50  0000 L CNN
F 2 "CAPC1005X55N" H 9000 1350 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 9000 1250 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 9000 1150 50  0001 L CNN "Description"
F 5 "0.55" H 9000 1050 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 9000 950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 9000 850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 9000 750 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 9000 650 50  0001 L CNN "Manufacturer_Part_Number"
	1    8900 1500
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C9
U 1 1 5F7D8C75
P 9300 1500
F 0 "C9" H 9392 1546 50  0000 L CNN
F 1 "100nF" H 9392 1455 50  0000 L CNN
F 2 "CAPC1005X55N" H 9400 1350 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 9400 1250 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 9400 1150 50  0001 L CNN "Description"
F 5 "0.55" H 9400 1050 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 9400 950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 9400 850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 9400 750 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 9400 650 50  0001 L CNN "Manufacturer_Part_Number"
	1    9300 1500
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C10
U 1 1 5F7D8C85
P 9700 1500
F 0 "C10" H 9792 1546 50  0000 L CNN
F 1 "100nF" H 9792 1455 50  0000 L CNN
F 2 "CAPC1005X55N" H 9800 1350 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 9800 1250 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 9800 1150 50  0001 L CNN "Description"
F 5 "0.55" H 9800 1050 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 9800 950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 9800 850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 9800 750 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 9800 650 50  0001 L CNN "Manufacturer_Part_Number"
	1    9700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1600 9300 1600
Wire Wire Line
	8100 1600 8500 1600
Wire Wire Line
	8900 1400 9300 1400
Wire Wire Line
	8100 1400 8500 1400
Connection ~ 8500 1400
Wire Wire Line
	8500 1400 8900 1400
Connection ~ 9300 1400
Wire Wire Line
	9300 1400 9700 1400
Connection ~ 8500 1600
Wire Wire Line
	8500 1600 8900 1600
Connection ~ 9300 1600
Wire Wire Line
	9300 1600 9700 1600
$Comp
L SamacSys_Parts:49.9k R1
U 1 1 5F8E78AF
P 900 3800
F 0 "R1" V 675 3800 50  0000 C CNN
F 1 "49.9k" V 766 3800 50  0000 C CNN
F 2 "RESC1005X37N" H 950 3650 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402PD4992DE500.pdf" H 950 3550 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .200W 49.9Kohms .5% 0402 25ppm Hi Power" H 950 3450 50  0001 L CNN "Description"
F 5 "0.37" H 950 3350 50  0001 L CNN "Height"
F 6 "594-MCS0402PD4992DP5" H 950 3250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402PD4992DP5" H 950 3150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 950 3050 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402PD4992DE500" H 950 2950 50  0001 L CNN "Manufacturer_Part_Number"
	1    900  3800
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:49.9k R6
U 1 1 5F8EA556
P 900 5550
F 0 "R6" V 675 5550 50  0000 C CNN
F 1 "49.9k" V 766 5550 50  0000 C CNN
F 2 "RESC1005X37N" H 950 5400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402PD4992DE500.pdf" H 950 5300 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .200W 49.9Kohms .5% 0402 25ppm Hi Power" H 950 5200 50  0001 L CNN "Description"
F 5 "0.37" H 950 5100 50  0001 L CNN "Height"
F 6 "594-MCS0402PD4992DP5" H 950 5000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402PD4992DP5" H 950 4900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 950 4800 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402PD4992DE500" H 950 4700 50  0001 L CNN "Manufacturer_Part_Number"
	1    900  5550
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:49.9k R7
U 1 1 5F8EAC8E
P 2700 6950
F 0 "R7" V 2475 6950 50  0000 C CNN
F 1 "49.9k" V 2566 6950 50  0000 C CNN
F 2 "RESC1005X37N" H 2750 6800 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402PD4992DE500.pdf" H 2750 6700 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .200W 49.9Kohms .5% 0402 25ppm Hi Power" H 2750 6600 50  0001 L CNN "Description"
F 5 "0.37" H 2750 6500 50  0001 L CNN "Height"
F 6 "594-MCS0402PD4992DP5" H 2750 6400 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402PD4992DP5" H 2750 6300 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 2750 6200 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402PD4992DE500" H 2750 6100 50  0001 L CNN "Manufacturer_Part_Number"
	1    2700 6950
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:49.9k R4
U 1 1 5F8EB65B
P 6700 5300
F 0 "R4" V 6475 5300 50  0000 C CNN
F 1 "49.9k" V 6566 5300 50  0000 C CNN
F 2 "RESC1005X37N" H 6750 5150 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402PD4992DE500.pdf" H 6750 5050 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .200W 49.9Kohms .5% 0402 25ppm Hi Power" H 6750 4950 50  0001 L CNN "Description"
F 5 "0.37" H 6750 4850 50  0001 L CNN "Height"
F 6 "594-MCS0402PD4992DP5" H 6750 4750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402PD4992DP5" H 6750 4650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 6750 4550 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402PD4992DE500" H 6750 4450 50  0001 L CNN "Manufacturer_Part_Number"
	1    6700 5300
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:49.9k R2
U 1 1 5F8EBD34
P 6700 3900
F 0 "R2" V 6475 3900 50  0000 C CNN
F 1 "49.9k" V 6566 3900 50  0000 C CNN
F 2 "RESC1005X37N" H 6750 3750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402PD4992DE500.pdf" H 6750 3650 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .200W 49.9Kohms .5% 0402 25ppm Hi Power" H 6750 3550 50  0001 L CNN "Description"
F 5 "0.37" H 6750 3450 50  0001 L CNN "Height"
F 6 "594-MCS0402PD4992DP5" H 6750 3350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402PD4992DP5" H 6750 3250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 6750 3150 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402PD4992DE500" H 6750 3050 50  0001 L CNN "Manufacturer_Part_Number"
	1    6700 3900
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:10k R5
U 1 1 5F906F14
P 5450 5450
F 0 "R5" V 5225 5450 50  0000 C CNN
F 1 "10k" V 5316 5450 50  0000 C CNN
F 2 "RESC1005X37N" H 5500 5300 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402MC1002FE000.pdf" H 5500 5200 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .1W 10Kohms 1% 0402 50ppm Auto" H 5500 5100 50  0001 L CNN "Description"
F 5 "0.37" H 5500 5000 50  0001 L CNN "Height"
F 6 "594-MCS0402MC1002FE0" H 5500 4900 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402MC1002FE0" H 5500 4800 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 5500 4700 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402MC1002FE000" H 5500 4600 50  0001 L CNN "Manufacturer_Part_Number"
	1    5450 5450
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:10k R3
U 1 1 5F907690
P 5450 5150
F 0 "R3" V 5225 5150 50  0000 C CNN
F 1 "10k" V 5316 5150 50  0000 C CNN
F 2 "RESC1005X37N" H 5500 5000 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402MC1002FE000.pdf" H 5500 4900 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .1W 10Kohms 1% 0402 50ppm Auto" H 5500 4800 50  0001 L CNN "Description"
F 5 "0.37" H 5500 4700 50  0001 L CNN "Height"
F 6 "594-MCS0402MC1002FE0" H 5500 4600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402MC1002FE0" H 5500 4500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 5500 4400 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402MC1002FE000" H 5500 4300 50  0001 L CNN "Manufacturer_Part_Number"
	1    5450 5150
	0    1    1    0   
$EndComp
$EndSCHEMATC
