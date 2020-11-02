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
L Interface_USB:CH340G U5
U 1 1 5F752BE7
P 7050 2450
F 0 "U5" H 7050 1761 50  0000 C CNN
F 1 "CH340G" H 7050 1670 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7100 1900 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 6700 3250 50  0001 C CNN
	1    7050 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J7
U 1 1 5F7557D8
P 6050 2350
F 0 "J7" H 6107 2817 50  0000 C CNN
F 1 "USB_B_Micro" H 6107 2726 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Tensility_54-00023_Vertical_CircularHoles" H 6200 2300 50  0001 C CNN
F 3 "~" H 6200 2300 50  0001 C CNN
	1    6050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2150 6500 2150
$Comp
L Device:L L1
U 1 1 5F75FDD4
P 8050 950
F 0 "L1" H 8103 996 50  0000 L CNN
F 1 "33uH" H 8103 905 50  0000 L CNN
F 2 "Inductor_SMD:L_Coilcraft_XAL5030" H 8050 950 50  0001 C CNN
F 3 "~" H 8050 950 50  0001 C CNN
	1    8050 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C3
U 1 1 5F7608A5
P 6600 1100
F 0 "C3" H 6718 1146 50  0000 L CNN
F 1 "680uf" H 6718 1055 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 6638 950 50  0001 C CNN
F 3 "~" H 6600 1100 50  0001 C CNN
	1    6600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5F76144D
P 8200 1100
F 0 "C6" H 8318 1146 50  0000 L CNN
F 1 "220uf" H 8318 1055 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 8238 950 50  0001 C CNN
F 3 "~" H 8200 1100 50  0001 C CNN
	1    8200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener_ALT D2
U 1 1 5F7620CD
P 7850 1100
F 0 "D2" H 7850 1317 50  0000 C CNN
F 1 "D8154" H 7850 1226 50  0000 C CNN
F 2 "" H 7850 1100 50  0001 C CNN
F 3 "~" H 7850 1100 50  0001 C CNN
	1    7850 1100
	0    1    1    0   
$EndComp
Connection ~ 8200 950 
Wire Wire Line
	8200 1250 8200 1400
Connection ~ 8200 1400
$Comp
L Regulator_Switching:LM2596S-5 U2
U 1 1 5F75DF87
P 7250 1050
F 0 "U2" H 7250 1417 50  0000 C CNN
F 1 "LM2596S-5" H 7250 1326 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 7300 800 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 7250 1050 50  0001 C CNN
	1    7250 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 750  7750 750 
Wire Wire Line
	7750 750  7750 950 
Wire Wire Line
	6600 1400 6600 1250
Wire Wire Line
	7250 1350 7250 1400
Connection ~ 7250 1400
Wire Wire Line
	6750 1150 6700 1150
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5F79FB46
P 6200 950
F 0 "J1" H 6308 1131 50  0000 C CNN
F 1 "Conn_01x02_Male" H 6308 1040 50  0000 C CNN
F 2 "" H 6200 950 50  0001 C CNN
F 3 "~" H 6200 950 50  0001 C CNN
	1    6200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1050 6400 1400
$Comp
L power:GND #PWR0117
U 1 1 5F9393F7
P 9300 6300
F 0 "#PWR0117" H 9300 6050 50  0001 C CNN
F 1 "GND" H 9305 6127 50  0000 C CNN
F 2 "" H 9300 6300 50  0001 C CNN
F 3 "" H 9300 6300 50  0001 C CNN
	1    9300 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 6300 9300 6350
Wire Wire Line
	7450 2050 7750 2050
Wire Wire Line
	8750 4700 9300 4700
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 5FA3D050
P 5850 7300
F 0 "J4" H 5768 6775 50  0000 C CNN
F 1 "MOTOR2" H 5768 6866 50  0000 C CNN
F 2 "" H 5850 7300 50  0001 C CNN
F 3 "~" H 5850 7300 50  0001 C CNN
	1    5850 7300
	-1   0    0    1   
$EndComp
Text GLabel 9850 5000 2    50   Input ~ 0
PWM1
Wire Wire Line
	9850 5000 9800 5000
Text GLabel 9850 5100 2    50   Input ~ 0
PWM2
Text GLabel 9850 5200 2    50   Input ~ 0
PWM3
Wire Wire Line
	9850 5200 9800 5200
Text GLabel 9850 5300 2    50   Input ~ 0
PWM4
Wire Wire Line
	9850 5300 9800 5300
Text GLabel 9850 5400 2    50   Input ~ 0
INA1
Wire Wire Line
	9850 5400 9800 5400
Text GLabel 9850 5500 2    50   Input ~ 0
INB1
Text GLabel 9850 5600 2    50   Input ~ 0
INA2
Wire Wire Line
	9850 5600 9800 5600
Text GLabel 9850 5700 2    50   Input ~ 0
INB2
Wire Wire Line
	9850 5700 9800 5700
Text GLabel 6450 7000 2    50   Input ~ 0
ENC2_A
Wire Wire Line
	6450 7000 6050 7000
Text GLabel 6450 7100 2    50   Input ~ 0
ENC2_B
Text GLabel 6450 7200 2    50   Input ~ 0
3.3V
Wire Wire Line
	6450 7200 6050 7200
Text GLabel 6450 7300 2    50   Input ~ 0
GND
Wire Wire Line
	6050 7100 6450 7100
Wire Wire Line
	6450 7300 6050 7300
Text GLabel 6450 7400 2    50   Input ~ 0
OUT2_A
Wire Wire Line
	6450 7400 6050 7400
Text GLabel 6450 7500 2    50   Input ~ 0
OUT2_B
Wire Wire Line
	6050 7500 6450 7500
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5FB19D84
P 3800 7200
F 0 "J2" H 3718 6675 50  0000 C CNN
F 1 "MOTOR1" H 3718 6766 50  0000 C CNN
F 2 "" H 3800 7200 50  0001 C CNN
F 3 "~" H 3800 7200 50  0001 C CNN
	1    3800 7200
	-1   0    0    1   
$EndComp
Text GLabel 4400 6900 2    50   Input ~ 0
ENC1_A
Wire Wire Line
	4400 6900 4000 6900
Text GLabel 4400 7000 2    50   Input ~ 0
ENC1_B
Text GLabel 4400 7100 2    50   Input ~ 0
3.3V
Wire Wire Line
	4400 7100 4000 7100
Text GLabel 4400 7200 2    50   Input ~ 0
GND
Wire Wire Line
	4000 7000 4400 7000
Wire Wire Line
	4400 7200 4000 7200
Text GLabel 4400 7300 2    50   Input ~ 0
OUT1_A
Wire Wire Line
	4400 7300 4000 7300
Text GLabel 4400 7400 2    50   Input ~ 0
OUT1_B
Wire Wire Line
	4000 7400 4400 7400
Wire Wire Line
	8450 6300 8450 6000
Wire Wire Line
	8450 6000 8800 6000
Wire Wire Line
	8450 6300 9300 6300
Wire Wire Line
	8500 5000 8800 5000
Wire Wire Line
	8750 4700 8750 5900
