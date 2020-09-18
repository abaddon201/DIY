EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
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
L MCU_ST_STM32F4:STM32F407VETx U?
U 1 1 5F83E616
P 3100 3750
F 0 "U?" H 3100 861 50  0000 C CNN
F 1 "STM32F407VETx" H 3100 770 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 2400 1150 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 3100 3750 50  0001 C CNN
	1    3100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3050 1750 3050
Wire Wire Line
	2200 3150 1750 3150
Wire Wire Line
	2200 3250 1750 3250
Wire Wire Line
	2200 3350 1750 3350
Wire Wire Line
	2200 3450 1750 3450
Wire Wire Line
	2200 3550 1750 3550
Wire Wire Line
	2200 3650 1750 3650
Wire Wire Line
	2200 3750 1750 3750
Wire Wire Line
	2200 3850 1750 3850
Wire Wire Line
	2200 3950 1750 3950
Wire Wire Line
	2200 4050 1750 4050
Wire Wire Line
	2200 4150 1750 4150
Wire Wire Line
	2200 4250 1750 4250
Wire Wire Line
	2200 4350 1750 4350
Wire Wire Line
	2200 4450 1750 4450
Wire Wire Line
	2200 4550 1750 4550
Text Label 1750 3250 0    50   ~ 0
FSMC_A23
Text Label 1750 3750 0    50   ~ 0
FSMC_D4
Text Label 1750 3850 0    50   ~ 0
FSMC_D5
Text Label 1750 3950 0    50   ~ 0
FSMC_D6
Text Label 1750 4050 0    50   ~ 0
FSMC_D7
Text Label 1750 4150 0    50   ~ 0
FSMC_D8
Text Label 1750 4250 0    50   ~ 0
FSMC_D9
Text Label 1750 4350 0    50   ~ 0
FSMC_D10
Text Label 1750 4450 0    50   ~ 0
FSMC_D11
Text Label 1750 4550 0    50   ~ 0
FSMC_D12
Wire Wire Line
	2200 4750 1750 4750
Wire Wire Line
	2200 4850 1750 4850
Wire Wire Line
	2200 4950 1750 4950
Wire Wire Line
	2200 5050 1750 5050
Wire Wire Line
	2200 5150 1750 5150
Wire Wire Line
	2200 5250 1750 5250
Wire Wire Line
	2200 5350 1750 5350
Wire Wire Line
	2200 5450 1750 5450
Wire Wire Line
	2200 5550 1750 5550
Wire Wire Line
	2200 5650 1750 5650
Wire Wire Line
	2200 5750 1750 5750
Wire Wire Line
	2200 5850 1750 5850
Wire Wire Line
	2200 5950 1750 5950
Wire Wire Line
	2200 6050 1750 6050
Wire Wire Line
	2200 6150 1750 6150
Wire Wire Line
	2200 6250 1750 6250
Text Label 1750 4750 0    50   ~ 0
FSMC_D2
Text Label 1750 4850 0    50   ~ 0
FSMC_D3
Text Label 1750 4950 0    50   ~ 0
SDIO_CMD
Text Label 1750 5150 0    50   ~ 0
FSMC_NOE
Text Label 1750 5250 0    50   ~ 0
FSMC_NWE
Text Label 1750 5450 0    50   ~ 0
FSMC_NE1
Text Label 1750 5550 0    50   ~ 0
FSMC_D13
Text Label 1750 5650 0    50   ~ 0
FSMC_D14
Text Label 1750 5750 0    50   ~ 0
FSMC_D15
Text Label 1750 6050 0    50   ~ 0
FSMC_A18
Text Label 1750 6150 0    50   ~ 0
FSMC_D0
Text Label 1750 6250 0    50   ~ 0
FSMC_D1
Wire Wire Line
	4000 5550 4500 5550
Wire Wire Line
	4000 5650 4500 5650
Wire Wire Line
	4000 5750 4500 5750
Wire Wire Line
	4000 5850 4500 5850
Wire Wire Line
	4000 5950 4500 5950
