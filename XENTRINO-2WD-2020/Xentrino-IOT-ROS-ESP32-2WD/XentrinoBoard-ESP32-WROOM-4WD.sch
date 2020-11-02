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
Wire Wire Line
	11250 1850 11250 1950
Wire Wire Line
	3400 3000 3400 3150
Wire Wire Line
	2750 900  2750 1000
$Comp
L power:+5V #PWR?
U 1 1 6277676E
P 2750 900
F 0 "#PWR?" H 2750 750 50  0001 C CNN
F 1 "+5V" H 2765 1073 50  0000 C CNN
F 2 "" H 2750 900 50  0001 C CNN
F 3 "" H 2750 900 50  0001 C CNN
	1    2750 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 950  5050 1050
Wire Wire Line
	2050 900  2050 1000
Connection ~ 2050 900 
Wire Wire Line
	2050 700  2050 900 
Wire Wire Line
	4350 950  4350 750 
$Comp
L power:VCC #PWR?
U 1 1 626BE93F
P 4350 750
F 0 "#PWR?" H 4350 600 50  0001 C CNN
F 1 "VCC" H 4365 923 50  0000 C CNN
F 2 "" H 4350 750 50  0001 C CNN
F 3 "" H 4350 750 50  0001 C CNN
	1    4350 750 
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:VNH2SP30 U?
U 1 1 6269EABF
P 2050 2000
F 0 "U?" H 2050 3281 50  0000 C CNN
F 1 "VNH2SP30" H 2050 3190 50  0000 C CNN
F 2 "Package_SO:ST_MultiPowerSO-30" H 2050 2925 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group2/66/b8/f5/2c/9a/66/41/c7/CD00043711/files/CD00043711.pdf/jcr:content/translations/en.CD00043711.pdf" H 1550 3000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:VNH2SP30 U?
U 1 1 6262342E
P 4350 2050
F 0 "U?" H 4350 3331 50  0000 C CNN
F 1 "VNH2SP30" H 4350 3240 50  0000 C CNN
F 2 "Package_SO:ST_MultiPowerSO-30" H 4350 2975 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group2/66/b8/f5/2c/9a/66/41/c7/CD00043711/files/CD00043711.pdf/jcr:content/translations/en.CD00043711.pdf" H 3850 3050 50  0001 C CNN
	1    4350 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6259B576
P 5050 950
F 0 "#PWR?" H 5050 800 50  0001 C CNN
F 1 "+5V" H 5065 1123 50  0000 C CNN
F 2 "" H 5050 950 50  0001 C CNN
F 3 "" H 5050 950 50  0001 C CNN
	1    5050 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3150 4250 3150
Wire Wire Line
	2750 2900 2750 2950
Connection ~ 2750 2900
Wire Wire Line
	2950 2900 2750 2900
Connection ~ 4250 3250
Connection ~ 2150 3450
Connection ~ 1850 3650
Connection ~ 1850 3250
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 620E5958
P 1950 3450
F 0 "Q?" H 2154 3496 50  0000 L CNN
F 1 "FDD8580" H 2154 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:PQFN_8x8" H 2150 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 1950 3450 50  0001 L CNN
	1    1950 3450
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 620E594E
P 1950 3450
F 0 "Q?" H 2154 3496 50  0000 L CNN
F 1 "FDD8580" H 2154 3405 50  0000 L CNN
F 2 "Inductor_SMD:L_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 2150 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 1950 3450 50  0001 L CNN
	1    1950 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 3600 3100 3600
Connection ~ 3400 3600
Wire Wire Line
	3400 3350 3400 3600
Wire Wire Line
	3100 3600 2150 3600
Connection ~ 3100 3600
Wire Wire Line
	2150 3600 2150 3450
Connection ~ 4550 3450
Wire Wire Line
	4550 3600 3400 3600
Wire Wire Line
	4550 3450 4550 3600
Connection ~ 4250 3650
Wire Wire Line
	4250 3650 4250 3700
$Comp
L power:GND #PWR?
U 1 1 620E5939
P 4250 3650
F 0 "#PWR?" H 4250 3400 50  0001 C CNN
F 1 "GND" H 4255 3477 50  0000 C CNN
F 2 "" H 4250 3650 50  0001 C CNN
F 3 "" H 4250 3650 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 620E592F
P 4350 3450
F 0 "Q?" H 4554 3496 50  0000 L CNN
F 1 "FDD8580" H 4554 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:PQFN_8x8" H 4550 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 4350 3450 50  0001 L CNN
	1    4350 3450
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 620E5925
P 4350 3450
F 0 "Q?" H 4554 3496 50  0000 L CNN
F 1 "FDD8580" H 4554 3405 50  0000 L CNN
F 2 "Inductor_SMD:L_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 4550 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 4350 3450 50  0001 L CNN
	1    4350 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 3250 4250 3250
Connection ~ 3100 3250
Wire Wire Line
	3100 3300 3100 3250
Wire Wire Line
	1950 3250 3100 3250
Wire Wire Line
	4250 3250 4250 3150
Wire Wire Line
	1950 3100 1950 3250
Wire Wire Line
	1850 3650 1850 3700
Connection ~ 1950 3250
Wire Wire Line
	1850 3250 1950 3250
$Comp
L Device:D_Schottky D?
U 1 1 620E5912
P 3100 3450
F 0 "D?" V 3146 3370 50  0000 R CNN
F 1 "BZT52" V 3055 3370 50  0000 R CNN
F 2 "" H 3100 3450 50  0001 C CNN
F 3 "~" H 3100 3450 50  0001 C CNN
	1    3100 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 620E5908
P 3400 3250
F 0 "R?" H 3468 3296 50  0000 L CNN
F 1 "100k" H 3468 3205 50  0000 L CNN
F 2 "" H 3400 3250 50  0001 C CNN
F 3 "~" H 3400 3250 50  0001 C CNN
	1    3400 3250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620E58FE
P 1850 3650
F 0 "#PWR?" H 1850 3400 50  0001 C CNN
F 1 "GND" H 1855 3477 50  0000 C CNN
F 2 "" H 1850 3650 50  0001 C CNN
F 3 "" H 1850 3650 50  0001 C CNN
	1    1850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 61A6746B
P 2950 2750
F 0 "C?" H 3065 2796 50  0000 L CNN
F 1 "33nf" H 3065 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2950 2750 50  0001 C CNN
F 3 "~" H 2950 2750 50  0001 C CNN
	1    2950 2750
	1    0    0    -1  
$EndComp
Connection ~ 2950 2900
Wire Wire Line
	2950 2800 2950 2900
$Comp
L power:GND #PWR?
U 1 1 61A67443
P 2750 2950
F 0 "#PWR?" H 2750 2700 50  0001 C CNN
F 1 "GND" H 2755 2777 50  0000 C CNN
F 2 "" H 2750 2950 50  0001 C CNN
F 3 "" H 2750 2950 50  0001 C CNN
	1    2750 2950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61A674D2
P 3400 3000
F 0 "#PWR?" H 3400 2850 50  0001 C CNN
F 1 "VCC" H 3415 3173 50  0000 C CNN
F 2 "" H 3400 3000 50  0001 C CNN
F 3 "" H 3400 3000 50  0001 C CNN
	1    3400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2850 1950 3100
Wire Wire Line
	1950 2900 1950 3100
Wire Wire Line
	1000 1400 1150 1400
Wire Wire Line
	1000 1600 1150 1600
$Comp
L power:VCC #PWR?
U 1 1 61A67537
P 2050 700
F 0 "#PWR?" H 2050 550 50  0001 C CNN
F 1 "VCC" H 2065 873 50  0000 C CNN
F 2 "" H 2050 700 50  0001 C CNN
F 3 "" H 2050 700 50  0001 C CNN
	1    2050 700 
	1    0    0    -1  
$EndComp
Text GLabel 5050 2150 2    50   Input ~ 0
OUT2_B
Text GLabel 5050 1950 2    50   Input ~ 0
OUT2_A
Wire Wire Line
	1950 3100 2150 3100
Connection ~ 5250 3000
Wire Wire Line
	5250 3000 5250 3150
Connection ~ 3450 1850
Wire Wire Line
	3350 1850 3450 1850
Connection ~ 1150 1800
Wire Wire Line
	1150 1800 1050 1800
Connection ~ 1950 3100
Wire Wire Line
	3300 1450 3450 1450
$Comp
L Device:R_Small_US R?
U 1 1 61A67505
P 3550 1450
F 0 "R?" H 3618 1496 50  0000 L CNN
F 1 "1K" H 3618 1405 50  0000 L CNN
F 2 "" H 3550 1450 50  0001 C CNN
F 3 "~" H 3550 1450 50  0001 C CNN
	1    3550 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 1650 3450 1650