$Comp
L power:GND #PWR0119
U 1 1 5F9F716A
P 8200 1500
F 0 "#PWR0119" H 8200 1250 50  0001 C CNN
F 1 "GND" H 8205 1327 50  0000 C CNN
F 2 "" H 8200 1500 50  0001 C CNN
F 3 "" H 8200 1500 50  0001 C CNN
	1    8200 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 5FA334F2
P 6700 3650
F 0 "#PWR0122" H 6700 3500 50  0001 C CNN
F 1 "+3.3V" H 6715 3823 50  0000 C CNN
F 2 "" H 6700 3650 50  0001 C CNN
F 3 "" H 6700 3650 50  0001 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1550 8200 1500
$Comp
L Device:LED D?
U 1 1 5F965129
P 4250 6100
F 0 "D?" H 4243 6317 50  0000 C CNN
F 1 "LED" H 4243 6226 50  0000 C CNN
F 2 "" H 4250 6100 50  0001 C CNN
F 3 "~" H 4250 6100 50  0001 C CNN
	1    4250 6100
	1    0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F965DC6
P 4250 5750
F 0 "D?" H 4243 5495 50  0000 C CNN
F 1 "LED" H 4243 5586 50  0000 C CNN
F 2 "" H 4250 5750 50  0001 C CNN
F 3 "~" H 4250 5750 50  0001 C CNN
	1    4250 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 6100 4550 6100
Wire Wire Line
	4550 6100 4550 5950
Wire Wire Line
	4550 5750 4400 5750
Wire Wire Line
	4100 6100 3950 6100
Wire Wire Line
	3950 6100 3950 5950
Wire Wire Line
	3950 5750 4100 5750
$Comp
L Device:R_US R?
U 1 1 5F9D5575
P 4700 5950
F 0 "R?" V 4495 5950 50  0000 C CNN
F 1 "330" V 4586 5950 50  0000 C CNN
F 2 "" V 4740 5940 50  0001 C CNN
F 3 "~" H 4700 5950 50  0001 C CNN
	1    4700 5950
	0    1    -1   0   
$EndComp
Connection ~ 4550 5950
Wire Wire Line
	4550 5950 4550 5750
$Comp
L Device:LED D?
U 1 1 5F9DEADC
P 4150 4700
F 0 "D?" H 4143 4917 50  0000 C CNN
F 1 "LED" H 4143 4826 50  0000 C CNN
F 2 "" H 4150 4700 50  0001 C CNN
F 3 "~" H 4150 4700 50  0001 C CNN
	1    4150 4700
	1    0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F9DEAE2
P 4150 4350
F 0 "D?" H 4143 4095 50  0000 C CNN
F 1 "LED" H 4143 4186 50  0000 C CNN
F 2 "" H 4150 4350 50  0001 C CNN
F 3 "~" H 4150 4350 50  0001 C CNN
	1    4150 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 4700 4450 4700
Wire Wire Line
	4450 4700 4450 4550
Wire Wire Line
	4450 4350 4300 4350
Wire Wire Line
	4000 4700 3850 4700
Wire Wire Line
	3850 4700 3850 4550
$Comp
L Device:R_US R?
U 1 1 5F9DEAEE
P 4600 4550
F 0 "R?" V 4395 4550 50  0000 C CNN
F 1 "330" V 4486 4550 50  0000 C CNN
F 2 "" V 4640 4540 50  0001 C CNN
F 3 "~" H 4600 4550 50  0001 C CNN
	1    4600 4550
	0    1    -1   0   
$EndComp
Connection ~ 4450 4550
Wire Wire Line
	4450 4550 4450 4350
Wire Wire Line
	3950 5950 3600 5950
Wire Wire Line
	4750 4550 4950 4550
Wire Wire Line
	4850 5950 5000 5950
Text GLabel 5000 5950 2    50   Input ~ 0
OUT1_A
Text GLabel 4950 4550 2    50   Input ~ 0
OUT2_A
Text GLabel 3600 5950 0    50   Input ~ 0
OUT1_B
Text GLabel 3550 4550 0    50   Input ~ 0
OUT2_B
Connection ~ 3950 5950
Wire Wire Line
	3950 5950 3950 5750
Wire Wire Line
	3550 4550 3850 4550
Wire Wire Line
	3850 4550 3850 4350
Wire Wire Line
	3850 4350 4000 4350
Connection ~ 3850 4550
Wire Wire Line
	9300 4550 9300 4700
$Comp
L Transistor_BJT:2N2219 Q2
U 1 1 5F9FBEF9
P 1850 6850
F 0 "Q2" H 2041 6804 50  0000 L CNN
F 1 "MBT3904" H 2041 6895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 2050 6775 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 1850 6850 50  0001 L CNN
	1    1850 6850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q1
U 1 1 5FA64989
P 1850 6300
F 0 "Q1" H 2041 6346 50  0000 L CNN
F 1 "MBT3904" H 2041 6255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2050 6225 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1850 6300 50  0001 L CNN
	1    1850 6300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5FA96825
P 2200 6300
F 0 "R?" V 1995 6300 50  0000 C CNN
F 1 "10K" V 2086 6300 50  0000 C CNN
F 2 "" V 2240 6290 50  0001 C CNN
F 3 "~" H 2200 6300 50  0001 C CNN
	1    2200 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 6300 2400 6300
$Comp
L Device:R_US R?
U 1 1 5FADD31E
P 2200 6850
F 0 "R?" V 1995 6850 50  0000 C CNN
F 1 "10K" V 2086 6850 50  0000 C CNN
F 2 "" V 2240 6840 50  0001 C CNN
F 3 "~" H 2200 6850 50  0001 C CNN
	1    2200 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 6850 2500 6850
Wire Wire Line
	1750 6500 2500 6500
Wire Wire Line
	2500 6500 2500 6850
Wire Wire Line
	1750 6650 2400 6650
Wire Wire Line
	2400 6650 2400 6300
Connection ~ 2400 6300
Wire Wire Line
	2500 6850 2600 6850
Connection ~ 2500 6850
Wire Wire Line
	1750 6100 1450 6100
Wire Wire Line
	2400 6300 2600 6300
Wire Wire Line
	1750 7050 1650 7050
$Comp
L Switch:SW_Push_Dual SW1
U 1 1 5FB87D4C
P 1250 5900
F 0 "SW1" H 1250 6185 50  0000 C CNN
F 1 "RESET" H 1250 6094 50  0000 C CNN
F 2 "" H 1250 6100 50  0001 C CNN
F 3 "~" H 1250 6100 50  0001 C CNN
	1    1250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5900 1450 6100
Connection ~ 1450 6100
$Comp
L power:GND #PWR?
U 1 1 5FBC01CA
P 1050 6300
F 0 "#PWR?" H 1050 6050 50  0001 C CNN
F 1 "GND" H 1055 6127 50  0000 C CNN
F 2 "" H 1050 6300 50  0001 C CNN
F 3 "" H 1050 6300 50  0001 C CNN
	1    1050 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5900 1050 6100