Wire Wire Line
	4000 6050 4500 6050
Wire Wire Line
	4000 6150 4500 6150
Wire Wire Line
	4000 6250 4500 6250
Text Label 4150 5550 0    50   ~ 0
SDIO_D0
Text Label 4150 5650 0    50   ~ 0
SDIO_D1
Text Label 4150 5750 0    50   ~ 0
SDIO_D2
Text Label 4150 5850 0    50   ~ 0
SDIO_D3
Text Label 4150 5950 0    50   ~ 0
SDIO_SCK
$Comp
L power:GND #PWR?
U 1 1 5F4E3369
P 3800 6800
F 0 "#PWR?" H 3800 6550 50  0001 C CNN
F 1 "GND" H 3805 6627 50  0000 C CNN
F 2 "" H 3800 6800 50  0001 C CNN
F 3 "" H 3800 6800 50  0001 C CNN
	1    3800 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6550 3000 6550
Wire Wire Line
	3000 6550 3100 6550
Connection ~ 3000 6550
Wire Wire Line
	3200 6550 3100 6550
Connection ~ 3100 6550
Wire Wire Line
	3200 6550 3300 6550
Connection ~ 3200 6550
Wire Wire Line
	3300 6550 3800 6550
Wire Wire Line
	3800 6550 3800 6800
Connection ~ 3300 6550
Wire Wire Line
	3200 1050 3200 900 
Wire Wire Line
	3200 900  3100 900 
Wire Wire Line
	3300 1050 3300 900 
Wire Wire Line
	3300 900  3200 900 
Connection ~ 3200 900 
Wire Wire Line
	3400 1050 3400 900 
Wire Wire Line
	3400 900  3300 900 
Connection ~ 3300 900 
Wire Wire Line
	3100 1050 3100 900 
Connection ~ 3100 900 
Wire Wire Line
	3100 900  2900 900 
Wire Wire Line
	2900 1050 2900 900 
Connection ~ 2900 900 
Wire Wire Line
	2900 900  1600 900 
$Comp
L power:+3.3V #PWR?
U 1 1 5F4ECC6A
P 1600 900
F 0 "#PWR?" H 1600 750 50  0001 C CNN
F 1 "+3.3V" H 1615 1073 50  0000 C CNN
F 2 "" H 1600 900 50  0001 C CNN
F 3 "" H 1600 900 50  0001 C CNN
	1    1600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1050 3000 700 
Wire Wire Line
	3000 700  3500 700 
Wire Wire Line
	3500 1050 3500 700 
Connection ~ 3500 700 
$Comp
L Device:C C?
U 1 1 5F4EFE41
P 5450 1000
F 0 "C?" H 5565 1046 50  0000 L CNN
F 1 "104" H 5565 955 50  0000 L CNN
F 2 "" H 5488 850 50  0001 C CNN
F 3 "~" H 5450 1000 50  0001 C CNN
	1    5450 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F4F084D
P 5850 1000
F 0 "C?" H 5965 1046 50  0000 L CNN
F 1 "106" H 5965 955 50  0000 L CNN
F 2 "" H 5888 850 50  0001 C CNN
F 3 "~" H 5850 1000 50  0001 C CNN
	1    5850 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4F0AAF
P 5700 1300
F 0 "#PWR?" H 5700 1050 50  0001 C CNN
F 1 "GND" H 5705 1127 50  0000 C CNN
F 2 "" H 5700 1300 50  0001 C CNN
F 3 "" H 5700 1300 50  0001 C CNN
	1    5700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F4F1154
P 5700 700
F 0 "#PWR?" H 5700 550 50  0001 C CNN
F 1 "+3.3V" H 5715 873 50  0000 C CNN
F 2 "" H 5700 700 50  0001 C CNN
F 3 "" H 5700 700 50  0001 C CNN
	1    5700 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 700  5450 700 
Wire Wire Line
	5450 850  5450 700 
Connection ~ 5450 700 
Wire Wire Line
	5450 700  5700 700 
Wire Wire Line
	5850 850  5850 700 
