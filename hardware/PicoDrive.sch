EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L Connector_Generic:Conn_01x03 J1
U 1 1 61788413
P 12300 4050
F 0 "J1" H 12250 4250 50  0000 L CNN
F 1 "Conn_01x03" H 12250 3850 50  0000 L CNN
F 2 "" H 12300 4050 50  0001 C CNN
F 3 "~" H 12300 4050 50  0001 C CNN
	1    12300 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 6179D439
P 12200 3450
F 0 "#PWR0101" H 12200 3300 50  0001 C CNN
F 1 "+BATT" H 12215 3623 50  0000 C CNN
F 2 "" H 12200 3450 50  0001 C CNN
F 3 "" H 12200 3450 50  0001 C CNN
	1    12200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 3550 11700 3550
Wire Wire Line
	11700 3650 11800 3650
Wire Wire Line
	11800 3650 11800 3550
$Comp
L Device:C C16
U 1 1 6179E3EA
P 11950 3800
F 0 "C16" H 12065 3846 50  0000 L CNN
F 1 "0.1u" H 12065 3755 50  0000 L CNN
F 2 "" H 11988 3650 50  0001 C CNN
F 3 "~" H 11950 3800 50  0001 C CNN
	1    11950 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C17
U 1 1 617A3D2E
P 11950 4300
F 0 "C17" H 12065 4346 50  0000 L CNN
F 1 "0.01u" H 12065 4255 50  0000 L CNN
F 2 "" H 11988 4150 50  0001 C CNN
F 3 "~" H 11950 4300 50  0001 C CNN
	1    11950 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	11700 4300 11800 4300
Wire Wire Line
	12100 4300 12200 4300
Wire Wire Line
	12200 4300 12200 4400
Wire Wire Line
	12200 4400 11700 4400
Wire Wire Line
	12200 3450 12200 3550
Wire Wire Line
	12200 3800 12100 3800
Wire Wire Line
	11800 3800 11700 3800
Wire Wire Line
	11800 3550 12200 3550
Connection ~ 11800 3550
Connection ~ 12200 3550
Wire Wire Line
	12200 3550 12200 3800
Wire Wire Line
	10600 4800 10600 4950
Connection ~ 10600 5050
Wire Wire Line
	10600 5050 10600 5150
Connection ~ 10600 4950
Wire Wire Line
	10600 4950 10600 5050
Wire Wire Line
	11700 4550 11800 4550
Wire Wire Line
	11800 5000 11700 5000
Wire Wire Line
	11700 4900 11800 4900
Connection ~ 11800 4900
Wire Wire Line
	11800 4900 11800 5000
Wire Wire Line
	11800 4800 11700 4800
Connection ~ 11800 4800
Wire Wire Line
	11800 4800 11800 4900
$Comp
L Device:R R9
U 1 1 617AEDEE
P 12850 4900
F 0 "R9" H 12920 4946 50  0000 L CNN
F 1 "5K" H 12920 4855 50  0000 L CNN
F 2 "" V 12780 4900 50  0001 C CNN
F 3 "~" H 12850 4900 50  0001 C CNN
	1    12850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	12850 4650 12850 4750
$Comp
L power:GND #PWR0102
U 1 1 617B831A
P 13850 5000
F 0 "#PWR0102" H 13850 4750 50  0001 C CNN
F 1 "GND" H 13855 4827 50  0000 C CNN
F 2 "" H 13850 5000 50  0001 C CNN
F 3 "" H 13850 5000 50  0001 C CNN
	1    13850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 4800 13450 4900
$Comp
L Device:C C18
U 1 1 617B68F3
P 13450 4650
F 0 "C18" H 13565 4696 50  0000 L CNN
F 1 "0.1u" H 13565 4605 50  0000 L CNN
F 2 "" H 13488 4500 50  0001 C CNN
F 3 "~" H 13450 4650 50  0001 C CNN
	1    13450 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 617BBFB0
P 11950 4900
F 0 "R7" H 12020 4946 50  0000 L CNN
F 1 "200m" H 12020 4855 50  0000 L CNN
F 2 "" V 11880 4900 50  0001 C CNN
F 3 "~" H 11950 4900 50  0001 C CNN
	1    11950 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 617ACF95
P 12850 5250
F 0 "#PWR0103" H 12850 5000 50  0001 C CNN
F 1 "GND" H 12855 5077 50  0000 C CNN
F 2 "" H 12850 5250 50  0001 C CNN
F 3 "" H 12850 5250 50  0001 C CNN
	1    12850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 4700 11800 4700
Connection ~ 11800 4700
Wire Wire Line
	11800 4700 11800 4800
Wire Wire Line
	11950 5050 11950 5150
Wire Wire Line
	11950 4700 11950 4750
Wire Wire Line
	11800 4550 11800 4700
