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
L Connector_Generic:Conn_01x02 J6
U 1 1 5F6C7ACB
P 1550 1400
F 0 "J6" H 1468 1075 50  0000 C CNN
F 1 "Conn_01x02" H 1468 1166 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1550 1400 50  0001 C CNN
F 3 "~" H 1550 1400 50  0001 C CNN
	1    1550 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR061
U 1 1 5F6C7ADD
P 2700 1800
F 0 "#PWR061" H 2700 1550 50  0001 C CNN
F 1 "GND" H 2705 1627 50  0000 C CNN
F 2 "" H 2700 1800 50  0001 C CNN
F 3 "" H 2700 1800 50  0001 C CNN
	1    2700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1400 1750 1500
Wire Wire Line
	1750 1500 2100 1500
Wire Wire Line
	1700 2000 1700 1850
Wire Wire Line
	1700 1850 1150 1850
Text Label 1800 1300 0    50   ~ 0
+VIN
$Comp
L power:+5V #PWR059
U 1 1 5F6C7AFC
P 3650 1300
F 0 "#PWR059" H 3650 1150 50  0001 C CNN
F 1 "+5V" H 3665 1473 50  0000 C CNN
F 2 "" H 3650 1300 50  0001 C CNN
F 3 "" H 3650 1300 50  0001 C CNN
	1    3650 1300
	1    0    0    -1  
$EndComp
Connection ~ 3650 1300
$Comp
L power:+3.3V #PWR060
U 1 1 5F6C7B2D
P 6150 1300
F 0 "#PWR060" H 6150 1150 50  0001 C CNN
F 1 "+3.3V" H 6165 1473 50  0000 C CNN
F 2 "" H 6150 1300 50  0001 C CNN
F 3 "" H 6150 1300 50  0001 C CNN
	1    6150 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F825CE5
P 1750 2950
AR Path="/5F4A5D43/5F825CE5" Ref="#PWR?"  Part="1" 
AR Path="/5F64EC48/5F825CE5" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 1750 2800 50  0001 C CNN
F 1 "+5V" H 1765 3123 50  0000 C CNN
F 2 "" H 1750 2950 50  0001 C CNN
F 3 "" H 1750 2950 50  0001 C CNN
	1    1750 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F825CEB
P 1900 3600
AR Path="/5F4A5D43/5F825CEB" Ref="#PWR?"  Part="1" 
AR Path="/5F64EC48/5F825CEB" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 1900 3350 50  0001 C CNN
F 1 "GND" H 1905 3427 50  0000 C CNN
F 2 "" H 1900 3600 50  0001 C CNN
F 3 "" H 1900 3600 50  0001 C CNN
	1    1900 3600
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:10033526-N3212LF J?
U 1 1 5F825CFD
P 1900 3000
AR Path="/5F4A5D43/5F825CFD" Ref="J?"  Part="1" 
AR Path="/5F64EC48/5F825CFD" Ref="J7"  Part="1" 
F 0 "J7" H 2350 3265 50  0000 C CNN
F 1 "10033526-N3212LF" H 2350 3174 50  0000 C CNN
F 2 "SamacSys_Parts:10033526N3212LF" H 2650 3100 50  0001 L CNN
F 3 "https://www.amphenol-icc.com/media/wysiwyg/files/drawing/10033526.pdf" H 2650 3000 50  0001 L CNN
F 4 "AMPHENOL FCI NANTONG - 10033526-N3212LF. - CONN USB RCP 5 POS 0.8MM SLDR RA SMD 5TERM" H 2650 2900 50  0001 L CNN "Description"
F 5 "4.15" H 2650 2800 50  0001 L CNN "Height"
F 6 "649-10033526-N3212LF" H 2650 2700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Amphenol-FCI/10033526-N3212LF?qs=LmzVcvYPptRTPTxae6JWyQ%3D%3D" H 2650 2600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Amphenol" H 2650 2500 50  0001 L CNN "Manufacturer_Name"
F 9 "10033526-N3212LF" H 2650 2400 50  0001 L CNN "Manufacturer_Part_Number"
	1    1900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3000 1750 3000
Wire Wire Line
	1750 3000 1750 2950
Wire Wire Line
	1900 3300 1750 3300
Wire Wire Line
	1550 3300 1450 3300
Wire Wire Line
	1450 3300 1450 3600