Wire Wire Line
	5850 700  5700 700 
Connection ~ 5700 700 
Wire Wire Line
	5450 1150 5700 1150
Wire Wire Line
	5700 1300 5700 1150
Connection ~ 5700 1150
Wire Wire Line
	5700 1150 5850 1150
Wire Wire Line
	2200 1950 1600 1950
Wire Wire Line
	1600 1950 1600 900 
Connection ~ 1600 900 
$Comp
L Device:C C?
U 1 1 5F4FA293
P 950 2200
F 0 "C?" H 1065 2246 50  0000 L CNN
F 1 "106" H 1065 2155 50  0000 L CNN
F 2 "" H 988 2050 50  0001 C CNN
F 3 "~" H 950 2200 50  0001 C CNN
	1    950  2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F4FAB4D
P 1300 2200
F 0 "C?" H 1415 2246 50  0000 L CNN
F 1 "106" H 1415 2155 50  0000 L CNN
F 2 "" H 1338 2050 50  0001 C CNN
F 3 "~" H 1300 2200 50  0001 C CNN
	1    1300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2350 1100 2350
$Comp
L power:GND #PWR?
U 1 1 5F4FC5BB
P 1100 2450
F 0 "#PWR?" H 1100 2200 50  0001 C CNN
F 1 "GND" H 1105 2277 50  0000 C CNN
F 2 "" H 1100 2450 50  0001 C CNN
F 3 "" H 1100 2450 50  0001 C CNN
	1    1100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2450 1100 2350
Connection ~ 1100 2350
Wire Wire Line
	1100 2350 1300 2350
Wire Wire Line
	1300 2050 1300 1850
Wire Wire Line
	1300 1850 2200 1850
Wire Wire Line
	950  2050 950  1750
Wire Wire Line
	950  1750 2200 1750
$Comp
L Device:C C?
U 1 1 5F504E02
P 1050 6750
F 0 "C?" V 798 6750 50  0000 C CNN
F 1 "22p" V 889 6750 50  0000 C CNN
F 2 "" H 1088 6600 50  0001 C CNN
F 3 "~" H 1050 6750 50  0001 C CNN
	1    1050 6750
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5F505E8B
P 1050 7350
F 0 "C?" V 798 7350 50  0000 C CNN
F 1 "22p" V 889 7350 50  0000 C CNN
F 2 "" H 1088 7200 50  0001 C CNN
F 3 "~" H 1050 7350 50  0001 C CNN
	1    1050 7350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F506581
P 1800 7000
F 0 "R?" H 1870 7046 50  0000 L CNN
F 1 "1M" H 1870 6955 50  0000 L CNN
F 2 "" V 1730 7000 50  0001 C CNN
F 3 "~" H 1800 7000 50  0001 C CNN
	1    1800 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5F506F3E
P 1400 7050
F 0 "Y?" V 1446 6919 50  0000 R CNN
F 1 "8M" V 1355 6919 50  0000 R CNN
F 2 "" H 1400 7050 50  0001 C CNN
F 3 "~" H 1400 7050 50  0001 C CNN
	1    1400 7050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F507AE0
P 700 7500
F 0 "#PWR?" H 700 7250 50  0001 C CNN
F 1 "GND" H 705 7327 50  0000 C CNN
F 2 "" H 700 7500 50  0001 C CNN
F 3 "" H 700 7500 50  0001 C CNN
	1    700  7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  7500 700  7350
Wire Wire Line
	700  6750 900  6750
Wire Wire Line
	900  7350 700  7350
Connection ~ 700  7350
Wire Wire Line
	700  7350 700  6750
Wire Wire Line
	1200 7350 1400 7350
Wire Wire Line
	1200 6750 1400 6750
Wire Wire Line
	1800 6850 1800 6750
Connection ~ 1800 6750
Wire Wire Line
	1800 6750 2200 6750
Wire Wire Line
	1800 7150 1800 7350
Connection ~ 1800 7350
Wire Wire Line
	1800 7350 2200 7350
Wire Wire Line
	1400 7200 1400 7350