$Comp
L power:+BATT #PWR0104
U 1 1 617D63A6
P 13850 4300
F 0 "#PWR0104" H 13850 4150 50  0001 C CNN
F 1 "+BATT" H 13865 4473 50  0000 C CNN
F 2 "" H 13850 4300 50  0001 C CNN
F 3 "" H 13850 4300 50  0001 C CNN
	1    13850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 4400 13450 4500
$Comp
L Device:C C19
U 1 1 617D726E
P 13850 4650
F 0 "C19" H 13965 4696 50  0000 L CNN
F 1 "0.1u" H 13965 4605 50  0000 L CNN
F 2 "" H 13888 4500 50  0001 C CNN
F 3 "~" H 13850 4650 50  0001 C CNN
	1    13850 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 4800 14250 4900
$Comp
L Device:C C20
U 1 1 617D7E83
P 14250 4650
F 0 "C20" H 14365 4696 50  0000 L CNN
F 1 "100u" H 14365 4605 50  0000 L CNN
F 2 "" H 14288 4500 50  0001 C CNN
F 3 "~" H 14250 4650 50  0001 C CNN
	1    14250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 4400 14250 4500
$Comp
L Device:R R5
U 1 1 617E7551
P 10000 4100
F 0 "R5" H 10070 4146 50  0000 L CNN
F 1 "10K" H 10070 4055 50  0000 L CNN
F 2 "" V 9930 4100 50  0001 C CNN
F 3 "~" H 10000 4100 50  0001 C CNN
	1    10000 4100
	-1   0    0    -1  
$EndComp
Text GLabel 10600 3700 0    50   Input ~ 0
IN1
Text GLabel 10600 3800 0    50   Input ~ 0
EN1
Text GLabel 10600 3900 0    50   Input ~ 0
IN2
Text GLabel 10600 4000 0    50   Input ~ 0
EN2
Text GLabel 10600 4100 0    50   Input ~ 0
IN3
Text GLabel 10600 4200 0    50   Input ~ 0
EN3
$Comp
L Device:R R6
U 1 1 617FDB1D
P 10150 4100
F 0 "R6" H 10220 4146 50  0000 L CNN
F 1 "10K" H 10220 4055 50  0000 L CNN
F 2 "" V 10080 4100 50  0001 C CNN
F 3 "~" H 10150 4100 50  0001 C CNN
	1    10150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3950 10150 3850
Wire Wire Line
	10150 3850 10000 3850
Wire Wire Line
	10150 4250 10150 4350
$Comp
L Device:C C15
U 1 1 61810609
P 10000 4700
F 0 "C15" H 10115 4746 50  0000 L CNN
F 1 "0.47u" H 10115 4655 50  0000 L CNN
F 2 "" H 10038 4550 50  0001 C CNN
F 3 "~" H 10000 4700 50  0001 C CNN
	1    10000 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	10600 5050 10700 5050
Wire Wire Line
	10700 4950 10600 4950
Wire Wire Line
	10700 4800 10600 4800
Wire Wire Line
	10700 4200 10600 4200
Wire Wire Line
	10700 4100 10600 4100
Wire Wire Line
	10600 4000 10700 4000
Wire Wire Line
	10700 3900 10600 3900
Wire Wire Line
	10700 3800 10600 3800
Wire Wire Line
	10600 3700 10700 3700
Wire Wire Line
	10000 5150 10000 5250
$Comp
L power:GND #PWR0105
U 1 1 617A0848
P 10000 5250
F 0 "#PWR0105" H 10000 5000 50  0001 C CNN
F 1 "GND" H 10005 5077 50  0000 C CNN
F 2 "" H 10000 5250 50  0001 C CNN
F 3 "" H 10000 5250 50  0001 C CNN
	1    10000 5250
	1    0    0    -1  
$EndComp
$Comp
L drv8313:DRV8313 U1
U 1 1 61786BDE
P 11200 4350
F 0 "U1" H 11200 5400 60  0000 C CNN
F 1 "DRV8313" H 11200 5300 60  0000 C CNN
F 2 "Package_SO:HTSSOP-28-1EP_4.4x9.7mm_P0.65mm_EP2.85x5.4mm_ThermalVias" H 11050 4500 60  0001 C CNN
F 3 "" H 11050 4500 60  0001 C CNN
	1    11200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4550 10000 4450
Wire Wire Line
	10000 4850 10000 5150
Connection ~ 10000 5150
Wire Wire Line
	10000 3850 10000 3950
Connection ~ 10000 4450
Wire Wire Line
	10000 3850 10000 3550
Connection ~ 10000 3850
Connection ~ 10000 3550
Wire Wire Line
	10000 4250 10000 4450
