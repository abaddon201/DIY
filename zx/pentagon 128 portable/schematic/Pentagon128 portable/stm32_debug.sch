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
L Connector:Conn_ARM_JTAG_SWD_20 J3
U 1 1 5F9AFF6D
P 3700 3750
F 0 "J3" H 3171 3796 50  0000 R CNN
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
L power:+3.3V #PWR032
U 1 1 5F9AFF7C
P 3650 2950
F 0 "#PWR032" H 3650 2800 50  0001 C CNN
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
L power:GND #PWR033
U 1 1 5F9AFF84
P 3900 5000
F 0 "#PWR033" H 3900 4750 50  0001 C CNN
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
$Comp
L SamacSys_Parts:10k R13
U 1 1 5F90C9DC
P 4650 4650
F 0 "R13" H 4708 4696 50  0000 L CNN
F 1 "10k" H 4708 4605 50  0000 L CNN
F 2 "RESC1005X37N" H 4700 4500 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402MC1002FE000.pdf" H 4700 4400 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .1W 10Kohms 1% 0402 50ppm Auto" H 4700 4300 50  0001 L CNN "Description"
F 5 "0.37" H 4700 4200 50  0001 L CNN "Height"
F 6 "594-MCS0402MC1002FE0" H 4700 4100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402MC1002FE0" H 4700 4000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 4700 3900 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402MC1002FE000" H 4700 3800 50  0001 L CNN "Manufacturer_Part_Number"
	1    4650 4650
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:10k R14
U 1 1 5F90D320
P 4900 4650
F 0 "R14" H 4958 4696 50  0000 L CNN
F 1 "10k" H 4958 4605 50  0000 L CNN
F 2 "RESC1005X37N" H 4950 4500 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402MC1002FE000.pdf" H 4950 4400 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .1W 10Kohms 1% 0402 50ppm Auto" H 4950 4300 50  0001 L CNN "Description"
F 5 "0.37" H 4950 4200 50  0001 L CNN "Height"
F 6 "594-MCS0402MC1002FE0" H 4950 4100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402MC1002FE0" H 4950 4000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 4950 3900 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402MC1002FE000" H 4950 3800 50  0001 L CNN "Manufacturer_Part_Number"
	1    4900 4650
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:10k R15
U 1 1 5F90D64E
P 5150 4650
F 0 "R15" H 5208 4696 50  0000 L CNN
F 1 "10k" H 5208 4605 50  0000 L CNN
F 2 "RESC1005X37N" H 5200 4500 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCS0402MC1002FE000.pdf" H 5200 4400 50  0001 L CNN
F 4 "Thin Film Resistors - SMD .1W 10Kohms 1% 0402 50ppm Auto" H 5200 4300 50  0001 L CNN "Description"
F 5 "0.37" H 5200 4200 50  0001 L CNN "Height"
F 6 "594-MCS0402MC1002FE0" H 5200 4100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=594-MCS0402MC1002FE0" H 5200 4000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 5200 3900 50  0001 L CNN "Manufacturer_Name"
F 9 "MCS0402MC1002FE000" H 5200 3800 50  0001 L CNN "Manufacturer_Part_Number"
	1    5150 4650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