Wire Wire Line
	1900 3600 1900 3400
Wire Wire Line
	2800 3000 2800 3100
Wire Wire Line
	2800 3100 2800 3200
Connection ~ 2800 3100
Wire Wire Line
	2800 3200 2800 3300
Connection ~ 2800 3200
Wire Wire Line
	2800 3300 2800 3600
Wire Wire Line
	2800 3600 1900 3600
Connection ~ 2800 3300
Connection ~ 1900 3600
Wire Wire Line
	1450 3600 1900 3600
$Comp
L power:GND #PWR066
U 1 1 5F88CF18
P 3750 4350
F 0 "#PWR066" H 3750 4100 50  0001 C CNN
F 1 "GND" H 3755 4177 50  0000 C CNN
F 2 "" H 3750 4350 50  0001 C CNN
F 3 "" H 3750 4350 50  0001 C CNN
	1    3750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3800 4350 3800
Wire Wire Line
	4750 3850 4750 3800
Connection ~ 4750 3800
Wire Wire Line
	4750 3800 5250 3800
Wire Wire Line
	4350 3850 4350 3800
Wire Wire Line
	4350 3800 4750 3800
Wire Wire Line
	4350 4050 4350 4200
Wire Wire Line
	4350 4200 4750 4200
Wire Wire Line
	4750 4200 4750 4050
Wire Wire Line
	3100 4200 3100 4050
Wire Wire Line
	3100 3850 3100 3800
Wire Wire Line
	3100 3800 3400 3800
Wire Wire Line
	3100 3800 2950 3800
Connection ~ 3100 3800
$Comp
L power:+5V #PWR063
U 1 1 5F88CF39
P 2950 3800
F 0 "#PWR063" H 2950 3650 50  0001 C CNN
F 1 "+5V" H 2965 3973 50  0000 C CNN
F 2 "" H 2950 3800 50  0001 C CNN
F 3 "" H 2950 3800 50  0001 C CNN
	1    2950 3800
	1    0    0    -1  
$EndComp
Text Label 4850 3800 0    50   ~ 0
VDD_MCU
$Comp
L power:+3.3V #PWR064
U 1 1 5F88CF40
P 5250 3800
F 0 "#PWR064" H 5250 3650 50  0001 C CNN
F 1 "+3.3V" H 5265 3973 50  0000 C CNN
F 2 "" H 5250 3800 50  0001 C CNN
F 3 "" H 5250 3800 50  0001 C CNN
	1    5250 3800
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C61
U 1 1 5F81301B
P 3650 1400
F 0 "C61" H 3742 1446 50  0000 L CNN
F 1 "100nF" H 3742 1355 50  0000 L CNN
F 2 "CAPC1005X55N" H 3750 1250 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 3750 1150 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 3750 1050 50  0001 L CNN "Description"
F 5 "0.55" H 3750 950 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 3750 850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 3750 750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 3750 650 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 3750 550 50  0001 L CNN "Manufacturer_Part_Number"
	1    3650 1400
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100nF C64
U 1 1 5F813832
P 6150 1400
F 0 "C64" H 6242 1446 50  0000 L CNN
F 1 "100nF" H 6242 1355 50  0000 L CNN
F 2 "CAPC1005X55N" H 6250 1250 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 6250 1150 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 6250 1050 50  0001 L CNN "Description"
F 5 "0.55" H 6250 950 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 6250 850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 6250 750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 6250 650 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 6250 550 50  0001 L CNN "Manufacturer_Part_Number"
	1    6150 1400
	1    0    0    -1  