Text GLabel 3300 1650 0    50   Input ~ 0
INB2
Text GLabel 3300 1450 0    50   Input ~ 0
INA2
$Comp
L Device:R_Small_US R?
U 1 1 61A674F8
P 3550 1650
F 0 "R?" H 3618 1696 50  0000 L CNN
F 1 "1K" H 3618 1605 50  0000 L CNN
F 2 "" H 3550 1650 50  0001 C CNN
F 3 "~" H 3550 1650 50  0001 C CNN
	1    3550 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A674EE
P 1250 1400
F 0 "R?" H 1318 1446 50  0000 L CNN
F 1 "1K" H 1318 1355 50  0000 L CNN
F 2 "" H 1250 1400 50  0001 C CNN
F 3 "~" H 1250 1400 50  0001 C CNN
	1    1250 1400
	0    -1   -1   0   
$EndComp
Text GLabel 1000 1600 0    50   Input ~ 0
INB1
Text GLabel 1000 1400 0    50   Input ~ 0
INA1
Text GLabel 3350 1850 0    50   Input ~ 0
PWM2
Text GLabel 1050 1800 0    50   Input ~ 0
PWM1
Text GLabel 2750 2100 2    50   Input ~ 0
OUT1_B
Text GLabel 2750 1900 2    50   Input ~ 0
OUT1_A
$Comp
L power:GND #PWR?
U 1 1 61A674DC
P 1150 2000
F 0 "#PWR?" H 1150 1750 50  0001 C CNN
F 1 "GND" H 1155 1827 50  0000 C CNN
F 2 "" H 1150 2000 50  0001 C CNN
F 3 "" H 1150 2000 50  0001 C CNN
	1    1150 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A674C8
P 3450 2050
F 0 "#PWR?" H 3450 1800 50  0001 C CNN
F 1 "GND" H 3455 1877 50  0000 C CNN
F 2 "" H 3450 2050 50  0001 C CNN
F 3 "" H 3450 2050 50  0001 C CNN
	1    3450 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A67497
P 5250 3150
F 0 "#PWR?" H 5250 2900 50  0001 C CNN
F 1 "GND" H 5255 2977 50  0000 C CNN
F 2 "" H 5250 3150 50  0001 C CNN
F 3 "" H 5250 3150 50  0001 C CNN
	1    5250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2800 2750 2900
$Comp
L Device:R_Small_US R?
U 1 1 61A67461
P 2750 2700
F 0 "R?" H 2818 2746 50  0000 L CNN
F 1 "15K" H 2818 2655 50  0000 L CNN
F 2 "" H 2750 2700 50  0001 C CNN
F 3 "~" H 2750 2700 50  0001 C CNN
	1    2750 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A67457
P 2850 2600
F 0 "R?" H 2918 2646 50  0000 L CNN
F 1 "10K" H 2918 2555 50  0000 L CNN
F 2 "" H 2850 2600 50  0001 C CNN
F 3 "~" H 2850 2600 50  0001 C CNN
	1    2850 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A6744D
P 1150 1900
F 0 "R?" H 1218 1946 50  0000 L CNN
F 1 "1K" H 1218 1855 50  0000 L CNN
F 2 "" H 1150 1900 50  0001 C CNN
F 3 "~" H 1150 1900 50  0001 C CNN
	1    1150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1200 2750 1400
$Comp
L Device:R_Small_US R?
U 1 1 61A67438
P 2750 1100
F 0 "R?" H 2818 1146 50  0000 L CNN
F 1 "4.7K" H 2818 1055 50  0000 L CNN
F 2 "" H 2750 1100 50  0001 C CNN
F 3 "~" H 2750 1100 50  0001 C CNN
	1    2750 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A6742E
P 1250 1800
F 0 "R?" H 1318 1846 50  0000 L CNN
F 1 "1K" H 1318 1755 50  0000 L CNN
F 2 "" H 1250 1800 50  0001 C CNN
F 3 "~" H 1250 1800 50  0001 C CNN
	1    1250 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A67424
P 1250 1600
F 0 "R?" H 1318 1646 50  0000 L CNN
F 1 "1K" H 1318 1555 50  0000 L CNN
F 2 "" H 1250 1600 50  0001 C CNN
F 3 "~" H 1250 1600 50  0001 C CNN
	1    1250 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 3000 5250 3000
Wire Wire Line
	5050 2850 5050 3000
Wire Wire Line
	5250 2950 5250 3000
$Comp
L Device:CP1 C?
U 1 1 61A67417
P 5250 2800
F 0 "C?" H 5365 2846 50  0000 L CNN
F 1 "33nf" H 5365 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5250 2800 50  0001 C CNN
F 3 "~" H 5250 2800 50  0001 C CNN
	1    5250 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A6740D
P 5050 2750
F 0 "R?" H 5118 2796 50  0000 L CNN
F 1 "15K" H 5118 2705 50  0000 L CNN
F 2 "" H 5050 2750 50  0001 C CNN
F 3 "~" H 5050 2750 50  0001 C CNN
	1    5050 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A67403
P 5150 2650
F 0 "R?" H 5218 2696 50  0000 L CNN
F 1 "10K" H 5218 2605 50  0000 L CNN
F 2 "" H 5150 2650 50  0001 C CNN
F 3 "~" H 5150 2650 50  0001 C CNN
	1    5150 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A673F9
P 3450 1950
F 0 "R?" H 3518 1996 50  0000 L CNN
F 1 "1K" H 3518 1905 50  0000 L CNN
F 2 "" H 3450 1950 50  0001 C CNN
F 3 "~" H 3450 1950 50  0001 C CNN
	1    3450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1250 5050 1450
$Comp
L Device:R_Small_US R?
U 1 1 61A673E4
P 5050 1150
F 0 "R?" H 5118 1196 50  0000 L CNN
F 1 "4.7K" H 5118 1105 50  0000 L CNN
F 2 "" H 5050 1150 50  0001 C CNN
F 3 "~" H 5050 1150 50  0001 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A673DA
P 3550 1850
F 0 "R?" H 3618 1896 50  0000 L CNN
F 1 "1K" H 3618 1805 50  0000 L CNN
F 2 "" H 3550 1850 50  0001 C CNN
F 3 "~" H 3550 1850 50  0001 C CNN
	1    3550 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD8EDC8
P 11250 1950
F 0 "#PWR?" H 11250 1700 50  0001 C CNN
F 1 "GND" H 11255 1777 50  0000 C CNN
F 2 "" H 11250 1950 50  0001 C CNN
F 3 "" H 11250 1950 50  0001 C CNN
	1    11250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6950 6450 6950
Text GLabel 6450 6950 2    50   Input ~ 0
OUT2_B
Wire Wire Line
	6450 6850 6050 6850
Text GLabel 6450 6850 2    50   Input ~ 0
OUT2_A
Wire Wire Line
	6450 6750 6050 6750
Wire Wire Line
	6050 6550 6450 6550
Text GLabel 6450 6750 2    50   Input ~ 0
GND
Wire Wire Line
	6450 6650 6050 6650
Text GLabel 6450 6650 2    50   Input ~ 0
3.3V
Text GLabel 6450 6550 2    50   Input ~ 0
ENC2_B
Wire Wire Line
	6450 6450 6050 6450
Text GLabel 6450 6450 2    50   Input ~ 0
ENC2_A
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 5FA3D050
P 5850 6750
F 0 "J4" H 5768 6225 50  0000 C CNN
F 1 "MOTOR2" H 5768 6316 50  0000 C CNN
F 2 "" H 5850 6750 50  0001 C CNN
F 3 "~" H 5850 6750 50  0001 C CNN
	1    5850 6750
	-1   0    0    1   
$EndComp
Connection ~ 7600 900 
Wire Wire Line
	7600 900  7600 850 
$Comp
L power:+5V #PWR?
U 1 1 6299D776
P 7600 850
F 0 "#PWR?" H 7600 700 50  0001 C CNN
F 1 "+5V" H 7615 1023 50  0000 C CNN
F 2 "" H 7600 850 50  0001 C CNN
F 3 "" H 7600 850 50  0001 C CNN
	1    7600 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 900  6000 1100
$Comp
L power:VCC #PWR?
U 1 1 62962B04
P 6000 900
F 0 "#PWR?" H 6000 750 50  0001 C CNN
F 1 "VCC" H 6015 1073 50  0000 C CNN
F 2 "" H 6000 900 50  0001 C CNN
F 3 "" H 6000 900 50  0001 C CNN
	1    6000 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1550 6100 1550
Wire Wire Line
	7250 1550 7600 1550
Connection ~ 7250 1550
Wire Wire Line
	7250 1400 7250 1550
Connection ~ 7250 1100
Wire Wire Line
	7300 1100 7250 1100
Wire Wire Line
	7200 1300 7150 1300
Wire Wire Line
	7200 1100 7200 1300
Wire Wire Line
	7250 1100 7200 1100
Wire Wire Line
	6650 1550 7250 1550
Wire Wire Line
	5800 1100 6000 1100
Wire Wire Line
	5800 1550 6000 1550
Wire Wire Line
	6000 1550 6100 1550
Connection ~ 6000 1550
Wire Wire Line
	6000 1100 6150 1100
