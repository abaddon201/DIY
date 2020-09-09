EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A0 46811 33110
encoding utf-8
Sheet 5 5
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
L 74xx:74LS174 U?
U 1 1 5F53A5F8
P 3800 1850
AR Path="/5F53A5F8" Ref="U?"  Part="1" 
AR Path="/5F516481/5F53A5F8" Ref="U?"  Part="1" 
AR Path="/5F525D83/5F53A5F8" Ref="U?"  Part="1" 
F 0 "U?" H 3800 2731 50  0000 C CNN
F 1 "74LS174" H 3800 2640 50  0000 C CNN
F 2 "" H 3800 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS174" H 3800 1850 50  0001 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS257 U?
U 1 1 5F53A5FE
P 5400 1850
AR Path="/5F53A5FE" Ref="U?"  Part="1" 
AR Path="/5F516481/5F53A5FE" Ref="U?"  Part="1" 
AR Path="/5F525D83/5F53A5FE" Ref="U?"  Part="1" 
F 0 "U?" H 5400 2931 50  0000 C CNN
F 1 "74LS257" H 5400 2840 50  0000 C CNN
F 2 "" H 5400 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 5400 1850 50  0001 C CNN
	1    5400 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 1 1 5F53A604
P 7600 1250
AR Path="/5F53A604" Ref="U?"  Part="1" 
AR Path="/5F516481/5F53A604" Ref="U?"  Part="1" 
AR Path="/5F525D83/5F53A604" Ref="U?"  Part="1" 
F 0 "U?" H 7600 1575 50  0000 C CNN
F 1 "74LS32" H 7600 1484 50  0000 C CNN
F 2 "" H 7600 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7600 1250 50  0001 C CNN
	1    7600 1250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U?
U 1 1 5F53A60A
P 7250 2250
AR Path="/5F53A60A" Ref="U?"  Part="1" 
AR Path="/5F516481/5F53A60A" Ref="U?"  Part="1" 
AR Path="/5F525D83/5F53A60A" Ref="DD64.1"  Part="1" 
F 0 "DD64.1" H 7250 2575 50  0000 C CNN
F 1 "74LS02" H 7250 2484 50  0000 C CNN
F 2 "" H 7250 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 7250 2250 50  0001 C CNN
	1    7250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1250 8200 1250
Text Label 8000 1250 0    50   ~ 0
ROM2~OE
Wire Wire Line
	3300 1450 2950 1450
Wire Wire Line
	3300 1550 2950 1550
Wire Wire Line
	3300 1650 2950 1650
Wire Wire Line
	3300 1750 2950 1750
Wire Wire Line
	3300 1850 2950 1850
Wire Wire Line
	3300 1950 2950 1950
Text Label 3000 1450 0    50   ~ 0
D0
Text Label 3000 1550 0    50   ~ 0
D1
Text Label 3000 1650 0    50   ~ 0
D2
Text Label 3000 1750 0    50   ~ 0
D3
Text Label 3000 1850 0    50   ~ 0
D4
Text Label 3000 1950 0    50   ~ 0
D5
$Comp
L 74xx:74LS86 DD6.?
U 1 1 5F53A61E
P 4400 3050
AR Path="/5F516481/5F53A61E" Ref="DD6.?"  Part="1" 
AR Path="/5F525D83/5F53A61E" Ref="DD6.2"  Part="1" 
F 0 "DD6.2" H 4400 3375 50  0000 C CNN
F 1 "74LS86" H 4400 3284 50  0000 C CNN
F 2 "" H 4400 3050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4400 3050 50  0001 C CNN
	1    4400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2950 3800 2950
Wire Wire Line
	4100 3150 3800 3150
Text Label 3900 2950 0    50   ~ 0
A14
Text Label 3900 3150 0    50   ~ 0
A15
Wire Wire Line
	4700 3050 4700 2450
Wire Wire Line
	4700 2450 4900 2450
Wire Wire Line
	4300 1450 4400 1450
Wire Wire Line
	4400 1450 4400 1250
Wire Wire Line
	4400 1250 4900 1250
Wire Wire Line
	4300 1550 4900 1550
Wire Wire Line
	4300 1650 4650 1650
Wire Wire Line
	4650 1650 4650 1850
Wire Wire Line
	4650 1850 4900 1850
Wire Wire Line
	4900 2550 4900 2850
Wire Wire Line
	4900 2850 5400 2850
Wire Wire Line
	5400 2850 5400 2950