Text GLabel 9900 4350 0    50   Input ~ 0
nCOMPO
Text GLabel 9900 4450 0    50   Input ~ 0
nFAULT
Text GLabel 10600 4550 0    50   Input ~ 0
nSLEEP
Text GLabel 10600 4650 0    50   Input ~ 0
nRESET
Wire Wire Line
	10000 4450 9900 4450
Wire Wire Line
	10150 4350 9900 4350
Connection ~ 10150 4350
Wire Wire Line
	10700 4550 10600 4550
Wire Wire Line
	10600 4650 10700 4650
Wire Wire Line
	11700 3950 12100 3950
Wire Wire Line
	12100 4050 11700 4050
Wire Wire Line
	11700 4150 12100 4150
$Comp
L MCU_RaspberryPi_RP2040:RP2040 U4
U 1 1 6183ACAD
P 6450 4750
F 0 "U4" H 6600 2800 50  0000 C CNN
F 1 "RP2040" H 6700 2700 50  0000 C CNN
F 2 "RP2040_minimal:RP2040-QFN-56" H 5700 4750 50  0001 C CNN
F 3 "" H 5700 4750 50  0001 C CNN
	1    6450 4750
	1    0    0    -1  
$EndComp
Text GLabel 7800 3450 2    50   Input ~ 0
IN1
Text GLabel 7800 3550 2    50   Input ~ 0
EN1
Text GLabel 7800 3650 2    50   Input ~ 0
IN2
Text GLabel 7800 3750 2    50   Input ~ 0
EN2
Text GLabel 7800 3850 2    50   Input ~ 0
IN3
Text GLabel 7800 3950 2    50   Input ~ 0
EN3
Wire Wire Line
	7700 3950 7800 3950
Wire Wire Line
	7700 3850 7800 3850
Wire Wire Line
	7800 3750 7700 3750
Wire Wire Line
	7700 3650 7800 3650
Wire Wire Line
	7700 3550 7800 3550
Wire Wire Line
	7800 3450 7700 3450
Text GLabel 7800 4050 2    50   Input ~ 0
nCOMPO
Text GLabel 7800 4150 2    50   Input ~ 0
nFAULT
Wire Wire Line
	7700 4150 7800 4150
Wire Wire Line
	7700 4050 7800 4050
Wire Wire Line
	7800 4350 7700 4350
Wire Wire Line
	7700 4250 7800 4250
Text GLabel 7800 4350 2    50   Input ~ 0
nRESET
Text GLabel 7800 4250 2    50   Input ~ 0
nSLEEP
Wire Wire Line
	10000 3150 10000 3550
Wire Wire Line
	12850 5050 12850 5150
Wire Wire Line
	11700 5150 11950 5150
Connection ~ 12850 5150
Wire Wire Line
	12850 5150 12850 5250
$Comp
L Device:C C3
U 1 1 6179FDA0
P 4350 4700
F 0 "C3" H 4465 4746 50  0000 L CNN
F 1 "27p" H 4465 4655 50  0000 L CNN
F 2 "" H 4388 4550 50  0001 C CNN
F 3 "~" H 4350 4700 50  0001 C CNN
	1    4350 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 617A2759
P 4850 5200
F 0 "R2" H 4920 5246 50  0000 L CNN
F 1 "1K" H 4920 5155 50  0000 L CNN
F 2 "" V 4780 5200 50  0001 C CNN
F 3 "~" H 4850 5200 50  0001 C CNN
	1    4850 5200
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 617A53AB
P 4350 5200
F 0 "C4" H 4465 5246 50  0000 L CNN
F 1 "27p" H 4465 5155 50  0000 L CNN
F 2 "" H 4388 5050 50  0001 C CNN
F 3 "~" H 4350 5200 50  0001 C CNN
	1    4350 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 4850 5200 4850
Wire Wire Line
	5200 5050 5100 5050
Wire Wire Line
	5100 5200 5000 5200
Wire Wire Line
	5100 4700 4600 4700
Wire Wire Line
	5100 4700 5100 4850
$Comp
L Device:Crystal Y1
U 1 1 6179EF9A
P 4600 4950
F 0 "Y1" V 4554 5081 50  0000 L CNN
F 1 "12M" V 4645 5081 50  0000 L CNN
F 2 "" H 4600 4950 50  0001 C CNN
F 3 "~" H 4600 4950 50  0001 C CNN
	1    4600 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 5200 4600 5200
Wire Wire Line
	4600 5100 4600 5200
Connection ~ 4600 5200
Wire Wire Line
	4600 5200 4700 5200
Wire Wire Line
	4600 4800 4600 4700
Connection ~ 4600 4700
Wire Wire Line
	4600 4700 4500 4700
Wire Wire Line
	5100 5050 5100 5200
Wire Wire Line
	4200 5200 4100 5200
Wire Wire Line
	4100 5200 4100 4700
Wire Wire Line
	4100 4700 4200 4700
Wire Wire Line
	4100 5200 4100 5300