Connection ~ 6000 1100
Connection ~ 6100 1550
Wire Wire Line
	6100 1300 6100 1550
Wire Wire Line
	7600 900  7600 1100
Wire Wire Line
	5800 1200 5800 1550
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5F79FB46
P 5600 1100
F 0 "J1" H 5708 1281 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5708 1190 50  0000 C CNN
F 2 "" H 5600 1100 50  0001 C CNN
F 3 "~" H 5600 1100 50  0001 C CNN
	1    5600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1300 6100 1300
Connection ~ 6650 1550
Wire Wire Line
	6650 1500 6650 1550
Wire Wire Line
	6000 1550 6000 1400
Wire Wire Line
	7150 900  7150 1100
Wire Wire Line
	7600 900  7150 900 
$Comp
L Regulator_Switching:LM2596S-5 U2
U 1 1 5F75DF87
P 6650 1200
F 0 "U2" H 6650 1567 50  0000 C CNN
F 1 "LM2596S-5" H 6650 1476 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 6700 950 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 6650 1200 50  0001 C CNN
	1    6650 1200
	1    0    0    -1  
$EndComp
Connection ~ 7600 1550
Wire Wire Line
	7600 1400 7600 1550
Connection ~ 7600 1100
$Comp
L Device:D_Zener_ALT D2
U 1 1 5F7620CD
P 7250 1250
F 0 "D2" H 7250 1467 50  0000 C CNN
F 1 "D8154" H 7250 1376 50  0000 C CNN
F 2 "" H 7250 1250 50  0001 C CNN
F 3 "~" H 7250 1250 50  0001 C CNN
	1    7250 1250
	0    1    1    0   
$EndComp
$Comp
L Device:CP C6
U 1 1 5F76144D
P 7600 1250
F 0 "C6" H 7718 1296 50  0000 L CNN
F 1 "220uf" H 7718 1205 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 7638 1100 50  0001 C CNN
F 3 "~" H 7600 1250 50  0001 C CNN
	1    7600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5F7608A5
P 6000 1250
F 0 "C3" H 6118 1296 50  0000 L CNN
F 1 "680uf" H 6118 1205 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 6038 1100 50  0001 C CNN
F 3 "~" H 6000 1250 50  0001 C CNN
	1    6000 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5F75FDD4
P 7450 1100
F 0 "L1" H 7503 1146 50  0000 L CNN
F 1 "33uH" H 7503 1055 50  0000 L CNN
F 2 "Inductor_SMD:L_Coilcraft_XAL5030" H 7450 1100 50  0001 C CNN
F 3 "~" H 7450 1100 50  0001 C CNN
	1    7450 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9350 1300 9650 1300
Wire Wire Line
	9350 1200 9650 1200
Text GLabel 10750 700  2    50   Input ~ 0
3.3V
Wire Wire Line
	10050 700  10750 700 
Connection ~ 10050 700 
Wire Wire Line
	9950 700  10050 700 
Wire Wire Line
	10450 1000 10750 1000
Text GLabel 10750 1000 2    50   Input ~ 0
TX
Text GLabel 10750 900  2    50   Input ~ 0
RX
$Comp
L power:GND #PWR?
U 1 1 5FD7A853
P 9050 1750
F 0 "#PWR?" H 9050 1500 50  0001 C CNN
F 1 "GND" H 9055 1577 50  0000 C CNN
F 2 "" H 9050 1750 50  0001 C CNN
F 3 "" H 9050 1750 50  0001 C CNN
	1    9050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1700 10850 1700
Text GLabel 10850 1700 2    50   Input Italic 0
RTS
Wire Wire Line
	10450 1600 10850 1600
Text GLabel 10850 1600 2    50   Input Italic 0
DTR
Wire Wire Line
	10450 900  10750 900 
Wire Wire Line
	9350 1000 9500 1000
$Comp
L Connector:USB_B_Micro J7
U 1 1 5F7557D8
P 9050 1200
F 0 "J7" H 9107 1667 50  0000 C CNN
F 1 "USB_B_Micro" H 9107 1576 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Tensility_54-00023_Vertical_CircularHoles" H 9200 1150 50  0001 C CNN
F 3 "~" H 9200 1150 50  0001 C CNN
	1    9050 1200
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CH340G U5
U 1 1 5F752BE7
P 10050 1300
F 0 "U5" H 10050 611 50  0000 C CNN
F 1 "CH340G" H 10050 520 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 10100 750 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 9700 2100 50  0001 C CNN
	1    10050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5200 9550 5200
Connection ~ 10350 6400
Connection ~ 10350 4800
Connection ~ 9850 6000
Wire Wire Line
	9850 6000 9950 6000
Wire Wire Line
	9800 6000 9850 6000
$Comp
L 74xx:74HC245 U6
U 1 1 5F93212E
P 10350 5600
F 0 "U6" H 10350 6581 50  0000 C CNN
F 1 "74HC245" H 10350 6490 50  0000 C CNN
F 2 "" H 10350 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 10350 5600 50  0001 C CNN
	1    10350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5800 9850 5800
Wire Wire Line
	9850 5700 9550 5700
Wire Wire Line
	9850 5600 9550 5600
Wire Wire Line
	9850 5500 9550 5500
Wire Wire Line
	9850 5400 9550 5400
Wire Wire Line
	9550 5300 9850 5300
Text GLabel 9550 5800 0    50   Input ~ 0
A7
Text GLabel 9550 5700 0    50   Input ~ 0
A6
Text GLabel 9550 5600 0    50   Input ~ 0
A5
Text GLabel 9550 5500 0    50   Input ~ 0
A4
Text GLabel 9550 5400 0    50   Input ~ 0
A3
Text GLabel 9550 5300 0    50   Input ~ 0
A2
Text GLabel 9550 5200 0    50   Input ~ 0
A1
Text GLabel 9550 5100 0    50   Input ~ 0
A0
Wire Wire Line
	10850 5600 10900 5600
Wire Wire Line
	10850 5200 10900 5200
Wire Wire Line
	10350 4650 10350 4800
Wire Wire Line
	9800 4800 9800 6000
Wire Wire Line
	9550 5100 9850 5100
Wire Wire Line
	9500 6400 10350 6400
Wire Wire Line
	9500 6100 9850 6100
Wire Wire Line
	9500 6400 9500 6100
Wire Wire Line
	10900 5800 10850 5800
Text GLabel 10900 5800 2    50   Input ~ 0
INB2
Wire Wire Line
	10900 5700 10850 5700
Text GLabel 10900 5700 2    50   Input ~ 0
INA2
Text GLabel 10900 5600 2    50   Input ~ 0
INB1
Wire Wire Line
	10900 5500 10850 5500
Text GLabel 10900 5500 2    50   Input ~ 0
INA1
Wire Wire Line
	10900 5400 10850 5400
Text GLabel 10900 5400 2    50   Input ~ 0
PWM4
Wire Wire Line
	10900 5300 10850 5300
Text GLabel 10900 5300 2    50   Input ~ 0
PWM3
Text GLabel 10900 5200 2    50   Input ~ 0
PWM2
Wire Wire Line
	10900 5100 10850 5100
Text GLabel 10900 5100 2    50   Input ~ 0
PWM1
Wire Wire Line
	9800 4800 10350 4800
$Comp
L power:VCC #PWR0118
U 1 1 5F93D34D
P 10350 4600
F 0 "#PWR0118" H 10350 4450 50  0001 C CNN
F 1 "VCC" H 10365 4773 50  0000 C CNN
F 2 "" H 10350 4600 50  0001 C CNN
F 3 "" H 10350 4600 50  0001 C CNN
	1    10350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 6400 10350 6450
$Comp
L power:GND #PWR0117
U 1 1 5F9393F7
P 10350 6400
F 0 "#PWR0117" H 10350 6150 50  0001 C CNN
F 1 "GND" H 10355 6227 50  0000 C CNN
F 2 "" H 10350 6400 50  0001 C CNN
F 3 "" H 10350 6400 50  0001 C CNN
	1    10350 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2200 7700 2200
Wire Wire Line
	8600 2000 8600 2200
$Comp
L power:+3.3V #PWR0122
U 1 1 5FA334F2
P 8650 1700
F 0 "#PWR0122" H 8650 1550 50  0001 C CNN
F 1 "+3.3V" H 8665 1873 50  0000 C CNN
F 2 "" H 8650 1700 50  0001 C CNN
F 3 "" H 8650 1700 50  0001 C CNN
	1    8650 1700
	1    0    0    -1  
$EndComp
Connection ~ 8600 2200
Wire Wire Line
	7700 2200 7700 2250
Wire Wire Line
	8600 2200 8600 2250
$Comp
L Device:R_Small_US R18
U 1 1 5F96746B
P 7700 2350
F 0 "R18" H 7768 2396 50  0000 L CNN
F 1 "10K" H 7768 2305 50  0000 L CNN
F 2 "" H 7700 2350 50  0001 C CNN
F 3 "~" H 7700 2350 50  0001 C CNN
	1    7700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2450 7850 2450