$Comp
L Switch:SW_Push_Dual SW2
U 1 1 5FBD4259
P 1250 6850
F 0 "SW2" H 1250 7135 50  0000 C CNN
F 1 "BOOT" H 1250 7044 50  0000 C CNN
F 2 "" H 1250 7050 50  0001 C CNN
F 3 "~" H 1250 7050 50  0001 C CNN
	1    1250 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6850 1450 7050
Connection ~ 1450 7050
$Comp
L power:GND #PWR?
U 1 1 5FBD4261
P 1050 7250
F 0 "#PWR?" H 1050 7000 50  0001 C CNN
F 1 "GND" H 1055 7077 50  0000 C CNN
F 2 "" H 1050 7250 50  0001 C CNN
F 3 "" H 1050 7250 50  0001 C CNN
	1    1050 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6850 1050 7050
Connection ~ 1050 6100
Wire Wire Line
	1050 6100 1050 6300
Connection ~ 1050 7050
Wire Wire Line
	1050 7050 1050 7250
Text GLabel 2600 6300 2    50   Input Italic 0
DTR
Text GLabel 2600 6850 2    50   Input ~ 0
RTS
Text GLabel 7850 2750 2    50   Input Italic 0
DTR
Wire Wire Line
	7450 2750 7850 2750
Text GLabel 7850 2850 2    50   Input Italic 0
RTS
Wire Wire Line
	7450 2850 7850 2850
$Comp
L power:GND #PWR?
U 1 1 5FD7A853
P 6050 2850
F 0 "#PWR?" H 6050 2600 50  0001 C CNN
F 1 "GND" H 6055 2677 50  0000 C CNN
F 2 "" H 6050 2850 50  0001 C CNN
F 3 "" H 6050 2850 50  0001 C CNN
	1    6050 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD8EDC8
P 7050 3050
F 0 "#PWR?" H 7050 2800 50  0001 C CNN
F 1 "GND" H 7055 2877 50  0000 C CNN
F 2 "" H 7050 3050 50  0001 C CNN
F 3 "" H 7050 3050 50  0001 C CNN
	1    7050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2750 6050 2850
Wire Wire Line
	11250 1850 11250 1950
Text GLabel 1750 5900 1    50   Input Italic 0
RESET
Wire Wire Line
	1750 6100 1750 5900
Connection ~ 1750 6100
Text GLabel 7750 2050 2    50   Input ~ 0
RX
Text GLabel 7750 2150 2    50   Input ~ 0
TX
Wire Wire Line
	7450 2150 7750 2150
Wire Wire Line
	6950 1850 7050 1850
Connection ~ 7050 1850
Wire Wire Line
	7050 1850 7750 1850
Text GLabel 7750 1850 2    50   Input ~ 0
3.3V
Connection ~ 6050 2850
Wire Wire Line
	6050 2850 6050 2900
Wire Wire Line
	6350 2350 6650 2350
Wire Wire Line
	6350 2450 6650 2450
Wire Wire Line
	9800 5100 9850 5100
Wire Wire Line
	9800 5500 9850 5500
Text GLabel 8500 5000 0    50   Input ~ 0
A0
Text GLabel 8500 5100 0    50   Input ~ 0
A1
Text GLabel 8500 5200 0    50   Input ~ 0
A2
Text GLabel 8500 5300 0    50   Input ~ 0
A3
Text GLabel 8500 5400 0    50   Input ~ 0
A4
Text GLabel 8500 5500 0    50   Input ~ 0
A5
Text GLabel 8500 5600 0    50   Input ~ 0
A6
Text GLabel 8500 5700 0    50   Input ~ 0
A7
Wire Wire Line
	8500 5200 8800 5200
Wire Wire Line
	8800 5300 8500 5300
Wire Wire Line
	8800 5400 8500 5400
Wire Wire Line
	8800 5500 8500 5500
Wire Wire Line
	8800 5600 8500 5600
Wire Wire Line
	8500 5700 8800 5700
$Comp
L 74xx:74HC245 U6
U 1 1 5F93212E
P 9300 5500
F 0 "U6" H 9300 6481 50  0000 C CNN
F 1 "74HC245" H 9300 6390 50  0000 C CNN
F 2 "" H 9300 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 9300 5500 50  0001 C CNN
	1    9300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5900 8800 5900
Wire Wire Line
	8800 5900 8900 5900
Connection ~ 8800 5900
Connection ~ 9300 4700
Connection ~ 9300 6300
Wire Wire Line
	8800 5100 8500 5100
Wire Wire Line
	7450 6300 7300 6300
Wire Wire Line
	7450 6200 7300 6200
Wire Wire Line
	7450 6100 7300 6100
Wire Wire Line
	7300 6000 7450 6000
Wire Wire Line
	7300 5900 7450 5900
Wire Wire Line
	7300 5800 7450 5800
Wire Wire Line
	7300 5700 7450 5700
Wire Wire Line
	7450 5600 7300 5600
Wire Wire Line
	7500 5500 7300 5500
Wire Wire Line
	7500 5400 7300 5400
Wire Wire Line
	7300 5300 7500 5300
Wire Wire Line
	7300 5200 7500 5200
Wire Wire Line
	7300 5100 7550 5100
Wire Wire Line
	7300 5000 7550 5000
Wire Wire Line
	7300 4300 7550 4300
Wire Wire Line
	7300 4900 7550 4900
Wire Wire Line
	7300 4800 7550 4800
Wire Wire Line
	7300 4700 7550 4700
Wire Wire Line
	7300 4600 7550 4600
Wire Wire Line
	7300 4400 7550 4400
Wire Wire Line
	7550 4200 7300 4200
Text GLabel 7550 4600 2    50   Input ~ 0
A3
Text GLabel 7550 4700 2    50   Input ~ 0
A4
Text GLabel 7550 4800 2    50   Input ~ 0
A5
Text GLabel 7550 4900 2    50   Input ~ 0
A6
Text GLabel 7550 4500 2    50   Input ~ 0
A2
Text GLabel 7550 4400 2    50   Input ~ 0
A1
Text GLabel 7550 4200 2    50   Input ~ 0
A0
Text GLabel 7450 3900 1    50   Input ~ 0
BOOT-0
Wire Wire Line
	7300 4100 7550 4100
Wire Wire Line
	5950 4450 5950 4600
$Comp
L power:GND #PWR?
U 1 1 600E31E7
P 5950 4600
F 0 "#PWR?" H 5950 4350 50  0001 C CNN
F 1 "GND" H 5955 4427 50  0000 C CNN
F 2 "" H 5950 4600 50  0001 C CNN
F 3 "" H 5950 4600 50  0001 C CNN
	1    5950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4000 5800 4000
Connection ~ 5950 4000
Wire Wire Line
	5950 4150 5950 4000
$Comp
L Device:C C?
U 1 1 600CFF36
P 5950 4300
F 0 "C?" H 6065 4346 50  0000 L CNN
F 1 "0.1uf" H 6065 4255 50  0000 L CNN
F 2 "" H 5988 4150 50  0001 C CNN
F 3 "~" H 5950 4300 50  0001 C CNN
	1    5950 4300
	1    0    0    -1  