Connection ~ 5400 2850
$Comp
L power:GND #PWR?
U 1 1 5F53A635
P 5400 2950
AR Path="/5F516481/5F53A635" Ref="#PWR?"  Part="1" 
AR Path="/5F525D83/5F53A635" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5400 2700 50  0001 C CNN
F 1 "GND" H 5405 2777 50  0000 C CNN
F 2 "" H 5400 2950 50  0001 C CNN
F 3 "" H 5400 2950 50  0001 C CNN
	1    5400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1750 4500 1750
Wire Wire Line
	4300 1850 4500 1850
Text Label 4350 1750 0    50   ~ 0
ROM_SEL
Text Label 4350 1850 0    50   ~ 0
VRAM_SEL
Wire Wire Line
	2450 3500 2500 3500
Wire Wire Line
	1800 3600 1850 3600
Wire Wire Line
	1800 3850 1800 3600
Wire Wire Line
	1800 3400 1850 3400
Wire Wire Line
	1800 3250 1800 3400
$Comp
L 74xx:74LS00 DD63.?
U 1 1 5F53A644
P 2150 3500
AR Path="/5F516481/5F53A644" Ref="DD63.?"  Part="1" 
AR Path="/5F525D83/5F53A644" Ref="DD63.3"  Part="1" 
F 0 "DD63.3" H 2150 3825 50  0000 C CNN
F 1 "74LS00" H 2150 3734 50  0000 C CNN
F 2 "" H 2150 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 2150 3500 50  0001 C CNN
	1    2150 3500
	1    0    0    -1  
$EndComp
Text Label 950  3950 0    50   ~ 0
~WR
Text Label 950  3750 0    50   ~ 0
~IORQ
Wire Wire Line
	1200 3950 950  3950
Wire Wire Line
	1200 3750 950  3750
Text Label 1000 3350 0    50   ~ 0
A15
Text Label 1000 3150 0    50   ~ 0
A1
Wire Wire Line
	1200 3350 900  3350
Wire Wire Line
	900  3150 1200 3150
$Comp
L 74xx:74LS02 DD64.?
U 1 1 5F53A652
P 1500 3250
AR Path="/5F516481/5F53A652" Ref="DD64.?"  Part="1" 
AR Path="/5F525D83/5F53A652" Ref="DD64.2"  Part="1" 
F 0 "DD64.2" H 1500 3575 50  0000 C CNN
F 1 "74LS02" H 1500 3484 50  0000 C CNN
F 2 "" H 1500 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 1500 3250 50  0001 C CNN
	1    1500 3250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U?
U 4 1 5F53A658
P 1500 3850
AR Path="/5F53A658" Ref="U?"  Part="4" 
AR Path="/5F516481/5F53A658" Ref="U?"  Part="4" 
AR Path="/5F525D83/5F53A658" Ref="DD64.3"  Part="4" 
F 0 "DD64.3" H 1500 4175 50  0000 C CNN
F 1 "74LS02" H 1500 4084 50  0000 C CNN
F 2 "" H 1500 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 1500 3850 50  0001 C CNN
	4    1500 3850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U?
U 2 1 5F53A65E
P 2800 3400
AR Path="/5F53A65E" Ref="U?"  Part="2" 
AR Path="/5F516481/5F53A65E" Ref="U?"  Part="2" 
AR Path="/5F525D83/5F53A65E" Ref="DD64.4"  Part="2" 
F 0 "DD64.4" H 2800 3725 50  0000 C CNN
F 1 "74LS02" H 2800 3634 50  0000 C CNN
F 2 "" H 2800 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2800 3400 50  0001 C CNN
	2    2800 3400
	1    0    0    -1  
$EndComp
Text HLabel 6950 1350 0    50   Input ~ 0
C13
Text Label 7050 1350 0    50   ~ 0
C13
Wire Wire Line
	7300 1350 6950 1350
Wire Wire Line
	7300 1150 7100 1150
Text Label 7100 1150 0    50   ~ 0
~MREQ
Wire Wire Line
	3100 3400 3100 2150
Wire Wire Line
	3100 2150 3300 2150
Wire Wire Line
	3300 2350 2800 2350
Text Label 2800 2350 0    50   ~ 0
~RESET
Wire Wire Line
	4300 1950 4300 2750
Wire Wire Line
	4300 2750 2500 2750
Wire Wire Line
	2500 2750 2500 3300
Wire Wire Line
	4900 1350 4700 1350
Text Label 4700 1350 0    50   ~ 0
A14
Wire Wire Line
	4900 1650 4750 1650