$Comp
L power:GND #PWR0121
U 1 1 5F99849B
P 8600 5050
F 0 "#PWR0121" H 8600 4800 50  0001 C CNN
F 1 "GND" H 8605 4877 50  0000 C CNN
F 2 "" H 8600 5050 50  0001 C CNN
F 3 "" H 8600 5050 50  0001 C CNN
	1    8600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2950 9450 2950
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 5FA45861
P 7600 3950
F 0 "J6" H 7680 3942 50  0000 L CNN
F 1 "Conn_01x06" H 7680 3851 50  0000 L CNN
F 2 "" H 7600 3950 50  0001 C CNN
F 3 "~" H 7600 3950 50  0001 C CNN
	1    7600 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 3650 8000 3650
Wire Wire Line
	7800 3750 8000 3750
Wire Wire Line
	7800 3850 8000 3850
Wire Wire Line
	7800 3950 8000 3950
Wire Wire Line
	7800 4050 8000 4050
Wire Wire Line
	7800 4150 8000 4150
Text GLabel 9400 3850 2    50   Input ~ 0
SDA
Text GLabel 9400 3950 2    50   Input ~ 0
SCL
Text GLabel 9350 4450 2    50   Input ~ 0
ENC2_B
Text GLabel 9350 4550 2    50   Input ~ 0
ENC2_A
Text GLabel 9350 4650 2    50   Input ~ 0
ENC1_B
Text GLabel 9350 4750 2    50   Input ~ 0
ENC1_A
Text GLabel 9350 4250 2    50   Input ~ 0
ENC3_B
Text GLabel 9350 4350 2    50   Input ~ 0
ENC3_A
Text GLabel 9350 4050 2    50   Input ~ 0
ENC4_B
Text GLabel 9350 4150 2    50   Input ~ 0
ENC4_A
Text GLabel 9450 3450 2    50   Input ~ 0
A7
Text GLabel 9450 3550 2    50   Input ~ 0
X2
Text GLabel 9400 3650 2    50   Input ~ 0
X3
Text GLabel 9400 3750 2    50   Input ~ 0
X4
Wire Wire Line
	7700 2450 7700 2650
Text GLabel 7700 2650 3    50   Input Italic 0
RESET
Connection ~ 7700 2450
Text GLabel 9450 2550 2    50   Input ~ 0
TX
Text GLabel 9450 2750 2    50   Input ~ 0
RX
$Comp
L Device:C C?
U 1 1 600CFF36
P 7850 2750
F 0 "C?" H 7965 2796 50  0000 L CNN
F 1 "0.1uf" H 7965 2705 50  0000 L CNN
F 2 "" H 7888 2600 50  0001 C CNN
F 3 "~" H 7850 2750 50  0001 C CNN
	1    7850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2600 7850 2450
Connection ~ 7850 2450
Wire Wire Line
	7850 2450 7700 2450
$Comp
L power:GND #PWR?
U 1 1 600E31E7
P 7850 3050
F 0 "#PWR?" H 7850 2800 50  0001 C CNN
F 1 "GND" H 7855 2877 50  0000 C CNN
F 2 "" H 7850 3050 50  0001 C CNN
F 3 "" H 7850 3050 50  0001 C CNN
	1    7850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2900 7850 3050
Wire Wire Line
	9200 2550 9450 2550
Text GLabel 9450 2650 2    50   Input ~ 0
A0
Text GLabel 9450 2850 2    50   Input ~ 0
A1
Text GLabel 9450 2950 2    50   Input ~ 0
A2
Text GLabel 9450 3350 2    50   Input ~ 0
A6
Text GLabel 9450 3250 2    50   Input ~ 0
A5
Text GLabel 9450 3150 2    50   Input ~ 0
A4
Text GLabel 9450 3050 2    50   Input ~ 0
A3
Wire Wire Line
	9450 2650 9200 2650
Wire Wire Line
	9200 2850 9450 2850
Wire Wire Line
	9200 3050 9450 3050
Wire Wire Line
	9200 3150 9450 3150
Wire Wire Line
	9200 3250 9450 3250
Wire Wire Line
	9200 3350 9450 3350
Wire Wire Line
	9200 2750 9450 2750
Wire Wire Line
	9200 3450 9450 3450
Wire Wire Line
	9200 3550 9450 3550
Wire Wire Line
	9200 3650 9400 3650
Wire Wire Line
	9200 3750 9400 3750
Wire Wire Line
	9400 3850 9200 3850
Wire Wire Line
	9400 3950 9200 3950
Wire Wire Line
	9350 4050 9200 4050
Wire Wire Line
	9200 4150 9350 4150
Wire Wire Line
	9200 4250 9350 4250
Wire Wire Line
	9200 4350 9350 4350
Wire Wire Line
	9200 4450 9350 4450
Wire Wire Line
	9350 4550 9200 4550
Wire Wire Line
	9350 4650 9200 4650
Wire Wire Line
	9350 4750 9200 4750
Connection ~ 10650 2900
Wire Wire Line
	10850 2900 10850 3050
Wire Wire Line
	10650 2900 10850 2900
Wire Wire Line
	10650 2600 10650 2900
Wire Wire Line
	10150 2950 10350 2950
Connection ~ 10150 2950
Text GLabel 10650 2600 1    50   Input ~ 0
OUT2_B
Text GLabel 10150 2600 1    50   Input ~ 0
OUT1_B
Text GLabel 10650 4000 3    50   Input ~ 0
OUT2_A
Text GLabel 10150 4000 3    50   Input ~ 0
OUT1_A
Wire Wire Line
	10150 3850 10150 4000
Wire Wire Line
	10650 3800 10650 4000
Wire Wire Line
	10150 2950 10150 2600
Wire Wire Line
	10650 3500 10850 3500
Connection ~ 10650 3500
$Comp
L Device:R_US R?
U 1 1 5F9DEAEE
P 10650 3650
F 0 "R?" V 10445 3650 50  0000 C CNN
F 1 "330" V 10536 3650 50  0000 C CNN
F 2 "" V 10690 3640 50  0001 C CNN
F 3 "~" H 10650 3650 50  0001 C CNN
	1    10650 3650
	1    0    0    1   
$EndComp
Wire Wire Line
	10500 2900 10650 2900
Wire Wire Line
	10500 3050 10500 2900
Wire Wire Line
	10850 3500 10850 3350
Wire Wire Line
	10500 3500 10650 3500
Wire Wire Line
	10500 3350 10500 3500
$Comp
L Device:LED D?
U 1 1 5F9DEAE2
P 10850 3200
F 0 "D?" H 10843 2945 50  0000 C CNN
F 1 "LED" H 10843 3036 50  0000 C CNN
F 2 "" H 10850 3200 50  0001 C CNN
F 3 "~" H 10850 3200 50  0001 C CNN
	1    10850 3200
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F9DEADC
P 10500 3200
F 0 "D?" H 10493 3417 50  0000 C CNN
F 1 "LED" H 10493 3326 50  0000 C CNN
F 2 "" H 10500 3200 50  0001 C CNN
F 3 "~" H 10500 3200 50  0001 C CNN
	1    10500 3200
	0    -1   1    0   
$EndComp
Wire Wire Line
	10150 3550 10350 3550
Connection ~ 10150 3550
$Comp
L Device:R_US R?
U 1 1 5F9D5575
P 10150 3700
F 0 "R?" V 9945 3700 50  0000 C CNN
F 1 "330" V 10036 3700 50  0000 C CNN
F 2 "" V 10190 3690 50  0001 C CNN
F 3 "~" H 10150 3700 50  0001 C CNN
	1    10150 3700
	1    0    0    1   
$EndComp
Wire Wire Line
	10350 2950 10350 3100
Wire Wire Line
	10000 2950 10150 2950
Wire Wire Line
	10000 3100 10000 2950
Wire Wire Line
	10350 3550 10350 3400
Wire Wire Line
	10000 3550 10150 3550
Wire Wire Line
	10000 3400 10000 3550
$Comp
L Device:LED D?
U 1 1 5F965DC6
P 10350 3250
F 0 "D?" H 10343 2995 50  0000 C CNN
F 1 "LED" H 10343 3086 50  0000 C CNN
F 2 "" H 10350 3250 50  0001 C CNN
F 3 "~" H 10350 3250 50  0001 C CNN
	1    10350 3250
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F965129
P 10000 3250
F 0 "D?" H 9993 3467 50  0000 C CNN
F 1 "LED" H 9993 3376 50  0000 C CNN
F 2 "" H 10000 3250 50  0001 C CNN
F 3 "~" H 10000 3250 50  0001 C CNN
	1    10000 3250
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 618336EF
P 850 3850
F 0 "#PWR?" H 850 3700 50  0001 C CNN
F 1 "VCC" H 865 4023 50  0000 C CNN
F 2 "" H 850 3850 50  0001 C CNN
F 3 "" H 850 3850 50  0001 C CNN
	1    850  3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3850 850  4050