Connection ~ 4100 5200
$Comp
L power:GND #PWR0106
U 1 1 617F94B8
P 4100 5300
F 0 "#PWR0106" H 4100 5050 50  0001 C CNN
F 1 "GND" H 4105 5127 50  0000 C CNN
F 2 "" H 4100 5300 50  0001 C CNN
F 3 "" H 4100 5300 50  0001 C CNN
	1    4100 5300
	1    0    0    -1  
$EndComp
NoConn ~ 5200 6000
NoConn ~ 5200 6100
Wire Wire Line
	2550 5850 2550 5950
$Comp
L power:GND #PWR0107
U 1 1 618B178E
P 2550 5950
F 0 "#PWR0107" H 2550 5700 50  0001 C CNN
F 1 "GND" H 2555 5777 50  0000 C CNN
F 2 "" H 2550 5950 50  0001 C CNN
F 3 "" H 2550 5950 50  0001 C CNN
	1    2550 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 618B746E
P 2550 5200
F 0 "R1" H 2620 5246 50  0000 L CNN
F 1 "1K" H 2620 5155 50  0000 L CNN
F 2 "" V 2480 5200 50  0001 C CNN
F 3 "~" H 2550 5200 50  0001 C CNN
	1    2550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5450 2550 5350
$Comp
L Switch:SW_Push SW1
U 1 1 61896370
P 2550 5650
F 0 "SW1" V 2600 5950 50  0000 R CNN
F 1 "SW_BOOT" V 2500 6150 50  0000 R CNN
F 2 "" H 2550 5850 50  0001 C CNN
F 3 "~" H 2550 5850 50  0001 C CNN
	1    2550 5650
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6189C00F
P 3250 5650
F 0 "SW2" V 3296 5602 50  0000 R CNN
F 1 "SW_RESET" V 3205 5602 50  0000 R CNN
F 2 "" H 3250 5850 50  0001 C CNN
F 3 "~" H 3250 5850 50  0001 C CNN
	1    3250 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 5850 3250 5950
$Comp
L power:GND #PWR0108
U 1 1 618AC128
P 3250 5950
F 0 "#PWR0108" H 3250 5700 50  0001 C CNN
F 1 "GND" H 3255 5777 50  0000 C CNN
F 2 "" H 3250 5950 50  0001 C CNN
F 3 "" H 3250 5950 50  0001 C CNN
	1    3250 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6190BA84
P 6450 6950
F 0 "#PWR0109" H 6450 6700 50  0001 C CNN
F 1 "GND" H 6455 6777 50  0000 C CNN
F 2 "" H 6450 6950 50  0001 C CNN
F 3 "" H 6450 6950 50  0001 C CNN
	1    6450 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 6950 6450 6850
Wire Wire Line
	6450 6850 5950 6850
Wire Wire Line
	5950 6850 5950 6750
Connection ~ 6450 6850
Wire Wire Line
	6450 6850 6450 6750
Wire Wire Line
	5650 2750 5650 2650
Wire Wire Line
	5650 2650 5750 2650
Wire Wire Line
	5950 2650 5950 2750
Wire Wire Line
	5750 2750 5750 2650
Connection ~ 5750 2650
Wire Wire Line
	5750 2650 5950 2650
Wire Wire Line
	6100 2650 6300 2650
Wire Wire Line
	7100 2650 7100 2750
Wire Wire Line
	6100 2650 6100 2750
Wire Wire Line
	6300 2750 6300 2650
Connection ~ 6300 2650
Wire Wire Line
	6300 2650 6400 2650
Wire Wire Line
	6400 2650 6400 2750
Connection ~ 6400 2650
Wire Wire Line
	6400 2650 6500 2650
Wire Wire Line
	6500 2750 6500 2650
Connection ~ 6500 2650
Wire Wire Line
	6500 2650 6600 2650
Wire Wire Line
	6600 2650 6600 2750
Connection ~ 6600 2650
Wire Wire Line
	6600 2650 6700 2650
Wire Wire Line
	6700 2650 6700 2750
Connection ~ 6700 2650
Wire Wire Line
	6700 2650 6800 2650
Wire Wire Line
	6800 2650 6800 2750
Connection ~ 6800 2650
Wire Wire Line
	6800 2650 6950 2650
Wire Wire Line
	6950 2650 6950 2750
Connection ~ 6950 2650
Wire Wire Line
	6950 2650 7100 2650
$Comp
L power:+3V3 #PWR0110
U 1 1 619610E6
P 7100 2550
F 0 "#PWR0110" H 7100 2400 50  0001 C CNN
F 1 "+3V3" H 7115 2723 50  0000 C CNN
F 2 "" H 7100 2550 50  0001 C CNN
F 3 "" H 7100 2550 50  0001 C CNN
	1    7100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+1V1 #PWR0111
