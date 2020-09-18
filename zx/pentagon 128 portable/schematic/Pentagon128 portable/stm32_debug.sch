EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 14
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
L Connector:Conn_ARM_JTAG_SWD_20 J?
U 1 1 5F9AFF6D
P 3700 3750
F 0 "J?" H 3171 3796 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_20" H 4600 2950 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 4150 2700 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.dui0499b/DUI0499B_system_design_reference.pdf" V 3350 2500 50  0001 C CNN
	1    3700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3350 4650 3350
Wire Wire Line
	4300 3650 4650 3650
Wire Wire Line
	4300 3750 4650 3750
Wire Wire Line
	4300 3850 4650 3850
Text Label 4350 3350 0    50   ~ 0
NRST
Text Label 4350 3650 0    50   ~ 0
SYS_JTCK_SWCLK
Text Label 4350 3750 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 4350 3850 0    50   ~ 0
SYS_JTFO_SWO
Wire Wire Line
	3600 2950 3650 2950
$Comp
L power:+3.3V #PWR?
U 1 1 5F9AFF7C
P 3650 2950
F 0 "#PWR?" H 3650 2800 50  0001 C CNN
F 1 "+3.3V" H 3665 3123 50  0000 C CNN
F 2 "" H 3650 2950 50  0001 C CNN
F 3 "" H 3650 2950 50  0001 C CNN
	1    3650 2950
	1    0    0    -1  
$EndComp
Connection ~ 3650 2950
Wire Wire Line
	3650 2950 3700 2950
$Comp
L power:GND #PWR?
U 1 1 5F9AFF84
P 3900 5000
F 0 "#PWR?" H 3900 4750 50  0001 C CNN
F 1 "GND" H 3905 4827 50  0000 C CNN
F 2 "" H 3900 5000 50  0001 C CNN
F 3 "" H 3900 5000 50  0001 C CNN
	1    3900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4550 3600 5000
Wire Wire Line
	3600 5000 3900 5000
$Comp
L Device:R_Small R?
U 1 1 5F9AFF8C
P 5150 4650
F 0 "R?" H 5209 4696 50  0000 L CNN
F 1 "10k" H 5209 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5150 4650 50  0001 C CNN
F 3 "~" H 5150 4650 50  0001 C CNN
	1    5150 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F9AFF92
P 4900 4650
F 0 "R?" H 4959 4696 50  0000 L CNN
F 1 "10k" H 4959 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4900 4650 50  0001 C CNN
F 3 "~" H 4900 4650 50  0001 C CNN
	1    4900 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F9AFF98
P 4650 4650
F 0 "R?" H 4709 4696 50  0000 L CNN
F 1 "10k" H 4709 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4650 4650 50  0001 C CNN
F 3 "~" H 4650 4650 50  0001 C CNN
	1    4650 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4550 5150 3550
Wire Wire Line
	4300 3550 5150 3550
Wire Wire Line
	4900 4550 4900 4150
Wire Wire Line
	4900 4150 4300 4150
Wire Wire Line
	4650 4550 4650 4250
Wire Wire Line
	4650 4250 4300 4250
Wire Wire Line
	4650 4750 4650 5000
Wire Wire Line
	4650 5000 3900 5000
Connection ~ 3900 5000
Wire Wire Line
	4900 4750 4900 5000
Wire Wire Line
	4900 5000 4650 5000
Connection ~ 4650 5000
Wire Wire Line
	5150 4750 5150 5000
Wire Wire Line
	5150 5000 4900 5000
Connection ~ 4900 5000
$EndSCHEMATC