Text Label 4750 1650 0    50   ~ 0
A15
Wire Wire Line
	4900 1950 4700 1950
Text Label 4700 1950 0    50   ~ 0
A14
$Comp
L 74xx:74LS00 DD63.?
U 1 1 5F53A676
P 8050 2350
AR Path="/5F516481/5F53A676" Ref="DD63.?"  Part="1" 
AR Path="/5F525D83/5F53A676" Ref="DD63.4"  Part="1" 
F 0 "DD63.4" H 8050 2675 50  0000 C CNN
F 1 "74LS00" H 8050 2584 50  0000 C CNN
F 2 "" H 8050 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8050 2350 50  0001 C CNN
	1    8050 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 DD63.?
U 1 1 5F53A67C
P 7250 2900
AR Path="/5F516481/5F53A67C" Ref="DD63.?"  Part="1" 
AR Path="/5F525D83/5F53A67C" Ref="DD63.1"  Part="1" 
F 0 "DD63.1" H 7250 3225 50  0000 C CNN
F 1 "74LS00" H 7250 3134 50  0000 C CNN
F 2 "" H 7250 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7250 2900 50  0001 C CNN
	1    7250 2900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 DD85.?
U 1 1 5F53A682
P 6500 2300
AR Path="/5F53A682" Ref="DD85.?"  Part="1" 
AR Path="/5F516481/5F53A682" Ref="DD85.?"  Part="1" 
AR Path="/5F525D83/5F53A682" Ref="DD65.4"  Part="1" 
F 0 "DD65.4" H 6500 2625 50  0000 C CNN
F 1 "74LS32" H 6500 2534 50  0000 C CNN
F 2 "" H 6500 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6500 2300 50  0001 C CNN
	1    6500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2300 6900 2300
Wire Wire Line
	6950 2300 6950 2350
Wire Wire Line
	6950 2150 6950 2300
Connection ~ 6950 2300
Wire Wire Line
	6900 2300 6900 2800
Wire Wire Line
	6900 2800 6950 2800
Connection ~ 6900 2300
Wire Wire Line
	6900 2300 6950 2300
Wire Wire Line
	7550 2250 7750 2250
Wire Wire Line
	5900 1850 6200 1850
Wire Wire Line
	6200 1850 6200 2200
Wire Wire Line
	6200 2400 5950 2400
Text Label 6000 2400 0    50   ~ 0
DIS
Wire Wire Line
	7750 2450 7550 2450
Wire Wire Line
	6950 3000 6700 3000
Text Label 7600 2450 0    50   ~ 0
CAS
Text Label 6750 3000 0    50   ~ 0
CAS
Wire Wire Line
	8350 2350 8650 2350
Text Label 8500 2350 0    50   ~ 0
C37
Wire Wire Line
	7550 2900 7900 2900
Text Label 7650 2900 0    50   ~ 0
C38
Wire Wire Line
	5900 1250 6200 1250
Wire Wire Line
	5900 1550 6200 1550
Text Label 6050 1550 0    50   ~ 0
C34
Text Label 6050 1250 0    50   ~ 0
C33
Text HLabel 900  3150 0    50   Input ~ 0
A1
Text HLabel 900  3350 0    50   Input ~ 0
A15
Text HLabel 950  3750 0    50   Input ~ 0
~IORQ
Text HLabel 950  3950 0    50   Input ~ 0
~WR
Text HLabel 3800 2950 0    50   Input ~ 0
A14
Text HLabel 3800 3150 0    50   Input ~ 0
A15
Text HLabel 2950 1450 0    50   Input ~ 0
D0
Text HLabel 2950 1550 0    50   Input ~ 0
D1
Text HLabel 2950 1650 0    50   Input ~ 0
D2
Text HLabel 2950 1750 0    50   Input ~ 0
D3
Text HLabel 2950 1850 0    50   Input ~ 0
D4
Text HLabel 2950 1950 0    50   Input ~ 0
D5
Text HLabel 2800 2350 0    50   Input ~ 0
~RESET
Text Label 4400 1250 0    50   ~ 0
HMEM_D0
Text Label 4350 1550 0    50   ~ 0
HMEM_D1
Text Label 4350 1650 0    50   ~ 0
HMEM_D2
Wire Notes Line
	500  500  8750 500 
Wire Notes Line
	8750 500  8750 4050
Wire Notes Line
	8750 4050 550  4050
Wire Notes Line
	550  4050 550  500 
$EndSCHEMATC