U 1 1 61961DAA
P 5950 2550
F 0 "#PWR0111" H 5950 2400 50  0001 C CNN
F 1 "+1V1" H 5965 2723 50  0000 C CNN
F 2 "" H 5950 2550 50  0001 C CNN
F 3 "" H 5950 2550 50  0001 C CNN
	1    5950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2650 5950 2550
Connection ~ 5950 2650
Wire Wire Line
	7100 2650 7100 2550
Connection ~ 7100 2650
$Comp
L Device:R R3
U 1 1 61971E15
P 7950 3050
F 0 "R3" V 7750 2950 50  0000 L CNN
F 1 "27.4R" V 7850 2950 50  0000 L CNN
F 2 "" V 7880 3050 50  0001 C CNN
F 3 "~" H 7950 3050 50  0001 C CNN
	1    7950 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 61979A7E
P 7950 3150
F 0 "R4" V 8150 3050 50  0000 L CNN
F 1 "27.4R" V 8050 3050 50  0000 L CNN
F 2 "" V 7880 3150 50  0001 C CNN
F 3 "~" H 7950 3150 50  0001 C CNN
	1    7950 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3150 7800 3150
Wire Wire Line
	7800 3050 7700 3050
Wire Wire Line
	8100 3150 8200 3150
Wire Wire Line
	8200 3050 8100 3050
Text GLabel 8200 3050 2    50   Input ~ 0
USB_DP
Text GLabel 8200 3150 2    50   Input ~ 0
USB_DM
Wire Wire Line
	5100 3750 5200 3750
Wire Wire Line
	5200 3650 5100 3650
Wire Wire Line
	5100 3950 5200 3950
Wire Wire Line
	5200 3850 5100 3850
Wire Wire Line
	5100 4100 5200 4100
Wire Wire Line
	5100 3500 5200 3500
Text GLabel 5100 3500 0    50   Input ~ 0
QSPI_SS
Text GLabel 5100 3650 0    50   Input ~ 0
QSPI_D0
Text GLabel 5100 3750 0    50   Input ~ 0
QSPI_D1
Text GLabel 5100 3850 0    50   Input ~ 0
QSPI_D2
Text GLabel 5100 3950 0    50   Input ~ 0
QSPI_D3
Text GLabel 5100 4100 0    50   Input ~ 0
QSPI_SCLK
Text GLabel 5100 5550 0    50   Input ~ 0
nRESET
Wire Wire Line
	5100 5550 5200 5550
Text GLabel 2450 4950 0    50   Input ~ 0
QSPI_SS
Text GLabel 3150 5350 0    50   Input ~ 0
nRESET
Wire Wire Line
	3150 5350 3250 5350
Wire Wire Line
	2450 4950 2550 4950
Wire Wire Line
	2550 4950 2550 5050
Wire Wire Line
	3250 5450 3250 5350
$Comp
L Device:C C5
U 1 1 61A9FD89
P 4600 7900
F 0 "C5" H 4715 7946 50  0000 L CNN
F 1 "1u" H 4715 7855 50  0000 L CNN
F 2 "" H 4638 7750 50  0001 C CNN
F 3 "~" H 4600 7900 50  0001 C CNN
	1    4600 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 61AB90D5
P 5000 7900
F 0 "C6" H 5115 7946 50  0000 L CNN
F 1 "100n" H 5115 7855 50  0000 L CNN
F 2 "" H 5038 7750 50  0001 C CNN
F 3 "~" H 5000 7900 50  0001 C CNN
	1    5000 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 61AC1B32
P 5400 7900
F 0 "C7" H 5515 7946 50  0000 L CNN
F 1 "100n" H 5515 7855 50  0000 L CNN
F 2 "" H 5438 7750 50  0001 C CNN
F 3 "~" H 5400 7900 50  0001 C CNN
	1    5400 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 7750 5400 7650
Wire Wire Line
	5400 7650 5000 7650
Wire Wire Line
	5000 7650 5000 7750
Wire Wire Line
	4600 7650 4600 7750
Connection ~ 5000 7650
Wire Wire Line
	4600 8050 4600 8150
Wire Wire Line
	5400 8150 5400 8050
Wire Wire Line
	5000 8050 5000 8150
Connection ~ 5000 8150
Wire Wire Line
	5000 8150 5400 8150
Wire Wire Line
	5000 8250 5000 8150
Wire Wire Line
	5000 7550 5000 7650
Wire Wire Line
	4600 8150 5000 8150
Wire Wire Line
	4600 7650 5000 7650
$Comp
L power:GND #PWR0112
U 1 1 61B28F2E
P 5000 8250
F 0 "#PWR0112" H 5000 8000 50  0001 C CNN
F 1 "GND" H 5005 8077 50  0000 C CNN
F 2 "" H 5000 8250 50  0001 C CNN
F 3 "" H 5000 8250 50  0001 C CNN
	1    5000 8250
	1    0    0    -1  
