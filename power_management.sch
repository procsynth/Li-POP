EESchema Schematic File Version 4
LIBS:SINE_STIMULUS_charger-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2550 3000 0    50   Input ~ 0
LIPO_IN
Text HLabel 2550 3200 0    50   Input ~ 0
VIN
Text HLabel 9500 3700 2    50   Output ~ 0
VOUT
$Comp
L Battery_Management:MCP73831-2-OT U1
U 1 1 5C77D065
P 5550 4550
F 0 "U1" H 5850 4850 50  0000 C CNN
F 1 "MCP73831-2-OT" H 5150 4850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5600 4300 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 5400 4500 50  0001 C CNN
	1    5550 4550
	1    0    0    -1  
$EndComp
Text HLabel 9500 4650 2    50   Output ~ 0
STAT
$Comp
L power:GND #PWR0102
U 1 1 5C77D15D
P 5550 5250
F 0 "#PWR0102" H 5550 5000 50  0001 C CNN
F 1 "GND" H 5555 5077 50  0000 C CNN
F 2 "" H 5550 5250 50  0001 C CNN
F 3 "" H 5550 5250 50  0001 C CNN
	1    5550 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C77D1AC
P 5050 4900
F 0 "R1" H 5120 4946 50  0000 L CNN
F 1 "10K" H 5120 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4980 4900 50  0001 C CNN
F 3 "~" H 5050 4900 50  0001 C CNN
	1    5050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5050 5550 5050
Wire Wire Line
	5550 5050 5550 5250
Wire Wire Line
	5550 4850 5550 5050
Connection ~ 5550 5050
Wire Wire Line
	5050 4750 5050 4650
Wire Wire Line
	5050 4650 5150 4650
$Comp
L Device:R R3
U 1 1 5C77D492
P 8650 4250
F 0 "R3" H 8720 4296 50  0000 L CNN
F 1 "47K" H 8720 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8580 4250 50  0001 C CNN
F 3 "~" H 8650 4250 50  0001 C CNN
	1    8650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4450 6150 4450
Text Notes 4950 5000 2    50   ~ 0
iReg = 1000 V / rProg\nrProg = 1000 V / iReg\niReg is 100 mA for a 120 mAh\nso rProg is 10 kOhm
$Comp
L Regulator_Linear:MCP1700-3002E_SOT23 U2
U 1 1 5C77D947
P 8300 3700
F 0 "U2" H 8300 3942 50  0000 C CNN
F 1 "MCP1700-3002E_SOT23" H 8600 3850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8300 3925 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826C.pdf" H 8300 3700 50  0001 C CNN
	1    8300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4000 8300 5050
$Comp
L Device:Q_PMOS_DGS Q1
U 1 1 5C780E43
P 6450 3600
F 0 "Q1" V 6700 3600 50  0000 C CNN
F 1 "DMP1045U" V 6791 3600 50  0000 C CNN
F 2 "procsynth:SOT23_FET" H 6650 3700 50  0001 C CNN
F 3 "~" H 6450 3600 50  0001 C CNN
	1    6450 3600
	0    -1   1    0   
$EndComp
Wire Wire Line
	6150 3000 6150 3700
Wire Wire Line
	5550 3200 6450 3200
Wire Wire Line
	6450 3200 6450 3400
Connection ~ 5550 3200
Wire Wire Line
	5550 3200 5550 4250
Wire Wire Line
	6150 3700 6250 3700
Connection ~ 6150 3700
Wire Wire Line
	6150 3700 6150 4450
$Comp
L Device:D_Schottky D1
U 1 1 5C782AEF
P 7050 3400
F 0 "D1" V 7096 3321 50  0000 R CNN
F 1 "BAT60JFILM" H 7200 3500 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 7050 3400 50  0001 C CNN
F 3 "~" H 7050 3400 50  0001 C CNN
	1    7050 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 3200 7050 3250
Wire Wire Line
	7050 3550 7050 3700
Connection ~ 7050 3700
$Comp
L Device:C C3
U 1 1 5C783122
P 7050 4250
F 0 "C3" H 7165 4296 50  0000 L CNN
F 1 "4.7µF" H 7165 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7088 4100 50  0001 C CNN
F 3 "~" H 7050 4250 50  0001 C CNN
	1    7050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3700 7050 4100