$EndComp
Text GLabel 7550 4300 2    50   Input ~ 0
RX
Text GLabel 7550 4100 2    50   Input ~ 0
TX
Connection ~ 5800 4000
Text GLabel 5800 4200 3    50   Input Italic 0
RESET
Wire Wire Line
	5800 4000 5800 4200
Wire Wire Line
	6700 3550 6700 3650
Text GLabel 7500 5300 2    50   Input ~ 0
X4
Text GLabel 7500 5200 2    50   Input ~ 0
X3
Text GLabel 7550 5100 2    50   Input ~ 0
X2
Text GLabel 7550 5000 2    50   Input ~ 0
A7
Text GLabel 7450 5700 2    50   Input ~ 0
ENC4_A
Text GLabel 7450 5600 2    50   Input ~ 0
ENC4_B
Text GLabel 7450 5900 2    50   Input ~ 0
ENC3_A
Text GLabel 7450 5800 2    50   Input ~ 0
ENC3_B
Text GLabel 7450 6300 2    50   Input ~ 0
ENC1_A
Text GLabel 7450 6200 2    50   Input ~ 0
ENC1_B
Text GLabel 7450 6100 2    50   Input ~ 0
ENC2_A
Text GLabel 7450 6000 2    50   Input ~ 0
ENC2_B
Text GLabel 7500 5500 2    50   Input ~ 0
SCL
Text GLabel 7500 5400 2    50   Input ~ 0
SDA
Wire Wire Line
	5900 5700 6100 5700
Wire Wire Line
	5900 5600 6100 5600
Wire Wire Line
	5900 5500 6100 5500
Wire Wire Line
	5900 5400 6100 5400
Wire Wire Line
	5900 5300 6100 5300
Wire Wire Line
	5900 5200 6100 5200
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 5FA45861
P 5700 5500
F 0 "J6" H 5780 5492 50  0000 L CNN
F 1 "Conn_01x06" H 5780 5401 50  0000 L CNN
F 2 "" H 5700 5500 50  0001 C CNN
F 3 "~" H 5700 5500 50  0001 C CNN
	1    5700 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 4500 7550 4500
$Comp
L power:GND #PWR0121
U 1 1 5F99849B
P 6700 6600
F 0 "#PWR0121" H 6700 6350 50  0001 C CNN
F 1 "GND" H 6705 6427 50  0000 C CNN
F 2 "" H 6700 6600 50  0001 C CNN
F 3 "" H 6700 6600 50  0001 C CNN
	1    6700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4000 5950 4000
$Comp
L Device:R_Small_US R18
U 1 1 5F96746B
P 5800 3900
F 0 "R18" H 5868 3946 50  0000 L CNN
F 1 "10K" H 5868 3855 50  0000 L CNN
F 2 "" H 5800 3900 50  0001 C CNN
F 3 "~" H 5800 3900 50  0001 C CNN
	1    5800 3900
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32 U4
U 1 1 5F7336C0
P 6700 5200
F 0 "U4" H 6700 6781 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 6700 6690 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6700 3700 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 6400 5250 50  0001 C CNN
	1    6700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3750 5800 3750
Wire Wire Line
	6700 3750 6700 3800
Wire Wire Line
	5800 3750 5800 3800
$Comp
L power:GND #PWR?
U 1 1 60A72F35
P 9850 1600
F 0 "#PWR?" H 9850 1350 50  0001 C CNN
F 1 "GND" H 9855 1427 50  0000 C CNN
F 2 "" H 9850 1600 50  0001 C CNN
F 3 "" H 9850 1600 50  0001 C CNN
	1    9850 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E5E0B5
P 2400 5000
F 0 "C?" H 2515 5046 50  0000 L CNN
F 1 "560uf" H 2515 4955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 2400 5000 50  0001 C CNN
F 3 "~" H 2400 5000 50  0001 C CNN
	1    2400 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E5E0BF
P 2150 5000
F 0 "C?" H 2265 5046 50  0000 L CNN
F 1 "DNP" H 2265 4955 50  0000 L CNN
F 2 "1N4007" H 2150 5000 50  0001 C CNN
F 3 "~" H 2150 5000 50  0001 C CNN
	1    2150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5150 2400 5150
Connection ~ 2150 5150
Wire Wire Line
	8200 750  8200 950 
Wire Wire Line
	6700 1150 6700 1400
Connection ~ 6700 1400
Connection ~ 6600 950 
Wire Wire Line
	6600 950  6750 950 
Connection ~ 6600 1400
Wire Wire Line
	6600 1400 6700 1400
Wire Wire Line
	6400 1400 6600 1400
Wire Wire Line
	6400 950  6600 950 
Wire Wire Line
	7850 950  7800 950 
Wire Wire Line
	7800 950  7800 1150
Wire Wire Line
	7800 1150 7750 1150
Wire Wire Line
	7900 950  7850 950 
Connection ~ 7850 950 
Wire Wire Line
	7850 1250 7850 1400
Connection ~ 7850 1400
Wire Wire Line
	7250 1400 6700 1400
Wire Wire Line
	6500 1800 6500 1850
$Comp
L Device:CP1 C?
U 1 1 61414802
P 3150 5000
F 0 "C?" H 3265 5046 50  0000 L CNN
F 1 "560uf" H 3265 4955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 3150 5000 50  0001 C CNN
F 3 "~" H 3150 5000 50  0001 C CNN
	1    3150 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 614154AE
P 2900 5000
F 0 "C?" H 3015 5046 50  0000 L CNN
F 1 "DNP" H 3015 4955 50  0000 L CNN
F 2 "1N4007" H 2900 5000 50  0001 C CNN
F 3 "~" H 2900 5000 50  0001 C CNN
	1    2900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5150 3150 5150
Connection ~ 2900 5150
$Comp
L Device:CP1 C?
U 1 1 6144ED33
P 1000 5000
F 0 "C?" H 1115 5046 50  0000 L CNN
F 1 "560uf" H 1115 4955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 1000 5000 50  0001 C CNN
F 3 "~" H 1000 5000 50  0001 C CNN
	1    1000 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6144FA1B
P 750 5000
F 0 "C?" H 865 5046 50  0000 L CNN
F 1 "DNP" H 865 4955 50  0000 L CNN
F 2 "1N4007" H 750 5000 50  0001 C CNN
F 3 "~" H 750 5000 50  0001 C CNN
	1    750  5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  5150 1000 5150
Connection ~ 750  5150
$Comp
L Device:CP1 C?
U 1 1 6144FA32
P 1750 5000
F 0 "C?" H 1865 5046 50  0000 L CNN
F 1 "560uf" H 1865 4955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 1750 5000 50  0001 C CNN
F 3 "~" H 1750 5000 50  0001 C CNN
	1    1750 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6144FA3C
P 1500 5000
F 0 "C?" H 1615 5046 50  0000 L CNN
F 1 "DNP" H 1615 4955 50  0000 L CNN
F 2 "1N4007" H 1500 5000 50  0001 C CNN
F 3 "~" H 1500 5000 50  0001 C CNN
	1    1500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5150 1750 5150
Connection ~ 1500 5150
Wire Wire Line
	3150 4850 2900 4850
Connection ~ 750  4850
Wire Wire Line
	750  4850 650  4850