Connection ~ 1400 7350
Wire Wire Line
	1400 7350 1800 7350
Wire Wire Line
	1400 6900 1400 6750
Connection ~ 1400 6750
Wire Wire Line
	1400 6750 1800 6750
Text Label 1950 6750 0    50   ~ 0
OSC_IN
Text Label 1900 7350 0    50   ~ 0
OSC_OUT
Wire Wire Line
	2200 2750 1750 2750
Wire Wire Line
	2200 2850 1750 2850
Text Label 1750 2750 0    50   ~ 0
OSC_IN
Text Label 1750 2850 0    50   ~ 0
OSC_OUT
Wire Wire Line
	2200 1550 1400 1550
$Comp
L Device:R R?
U 1 1 5F524061
P 1250 1550
F 0 "R?" V 1043 1550 50  0000 C CNN
F 1 "R" V 1134 1550 50  0000 C CNN
F 2 "" V 1180 1550 50  0001 C CNN
F 3 "~" H 1250 1550 50  0001 C CNN
	1    1250 1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5248E0
P 700 1750
F 0 "#PWR?" H 700 1500 50  0001 C CNN
F 1 "GND" H 705 1577 50  0000 C CNN
F 2 "" H 700 1750 50  0001 C CNN
F 3 "" H 700 1750 50  0001 C CNN
	1    700  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1550 700  1550
Wire Wire Line
	700  1550 700  1750
Wire Wire Line
	4000 2650 4500 2650
Text Label 4050 2650 0    50   ~ 0
JTMS_SWDIO
Wire Wire Line
	4000 2750 4500 2750
Text Label 4050 2750 0    50   ~ 0
JTMS_SWCLK
Wire Wire Line
	4000 3350 4500 3350
Text Label 4100 3350 0    50   ~ 0
JTMS_SWO
Wire Wire Line
	4000 1750 4500 1750
Text Label 4050 1750 0    50   ~ 0
TAPE_IN
Wire Wire Line
	4000 1350 4500 1350
Text Label 4050 1350 0    50   ~ 0
AY_CLK
Wire Wire Line
	4000 2150 4500 2150
Text Label 4050 2150 0    50   ~ 0
CPU_CLK
$Comp
L Connector_Generic_MountingPin:Conn_02x16_Odd_Even_MountingPin J?
U 1 1 5F53EFC9
P 9550 4150
F 0 "J?" H 9600 5067 50  0000 C CNN
F 1 "LCD" H 9600 4976 50  0000 C CNN
F 2 "" H 9550 4150 50  0001 C CNN
F 3 "~" H 9550 4150 50  0001 C CNN
	1    9550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3150 4500 3150
Text Label 4100 3150 0    50   ~ 0
LCD_BL
Wire Wire Line
	4000 4250 4550 4250
Wire Wire Line
	4000 4350 4550 4350
Wire Wire Line
	4000 4450 4550 4450
Wire Wire Line
	4000 4550 4550 4550
Text Label 4100 4250 0    50   ~ 0
T_CS
Text Label 4100 4350 0    50   ~ 0
T_SCK
Text Label 4100 4450 0    50   ~ 0
T_MISO
Text Label 4100 4550 0    50   ~ 0
T_MOSI
Wire Wire Line
	2200 1350 1750 1350
Text Label 1750 1350 0    50   ~ 0
STM_RESET
$Comp
L power:GND #PWR?
U 1 1 5F559EBD
P 6350 7350
F 0 "#PWR?" H 6350 7100 50  0001 C CNN
F 1 "GND" H 6355 7177 50  0000 C CNN
F 2 "" H 6350 7350 50  0001 C CNN
F 3 "" H 6350 7350 50  0001 C CNN
	1    6350 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F55A340
P 6350 7100
F 0 "C?" H 6235 7054 50  0000 R CNN
F 1 "22p" H 6235 7145 50  0000 R CNN
F 2 "" H 6388 6950 50  0001 C CNN
F 3 "~" H 6350 7100 50  0001 C CNN
	1    6350 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F55AFCA