Wire Wire Line
	7050 4400 7050 5050
Connection ~ 8650 4650
Wire Wire Line
	6450 3200 7050 3200
Connection ~ 6450 3200
Wire Wire Line
	6650 3700 7050 3700
Wire Wire Line
	5550 5050 7050 5050
Connection ~ 7050 5050
$Comp
L Device:Jumper JP1
U 1 1 5C7863F7
P 3150 3000
F 0 "JP1" H 3150 3264 50  0000 C CNN
F 1 "Current test point" H 3150 3173 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 3150 3000 50  0001 C CNN
F 3 "~" H 3150 3000 50  0001 C CNN
	1    3150 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C78652D
P 3650 4250
F 0 "C2" H 3765 4296 50  0000 L CNN
F 1 "4.7µF" H 3765 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3688 4100 50  0001 C CNN
F 3 "~" H 3650 4250 50  0001 C CNN
	1    3650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4400 3650 5050
Wire Wire Line
	3650 5050 5050 5050
Connection ~ 5050 5050
Wire Wire Line
	2550 3000 2850 3000
Wire Wire Line
	2550 3200 3150 3200
Wire Wire Line
	3450 3000 3650 3000
Wire Wire Line
	3650 3000 3650 4100
Connection ~ 3650 3000
Wire Wire Line
	3650 3000 6150 3000
$Comp
L Device:C C1
U 1 1 5C789464
P 3150 4250
F 0 "C1" H 3265 4296 50  0000 L CNN
F 1 "4.7µF" H 3265 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3188 4100 50  0001 C CNN
F 3 "~" H 3150 4250 50  0001 C CNN
	1    3150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4100 3150 3200
Connection ~ 3150 3200
Wire Wire Line
	3150 3200 5550 3200
Wire Wire Line
	3150 4400 3150 5050
Wire Wire Line
	3150 5050 3650 5050
Connection ~ 3650 5050
Wire Wire Line
	5950 4650 8650 4650
Wire Wire Line
	7050 5050 7550 5050
Wire Wire Line
	7050 3700 8000 3700
$Comp
L Device:R R2
U 1 1 5C78C19A
P 7550 4250
F 0 "R2" H 7620 4296 50  0000 L CNN
F 1 "100K" H 7620 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7480 4250 50  0001 C CNN
F 3 "~" H 7550 4250 50  0001 C CNN
	1    7550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4100 7550 3200
Wire Wire Line
	7550 3200 7050 3200
Connection ~ 7050 3200
Wire Wire Line
	7550 4400 7550 5050
Connection ~ 7550 5050
Wire Wire Line
	7550 5050 8300 5050
$Comp
L Device:C C4
U 1 1 5C78D291
P 9050 4250
F 0 "C4" H 9165 4296 50  0000 L CNN
F 1 "1µF" H 9165 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9088 4100 50  0001 C CNN
F 3 "~" H 9050 4250 50  0001 C CNN
	1    9050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4650 9500 4650
Wire Wire Line
	8600 3700 8650 3700
Wire Wire Line
	8300 5050 9050 5050
Wire Wire Line
	9050 5050 9050 4400
Connection ~ 8300 5050
Wire Wire Line
	8650 4400 8650 4650
Wire Wire Line
	8650 4100 8650 3700
Connection ~ 8650 3700
Wire Wire Line
	8650 3700 9050 3700
Wire Wire Line
	9050 4100 9050 3700
Connection ~ 9050 3700
Wire Wire Line
	9050 3700 9500 3700
Text Notes 9450 2750 2    50   ~ 0
based on the charger described by Zak Kemble at http://blog.zakkemble.net/a-lithium-battery-charger-with-load-sharing/
Wire Notes Line
	2550 2650 9500 2650
Wire Notes Line
	9500 2650 9500 5250
Wire Notes Line
	9500 5250 2550 5250
Wire Notes Line
	2550 5250 2550 2650
Text Notes 2550 2600 0    50   ~ 0
3.75V - 6V in, min 100mAh 3.7V LiPo, 3V max 250mA out
Text Label 7150 3700 0    50   ~ 0
V_UNREG
$EndSCHEMATC