$EndComp
Connection ~ 6150 1300
$Comp
L SamacSys_Parts:100nF C67
U 1 1 5F814821
P 4750 3950
F 0 "C67" H 4842 3996 50  0000 L CNN
F 1 "100nF" H 4842 3905 50  0000 L CNN
F 2 "CAPC1005X55N" H 4850 3800 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 4850 3700 50  0001 L CNN
F 4 "KEMET - C0402C104K9PACTU - CAP, MLCC, X5R, 0.1UF, 6.3V, 0402, REEL" H 4850 3600 50  0001 L CNN "Description"
F 5 "0.55" H 4850 3500 50  0001 L CNN "Height"
F 6 "80-C0402C104K9P" H 4850 3400 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K9PACTU?qs=DBJr%252BvBUjU7yQ9iUbxvTPw%3D%3D" H 4850 3300 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 4850 3200 50  0001 L CNN "Manufacturer_Name"
F 9 "C0402C104K9PACTU" H 4850 3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    4750 3950
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:10uF C59
U 1 1 5F8B49A7
P 2100 1400
F 0 "C59" H 2192 1446 50  0000 L CNN
F 1 "10uF" H 2192 1355 50  0000 L CNN
F 2 "CAPC1005X55N" H 2200 1250 50  0001 L CNN
F 3 "" H 2200 1150 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10uF 20% 6.3 Volts 0402" H 2200 1050 50  0001 L CNN "Description"
F 5 "0.55" H 2200 950 50  0001 L CNN "Height"
F 6 "791-0402X106M6R3CT" H 2200 850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Walsin/0402X106M6R3CT?qs=K66U1JmYfS7Y7bXr0va0Xw%3D%3D" H 2200 750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Walsin Technology Corporation" H 2200 650 50  0001 L CNN "Manufacturer_Name"
F 9 "0402X106M6R3CT" H 2200 550 50  0001 L CNN "Manufacturer_Part_Number"
	1    2100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1300 2100 1300
Connection ~ 2100 1300
Wire Wire Line
	2100 1300 2350 1300
Connection ~ 2100 1500
Wire Wire Line
	3150 1300 3300 1300
$Comp
L SamacSys_Parts:10uF C60
U 1 1 5F8B5319
P 3300 1400
F 0 "C60" H 3392 1446 50  0000 L CNN
F 1 "10uF" H 3392 1355 50  0000 L CNN
F 2 "CAPC1005X55N" H 3400 1250 50  0001 L CNN
F 3 "" H 3400 1150 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10uF 20% 6.3 Volts 0402" H 3400 1050 50  0001 L CNN "Description"
F 5 "0.55" H 3400 950 50  0001 L CNN "Height"
F 6 "791-0402X106M6R3CT" H 3400 850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Walsin/0402X106M6R3CT?qs=K66U1JmYfS7Y7bXr0va0Xw%3D%3D" H 3400 750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Walsin Technology Corporation" H 3400 650 50  0001 L CNN "Manufacturer_Name"
F 9 "0402X106M6R3CT" H 3400 550 50  0001 L CNN "Manufacturer_Part_Number"
	1    3300 1400
	1    0    0    -1  
$EndComp
Connection ~ 3300 1300
Wire Wire Line
	3300 1300 3650 1300
Wire Wire Line
	3650 1300 4600 1300
$Comp
L SamacSys_Parts:10uF C62
U 1 1 5F8B560D
P 4600 1400
F 0 "C62" H 4692 1446 50  0000 L CNN
F 1 "10uF" H 4692 1355 50  0000 L CNN
F 2 "CAPC1005X55N" H 4700 1250 50  0001 L CNN
F 3 "" H 4700 1150 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10uF 20% 6.3 Volts 0402" H 4700 1050 50  0001 L CNN "Description"
F 5 "0.55" H 4700 950 50  0001 L CNN "Height"
F 6 "791-0402X106M6R3CT" H 4700 850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Walsin/0402X106M6R3CT?qs=K66U1JmYfS7Y7bXr0va0Xw%3D%3D" H 4700 750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Walsin Technology Corporation" H 4700 650 50  0001 L CNN "Manufacturer_Name"
F 9 "0402X106M6R3CT" H 4700 550 50  0001 L CNN "Manufacturer_Part_Number"
	1    4600 1400
	1    0    0    -1  
$EndComp
Connection ~ 4600 1300
Wire Wire Line
	4600 1300 4850 1300
Wire Wire Line
	5650 1300 5800 1300
$Comp
L SamacSys_Parts:10uF C63
U 1 1 5F8B5DED
P 5800 1400
F 0 "C63" H 5892 1446 50  0000 L CNN
F 1 "10uF" H 5892 1355 50  0000 L CNN
F 2 "CAPC1005X55N" H 5900 1250 50  0001 L CNN
F 3 "" H 5900 1150 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10uF 20% 6.3 Volts 0402" H 5900 1050 50  0001 L CNN "Description"
F 5 "0.55" H 5900 950 50  0001 L CNN "Height"
F 6 "791-0402X106M6R3CT" H 5900 850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Walsin/0402X106M6R3CT?qs=K66U1JmYfS7Y7bXr0va0Xw%3D%3D" H 5900 750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Walsin Technology Corporation" H 5900 650 50  0001 L CNN "Manufacturer_Name"
F 9 "0402X106M6R3CT" H 5900 550 50  0001 L CNN "Manufacturer_Part_Number"
	1    5800 1400
	1    0    0    -1  