P 6350 6600
F 0 "R?" H 6420 6646 50  0000 L CNN
F 1 "1M" H 6420 6555 50  0000 L CNN
F 2 "" V 6280 6600 50  0001 C CNN
F 3 "~" H 6350 6600 50  0001 C CNN
	1    6350 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F55B89B
P 6350 6350
F 0 "#PWR?" H 6350 6200 50  0001 C CNN
F 1 "+3.3V" H 6365 6523 50  0000 C CNN
F 2 "" H 6350 6350 50  0001 C CNN
F 3 "" H 6350 6350 50  0001 C CNN
	1    6350 6350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW?
U 1 1 5F55C79B
P 5750 6850
F 0 "SW?" H 5750 7117 50  0000 C CNN
F 1 "SW_DIP_x01" H 5750 7026 50  0000 C CNN
F 2 "" H 5750 6850 50  0001 C CNN
F 3 "~" H 5750 6850 50  0001 C CNN
	1    5750 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 7350 6350 7300
Wire Wire Line
	6350 7300 5450 7300
Wire Wire Line
	5450 7300 5450 6850
Connection ~ 6350 7300
Wire Wire Line
	6350 7300 6350 7250
Wire Wire Line
	6050 6850 6350 6850
Wire Wire Line
	6350 6950 6350 6850
Connection ~ 6350 6850
Wire Wire Line
	6350 6850 6900 6850
Wire Wire Line
	6350 6750 6350 6850
Wire Wire Line
	6350 6450 6350 6350
Text Label 6450 6850 0    50   ~ 0
STM_RESET
$Comp
L MCU_ST_STM32F4:STM32F469IITx U?
U 1 1 5F525230
P 14800 1650
F 0 "U?" H 14750 -2939 50  0000 C CNN
F 1 "STM32F469IITx" H 14750 -3030 50  0000 C CNN
F 2 "Package_QFP:LQFP-176_24x24mm_P0.5mm" H 13400 -2650 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00219980.pdf" H 14800 1650 50  0001 C CNN
	1    14800 1650
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TXB0108PWR IC?
U 1 1 5F5F8283
P 6700 1850
F 0 "IC?" H 7250 2115 50  0000 C CNN
F 1 "TXB0108PWR" H 7250 2024 50  0000 C CNN
F 2 "SOP65P640X120-20N" H 7650 1950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 7650 1850 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 7650 1750 50  0001 L CNN "Description"
F 5 "1.2" H 7650 1650 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 7650 1550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 7650 1450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7650 1350 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 7650 1250 50  0001 L CNN "Manufacturer_Part_Number"
	1    6700 1850
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TXB0108PWR IC?
U 1 1 5F5F8E20
P 6700 3350
F 0 "IC?" H 7250 3615 50  0000 C CNN
F 1 "TXB0108PWR" H 7250 3524 50  0000 C CNN
F 2 "SOP65P640X120-20N" H 7650 3450 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 7650 3350 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 7650 3250 50  0001 L CNN "Description"
F 5 "1.2" H 7650 3150 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 7650 3050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 7650 2950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7650 2850 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 7650 2750 50  0001 L CNN "Manufacturer_Part_Number"
	1    6700 3350
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TXB0108PWR IC?
U 1 1 5F5F9A70
P 6700 4700
F 0 "IC?" H 7250 4965 50  0000 C CNN
F 1 "TXB0108PWR" H 7250 4874 50  0000 C CNN
F 2 "SOP65P640X120-20N" H 7650 4800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 7650 4700 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 7650 4600 50  0001 L CNN "Description"
F 5 "1.2" H 7650 4500 50  0001 L CNN "Height"
F 6 "595-TXB0108PWR" H 7650 4400 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108PWR?qs=oFXvjAmG9EgEUWGWzOVFCA%3D%3D" H 7650 4300 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7650 4200 50  0001 L CNN "Manufacturer_Name"
F 9 "TXB0108PWR" H 7650 4100 50  0001 L CNN "Manufacturer_Part_Number"
	1    6700 4700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
