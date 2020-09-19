EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 14
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
L power:GND #PWR029
U 1 1 5F93199A
P 3550 3300
F 0 "#PWR029" H 3550 3050 50  0001 C CNN
F 1 "GND" V 3555 3172 50  0000 R CNN
F 2 "" H 3550 3300 50  0001 C CNN
F 3 "" H 3550 3300 50  0001 C CNN
	1    3550 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5F9319A6
P 3550 3800
F 0 "#PWR031" H 3550 3550 50  0001 C CNN
F 1 "GND" V 3555 3672 50  0000 R CNN
F 2 "" H 3550 3800 50  0001 C CNN
F 3 "" H 3550 3800 50  0001 C CNN
	1    3550 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 3300 3600 3300
Wire Wire Line
	3550 3800 3650 3800
Wire Wire Line
	3850 3800 3950 3800
$Comp
L power:GND #PWR027
U 1 1 5F9319BB
P 3450 1850
F 0 "#PWR027" H 3450 1600 50  0001 C CNN
F 1 "GND" V 3455 1722 50  0000 R CNN
F 2 "" H 3450 1850 50  0001 C CNN
F 3 "" H 3450 1850 50  0001 C CNN
	1    3450 1850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5F9319C7
P 3450 2350
F 0 "#PWR028" H 3450 2100 50  0001 C CNN
F 1 "GND" V 3455 2222 50  0000 R CNN
F 2 "" H 3450 2350 50  0001 C CNN
F 3 "" H 3450 2350 50  0001 C CNN
	1    3450 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 1850 3500 1850
Wire Wire Line
	3450 2350 3500 2350
Wire Wire Line
	3750 1850 3850 1850
Wire Wire Line
	3750 2350 3850 2350
Wire Wire Line
	3850 1850 4200 1850
Connection ~ 3850 1850
Wire Wire Line
	3850 2350 4200 2350
Connection ~ 3850 2350
Text Label 4050 3300 0    50   ~ 0
HSE_IN
Text Label 3900 1850 0    50   ~ 0
LSE_IN
Text Label 3900 2350 0    50   ~ 0
LSE_OUT
$Comp
L Device:Crystal_GND24_Small Y2
U 1 1 5F9319DA
P 3950 3500
F 0 "Y2" V 3904 3644 50  0000 L CNN
F 1 "ABM3B-8.000MHZ-10-1-U-T" V 3995 3644 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM3B-4Pin_5.0x3.2mm" H 3950 3500 50  0001 C CNN
F 3 "~" H 3950 3500 50  0001 C CNN
F 4 " 815-ABM3B8MHZ101UT " V 3950 3500 50  0001 C CNN "Mouser Part Number"
	1    3950 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 3300 3950 3300
Wire Wire Line
	3950 3400 3950 3300
Connection ~ 3950 3300
Wire Wire Line
	3950 3300 4300 3300
Wire Wire Line
	3950 3600 3950 3800
Wire Wire Line
	4050 3500 4750 3500
Wire Wire Line
	4750 3500 4750 3400
Wire Wire Line
	3850 3500 3600 3500
Wire Wire Line
	3600 3500 3600 3300
Connection ~ 3600 3300
Wire Wire Line
	3600 3300 3650 3300
$Comp
L power:GND #PWR030
U 1 1 5F9319EB
P 4750 3400
F 0 "#PWR030" H 4750 3150 50  0001 C CNN
F 1 "GND" V 4755 3272 50  0000 R CNN
F 2 "" H 4750 3400 50  0001 C CNN
F 3 "" H 4750 3400 50  0001 C CNN
	1    4750 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 3800 4050 3800
Connection ~ 3950 3800
Text Label 4350 3800 0    50   ~ 0
HSE_OUT
Wire Wire Line
	4250 3800 4600 3800