Connection ~ 1000 4850
Wire Wire Line
	1000 4850 750  4850
Connection ~ 1500 4850
Wire Wire Line
	1500 4850 1000 4850
Connection ~ 1750 4850
Wire Wire Line
	1750 4850 1500 4850
Connection ~ 2150 4850
Wire Wire Line
	2150 4850 1750 4850
Connection ~ 2400 4850
Wire Wire Line
	2400 4850 2150 4850
Connection ~ 2900 4850
Wire Wire Line
	2900 4850 2400 4850
Connection ~ 1000 5150
Wire Wire Line
	1000 5150 1500 5150
Connection ~ 1750 5150
Wire Wire Line
	1750 5150 2150 5150
Connection ~ 2400 5150
Wire Wire Line
	2400 5150 2900 5150
$Comp
L power:VCC #PWR?
U 1 1 618336EF
P 650 4650
F 0 "#PWR?" H 650 4500 50  0001 C CNN
F 1 "VCC" H 665 4823 50  0000 C CNN
F 2 "" H 650 4650 50  0001 C CNN
F 3 "" H 650 4650 50  0001 C CNN
	1    650  4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  4650 650  4850
$Comp
L Device:R_Small_US R?
U 1 1 61A673DA
P 3500 2150
F 0 "R?" H 3568 2196 50  0000 L CNN
F 1 "1K" H 3568 2105 50  0000 L CNN
F 2 "" H 3500 2150 50  0001 C CNN
F 3 "~" H 3500 2150 50  0001 C CNN
	1    3500 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A673E4
P 5000 1450
F 0 "R?" H 5068 1496 50  0000 L CNN
F 1 "4.7K" H 5068 1405 50  0000 L CNN
F 2 "" H 5000 1450 50  0001 C CNN
F 3 "~" H 5000 1450 50  0001 C CNN
	1    5000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1550 5000 1750
$Comp
L Device:R_Small_US R?
U 1 1 61A673F9
P 3400 2250
F 0 "R?" H 3468 2296 50  0000 L CNN
F 1 "1K" H 3468 2205 50  0000 L CNN
F 2 "" H 3400 2250 50  0001 C CNN
F 3 "~" H 3400 2250 50  0001 C CNN
	1    3400 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A67403
P 5100 2950
F 0 "R?" H 5168 2996 50  0000 L CNN
F 1 "10K" H 5168 2905 50  0000 L CNN
F 2 "" H 5100 2950 50  0001 C CNN
F 3 "~" H 5100 2950 50  0001 C CNN
	1    5100 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A6740D
P 5000 3050
F 0 "R?" H 5068 3096 50  0000 L CNN
F 1 "15K" H 5068 3005 50  0000 L CNN
F 2 "" H 5000 3050 50  0001 C CNN
F 3 "~" H 5000 3050 50  0001 C CNN
	1    5000 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 61A67417
P 5200 3100
F 0 "C?" H 5315 3146 50  0000 L CNN
F 1 "33nf" H 5315 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5200 3100 50  0001 C CNN
F 3 "~" H 5200 3100 50  0001 C CNN
	1    5200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3250 5200 3300
Wire Wire Line
	5000 3150 5000 3300
Wire Wire Line
	5000 3300 5200 3300
$Comp
L Device:R_Small_US R?
U 1 1 61A67424
P 1200 1900
F 0 "R?" H 1268 1946 50  0000 L CNN
F 1 "1K" H 1268 1855 50  0000 L CNN
F 2 "" H 1200 1900 50  0001 C CNN
F 3 "~" H 1200 1900 50  0001 C CNN
	1    1200 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A6742E
P 1200 2100
F 0 "R?" H 1268 2146 50  0000 L CNN
F 1 "1K" H 1268 2055 50  0000 L CNN
F 2 "" H 1200 2100 50  0001 C CNN
F 3 "~" H 1200 2100 50  0001 C CNN
	1    1200 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A67438
P 2700 1400
F 0 "R?" H 2768 1446 50  0000 L CNN
F 1 "4.7K" H 2768 1355 50  0000 L CNN
F 2 "" H 2700 1400 50  0001 C CNN
F 3 "~" H 2700 1400 50  0001 C CNN
	1    2700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1500 2700 1700
$Comp
L Device:R_Small_US R?
U 1 1 61A6744D
P 1100 2200
F 0 "R?" H 1168 2246 50  0000 L CNN
F 1 "1K" H 1168 2155 50  0000 L CNN
F 2 "" H 1100 2200 50  0001 C CNN
F 3 "~" H 1100 2200 50  0001 C CNN
	1    1100 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A67457
P 2800 2900
F 0 "R?" H 2868 2946 50  0000 L CNN
F 1 "10K" H 2868 2855 50  0000 L CNN
F 2 "" H 2800 2900 50  0001 C CNN
F 3 "~" H 2800 2900 50  0001 C CNN
	1    2800 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A67461
P 2700 3000
F 0 "R?" H 2768 3046 50  0000 L CNN
F 1 "15K" H 2768 2955 50  0000 L CNN
F 2 "" H 2700 3000 50  0001 C CNN
F 3 "~" H 2700 3000 50  0001 C CNN
	1    2700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3100 2700 3200
$Comp
L power:GND #PWR?
U 1 1 61A67497
P 5200 3450
F 0 "#PWR?" H 5200 3200 50  0001 C CNN
F 1 "GND" H 5205 3277 50  0000 C CNN
F 2 "" H 5200 3450 50  0001 C CNN
F 3 "" H 5200 3450 50  0001 C CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A674C8
P 3400 2350
F 0 "#PWR?" H 3400 2100 50  0001 C CNN
F 1 "GND" H 3405 2177 50  0000 C CNN
F 2 "" H 3400 2350 50  0001 C CNN
F 3 "" H 3400 2350 50  0001 C CNN
	1    3400 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A674DC
P 1100 2300
F 0 "#PWR?" H 1100 2050 50  0001 C CNN
F 1 "GND" H 1105 2127 50  0000 C CNN
F 2 "" H 1100 2300 50  0001 C CNN
F 3 "" H 1100 2300 50  0001 C CNN
	1    1100 2300
	1    0    0    -1  
$EndComp
Text GLabel 2700 2200 2    50   Input ~ 0
OUT1_A
Text GLabel 2700 2400 2    50   Input ~ 0
OUT1_B
Text GLabel 1000 2100 0    50   Input ~ 0
PWM1
Text GLabel 3300 2150 0    50   Input ~ 0
PWM2
Text GLabel 950  1700 0    50   Input ~ 0
INA1
Text GLabel 950  1900 0    50   Input ~ 0
INB1
$Comp
L Device:R_Small_US R?
U 1 1 61A674EE
P 1200 1700
F 0 "R?" H 1268 1746 50  0000 L CNN
F 1 "1K" H 1268 1655 50  0000 L CNN
F 2 "" H 1200 1700 50  0001 C CNN
F 3 "~" H 1200 1700 50  0001 C CNN
	1    1200 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61A674F8
P 3500 1950
F 0 "R?" H 3568 1996 50  0000 L CNN
F 1 "1K" H 3568 1905 50  0000 L CNN
F 2 "" H 3500 1950 50  0001 C CNN
F 3 "~" H 3500 1950 50  0001 C CNN
	1    3500 1950
	0    -1   -1   0   