Wire Wire Line
	2600 4350 3100 4350
Connection ~ 2600 4350
Wire Wire Line
	1950 4350 2350 4350
Connection ~ 1950 4350
Wire Wire Line
	1200 4350 1700 4350
Connection ~ 1200 4350
Wire Wire Line
	3100 4050 2600 4050
Connection ~ 3100 4050
Wire Wire Line
	2600 4050 2350 4050
Connection ~ 2600 4050
Wire Wire Line
	2350 4050 1950 4050
Connection ~ 2350 4050
Wire Wire Line
	1950 4050 1700 4050
Connection ~ 1950 4050
Wire Wire Line
	1700 4050 1200 4050
Connection ~ 1700 4050
Wire Wire Line
	1200 4050 950  4050
Connection ~ 1200 4050
Wire Wire Line
	950  4050 850  4050
Connection ~ 950  4050
Wire Wire Line
	3350 4050 3100 4050
Connection ~ 1700 4350
Wire Wire Line
	1700 4350 1950 4350
$Comp
L Device:CP1 C?
U 1 1 6144FA3C
P 1700 4200
F 0 "C?" H 1815 4246 50  0000 L CNN
F 1 "DNP" H 1815 4155 50  0000 L CNN
F 2 "1N4007" H 1700 4200 50  0001 C CNN
F 3 "~" H 1700 4200 50  0001 C CNN
	1    1700 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6144FA32
P 1950 4200
F 0 "C?" H 2065 4246 50  0000 L CNN
F 1 "560uf" H 2065 4155 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 1950 4200 50  0001 C CNN
F 3 "~" H 1950 4200 50  0001 C CNN
	1    1950 4200
	1    0    0    -1  
$EndComp
Connection ~ 950  4350
Wire Wire Line
	950  4350 1200 4350
$Comp
L Device:CP1 C?
U 1 1 6144FA1B
P 950 4200
F 0 "C?" H 1065 4246 50  0000 L CNN
F 1 "DNP" H 1065 4155 50  0000 L CNN
F 2 "1N4007" H 950 4200 50  0001 C CNN
F 3 "~" H 950 4200 50  0001 C CNN
	1    950  4200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6144ED33
P 1200 4200
F 0 "C?" H 1315 4246 50  0000 L CNN
F 1 "560uf" H 1315 4155 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 1200 4200 50  0001 C CNN
F 3 "~" H 1200 4200 50  0001 C CNN
	1    1200 4200
	1    0    0    -1  
$EndComp
Connection ~ 3100 4350
Wire Wire Line
	3100 4350 3350 4350
$Comp
L Device:CP1 C?
U 1 1 614154AE
P 3100 4200
F 0 "C?" H 3215 4246 50  0000 L CNN
F 1 "DNP" H 3215 4155 50  0000 L CNN
F 2 "1N4007" H 3100 4200 50  0001 C CNN
F 3 "~" H 3100 4200 50  0001 C CNN
	1    3100 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 61414802
P 3350 4200
F 0 "C?" H 3465 4246 50  0000 L CNN
F 1 "560uf" H 3465 4155 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 3350 4200 50  0001 C CNN
F 3 "~" H 3350 4200 50  0001 C CNN
	1    3350 4200
	1    0    0    -1  
$EndComp
Connection ~ 2350 4350
Wire Wire Line
	2350 4350 2600 4350
$Comp
L Device:CP1 C?
U 1 1 60E5E0BF
P 2350 4200
F 0 "C?" H 2465 4246 50  0000 L CNN
F 1 "DNP" H 2465 4155 50  0000 L CNN
F 2 "1N4007" H 2350 4200 50  0001 C CNN
F 3 "~" H 2350 4200 50  0001 C CNN
	1    2350 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E5E0B5
P 2600 4200
F 0 "C?" H 2715 4246 50  0000 L CNN
F 1 "560uf" H 2715 4155 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 2600 4200 50  0001 C CNN
F 3 "~" H 2600 4200 50  0001 C CNN
	1    2600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 6000 8250 6300
Wire Wire Line
	8250 5950 8250 6000
$Comp
L power:GND #PWR?
U 1 1 60A72F35
P 8250 6300
F 0 "#PWR?" H 8250 6050 50  0001 C CNN
F 1 "GND" H 8255 6127 50  0000 C CNN
F 2 "" H 8250 6300 50  0001 C CNN
F 3 "" H 8250 6300 50  0001 C CNN
	1    8250 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5700 8900 5700
Wire Wire Line
	8600 5700 8900 5700
Wire Wire Line
	7600 5700 7950 5700
Wire Wire Line
	7600 5700 7450 5700
Text GLabel 9150 5700 2    50   Input ~ 0
3.3V
Wire Wire Line
	9150 5700 8900 5700
Wire Wire Line
	7450 5400 7450 5450
Connection ~ 7600 5700
Connection ~ 8900 5700
Wire Wire Line
	8900 5450 8900 5700
$Comp
L power:+3.3V #PWR0124
U 1 1 5FA8E309
P 8900 5450
F 0 "#PWR0124" H 8900 5300 50  0001 C CNN
F 1 "+3.3V" H 8915 5623 50  0000 C CNN
F 2 "" H 8900 5450 50  0001 C CNN
F 3 "" H 8900 5450 50  0001 C CNN
	1    8900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 6000 8250 6250
Wire Wire Line
	8250 6000 8900 6000
Connection ~ 8250 6000
Wire Wire Line
	7600 6000 8250 6000
$Comp
L Device:CP C10
U 1 1 5F98BB64
P 7600 5850
F 0 "C10" H 7718 5896 50  0000 L CNN
F 1 "22uf" H 7718 5805 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 7638 5700 50  0001 C CNN
F 3 "~" H 7600 5850 50  0001 C CNN
	1    7600 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C11
U 1 1 5F97C900
P 8900 5850
F 0 "C11" H 9018 5896 50  0000 L CNN
F 1 "22uf" H 9018 5805 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 8938 5700 50  0001 C CNN
F 3 "~" H 8900 5850 50  0001 C CNN
	1    8900 5850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U8
U 1 1 5F96D0F2
P 8250 5700
F 0 "U8" H 8250 5942 50  0000 C CNN
F 1 "AMS1117-3.3" H 8250 5851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8250 5900 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 8350 5450 50  0001 C CNN
	1    8250 5700
	1    0    0    -1  
$EndComp
Text GLabel 5850 2600 0    50   Input ~ 0
OUT4_B
Wire Wire Line
	6300 2750 6150 2750
$Comp
L Device:LED D?
U 1 1 616D261F
P 6450 2400
F 0 "D?" H 6443 2145 50  0000 C CNN
F 1 "LED" H 6443 2236 50  0000 C CNN
F 2 "" H 6450 2400 50  0001 C CNN
F 3 "~" H 6450 2400 50  0001 C CNN
	1    6450 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 2750 6750 2600
Wire Wire Line
	6150 2750 6150 2600
$Comp
L Device:R_US R?
U 1 1 616D262C
P 6900 2600
F 0 "R?" V 6695 2600 50  0000 C CNN
F 1 "330" V 6786 2600 50  0000 C CNN
F 2 "" V 6940 2590 50  0001 C CNN
F 3 "~" H 6900 2600 50  0001 C CNN
	1    6900 2600
	0    1    -1   0   
$EndComp
Connection ~ 6750 2600
Wire Wire Line
	6750 2600 6750 2400
Wire Wire Line
	7050 2600 7250 2600
Text GLabel 7250 2600 2    50   Input ~ 0
OUT4_A
Wire Wire Line
	5850 2600 6150 2600
Wire Wire Line
	6150 2600 6150 2400
Connection ~ 6150 2600
Wire Wire Line
	6600 2750 6750 2750
$Comp
L Device:LED D?
U 1 1 616D2640
P 6450 2750
F 0 "D?" H 6443 2967 50  0000 C CNN
F 1 "LED" H 6443 2876 50  0000 C CNN
F 2 "" H 6450 2750 50  0001 C CNN
F 3 "~" H 6450 2750 50  0001 C CNN
	1    6450 2750
	1    0    0    1   
$EndComp
Wire Wire Line
	6150 2400 6300 2400
Wire Wire Line
	6750 2400 6600 2400
$Comp
L Device:LED D?
U 1 1 61659D07
P 6450 2100
F 0 "D?" H 6443 2317 50  0000 C CNN
F 1 "LED" H 6443 2226 50  0000 C CNN
F 2 "" H 6450 2100 50  0001 C CNN
F 3 "~" H 6450 2100 50  0001 C CNN
	1    6450 2100
	1    0    0    1   
$EndComp
Wire Wire Line
	6600 2100 6750 2100
Connection ~ 6150 1950
Wire Wire Line
	6150 1750 6300 1750
Wire Wire Line
	6150 1950 6150 1750
Wire Wire Line
	5850 1950 6150 1950
Text GLabel 5850 1950 0    50   Input ~ 0
OUT3_B
Text GLabel 7250 1950 2    50   Input ~ 0
OUT3_A
Wire Wire Line
	7050 1950 7250 1950
