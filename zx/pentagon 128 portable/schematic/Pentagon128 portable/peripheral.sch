EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 14
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
L Connector_Generic:Conn_02x17_Odd_Even J?
U 1 1 5F783155
P 1900 2000
AR Path="/5F4A5D43/5F783155" Ref="J?"  Part="1" 
AR Path="/5F748573/5F783155" Ref="J?"  Part="1" 
F 0 "J?" H 1950 3017 50  0000 C CNN
F 1 "Conn_02x17_Odd_Even" H 1950 2926 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x17_P2.54mm_Vertical" H 1900 2000 50  0001 C CNN
F 3 "~" H 1900 2000 50  0001 C CNN
	1    1900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1300 1400 1300
Text Label 1400 2700 0    50   ~ 0
FMC_NWE
Wire Wire Line
	2200 1200 2500 1200
Wire Wire Line
	2200 1300 2500 1300
Wire Wire Line
	2200 1400 2500 1400
Wire Wire Line
	2200 1500 2500 1500
Wire Wire Line
	2200 1600 2500 1600
Wire Wire Line
	2200 1700 2500 1700
Wire Wire Line
	2200 1800 2500 1800
Wire Wire Line
	2200 1900 2500 1900
Wire Wire Line
	2200 2000 2500 2000
Wire Wire Line
	2200 2100 2500 2100
Wire Wire Line
	2200 2200 2500 2200
Wire Wire Line
	2200 2300 2500 2300
Wire Wire Line
	2200 2400 2500 2400
Wire Wire Line
	2200 2500 2500 2500
Wire Wire Line
	2200 2600 2500 2600
Wire Wire Line
	2200 2700 2500 2700
Wire Wire Line
	2200 2800 2500 2800
Wire Wire Line
	1700 1200 1400 1200
Wire Wire Line
	1700 1400 1400 1400
Wire Wire Line
	1700 1500 1400 1500
Wire Wire Line
	1700 1600 1400 1600
Wire Wire Line
	1700 1700 1400 1700
Wire Wire Line
	1700 1800 1400 1800
Wire Wire Line
	1700 1900 1400 1900
Wire Wire Line
	1700 2000 1400 2000
Wire Wire Line
	1700 2100 1400 2100
Wire Wire Line
	1700 2200 1400 2200
Wire Wire Line
	1700 2300 1400 2300
Wire Wire Line
	1700 2400 1400 2400
Wire Wire Line
	1700 2500 1400 2500
Wire Wire Line
	1700 2600 1400 2600
Wire Wire Line
	1700 2700 1400 2700
Wire Wire Line
	1700 2800 1400 2800
Text Label 2250 2700 0    50   ~ 0
FMC_NOE
Text Label 1400 2800 0    50   ~ 0
FMC_NE1
Text Label 2250 2800 0    50   ~ 0
FMC_A16
Text Label 1400 2600 0    50   ~ 0
SCREEN_RESET
Text Label 1400 1500 0    50   ~ 0
GND
Text Label 1400 1600 0    50   ~ 0
+3.3
Text Label 2250 2600 0    50   ~ 0
FMC_D0
Text Label 2250 2500 0    50   ~ 0
FMC_D2
Text Label 2250 2400 0    50   ~ 0
FMC_D4
Text Label 2250 2300 0    50   ~ 0
FMC_D6
Text Label 2250 2200 0    50   ~ 0
FMC_D8
Text Label 2250 2100 0    50   ~ 0
FMC_D10
Text Label 2250 2000 0    50   ~ 0
FMC_D12
Text Label 1400 2500 0    50   ~ 0
FMC_D1
Text Label 1400 2400 0    50   ~ 0
FMC_D3
Text Label 1400 2300 0    50   ~ 0
FMC_D5
Text Label 1400 2200 0    50   ~ 0
FMC_D7
Text Label 1400 2100 0    50   ~ 0
FMC_D9
Text Label 1400 2000 0    50   ~ 0
FMC_D11
Text Label 1400 1900 0    50   ~ 0
FMC_D13
Text Label 2250 1900 0    50   ~ 0
FMC_D14
Text Label 1400 1800 0    50   ~ 0
FMC_D15
Text Label 1400 1300 0    50   ~ 0
PEN
Text Label 1400 1400 0    50   ~ 0
T_MISO
Text Label 2250 1400 0    50   ~ 0
T_MOSI
Text Label 2250 1200 0    50   ~ 0
T_CLK
Text Label 1400 1200 0    50   ~ 0
GND
Wire Wire Line
	3200 4050 2800 4050
Wire Wire Line
	3200 4150 2800 4150
Wire Wire Line
	3200 3950 2800 3950
Wire Wire Line
	3200 3850 2800 3850
Wire Wire Line
	1500 4150 1100 4150
Wire Wire Line
	1500 4050 1100 4050
Wire Wire Line
	1500 3950 1100 3950
Wire Wire Line
	1500 3850 1100 3850
Text Label 3150 4150 2    50   ~ 0
SDIO_D1
Text Label 3150 4050 2    50   ~ 0
SDIO_D0
Text Label 1450 4050 2    50   ~ 0
SCIO_CMD
Text Label 1450 3950 2    50   ~ 0
SDIO_D3
Text Label 1450 3850 2    50   ~ 0
SDIO_D2
Text Label 3150 3950 2    50   ~ 0
GND
Text Label 1450 4150 2    50   ~ 0
+3.3V
Text Label 3150 3850 2    50   ~ 0
SDIO_CK
$Comp
L SamacSys_Parts:104031-0811 J?
U 1 1 5F7BADBD
P 1500 3850
F 0 "J?" H 2150 4115 50  0000 C CNN
F 1 "104031-0811" H 2150 4024 50  0000 C CNN
F 2 "SamacSys_Parts:1040310811" H 2650 3950 50  0001 L CNN
F 3 "http://www.molex.com/webdocs/datasheets/pdf/en-us/1040310811_MEMORY_CARD_SOCKET.pdf" H 2650 3850 50  0001 L CNN
F 4 "microSD 1.10mm SMT push-pull memory card microSD 1.10mm SMT push-pull memory card" H 2650 3750 50  0001 L CNN "Description"
F 5 "" H 2650 3650 50  0001 L CNN "Height"
F 6 "538-104031-0811" H 2650 3550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Molex/104031-0811?qs=udsGRKD4nA3Tvy7wqky%252BuA%3D%3D" H 2650 3450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Molex" H 2650 3350 50  0001 L CNN "Manufacturer_Name"
F 9 "104031-0811" H 2650 3250 50  0001 L CNN "Manufacturer_Part_Number"
	1    1500 3850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