$EndComp
$Comp
L power:+1V1 #PWR0113
U 1 1 61B3354B
P 5000 7550
F 0 "#PWR0113" H 5000 7400 50  0001 C CNN
F 1 "+1V1" H 5015 7723 50  0000 C CNN
F 2 "" H 5000 7550 50  0001 C CNN
F 3 "" H 5000 7550 50  0001 C CNN
	1    5000 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 61B3E4D4
P 6000 7900
F 0 "C8" H 6115 7946 50  0000 L CNN
F 1 "1u" H 6115 7855 50  0000 L CNN
F 2 "" H 6038 7750 50  0001 C CNN
F 3 "~" H 6000 7900 50  0001 C CNN
	1    6000 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 61B3E4DA
P 6400 7900
F 0 "C9" H 6515 7946 50  0000 L CNN
F 1 "100n" H 6515 7855 50  0000 L CNN
F 2 "" H 6438 7750 50  0001 C CNN
F 3 "~" H 6400 7900 50  0001 C CNN
	1    6400 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 61B3E4E0
P 6800 7900
F 0 "C10" H 6915 7946 50  0000 L CNN
F 1 "100n" H 6915 7855 50  0000 L CNN
F 2 "" H 6838 7750 50  0001 C CNN
F 3 "~" H 6800 7900 50  0001 C CNN
	1    6800 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 61B48BA1
P 7200 7900
F 0 "C11" H 7315 7946 50  0000 L CNN
F 1 "100n" H 7315 7855 50  0000 L CNN
F 2 "" H 7238 7750 50  0001 C CNN
F 3 "~" H 7200 7900 50  0001 C CNN
	1    7200 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 61B48BA7
P 7600 7900
F 0 "C12" H 7715 7946 50  0000 L CNN
F 1 "100n" H 7715 7855 50  0000 L CNN
F 2 "" H 7638 7750 50  0001 C CNN
F 3 "~" H 7600 7900 50  0001 C CNN
	1    7600 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61B5C989
P 8000 7900
F 0 "C13" H 8115 7946 50  0000 L CNN
F 1 "100n" H 8115 7855 50  0000 L CNN
F 2 "" H 8038 7750 50  0001 C CNN
F 3 "~" H 8000 7900 50  0001 C CNN
	1    8000 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 61B5C98F
P 8400 7900
F 0 "C14" H 8515 7946 50  0000 L CNN
F 1 "100n" H 8515 7855 50  0000 L CNN
F 2 "" H 8438 7750 50  0001 C CNN
F 3 "~" H 8400 7900 50  0001 C CNN
	1    8400 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 8050 6000 8150
Wire Wire Line
	6800 8150 6800 8050
Wire Wire Line
	6400 8050 6400 8150
Wire Wire Line
	7200 8050 7200 8150
Wire Wire Line
	8000 8150 8000 8050
Wire Wire Line
	7600 8050 7600 8150
Wire Wire Line
	8400 8150 8400 8050
Wire Wire Line
	7600 7650 7600 7750
Wire Wire Line
	8400 7750 8400 7650
Wire Wire Line
	8000 7650 8000 7750
Wire Wire Line
	6800 7650 6800 7750
Wire Wire Line
	7200 7650 7200 7750
Wire Wire Line
	6000 7650 6000 7750
Wire Wire Line
	6400 7650 6400 7750
Wire Wire Line
	6000 7650 6400 7650
Connection ~ 6400 7650
Wire Wire Line
	6400 7650 6800 7650
Connection ~ 6800 7650
Wire Wire Line
	6800 7650 7200 7650
Connection ~ 7200 7650
Wire Wire Line
	7200 7650 7600 7650
Connection ~ 7600 7650
Wire Wire Line
	7600 7650 8000 7650
Connection ~ 8000 7650
Wire Wire Line
	8000 7650 8400 7650
Wire Wire Line
	8400 8150 8000 8150
Connection ~ 6400 8150
Wire Wire Line
	6400 8150 6000 8150
Connection ~ 6800 8150
Wire Wire Line
	6800 8150 6400 8150
Connection ~ 7200 8150
Wire Wire Line
	7200 8150 6800 8150
Connection ~ 7600 8150
Wire Wire Line
	7600 8150 7200 8150
Connection ~ 8000 8150
Wire Wire Line
	8000 8150 7600 8150
Wire Wire Line
	7200 8150 7200 8250
Wire Wire Line
	7200 7650 7200 7550
$Comp
L power:GND #PWR0114
U 1 1 61BE7AFA
P 7200 8300
F 0 "#PWR0114" H 7200 8050 50  0001 C CNN
F 1 "GND" H 7205 8127 50  0000 C CNN
F 2 "" H 7200 8300 50  0001 C CNN
F 3 "" H 7200 8300 50  0001 C CNN
	1    7200 8300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 61BF4C48