Wire Wire Line
	6750 1950 6750 1750
Connection ~ 6750 1950
$Comp
L Device:R_US R?
U 1 1 61659D18
P 6900 1950
F 0 "R?" V 6695 1950 50  0000 C CNN
F 1 "330" V 6786 1950 50  0000 C CNN
F 2 "" V 6940 1940 50  0001 C CNN
F 3 "~" H 6900 1950 50  0001 C CNN
	1    6900 1950
	0    1    -1   0   
$EndComp
Wire Wire Line
	6150 2100 6150 1950
Wire Wire Line
	6750 1750 6600 1750
Wire Wire Line
	6750 2100 6750 1950
$Comp
L Device:LED D?
U 1 1 61659D0D
P 6450 1750
F 0 "D?" H 6443 1495 50  0000 C CNN
F 1 "LED" H 6443 1586 50  0000 C CNN
F 2 "" H 6450 1750 50  0001 C CNN
F 3 "~" H 6450 1750 50  0001 C CNN
	1    6450 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 2100 6150 2100
Connection ~ 6300 4450
Wire Wire Line
	7000 4450 6300 4450
Wire Wire Line
	6200 4450 6000 4450
Connection ~ 6200 4450
$Comp
L power:+3.3V #PWR?
U 1 1 6231CD63
P 6200 4750
F 0 "#PWR?" H 6200 4600 50  0001 C CNN
F 1 "+3.3V" H 6215 4923 50  0000 C CNN
F 2 "" H 6200 4750 50  0001 C CNN
F 3 "" H 6200 4750 50  0001 C CNN
	1    6200 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 622B653C
P 6200 4600
F 0 "R?" V 5995 4600 50  0000 C CNN
F 1 "10K" V 6086 4600 50  0000 C CNN
F 2 "" V 6240 4590 50  0001 C CNN
F 3 "~" H 6200 4600 50  0001 C CNN
	1    6200 4600
	-1   0    0    1   
$EndComp
Text GLabel 7000 4450 2    50   Input ~ 0
BOOT-0
Connection ~ 6300 3500
Wire Wire Line
	6300 3500 6300 3300
Text GLabel 6300 3300 1    50   Input Italic 0
RESET
Text GLabel 7150 4250 2    50   Input ~ 0
RTS
Text GLabel 7150 3700 2    50   Input Italic 0
DTR
Wire Wire Line
	5600 4450 5600 4650
Connection ~ 5600 4450
Wire Wire Line
	5600 3500 5600 3700
Connection ~ 5600 3500
Wire Wire Line
	5600 4250 5600 4450
$Comp
L power:GND #PWR?
U 1 1 5FBD4261
P 5600 4650
F 0 "#PWR?" H 5600 4400 50  0001 C CNN
F 1 "GND" H 5605 4477 50  0000 C CNN
F 2 "" H 5600 4650 50  0001 C CNN
F 3 "" H 5600 4650 50  0001 C CNN
	1    5600 4650
	1    0    0    -1  
$EndComp
Connection ~ 6000 4450
Wire Wire Line
	6000 4250 6000 4450
$Comp
L Switch:SW_Push_Dual SW2
U 1 1 5FBD4259
P 5800 4250
F 0 "SW2" H 5800 4535 50  0000 C CNN
F 1 "BOOT" H 5800 4444 50  0000 C CNN
F 2 "" H 5800 4450 50  0001 C CNN
F 3 "~" H 5800 4450 50  0001 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3300 5600 3500
$Comp
L power:GND #PWR?
U 1 1 5FBC01CA
P 5600 3700
F 0 "#PWR?" H 5600 3450 50  0001 C CNN
F 1 "GND" H 5605 3527 50  0000 C CNN
F 2 "" H 5600 3700 50  0001 C CNN
F 3 "" H 5600 3700 50  0001 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
Connection ~ 6000 3500
Wire Wire Line
	6000 3300 6000 3500
$Comp
L Switch:SW_Push_Dual SW1
U 1 1 5FB87D4C
P 5800 3300
F 0 "SW1" H 5800 3585 50  0000 C CNN
F 1 "RESET" H 5800 3494 50  0000 C CNN
F 2 "" H 5800 3500 50  0001 C CNN
F 3 "~" H 5800 3500 50  0001 C CNN
	1    5800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4450 6200 4450
Wire Wire Line
	6950 3700 7150 3700
Wire Wire Line
	6300 3500 6000 3500
Connection ~ 7050 4250
Wire Wire Line
	7050 4250 7150 4250
Connection ~ 6950 3700
Wire Wire Line
	6950 4050 6950 3700
Wire Wire Line
	6300 4050 6950 4050
Wire Wire Line
	7050 3900 7050 4250
Wire Wire Line
	6300 3900 7050 3900
Wire Wire Line
	6900 4250 7050 4250
$Comp
L Device:R_US R?
U 1 1 5FADD31E
P 6750 4250
F 0 "R?" V 6545 4250 50  0000 C CNN
F 1 "10K" V 6636 4250 50  0000 C CNN
F 2 "" V 6790 4240 50  0001 C CNN
F 3 "~" H 6750 4250 50  0001 C CNN
	1    6750 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 3700 6950 3700
$Comp
L Device:R_US R?
U 1 1 5FA96825
P 6750 3700
F 0 "R?" V 6545 3700 50  0000 C CNN
F 1 "10K" V 6636 3700 50  0000 C CNN
F 2 "" V 6790 3690 50  0001 C CNN
F 3 "~" H 6750 3700 50  0001 C CNN
	1    6750 3700
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q1
U 1 1 5FA64989
P 6400 3700
F 0 "Q1" H 6591 3746 50  0000 L CNN
F 1 "MBT3904" H 6591 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6600 3625 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 6400 3700 50  0001 L CNN
	1    6400 3700
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q2
U 1 1 5F9FBEF9
P 6400 4250
F 0 "Q2" H 6591 4204 50  0000 L CNN
F 1 "MBT3904" H 6591 4295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 6600 4175 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 6400 4250 50  0001 L CNN
	1    6400 4250
	-1   0    0    1   
$EndComp
Text GLabel 6450 7400 2    50   Input ~ 0
3.3V
Wire Wire Line
	6050 7700 6450 7700
Text GLabel 6450 7700 2    50   Input ~ 0
OUT3_B
Wire Wire Line
	6450 7600 6050 7600
Text GLabel 6450 7600 2    50   Input ~ 0
OUT3_A
Wire Wire Line
	6450 7500 6050 7500
Wire Wire Line
	6050 7300 6450 7300
Text GLabel 6450 7500 2    50   Input ~ 0
GND
Wire Wire Line
	6450 7400 6050 7400
Text GLabel 6450 7300 2    50   Input ~ 0
ENC3_B
Wire Wire Line
	6450 7200 6050 7200
Text GLabel 6450 7200 2    50   Input ~ 0
ENC3_A
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 5FA3A830
P 5850 7500
F 0 "J5" H 5768 6975 50  0000 C CNN
F 1 "MOTOR3" H 5768 7066 50  0000 C CNN
F 2 "" H 5850 7500 50  0001 C CNN
F 3 "~" H 5850 7500 50  0001 C CNN
	1    5850 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 5450 6450 5450
Text GLabel 6450 5450 2    50   Input ~ 0
OUT1_B
Wire Wire Line
	6450 5350 6050 5350
Text GLabel 6450 5350 2    50   Input ~ 0
OUT1_A
Wire Wire Line
	6450 5250 6050 5250
Wire Wire Line
	6050 5050 6450 5050
Text GLabel 6450 5250 2    50   Input ~ 0
GND
Wire Wire Line
	6450 5150 6050 5150
Text GLabel 6450 5150 2    50   Input ~ 0
3.3V
Text GLabel 6450 5050 2    50   Input ~ 0
ENC1_B
Wire Wire Line
	6450 4950 6050 4950
Text GLabel 6450 4950 2    50   Input ~ 0
ENC1_A
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5FB19D84
P 5850 5250
F 0 "J2" H 5768 4725 50  0000 C CNN
F 1 "MOTOR1" H 5768 4816 50  0000 C CNN
F 2 "" H 5850 5250 50  0001 C CNN
F 3 "~" H 5850 5250 50  0001 C CNN
	1    5850 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 5700 6050 5700
Text GLabel 6450 5700 2    50   Input ~ 0
ENC4_A
Wire Wire Line
	6050 6200 6450 6200
Text GLabel 6450 6200 2    50   Input ~ 0
OUT4_B
Wire Wire Line
	6450 6100 6050 6100
Text GLabel 6450 6100 2    50   Input ~ 0
OUT4_A
Wire Wire Line
	6450 6000 6050 6000
Wire Wire Line
	6050 5800 6450 5800
Text GLabel 6450 6000 2    50   Input ~ 0
GND
Wire Wire Line
	6450 5900 6050 5900