$EndComp
Text GLabel 3250 1750 0    50   Input ~ 0
INA2
Text GLabel 3250 1950 0    50   Input ~ 0
INB2
Wire Wire Line
	3250 1950 3400 1950
$Comp
L Device:R_Small_US R?
U 1 1 61A67505
P 3500 1750
F 0 "R?" H 3568 1796 50  0000 L CNN
F 1 "1K" H 3568 1705 50  0000 L CNN
F 2 "" H 3500 1750 50  0001 C CNN
F 3 "~" H 3500 1750 50  0001 C CNN
	1    3500 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 1750 3400 1750
Connection ~ 1900 3400
Wire Wire Line
	1100 2100 1000 2100
Connection ~ 1100 2100
Wire Wire Line
	3300 2150 3400 2150
Connection ~ 3400 2150
Wire Wire Line
	5200 3300 5200 3450
Connection ~ 5200 3300
Wire Wire Line
	1900 3400 2100 3400
Text GLabel 5000 2250 2    50   Input ~ 0
OUT2_A
Text GLabel 5000 2450 2    50   Input ~ 0
OUT2_B
$Comp
L power:VCC #PWR?
U 1 1 61A67537
P 2000 1000
F 0 "#PWR?" H 2000 850 50  0001 C CNN
F 1 "VCC" H 2015 1173 50  0000 C CNN
F 2 "" H 2000 1000 50  0001 C CNN
F 3 "" H 2000 1000 50  0001 C CNN
	1    2000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1900 1100 1900
Wire Wire Line
	950  1700 1100 1700
$Comp
L power:VCC #PWR?
U 1 1 61A674D2
P 3350 3300
F 0 "#PWR?" H 3350 3150 50  0001 C CNN
F 1 "VCC" H 3365 3473 50  0000 C CNN
F 2 "" H 3350 3300 50  0001 C CNN
F 3 "" H 3350 3300 50  0001 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A67443
P 2700 3250
F 0 "#PWR?" H 2700 3000 50  0001 C CNN
F 1 "GND" H 2705 3077 50  0000 C CNN
F 2 "" H 2700 3250 50  0001 C CNN
F 3 "" H 2700 3250 50  0001 C CNN
	1    2700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3100 2900 3200
Connection ~ 2900 3200
$Comp
L Device:CP1 C?
U 1 1 61A6746B
P 2900 3050
F 0 "C?" H 3015 3096 50  0000 L CNN
F 1 "33nf" H 3015 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2900 3050 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620E58FE
P 1800 3950
F 0 "#PWR?" H 1800 3700 50  0001 C CNN
F 1 "GND" H 1805 3777 50  0000 C CNN
F 2 "" H 1800 3950 50  0001 C CNN
F 3 "" H 1800 3950 50  0001 C CNN
	1    1800 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 620E5908
P 3350 3550
F 0 "R?" H 3418 3596 50  0000 L CNN
F 1 "100k" H 3418 3505 50  0000 L CNN
F 2 "" H 3350 3550 50  0001 C CNN
F 3 "~" H 3350 3550 50  0001 C CNN
	1    3350 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 620E5912
P 3050 3750
F 0 "D?" V 3096 3670 50  0000 R CNN
F 1 "BZT52" V 3005 3670 50  0000 R CNN
F 2 "" H 3050 3750 50  0001 C CNN
F 3 "~" H 3050 3750 50  0001 C CNN
	1    3050 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3550 1900 3550
Connection ~ 1900 3550
Wire Wire Line
	1800 3950 1800 4000
Wire Wire Line
	1900 3400 1900 3550
Wire Wire Line
	4200 3550 4200 3450
Wire Wire Line
	1900 3550 3050 3550
Wire Wire Line
	3050 3600 3050 3550
Connection ~ 3050 3550
Wire Wire Line
	3050 3550 4200 3550
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 620E5925
P 4300 3750
F 0 "Q?" H 4504 3796 50  0000 L CNN
F 1 "FDD8580" H 4504 3705 50  0000 L CNN
F 2 "Inductor_SMD:L_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 4500 3675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 4300 3750 50  0001 L CNN
	1    4300 3750
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 620E592F
P 4300 3750
F 0 "Q?" H 4504 3796 50  0000 L CNN
F 1 "FDD8580" H 4504 3705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:PQFN_8x8" H 4500 3675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 4300 3750 50  0001 L CNN
	1    4300 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620E5939
P 4200 3950
F 0 "#PWR?" H 4200 3700 50  0001 C CNN
F 1 "GND" H 4205 3777 50  0000 C CNN
F 2 "" H 4200 3950 50  0001 C CNN
F 3 "" H 4200 3950 50  0001 C CNN
	1    4200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3950 4200 4000
Connection ~ 4200 3950
Wire Wire Line
	4500 3750 4500 3900
Wire Wire Line
	4500 3900 3350 3900
Connection ~ 4500 3750
Wire Wire Line
	2100 3900 2100 3750
Connection ~ 3050 3900
Wire Wire Line
	3050 3900 2100 3900
Wire Wire Line
	3350 3650 3350 3900
Connection ~ 3350 3900
Wire Wire Line
	3350 3900 3050 3900
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 620E594E
P 1900 3750
F 0 "Q?" H 2104 3796 50  0000 L CNN
F 1 "FDD8580" H 2104 3705 50  0000 L CNN
F 2 "Inductor_SMD:L_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 2100 3675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 1900 3750 50  0001 L CNN
	1    1900 3750
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:FDMT800150DC Q?
U 1 1 620E5958
P 1900 3750
F 0 "Q?" H 2104 3796 50  0000 L CNN
F 1 "FDD8580" H 2104 3705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:PQFN_8x8" H 2100 3675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDMT800150DC-D.pdf" V 1900 3750 50  0001 L CNN
	1    1900 3750
	-1   0    0    1   
$EndComp
Connection ~ 1800 3550
Connection ~ 1800 3950
Connection ~ 2100 3750
Connection ~ 4200 3550
Wire Wire Line
	2900 3200 2700 3200
Connection ~ 2700 3200
Wire Wire Line
	2700 3200 2700 3250
Text GLabel 2450 7050 2    50   Input ~ 0
BOOT-0
$Comp
L Device:R_US R?
U 1 1 622B653C
P 1650 7200
F 0 "R?" V 1445 7200 50  0000 C CNN
F 1 "10K" V 1536 7200 50  0000 C CNN
F 2 "" V 1690 7190 50  0001 C CNN
F 3 "~" H 1650 7200 50  0001 C CNN
	1    1650 7200
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6231CD63
P 1650 7350
F 0 "#PWR?" H 1650 7200 50  0001 C CNN
F 1 "+3.3V" H 1665 7523 50  0000 C CNN
F 2 "" H 1650 7350 50  0001 C CNN
F 3 "" H 1650 7350 50  0001 C CNN
	1    1650 7350
	-1   0    0    1   
$EndComp
Connection ~ 1650 7050
Wire Wire Line
	1650 7050 1450 7050