P 7200 7550
F 0 "#PWR0115" H 7200 7400 50  0001 C CNN
F 1 "+3V3" H 7215 7723 50  0000 C CNN
F 2 "" H 7200 7550 50  0001 C CNN
F 3 "" H 7200 7550 50  0001 C CNN
	1    7200 7550
	1    0    0    -1  
$EndComp
NoConn ~ 2000 1900
NoConn ~ 2000 2000
Wire Wire Line
	1400 3400 1400 3300
$Comp
L power:GND #PWR0116
U 1 1 61C42B2B
P 1400 3400
F 0 "#PWR0116" H 1400 3150 50  0001 C CNN
F 1 "GND" H 1405 3227 50  0000 C CNN
F 2 "" H 1400 3400 50  0001 C CNN
F 3 "" H 1400 3400 50  0001 C CNN
	1    1400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3300 1100 3300
Wire Wire Line
	1100 3300 1100 3200
Wire Wire Line
	1400 3200 1400 3300
Connection ~ 1400 3300
Wire Wire Line
	2100 2400 2000 2400
Text GLabel 2100 2400 2    50   Input ~ 0
USB_DP
Text GLabel 2100 2200 2    50   Input ~ 0
USB_DM
Wire Wire Line
	2000 2200 2100 2200
Wire Wire Line
	3600 1700 3600 1800
$Comp
L Device:C C2
U 1 1 61CF5A94
P 3600 1950
F 0 "C2" H 3715 1996 50  0000 L CNN
F 1 "10u" H 3715 1905 50  0000 L CNN
F 2 "" H 3638 1800 50  0001 C CNN
F 3 "~" H 3600 1950 50  0001 C CNN
	1    3600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2200 3200 2200
Wire Wire Line
	3600 2200 3600 2100
Wire Wire Line
	3200 2000 3200 2200
Connection ~ 3200 2200
Wire Wire Line
	3200 2200 3600 2200
Wire Wire Line
	3200 2200 3200 2300
Wire Wire Line
	2800 1800 2800 1700
Wire Wire Line
	2800 1700 2900 1700
Wire Wire Line
	3500 1700 3600 1700
Wire Wire Line
	3600 1700 3600 1600
Connection ~ 3600 1700
$Comp
L power:+3V3 #PWR0117
U 1 1 61D69A6C
P 3600 1600
F 0 "#PWR0117" H 3600 1450 50  0001 C CNN
F 1 "+3V3" H 3615 1773 50  0000 C CNN
F 2 "" H 3600 1600 50  0001 C CNN
F 3 "" H 3600 1600 50  0001 C CNN
	1    3600 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61D6A968
P 3200 2300
F 0 "#PWR0118" H 3200 2050 50  0001 C CNN
F 1 "GND" H 3205 2127 50  0000 C CNN
F 2 "" H 3200 2300 50  0001 C CNN
F 3 "" H 3200 2300 50  0001 C CNN
	1    3200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2200 2800 2100
$Comp
L Device:C C1
U 1 1 61CBEA5F
P 2800 1950
F 0 "C1" H 2915 1996 50  0000 L CNN
F 1 "10u" H 2915 1905 50  0000 L CNN
F 2 "" H 2838 1800 50  0001 C CNN
F 3 "~" H 2800 1950 50  0001 C CNN
	1    2800 1950
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 61CA0A7E
P 3200 1700
F 0 "U3" H 3200 1942 50  0000 C CNN
F 1 "AMS1117-3.3" H 3200 1851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3200 1900 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3300 1450 50  0001 C CNN
	1    3200 1700
	1    0    0    -1  
$EndComp
Text GLabel 2300 3950 0    50   Input ~ 0
QSPI_SCLK
Text GLabel 2300 3750 0    50   Input ~ 0
QSPI_SS
Text GLabel 3500 4050 2    50   Input ~ 0
QSPI_D3
Text GLabel 3500 3950 2    50   Input ~ 0
QSPI_D2
Text GLabel 3500 3750 2    50   Input ~ 0
QSPI_D1
Text GLabel 3500 3650 2    50   Input ~ 0
QSPI_D0
Wire Wire Line
	2300 3950 2400 3950
Wire Wire Line
	2300 3750 2400 3750
Wire Wire Line
	3500 3950 3400 3950
Wire Wire Line
	3400 4050 3500 4050
Wire Wire Line
	3500 3650 3400 3650
Wire Wire Line
	3400 3750 3500 3750
Wire Wire Line
	2900 3450 2900 3350
$Comp
L power:+3.3V #PWR0119
U 1 1 618902CE
P 2900 3350
F 0 "#PWR0119" H 2900 3200 50  0001 C CNN
F 1 "+3.3V" H 2915 3523 50  0000 C CNN
F 2 "" H 2900 3350 50  0001 C CNN
F 3 "" H 2900 3350 50  0001 C CNN
	1    2900 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6188B492