Text GLabel 6450 5900 2    50   Input ~ 0
3.3V
Text GLabel 6450 5800 2    50   Input ~ 0
ENC4_B
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5FA43283
P 5850 6000
F 0 "J3" H 5768 5475 50  0000 C CNN
F 1 "MOTOR4" H 5768 5566 50  0000 C CNN
F 2 "" H 5850 6000 50  0001 C CNN
F 3 "~" H 5850 6000 50  0001 C CNN
	1    5850 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  4350 950  4550
$Comp
L power:VCC #PWR?
U 1 1 61774EBC
P 2100 4550
F 0 "#PWR?" H 2100 4400 50  0001 C CNN
F 1 "VCC" H 2115 4723 50  0000 C CNN
F 2 "" H 2100 4550 50  0001 C CNN
F 3 "" H 2100 4550 50  0001 C CNN
	1    2100 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6290860F
P 2800 4750
F 0 "#PWR?" H 2800 4600 50  0001 C CNN
F 1 "+5V" H 2815 4923 50  0000 C CNN
F 2 "" H 2800 4750 50  0001 C CNN
F 3 "" H 2800 4750 50  0001 C CNN
	1    2800 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628EACA1
P 5100 4750
F 0 "#PWR?" H 5100 4600 50  0001 C CNN
F 1 "+5V" H 5115 4923 50  0000 C CNN
F 2 "" H 5100 4750 50  0001 C CNN
F 3 "" H 5100 4750 50  0001 C CNN
	1    5100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4650 4400 4800
$Comp
L power:VCC #PWR?
U 1 1 628CBB7B
P 4400 4650
F 0 "#PWR?" H 4400 4500 50  0001 C CNN
F 1 "VCC" H 4415 4823 50  0000 C CNN
F 2 "" H 4400 4650 50  0001 C CNN
F 3 "" H 4400 4650 50  0001 C CNN
	1    4400 4650
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:VNH2SP30 U?
U 1 1 628AD594
P 4400 5850
F 0 "U?" H 4400 7131 50  0000 C CNN
F 1 "VNH2SP30" H 4400 7040 50  0000 C CNN
F 2 "Package_SO:ST_MultiPowerSO-30" H 4400 6775 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group2/66/b8/f5/2c/9a/66/41/c7/CD00043711/files/CD00043711.pdf/jcr:content/translations/en.CD00043711.pdf" H 3900 6850 50  0001 C CNN
	1    4400 5850
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:VNH2SP30 U?
U 1 1 6284DEC9
P 2100 5800
F 0 "U?" H 2100 7081 50  0000 C CNN
F 1 "VNH2SP30" H 2100 6990 50  0000 C CNN
F 2 "Package_SO:ST_MultiPowerSO-30" H 2100 6725 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group2/66/b8/f5/2c/9a/66/41/c7/CD00043711/files/CD00043711.pdf/jcr:content/translations/en.CD00043711.pdf" H 1600 6800 50  0001 C CNN
	1    2100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4550 2100 4700
Wire Wire Line
	2000 6900 2200 6900
Wire Wire Line
	2800 6700 2800 6750
Wire Wire Line
	3000 6700 2800 6700
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 6206B288
P 2000 7250
F 0 "Q?" H 2204 7296 50  0000 L CNN
F 1 "FDD8580" H 2204 7205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:PQFN_8x8" H 2200 7175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 2000 7250 50  0001 L CNN
	1    2000 7250
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 6206B282
P 2000 7250
F 0 "Q?" H 2204 7296 50  0000 L CNN
F 1 "FDD8580" H 2204 7205 50  0000 L CNN
F 2 "Inductor_SMD:L_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 2200 7175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 2000 7250 50  0001 L CNN
	1    2000 7250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 7150 3450 7400
Connection ~ 2200 7250
Wire Wire Line
	2200 7400 2200 7250
Connection ~ 3450 7400
Wire Wire Line
	4600 7400 3450 7400
Wire Wire Line
	4600 7250 4600 7400
Wire Wire Line
	4300 7450 4300 7500
$Comp
L power:GND #PWR?
U 1 1 61F5E79E
P 4300 7450
F 0 "#PWR?" H 4300 7200 50  0001 C CNN
F 1 "GND" H 4305 7277 50  0000 C CNN
F 2 "" H 4300 7450 50  0001 C CNN
F 3 "" H 4300 7450 50  0001 C CNN
	1    4300 7450
	1    0    0    -1  
$EndComp
Connection ~ 4300 7450
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 61F5E798
P 4400 7250
F 0 "Q?" H 4604 7296 50  0000 L CNN
F 1 "FDD8580" H 4604 7205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:PQFN_8x8" H 4600 7175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 4400 7250 50  0001 L CNN
	1    4400 7250
	-1   0    0    1   
$EndComp
Connection ~ 4600 7250
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 61F5E792
P 4400 7250
F 0 "Q?" H 4604 7296 50  0000 L CNN
F 1 "FDD8580" H 4604 7205 50  0000 L CNN
F 2 "Inductor_SMD:L_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 4600 7175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 4400 7250 50  0001 L CNN
	1    4400 7250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 7050 4300 7050
Wire Wire Line
	3150 7100 3150 7050
Connection ~ 3150 7050
Wire Wire Line
	2000 7050 3150 7050
Wire Wire Line
	1050 5200 1200 5200
Wire Wire Line
	1050 5400 1200 5400
Wire Wire Line
	5100 4750 5100 4850
Wire Wire Line
	2800 4750 2800 4800
Wire Wire Line
	4300 7050 4300 6950
Wire Wire Line
	4500 6950 4300 6950
Wire Wire Line
	2000 6650 2000 6900
$Comp
L power:GND #PWR?
U 1 1 6144FA28
P 950 4550
F 0 "#PWR?" H 950 4300 50  0001 C CNN
F 1 "GND" H 955 4377 50  0000 C CNN
F 2 "" H 950 4550 50  0001 C CNN
F 3 "" H 950 4550 50  0001 C CNN
	1    950  4550
	1    0    0    -1  
$EndComp
Text GLabel 5100 5950 2    50   Input ~ 0
OUT4_B
Text GLabel 5100 5750 2    50   Input ~ 0
OUT4_A
Wire Wire Line
	5300 6800 5300 6950
Wire Wire Line
	3500 5850 3500 6000
Wire Wire Line
	1200 5950 1200 5800
Wire Wire Line
	3400 5650 3500 5650
Wire Wire Line
	1200 5600 1100 5600
Wire Wire Line
	2000 6700 2000 6900
Wire Wire Line
	2000 6900 2000 7050
Connection ~ 2000 6900
Connection ~ 1900 7450
Wire Wire Line
	1900 7450 1900 7500
Wire Wire Line
	3350 5250 3500 5250
$Comp
L Device:R_Small_US R?
U 1 1 60E5E236
P 3600 5250
F 0 "R?" H 3668 5296 50  0000 L CNN
F 1 "1K" H 3668 5205 50  0000 L CNN
F 2 "" H 3600 5250 50  0001 C CNN
F 3 "~" H 3600 5250 50  0001 C CNN
	1    3600 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 5450 3500 5450
Text GLabel 3350 5450 0    50   Input ~ 0
INB4
Text GLabel 3350 5250 0    50   Input ~ 0
INA4
$Comp
L Device:R_Small_US R?
U 1 1 60E5E229
P 3600 5450
F 0 "R?" H 3668 5496 50  0000 L CNN
F 1 "1K" H 3668 5405 50  0000 L CNN
F 2 "" H 3600 5450 50  0001 C CNN
F 3 "~" H 3600 5450 50  0001 C CNN
	1    3600 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60E5E21E
P 1300 5200
F 0 "R?" H 1368 5246 50  0000 L CNN
F 1 "1K" H 1368 5155 50  0000 L CNN
F 2 "" H 1300 5200 50  0001 C CNN
F 3 "~" H 1300 5200 50  0001 C CNN
	1    1300 5200
	0    -1   -1   0   
$EndComp
Text GLabel 1050 5400 0    50   Input ~ 0
INB3
Text GLabel 1050 5200 0    50   Input ~ 0
INA3
Text GLabel 3400 5650 0    50   Input ~ 0
PWM4
Text GLabel 1100 5600 0    50   Input ~ 0
PWM3
Text GLabel 2800 5900 2    50   Input ~ 0
OUT3_B
Text GLabel 2800 5700 2    50   Input ~ 0
OUT3_A
Connection ~ 2000 7050
Connection ~ 1900 7050
Wire Wire Line
	1900 7050 2000 7050
$Comp
L power:GND #PWR?
U 1 1 60E5E1F6
P 1200 5950
F 0 "#PWR?" H 1200 5700 50  0001 C CNN
F 1 "GND" H 1205 5777 50  0000 C CNN
F 2 "" H 1200 5950 50  0001 C CNN
F 3 "" H 1200 5950 50  0001 C CNN
	1    1200 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E5E1EC