Wire Wire Line
	2450 7050 1750 7050
Connection ~ 1750 7050
Wire Wire Line
	4400 3450 4200 3450
$Comp
L power:+5V #PWR?
U 1 1 6259B576
P 5000 1250
F 0 "#PWR?" H 5000 1100 50  0001 C CNN
F 1 "+5V" H 5015 1423 50  0000 C CNN
F 2 "" H 5000 1250 50  0001 C CNN
F 3 "" H 5000 1250 50  0001 C CNN
	1    5000 1250
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:VNH2SP30 U?
U 1 1 6262342E
P 4300 2350
F 0 "U?" H 4300 3631 50  0000 C CNN
F 1 "VNH2SP30" H 4300 3540 50  0000 C CNN
F 2 "Package_SO:ST_MultiPowerSO-30" H 4300 3275 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group2/66/b8/f5/2c/9a/66/41/c7/CD00043711/files/CD00043711.pdf/jcr:content/translations/en.CD00043711.pdf" H 3800 3350 50  0001 C CNN
	1    4300 2350
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:VNH2SP30 U?
U 1 1 6269EABF
P 2000 2300
F 0 "U?" H 2000 3581 50  0000 C CNN
F 1 "VNH2SP30" H 2000 3490 50  0000 C CNN
F 2 "Package_SO:ST_MultiPowerSO-30" H 2000 3225 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group2/66/b8/f5/2c/9a/66/41/c7/CD00043711/files/CD00043711.pdf/jcr:content/translations/en.CD00043711.pdf" H 1500 3300 50  0001 C CNN
	1    2000 2300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 626BE93F
P 4300 1050
F 0 "#PWR?" H 4300 900 50  0001 C CNN
F 1 "VCC" H 4315 1223 50  0000 C CNN
F 2 "" H 4300 1050 50  0001 C CNN
F 3 "" H 4300 1050 50  0001 C CNN
	1    4300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1250 4300 1050
Wire Wire Line
	2000 1000 2000 1200
Connection ~ 2000 1200
Wire Wire Line
	2000 1200 2000 1300
Wire Wire Line
	5000 1250 5000 1350
$Comp
L power:+5V #PWR?
U 1 1 6277676E
P 2700 1200
F 0 "#PWR?" H 2700 1050 50  0001 C CNN
F 1 "+5V" H 2715 1373 50  0000 C CNN
F 2 "" H 2700 1200 50  0001 C CNN
F 3 "" H 2700 1200 50  0001 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1200 2700 1300
Wire Wire Line
	3350 3300 3350 3450
$Comp
L power:VCC #PWR?
U 1 1 62962B04
P 6600 750
F 0 "#PWR?" H 6600 600 50  0001 C CNN
F 1 "VCC" H 6615 923 50  0000 C CNN
F 2 "" H 6600 750 50  0001 C CNN
F 3 "" H 6600 750 50  0001 C CNN
	1    6600 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 750  6600 950 
$Comp
L power:+5V #PWR?
U 1 1 6299D776
P 8200 700
F 0 "#PWR?" H 8200 550 50  0001 C CNN
F 1 "+5V" H 8215 873 50  0000 C CNN
F 2 "" H 8200 700 50  0001 C CNN
F 3 "" H 8200 700 50  0001 C CNN
	1    8200 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 750  8200 700 
Connection ~ 8200 750 
$Comp
L power:+5V #PWR?
U 1 1 5FA14090
P 6500 1850
F 0 "#PWR?" H 6500 1700 50  0001 C CNN
F 1 "+5V" H 6515 2023 50  0000 C CNN
F 2 "" H 6500 1850 50  0001 C CNN
F 3 "" H 6500 1850 50  0001 C CNN
	1    6500 1850
	1    0    0    -1  
$EndComp
Connection ~ 6500 1850
Wire Wire Line
	6500 1850 6500 2150
Connection ~ 8200 1500
Wire Wire Line
	8200 1500 8200 1400
Text GLabel 7550 4000 2    50   Input ~ 0
TX
Wire Wire Line
	7550 4000 7450 4000
Wire Wire Line
	7450 3900 7450 4000
Connection ~ 7450 4000
Wire Wire Line
	7450 4000 7300 4000
$Comp
L power:GND #PWR?
U 1 1 5FBD7D9B
P 750 5400
F 0 "#PWR?" H 750 5150 50  0001 C CNN
F 1 "GND" H 755 5227 50  0000 C CNN
F 2 "" H 750 5400 50  0001 C CNN
F 3 "" H 750 5400 50  0001 C CNN
	1    750  5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  5150 750  5400
Connection ~ 6700 3750
Connection ~ 2700 1500
Connection ~ 2700 2900
Connection ~ 4200 3450
Connection ~ 5000 1550
Connection ~ 5000 2950
Wire Wire Line
	1900 3200 1900 3400
Wire Wire Line
	1900 3150 1900 3400
Wire Wire Line
	7850 1400 8200 1400
Wire Wire Line
	7250 1400 7850 1400
Wire Wire Line
	9850 1300 9850 1600
Wire Wire Line
	9850 1250 9850 1300
Wire Wire Line
	9200 1000 9550 1000
Wire Wire Line
	9200 1000 9050 1000
Text GLabel 10750 1000 2    50   Input ~ 0
3.3V
Wire Wire Line
	10750 1000 10500 1000
Wire Wire Line
	9050 700  9050 1000
Connection ~ 9200 1000
Connection ~ 10500 1000
Wire Wire Line
	10500 750  10500 1000
$Comp
L power:+3.3V #PWR0124
U 1 1 5FA8E309
P 10500 750
F 0 "#PWR0124" H 10500 600 50  0001 C CNN
F 1 "+3.3V" H 10515 923 50  0000 C CNN
F 2 "" H 10500 750 50  0001 C CNN
F 3 "" H 10500 750 50  0001 C CNN
	1    10500 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1300 10500 1300
Connection ~ 9850 1300
Wire Wire Line
	9200 1300 9850 1300
$Comp
L Device:CP C10
U 1 1 5F98BB64
P 9200 1150
F 0 "C10" H 9318 1196 50  0000 L CNN
F 1 "22uf" H 9318 1105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 9238 1000 50  0001 C CNN
F 3 "~" H 9200 1150 50  0001 C CNN
	1    9200 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C11
U 1 1 5F97C900
P 10500 1150
F 0 "C11" H 10618 1196 50  0000 L CNN
F 1 "22uf" H 10618 1105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 10538 1000 50  0001 C CNN
F 3 "~" H 10500 1150 50  0001 C CNN
	1    10500 1150
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U8
U 1 1 5F96D0F2
P 9850 1000
F 0 "U8" H 9850 1242 50  0000 C CNN
F 1 "AMS1117-3.3" H 9850 1151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9850 1200 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 9950 750 50  0001 C CNN
	1    9850 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FA1A813
P 9050 700
F 0 "#PWR?" H 9050 550 50  0001 C CNN
F 1 "+5V" H 9065 873 50  0000 C CNN
F 2 "" H 9050 700 50  0001 C CNN
F 3 "" H 9050 700 50  0001 C CNN
	1    9050 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FA15A5A