P 2900 4350
F 0 "#PWR0120" H 2900 4100 50  0001 C CNN
F 1 "GND" H 2905 4177 50  0000 C CNN
F 2 "" H 2900 4350 50  0001 C CNN
F 3 "" H 2900 4350 50  0001 C CNN
	1    2900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4250 2900 4350
$Comp
L Memory_Flash:W25Q32JVSS U2
U 1 1 61861BA6
P 2900 3850
F 0 "U2" H 3000 4200 50  0000 C CNN
F 1 "W25Q32JVSS" H 3200 3500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 2900 3850 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q32jv%20revg%2003272018%20plus.pdf" H 2900 3850 50  0001 C CNN
	1    2900 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61DF66AF
P 12850 4400
F 0 "R8" H 12920 4446 50  0000 L CNN
F 1 "10K" H 12920 4355 50  0000 L CNN
F 2 "" V 12780 4400 50  0001 C CNN
F 3 "~" H 12850 4400 50  0001 C CNN
	1    12850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12850 4550 12850 4650
Connection ~ 12850 4650
Wire Wire Line
	11700 4650 12850 4650
Wire Wire Line
	11950 5150 12850 5150
Connection ~ 11950 5150
Wire Wire Line
	12850 3150 12850 4250
Wire Wire Line
	10000 5150 10600 5150
Connection ~ 10600 5150
Wire Wire Line
	10600 5150 10700 5150
Wire Wire Line
	10000 4450 10700 4450
Wire Wire Line
	10150 4350 10700 4350
Wire Wire Line
	10000 3550 10700 3550
Wire Wire Line
	10000 3150 12850 3150
Wire Wire Line
	13850 4800 13850 4900
Wire Wire Line
	13850 4300 13850 4400
Wire Wire Line
	13450 4900 13850 4900
Connection ~ 13850 4900
Wire Wire Line
	13850 4900 13850 5000
Wire Wire Line
	13850 4900 14250 4900
Wire Wire Line
	13450 4400 13850 4400
Connection ~ 13850 4400
Wire Wire Line
	13850 4400 13850 4500
Wire Wire Line
	13850 4400 14250 4400
$Comp
L power:+BATT #PWR0121
U 1 1 61F25FFE
P 13450 3500
F 0 "#PWR0121" H 13450 3350 50  0001 C CNN
F 1 "+BATT" H 13465 3673 50  0000 C CNN
F 2 "" H 13450 3500 50  0001 C CNN
F 3 "" H 13450 3500 50  0001 C CNN
	1    13450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 3500 13450 3600
$Comp
L power:GND #PWR0122
U 1 1 61F34ACF
P 13450 3800
F 0 "#PWR0122" H 13450 3550 50  0001 C CNN
F 1 "GND" H 13455 3627 50  0000 C CNN
F 2 "" H 13450 3800 50  0001 C CNN
F 3 "" H 13450 3800 50  0001 C CNN
	1    13450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 3700 13450 3800
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 61F430B8
P 13750 3600
F 0 "J2" H 13830 3592 50  0000 L CNN
F 1 "Conn_01x02" H 13830 3501 50  0000 L CNN
F 2 "" H 13750 3600 50  0001 C CNN
F 3 "~" H 13750 3600 50  0001 C CNN
	1    13750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 3600 13550 3600
Wire Wire Line
	13450 3700 13550 3700
$Comp
L power:+BATT #PWR0123
U 1 1 61F8F385
P 2800 1600
F 0 "#PWR0123" H 2800 1450 50  0001 C CNN
F 1 "+BATT" H 2815 1773 50  0000 C CNN
F 2 "" H 2800 1600 50  0001 C CNN
F 3 "" H 2800 1600 50  0001 C CNN
	1    2800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1600 2800 1700
$Comp
L Device:D D1
U 1 1 61F9DBE5
P 2250 1700
F 0 "D1" V 2296 1620 50  0000 R CNN
F 1 "D" V 2205 1620 50  0000 R CNN
F 2 "" H 2250 1700 50  0001 C CNN
F 3 "~" H 2250 1700 50  0001 C CNN
	1    2250 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 1700 2400 1700
Connection ~ 2800 1700
Wire Wire Line
	2100 1700 2000 1700
$Comp
L Connector:USB_C_Plug_USB2.0 P1
U 1 1 61C28151
P 1400 2300
F 0 "P1" H 1507 3167 50  0000 C CNN
F 1 "USB_C_Plug_USB2.0" H 1507 3076 50  0000 C CNN
F 2 "" H 1550 2300 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1550 2300 50  0001 C CNN
	1    1400 2300
	1    0    0    -1  
$EndComp
$EndSCHEMATC