$EndComp
Connection ~ 5800 1300
Wire Wire Line
	5800 1300 6150 1300
$Comp
L SamacSys_Parts:10uF C65
U 1 1 5F8B612D
P 3100 3950
F 0 "C65" H 3192 3996 50  0000 L CNN
F 1 "10uF" H 3192 3905 50  0000 L CNN
F 2 "CAPC1005X55N" H 3200 3800 50  0001 L CNN
F 3 "" H 3200 3700 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10uF 20% 6.3 Volts 0402" H 3200 3600 50  0001 L CNN "Description"
F 5 "0.55" H 3200 3500 50  0001 L CNN "Height"
F 6 "791-0402X106M6R3CT" H 3200 3400 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Walsin/0402X106M6R3CT?qs=K66U1JmYfS7Y7bXr0va0Xw%3D%3D" H 3200 3300 50  0001 L CNN "Mouser Price/Stock"
F 8 "Walsin Technology Corporation" H 3200 3200 50  0001 L CNN "Manufacturer_Name"
F 9 "0402X106M6R3CT" H 3200 3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    3100 3950
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:10uF C66
U 1 1 5F8B6636
P 4350 3950
F 0 "C66" H 4442 3996 50  0000 L CNN
F 1 "10uF" H 4442 3905 50  0000 L CNN
F 2 "CAPC1005X55N" H 4450 3800 50  0001 L CNN
F 3 "" H 4450 3700 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10uF 20% 6.3 Volts 0402" H 4450 3600 50  0001 L CNN "Description"
F 5 "0.55" H 4450 3500 50  0001 L CNN "Height"
F 6 "791-0402X106M6R3CT" H 4450 3400 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Walsin/0402X106M6R3CT?qs=K66U1JmYfS7Y7bXr0va0Xw%3D%3D" H 4450 3300 50  0001 L CNN "Mouser Price/Stock"
F 8 "Walsin Technology Corporation" H 4450 3200 50  0001 L CNN "Manufacturer_Name"
F 9 "0402X106M6R3CT" H 4450 3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    4350 3950
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:100k R34
U 1 1 5F922EFA
P 1650 3300
F 0 "R34" V 1425 3300 50  0000 C CNN
F 1 "100k" V 1516 3300 50  0000 C CNN
F 2 "RESC1005X40N" H 1700 3150 50  0001 L CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C237.pdf" H 1700 3050 50  0001 L CNN
F 4 "Panasonic ERA Series Thin Film Surface Mount Resistor 0402 Case 100k +/-0.5% 63mW +/-25ppm/C" H 1700 2950 50  0001 L CNN "Description"
F 5 "0.4" H 1700 2850 50  0001 L CNN "Height"
F 6 "667-ERA-2AED104X" H 1700 2750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Panasonic/ERA-2AED104X?qs=nho8PGNfA6oWiExMQMbJyw%3D%3D" H 1700 2650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 1700 2550 50  0001 L CNN "Manufacturer_Name"
F 9 "ERA-2AED104X" H 1700 2450 50  0001 L CNN "Manufacturer_Part_Number"
	1    1650 3300
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:LD1117S50TR IC16
U 1 1 5F972C86
P 2350 1400
F 0 "IC16" H 3000 1665 50  0000 C CNN
F 1 "LD1117S50TR" H 3000 1574 50  0000 C CNN
F 2 "SOT230P700X190-4N" H 3500 1500 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/STMicroelectronics-LD1117S50TR_C134077.pdf" H 3500 1400 50  0001 L CNN
F 4 "LDO Voltage Regulators 5.0V 0.8A Positive" H 3500 1300 50  0001 L CNN "Description"
F 5 "1.9" H 3500 1200 50  0001 L CNN "Height"
F 6 "511-LD1117S50" H 3500 1100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/LD1117S50TR?qs=eQN2Ig5lfEwsh0kTXN%2FkTg%3D%3D" H 3500 1000 50  0001 L CNN "Mouser Price/Stock"
F 8 "STMicroelectronics" H 3500 900 50  0001 L CNN "Manufacturer_Name"
F 9 "LD1117S50TR" H 3500 800 50  0001 L CNN "Manufacturer_Part_Number"
	1    2350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1700 2700 1700