P 3450 6950
F 0 "#PWR?" H 3450 6800 50  0001 C CNN
F 1 "VCC" H 3465 7123 50  0000 C CNN
F 2 "" H 3450 6950 50  0001 C CNN
F 3 "" H 3450 6950 50  0001 C CNN
	1    3450 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E5E1E2
P 3500 6000
F 0 "#PWR?" H 3500 5750 50  0001 C CNN
F 1 "GND" H 3505 5827 50  0000 C CNN
F 2 "" H 3500 6000 50  0001 C CNN
F 3 "" H 3500 6000 50  0001 C CNN
	1    3500 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 7400 3150 7400
Wire Wire Line
	3150 7400 2200 7400
Connection ~ 3150 7400
$Comp
L Device:D_Schottky D?
U 1 1 60E5E1D5
P 3150 7250
F 0 "D?" V 3196 7170 50  0000 R CNN
F 1 "BZT52" V 3105 7170 50  0000 R CNN
F 2 "" H 3150 7250 50  0001 C CNN
F 3 "~" H 3150 7250 50  0001 C CNN
	1    3150 7250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60E5E1CB
P 3450 7050
F 0 "R?" H 3518 7096 50  0000 L CNN
F 1 "100k" H 3518 7005 50  0000 L CNN
F 2 "" H 3450 7050 50  0001 C CNN
F 3 "~" H 3450 7050 50  0001 C CNN
	1    3450 7050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E5E1BC
P 1900 7450
F 0 "#PWR?" H 1900 7200 50  0001 C CNN
F 1 "GND" H 1905 7277 50  0000 C CNN
F 2 "" H 1900 7450 50  0001 C CNN
F 3 "" H 1900 7450 50  0001 C CNN
	1    1900 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6600 3000 6700
$Comp
L power:GND #PWR?
U 1 1 60E5E1B0
P 5300 6950
F 0 "#PWR?" H 5300 6700 50  0001 C CNN
F 1 "GND" H 5305 6777 50  0000 C CNN
F 2 "" H 5300 6950 50  0001 C CNN
F 3 "" H 5300 6950 50  0001 C CNN
	1    5300 6950
	1    0    0    -1  
$EndComp
Connection ~ 2800 6700
Wire Wire Line
	2800 6600 2800 6700
Connection ~ 3000 6700
$Comp
L Device:CP1 C?
U 1 1 60E5E184
P 3000 6550
F 0 "C?" H 3115 6596 50  0000 L CNN
F 1 "33nf" H 3115 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3000 6550 50  0001 C CNN
F 3 "~" H 3000 6550 50  0001 C CNN
	1    3000 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60E5E17A
P 2800 6500
F 0 "R?" H 2868 6546 50  0000 L CNN
F 1 "15K" H 2868 6455 50  0000 L CNN
F 2 "" H 2800 6500 50  0001 C CNN
F 3 "~" H 2800 6500 50  0001 C CNN
	1    2800 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60E5E170
P 2900 6400
F 0 "R?" H 2968 6446 50  0000 L CNN
F 1 "10K" H 2968 6355 50  0000 L CNN
F 2 "" H 2900 6400 50  0001 C CNN
F 3 "~" H 2900 6400 50  0001 C CNN
	1    2900 6400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60E5E166
P 1200 5700
F 0 "R?" H 1268 5746 50  0000 L CNN
F 1 "1K" H 1268 5655 50  0000 L CNN
F 2 "" H 1200 5700 50  0001 C CNN
F 3 "~" H 1200 5700 50  0001 C CNN
	1    1200 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E5E15C
P 2800 6750
F 0 "#PWR?" H 2800 6500 50  0001 C CNN
F 1 "GND" H 2805 6577 50  0000 C CNN
F 2 "" H 2800 6750 50  0001 C CNN
F 3 "" H 2800 6750 50  0001 C CNN
	1    2800 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5000 2800 5200
$Comp
L Device:R_Small_US R?
U 1 1 60E5E151
P 2800 4900
F 0 "R?" H 2868 4946 50  0000 L CNN
F 1 "4.7K" H 2868 4855 50  0000 L CNN
F 2 "" H 2800 4900 50  0001 C CNN
F 3 "~" H 2800 4900 50  0001 C CNN
	1    2800 4900
	1    0    0    -1  
$EndComp
Connection ~ 1200 5600
$Comp
L Device:R_Small_US R?
U 1 1 60E5E123
P 1300 5600
F 0 "R?" H 1368 5646 50  0000 L CNN
F 1 "1K" H 1368 5555 50  0000 L CNN
F 2 "" H 1300 5600 50  0001 C CNN
F 3 "~" H 1300 5600 50  0001 C CNN
	1    1300 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60E5E119
P 1300 5400
F 0 "R?" H 1368 5446 50  0000 L CNN
F 1 "1K" H 1368 5355 50  0000 L CNN
F 2 "" H 1300 5400 50  0001 C CNN
F 3 "~" H 1300 5400 50  0001 C CNN
	1    1300 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 6800 5300 6800
Wire Wire Line
	5100 6650 5100 6800
Connection ~ 5300 6800
Wire Wire Line
	5300 6750 5300 6800
$Comp
L Device:CP1 C?
U 1 1 60E5E10C
P 5300 6600
F 0 "C?" H 5415 6646 50  0000 L CNN
F 1 "33nf" H 5415 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5300 6600 50  0001 C CNN
F 3 "~" H 5300 6600 50  0001 C CNN
	1    5300 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60E5E102
P 5100 6550
F 0 "R?" H 5168 6596 50  0000 L CNN
F 1 "15K" H 5168 6505 50  0000 L CNN
F 2 "" H 5100 6550 50  0001 C CNN
F 3 "~" H 5100 6550 50  0001 C CNN
	1    5100 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60E5E0F8
P 5200 6450
F 0 "R?" H 5268 6496 50  0000 L CNN
F 1 "10K" H 5268 6405 50  0000 L CNN
F 2 "" H 5200 6450 50  0001 C CNN
F 3 "~" H 5200 6450 50  0001 C CNN
	1    5200 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60E5E0EE
P 3500 5750
F 0 "R?" H 3568 5796 50  0000 L CNN
F 1 "1K" H 3568 5705 50  0000 L CNN
F 2 "" H 3500 5750 50  0001 C CNN
F 3 "~" H 3500 5750 50  0001 C CNN
	1    3500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5050 5100 5250
$Comp
L Device:R_Small_US R?
U 1 1 60E5E0D9
P 5100 4950
F 0 "R?" H 5168 4996 50  0000 L CNN
F 1 "4.7K" H 5168 4905 50  0000 L CNN
F 2 "" H 5100 4950 50  0001 C CNN
F 3 "~" H 5100 4950 50  0001 C CNN
	1    5100 4950
	1    0    0    -1  
$EndComp
Connection ~ 3500 5650
$Comp
L Device:R_Small_US R?
U 1 1 60E5E0A1
P 3600 5650
F 0 "R?" H 3668 5696 50  0000 L CNN
F 1 "1K" H 3668 5605 50  0000 L CNN
F 2 "" H 3600 5650 50  0001 C CNN
F 3 "~" H 3600 5650 50  0001 C CNN
	1    3600 5650
	0    -1   -1   0   
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32 U4
U 1 1 5F7336C0
P 8600 3650
F 0 "U4" H 8600 5231 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 8600 5140 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 8600 2150 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 8300 3700 50  0001 C CNN
	1    8600 3650
	1    0    0    -1  
$EndComp
Text GLabel 9350 2400 1    50   Input ~ 0
BOOT-0
Wire Wire Line
	9200 2450 9350 2450
Wire Wire Line
	7600 1700 7600 1550
$Comp
L power:GND #PWR0119
U 1 1 5F9F716A
P 7600 1700
F 0 "#PWR0119" H 7600 1450 50  0001 C CNN
F 1 "GND" H 7605 1527 50  0000 C CNN
F 2 "" H 7600 1700 50  0001 C CNN
F 3 "" H 7600 1700 50  0001 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 650  9500 1000
$Comp
L power:+5V #PWR?
U 1 1 5FF78293
P 9500 650
F 0 "#PWR?" H 9500 500 50  0001 C CNN
F 1 "+5V" H 9515 823 50  0000 C CNN
F 2 "" H 9500 650 50  0001 C CNN
F 3 "" H 9500 650 50  0001 C CNN
	1    9500 650 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FA1333F
P 7450 5450
F 0 "#PWR?" H 7450 5300 50  0001 C CNN
F 1 "+5V" H 7465 5623 50  0000 C CNN
F 2 "" H 7450 5450 50  0001 C CNN
F 3 "" H 7450 5450 50  0001 C CNN
	1    7450 5450
	1    0    0    -1  
$EndComp
Connection ~ 7450 5450
Wire Wire Line
	7450 5450 7450 5700
Text GLabel 9450 2450 2    50   Input ~ 0
X1
Wire Wire Line
	9350 2400 9350 2450
Connection ~ 9350 2450
Wire Wire Line
	9350 2450 9450 2450
Wire Wire Line
	9050 1600 9050 1750
$EndSCHEMATC