P 9300 4550
F 0 "#PWR?" H 9300 4400 50  0001 C CNN
F 1 "+3.3V" H 9315 4723 50  0000 C CNN
F 2 "" H 9300 4550 50  0001 C CNN
F 3 "" H 9300 4550 50  0001 C CNN
	1    9300 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FA38394
P 9900 2550
F 0 "#PWR?" H 9900 2400 50  0001 C CNN
F 1 "+3.3V" H 9915 2723 50  0000 C CNN
F 2 "" H 9900 2550 50  0001 C CNN
F 3 "" H 9900 2550 50  0001 C CNN
	1    9900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2700 9900 2600
$Comp
L Device:R_Small_US R?
U 1 1 5FA6CCBE
P 8950 2900
F 0 "R?" H 9018 2946 50  0000 L CNN
F 1 "4.7K" H 9018 2855 50  0000 L CNN
F 2 "" H 8950 2900 50  0001 C CNN
F 3 "~" H 8950 2900 50  0001 C CNN
	1    8950 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5FA80337
P 8800 2900
F 0 "R?" H 8868 2946 50  0000 L CNN
F 1 "4.7K" H 8868 2855 50  0000 L CNN
F 2 "" H 8800 2900 50  0001 C CNN
F 3 "~" H 8800 2900 50  0001 C CNN
	1    8800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2800 8850 2800
Wire Wire Line
	9150 3100 9100 3100
Wire Wire Line
	9150 3200 9100 3200
Wire Wire Line
	8950 3000 8950 3200
Connection ~ 8950 3200
Wire Wire Line
	8950 3200 8550 3200
Wire Wire Line
	8800 3000 8800 3100
Wire Wire Line
	8850 2800 8850 2600
Wire Wire Line
	8850 2600 9700 2600
Connection ~ 8850 2800
Wire Wire Line
	8850 2800 8950 2800
Connection ~ 9900 2600
Wire Wire Line
	9900 2600 9900 2550
Text GLabel 8550 3200 0    50   Input ~ 0
SCL
Text GLabel 8550 3100 0    50   Input ~ 0
SDA
Wire Wire Line
	8550 3100 8800 3100
Connection ~ 8800 3100
$Comp
L Device:C C?
U 1 1 5FB6743E
P 10500 3850
F 0 "C?" H 10615 3896 50  0000 L CNN
F 1 "0.1uf" H 10615 3805 50  0000 L CNN
F 2 "" H 10538 3700 50  0001 C CNN
F 3 "~" H 10500 3850 50  0001 C CNN
	1    10500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3700 10500 3700
Wire Wire Line
	8950 3600 8950 3700
Wire Wire Line
	8950 3600 9100 3600
$Comp
L power:GND #PWR?
U 1 1 5FB8F17A
P 9800 4100
F 0 "#PWR?" H 9800 3850 50  0001 C CNN
F 1 "GND" H 9805 3927 50  0000 C CNN
F 2 "" H 9800 4100 50  0001 C CNN
F 3 "" H 9800 4100 50  0001 C CNN
	1    9800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4100 9800 4150
$Comp
L Device:C C?
U 1 1 5FBCAD77
P 8800 3700
F 0 "C?" V 9052 3700 50  0000 C CNN
F 1 "0.01uf" V 8961 3700 50  0000 C CNN
F 2 "" H 8838 3550 50  0001 C CNN
F 3 "~" H 8800 3700 50  0001 C CNN
	1    8800 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12650 6550 12650 6950
$Comp
L Sensor_Motion:MPU-6050 U?
U 1 1 5FC558A5
P 9800 3400
F 0 "U?" H 9800 2611 50  0000 C CNN
F 1 "MPU-6050" H 9800 2520 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_4x4mm_P0.5mm" H 9800 2600 50  0001 C CNN
F 3 "https://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf" H 9800 3250 50  0001 C CNN
	1    9800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3700 8950 3700
Connection ~ 8950 3700
Wire Wire Line
	8650 2600 8650 3700
Connection ~ 8850 2600
$Comp
L Device:C C?
U 1 1 5FD141A2
P 10700 3800
F 0 "C?" H 10815 3846 50  0000 L CNN
F 1 "2.2uf" H 10815 3755 50  0000 L CNN
F 2 "" H 10738 3650 50  0001 C CNN
F 3 "~" H 10700 3800 50  0001 C CNN
	1    10700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 3600 10700 3650
Connection ~ 9800 4100
Wire Wire Line
	10500 4000 10500 4100
Connection ~ 10500 4100
Wire Wire Line
	8950 3700 8950 4100
Wire Wire Line
	10700 3950 10700 4100
Wire Wire Line
	9700 2600 9700 2700
Connection ~ 9700 2600
$Comp
L Device:C C?
U 1 1 5FE2CB6E
P 8650 3900
F 0 "C?" H 8765 3946 50  0000 L CNN
F 1 "0.1uf" H 8765 3855 50  0000 L CNN
F 2 "" H 8688 3750 50  0001 C CNN
F 3 "~" H 8650 3900 50  0001 C CNN
	1    8650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3700 8650 3750
Connection ~ 8650 3700
Wire Wire Line
	8950 4100 8650 4100
Wire Wire Line
	8650 4100 8650 4050
Connection ~ 8950 4100
Connection ~ 8650 4050
Wire Wire Line
	8650 4050 8650 4000
Connection ~ 10500 3600
Connection ~ 10500 3700
Wire Wire Line
	8950 4100 9800 4100
Connection ~ 9100 3100
Wire Wire Line
	9100 3100 8800 3100
Connection ~ 9100 3200
Wire Wire Line
	9100 3200 8950 3200
Wire Wire Line
	8650 2600 8850 2600
Wire Wire Line
	9700 2600 9900 2600
Text GLabel 10500 3100 2    50   Input Italic 0
INT
Wire Wire Line
	10500 4100 10700 4100
Wire Wire Line
	10500 3600 10700 3600
Wire Wire Line
	10200 1000 10500 1000
Wire Wire Line
	10150 1000 10500 1000
Wire Wire Line
	10350 3600 10500 3600
Wire Wire Line
	10350 4100 10500 4100
Wire Wire Line
	10300 3600 10500 3600
Wire Wire Line
	9800 4100 10500 4100
Connection ~ 6700 3650
Wire Wire Line
	6700 3650 6700 3750
$Comp
L Device:R_Small_US R?
U 1 1 600A2E78
P 8950 3400
F 0 "R?" H 9018 3446 50  0000 L CNN
F 1 "4.7K" H 9018 3355 50  0000 L CNN
F 2 "" H 8950 3400 50  0001 C CNN
F 3 "~" H 8950 3400 50  0001 C CNN
	1    8950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3300 9100 3300
Wire Wire Line
	8950 3500 8950 3600
Connection ~ 8950 3600
Text GLabel 8550 3300 0    50   Input ~ 0
AD0
Wire Wire Line
	8550 3300 8750 3300
Connection ~ 8950 3300
Wire Wire Line
	8750 3300 8950 3300
Connection ~ 8750 3300
Wire Wire Line
	8750 3300 8950 3300
$EndSCHEMATC