$Comp
L SamacSys_Parts:3pF C53
U 1 1 5F8A2532
P 3650 1850
F 0 "C53" V 3421 1850 50  0000 C CNN
F 1 "3pF" V 3512 1850 50  0000 C CNN
F 2 "CAPC1005X55N" H 3750 1700 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/GJM1555C1H3R0CB01D.pdf" H 3750 1600 50  0001 L CNN
F 4 "Murata 0402 GJM 3pF Ceramic Multilayer Capacitor, 50 V dc, +125C, C0G Dielectric, +/-0.25pF SMD" H 3750 1500 50  0001 L CNN "Description"
F 5 "0.55" H 3750 1400 50  0001 L CNN "Height"
F 6 "81-GJM1555C1H3R0CB1D" H 3750 1300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=81-GJM1555C1H3R0CB1D" H 3750 1200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Murata Electronics" H 3750 1100 50  0001 L CNN "Manufacturer_Name"
F 9 "GJM1555C1H3R0CB01D" H 3750 1000 50  0001 L CNN "Manufacturer_Part_Number"
	1    3650 1850
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:3pF C54
U 1 1 5F8A3065
P 3650 2350
F 0 "C54" V 3421 2350 50  0000 C CNN
F 1 "3pF" V 3512 2350 50  0000 C CNN
F 2 "CAPC1005X55N" H 3750 2200 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/GJM1555C1H3R0CB01D.pdf" H 3750 2100 50  0001 L CNN
F 4 "Murata 0402 GJM 3pF Ceramic Multilayer Capacitor, 50 V dc, +125C, C0G Dielectric, +/-0.25pF SMD" H 3750 2000 50  0001 L CNN "Description"
F 5 "0.55" H 3750 1900 50  0001 L CNN "Height"
F 6 "81-GJM1555C1H3R0CB1D" H 3750 1800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=81-GJM1555C1H3R0CB1D" H 3750 1700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Murata Electronics" H 3750 1600 50  0001 L CNN "Manufacturer_Name"
F 9 "GJM1555C1H3R0CB01D" H 3750 1500 50  0001 L CNN "Manufacturer_Part_Number"
	1    3650 2350
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:8.2pF C55
U 1 1 5F8A8DAE
P 3750 3300
F 0 "C55" V 3521 3300 50  0000 C CNN
F 1 "8.2pF" V 3612 3300 50  0000 C CNN
F 2 "CAPC1005X56N" H 3850 3150 50  0001 L CNN
F 3 "" H 3850 3050 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 50V 8.2pF C0G 0402 .1pF Tol" H 3850 2950 50  0001 L CNN "Description"
F 5 "0.56" H 3850 2850 50  0001 L CNN "Height"
F 6 "581-04025A8R2BAT2A" H 3850 2750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/AVX/04025A8R2BAT2A?qs=z0psRG2smD5JWrZ1VoU3ig%3D%3D" H 3850 2650 50  0001 L CNN "Mouser Price/Stock"
F 8 "AVX" H 3850 2550 50  0001 L CNN "Manufacturer_Name"
F 9 "04025A8R2BAT2A" H 3850 2450 50  0001 L CNN "Manufacturer_Part_Number"
	1    3750 3300
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:8.2pF C56
U 1 1 5F8A97BB
P 3750 3800
F 0 "C56" V 3521 3800 50  0000 C CNN
F 1 "8.2pF" V 3612 3800 50  0000 C CNN
F 2 "CAPC1005X56N" H 3850 3650 50  0001 L CNN
F 3 "" H 3850 3550 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 50V 8.2pF C0G 0402 .1pF Tol" H 3850 3450 50  0001 L CNN "Description"
F 5 "0.56" H 3850 3350 50  0001 L CNN "Height"
F 6 "581-04025A8R2BAT2A" H 3850 3250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/AVX/04025A8R2BAT2A?qs=z0psRG2smD5JWrZ1VoU3ig%3D%3D" H 3850 3150 50  0001 L CNN "Mouser Price/Stock"
F 8 "AVX" H 3850 3050 50  0001 L CNN "Manufacturer_Name"
F 9 "04025A8R2BAT2A" H 3850 2950 50  0001 L CNN "Manufacturer_Part_Number"
	1    3750 3800
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:220 R12
U 1 1 5F92BE12
P 4150 3800
F 0 "R12" V 4250 3800 50  0000 C CNN
F 1 "220" V 4350 3800 50  0000 C CNN
F 2 "RESC1005X40N" H 4200 3650 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/RR0510P-221-D.pdf" H 4200 3550 50  0001 L CNN
F 4 "Thin Film Resistors - SMD 1/16W 220ohm 0.5% 25ppm" H 4200 3450 50  0001 L CNN "Description"
F 5 "0.4" H 4200 3350 50  0001 L CNN "Height"
F 6 "754-RR0510P-221D" H 4200 3250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=754-RR0510P-221D" H 4200 3150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Susumu" H 4200 3050 50  0001 L CNN "Manufacturer_Name"
F 9 "RR0510P-221-D" H 4200 2950 50  0001 L CNN "Manufacturer_Part_Number"
	1    4150 3800
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:32.768HKz Y1
U 1 1 5F9AC0DE
P 3350 2150
F 0 "Y1" H 4000 1785 50  0000 C CNN
F 1 "32.768HKz" H 4000 1876 50  0000 C CNN
F 2 "ECS32712517XTR" H 4500 2250 50  0001 L CNN
F 3 "https://www.ecsxtal.com/store/pdf/ecx-306x.pdf" H 4500 2150 50  0001 L CNN
F 4 "Crystals 32.768 KHz 12.5pF" H 4500 2050 50  0001 L CNN "Description"
F 5 "2.5" H 4500 1950 50  0001 L CNN "Height"
F 6 "520-ECS327-12.5-17X" H 4500 1850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ECS/ECS-327-125-17X-TR?qs=CkbNAJEAr%2FTBahk9YtN2eg%3D%3D" H 4500 1750 50  0001 L CNN "Mouser Price/Stock"
F 8 "ECS" H 4500 1650 50  0001 L CNN "Manufacturer_Name"
F 9 "ECS-.327-12.5-17X-TR" H 4500 1550 50  0001 L CNN "Manufacturer_Part_Number"
	1    3350 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 2050 3850 2050
Wire Wire Line
	3850 1850 3850 2050
Wire Wire Line
	3350 2150 3850 2150
Wire Wire Line
	3850 2150 3850 2350
Wire Wire Line
	3500 1850 3500 1650
Wire Wire Line
	3500 1650 2050 1650
Wire Wire Line
	2050 1650 2050 2050
Connection ~ 3500 1850
Wire Wire Line
	3500 1850 3550 1850
Wire Wire Line
	3500 2350 3500 2500
Wire Wire Line
	3500 2500 2050 2500
Wire Wire Line
	2050 2500 2050 2150
Connection ~ 3500 2350
Wire Wire Line
	3500 2350 3550 2350
$EndSCHEMATC