Wire Wire Line
	2100 1500 2100 1700
Wire Wire Line
	2700 1800 2700 1700
Connection ~ 2700 1700
Wire Wire Line
	3150 1400 3150 1300
Connection ~ 3150 1300
$Comp
L SamacSys_Parts:LD1117S33TR IC17
U 1 1 5F98F3FE
P 4850 1400
F 0 "IC17" H 5250 1725 50  0000 C CNN
F 1 "LD1117S33TR" H 5250 1634 50  0000 C CNN
F 2 "SOT230P700X190-4N" H 6000 1500 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/STMicroelectronics-LD1117S50TR_C134077.pdf" H 6000 1400 50  0001 L CNN
F 4 "LDO Voltage Regulators 3.3V 0.8A Positive" H 6000 1300 50  0001 L CNN "Description"
F 5 "1.9" H 6000 1200 50  0001 L CNN "Height"
F 6 " 511-LD1117S33" H 6000 1100 50  0001 L CNN "Mouser Part Number"
F 7 "https://ru.mouser.com/ProductDetail/STMicroelectronics/LD1117S33TR?qs=%2Fha2pyFaduia9VwYkVWx%2F4mRyX5zUinnP5LH1XIijR0%3D" H 6000 1000 50  0001 L CNN "Mouser Price/Stock"
F 8 "STMicroelectronics" H 6000 900 50  0001 L CNN "Manufacturer_Name"
F 9 "LD1117S33TR" H 6000 800 50  0001 L CNN "Manufacturer_Part_Number"
	1    4850 1400
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:LD1117S33TR IC18
U 1 1 5F98FC8A
P 3400 3900
F 0 "IC18" H 3800 4225 50  0000 C CNN
F 1 "LD1117S33TR" H 3800 4134 50  0000 C CNN
F 2 "SOT230P700X190-4N" H 4550 4000 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/STMicroelectronics-LD1117S50TR_C134077.pdf" H 4550 3900 50  0001 L CNN
F 4 "LDO Voltage Regulators 3.3V 0.8A Positive" H 4550 3800 50  0001 L CNN "Description"
F 5 "1.9" H 4550 3700 50  0001 L CNN "Height"
F 6 " 511-LD1117S33" H 4550 3600 50  0001 L CNN "Mouser Part Number"
F 7 "https://ru.mouser.com/ProductDetail/STMicroelectronics/LD1117S33TR?qs=%2Fha2pyFaduia9VwYkVWx%2F4mRyX5zUinnP5LH1XIijR0%3D" H 4550 3500 50  0001 L CNN "Mouser Price/Stock"
F 8 "STMicroelectronics" H 4550 3400 50  0001 L CNN "Manufacturer_Name"
F 9 "LD1117S33TR" H 4550 3300 50  0001 L CNN "Manufacturer_Part_Number"
	1    3400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1700 3300 1700
Wire Wire Line
	4600 1500 4600 1700
Connection ~ 4600 1700
Wire Wire Line
	4600 1700 5200 1700
Wire Wire Line
	3650 1500 3650 1700
Connection ~ 3650 1700
Wire Wire Line
	3650 1700 4600 1700
Wire Wire Line
	3300 1500 3300 1700
Connection ~ 3300 1700
Wire Wire Line
	3300 1700 3650 1700
Wire Wire Line
	5650 1400 5650 1300
Connection ~ 5650 1300
Wire Wire Line
	5200 1700 5800 1700
Wire Wire Line
	6150 1500 6150 1700
Connection ~ 5200 1700
Wire Wire Line
	5800 1500 5800 1700
Connection ~ 5800 1700
Wire Wire Line
	5800 1700 6150 1700
Wire Wire Line
	3750 4200 3750 4350
Connection ~ 4350 3800
Connection ~ 4350 4200
Wire Wire Line
	3100 4200 3750 4200
Connection ~ 3750 4200
Wire Wire Line
	3750 4200 4350 4200
$EndSCHEMATC
