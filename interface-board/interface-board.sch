EESchema Schematic File Version 4
LIBS:interface-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2700 1000 2    50   ~ 0
2.5A fuses give some \nheadroom, maybe \nshould change to 2A.
$Comp
L Device:Fuse_Small F?
U 1 1 5C49093C
P 1950 1300
F 0 "F?" H 1950 1485 50  0000 C CNN
F 1 "2.5A" H 1950 1394 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 1950 1300 50  0001 C CNN
F 3 "~" H 1950 1300 50  0001 C CNN
	1    1950 1300
	1    0    0    -1  
$EndComp
Text Label 2250 1300 2    50   ~ 0
HV+
Text Label 2250 1450 2    50   ~ 0
HV-
$Comp
L Connector_Generic:Conn_01x14 J?
U 1 1 5C49DE86
P 900 6850
F 0 "J?" H 900 7550 50  0000 C CNN
F 1 "AMPSEAL_MAIN" V 1000 6850 50  0000 C CNN
F 2 "" H 900 6850 50  0001 C CNN
F 3 "~" H 900 6850 50  0001 C CNN
	1    900  6850
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C49DC58
P 1200 5150
F 0 "#PWR?" H 1200 5000 50  0001 C CNN
F 1 "+12V" H 1215 5323 50  0000 C CNN
F 2 "" H 1200 5150 50  0001 C CNN
F 3 "" H 1200 5150 50  0001 C CNN
	1    1200 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C512F6B
P 1150 7550
F 0 "#PWR?" H 1150 7300 50  0001 C CNN
F 1 "GND" V 1155 7422 50  0000 R CNN
F 2 "" H 1150 7550 50  0001 C CNN
F 3 "" H 1150 7550 50  0001 C CNN
	1    1150 7550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 7550 1100 7550
Text Label 1450 6250 2    50   ~ 0
FANOUT1
Wire Wire Line
	1100 6250 1450 6250
Wire Wire Line
	1100 6350 1450 6350
Wire Wire Line
	1100 6450 1450 6450
Text Label 1450 6350 2    50   ~ 0
FANOUT2
Text Label 1450 6450 2    50   ~ 0
FANOUT3
$Comp
L power:+5V #PWR?
U 1 1 5C5AF86A
P 1200 6550
F 0 "#PWR?" H 1200 6400 50  0001 C CNN
F 1 "+5V" V 1200 6650 50  0000 L CNN
F 2 "" H 1200 6550 50  0001 C CNN
F 3 "" H 1200 6550 50  0001 C CNN
	1    1200 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 6550 1100 6550
Wire Wire Line
	1100 6650 1450 6650
Text Label 1450 6650 2    50   ~ 0
IMD_AN1
Text Label 1450 6950 2    50   ~ 0
IMD_AN2
Text Label 1450 7050 2    50   ~ 0
IMD_AN3
Wire Wire Line
	1100 6950 1450 6950
Wire Wire Line
	1100 7050 1450 7050
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5C6A6FBB
P 2200 7150
F 0 "JP?" H 2500 7150 50  0000 C CNN
F 1 "Jumper" H 2750 7150 50  0000 C CNN
F 2 "" H 2200 7150 50  0001 C CNN
F 3 "~" H 2200 7150 50  0001 C CNN
	1    2200 7150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5C6A7073
P 2200 7250
F 0 "JP?" H 2500 7250 50  0000 C CNN
F 1 "Jumper" H 2750 7250 50  0000 C CNN
F 2 "" H 2200 7250 50  0001 C CNN
F 3 "~" H 2200 7250 50  0001 C CNN
	1    2200 7250
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5C6A712D
P 2200 7350
F 0 "JP?" H 2500 7350 50  0000 C CNN
F 1 "Jumper" H 2750 7350 50  0000 C CNN
F 2 "" H 2200 7350 50  0001 C CNN
F 3 "~" H 2200 7350 50  0001 C CNN
	1    2200 7350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5C6A71E9
P 2200 7450
F 0 "JP?" H 2500 7450 50  0000 C CNN
F 1 "Jumper" H 2750 7450 50  0000 C CNN
F 2 "" H 2200 7450 50  0001 C CNN
F 3 "~" H 2200 7450 50  0001 C CNN
	1    2200 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7450 2350 7450
Wire Wire Line
	2350 7350 2400 7350
Connection ~ 2400 7350
Wire Wire Line
	2400 7350 2400 7450
Wire Wire Line
	2350 7250 2400 7250
Connection ~ 2400 7250
Wire Wire Line
	2400 7250 2400 7350
Wire Wire Line
	2350 7150 2400 7150
Wire Wire Line
	2400 7150 2400 7250
$Comp
L power:GND #PWR?
U 1 1 5C771CC6
P 2400 7500
F 0 "#PWR?" H 2400 7250 50  0001 C CNN
F 1 "GND" H 2405 7327 50  0000 C CNN
F 2 "" H 2400 7500 50  0001 C CNN
F 3 "" H 2400 7500 50  0001 C CNN
	1    2400 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7500 2400 7450
Connection ~ 2400 7450
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5C4D8B07
P 900 5550
F 0 "J?" H 900 5950 50  0000 C CNN
F 1 "AMPSEAL_PWR" V 1000 5550 50  0000 C CNN
F 2 "" H 900 5550 50  0001 C CNN
F 3 "~" H 900 5550 50  0001 C CNN
	1    900  5550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C4B6D8C
P 1400 5800
F 0 "#PWR?" H 1400 5550 50  0001 C CNN
F 1 "GND" V 1405 5672 50  0000 R CNN
F 2 "" H 1400 5800 50  0001 C CNN
F 3 "" H 1400 5800 50  0001 C CNN
	1    1400 5800
	0    -1   -1   0   
$EndComp
Text Label 1850 5650 2    50   ~ 0
SHDN_LOOP_OUT
Text Label 1850 5950 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1400 5800 1150 5800
Wire Wire Line
	1150 5800 1150 5750
Wire Wire Line
	1150 5750 1100 5750
Wire Wire Line
	1100 5850 1150 5850
Wire Wire Line
	1150 5850 1150 5800
Connection ~ 1150 5800
Wire Wire Line
	1200 5150 1200 5250
Wire Wire Line
	1100 5350 1200 5350
Wire Wire Line
	1100 5250 1200 5250
Connection ~ 1200 5250
Wire Wire Line
	1200 5250 1200 5350
Wire Wire Line
	1100 5650 1850 5650
Wire Wire Line
	1100 5950 1850 5950
Text Notes 1200 5200 0    50   ~ 0
Shutdown loop in = 12V bus
Wire Wire Line
	1100 6750 1450 6750
Wire Wire Line
	1100 6850 1450 6850
Text Label 1450 6750 2    50   ~ 0
CAN+
Text Label 1450 6850 2    50   ~ 0
CAN-
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5C6BA890
P 1850 7350
F 0 "J?" H 1850 7650 50  0000 C CNN
F 1 "AUX" H 1850 7550 50  0000 C CNN
F 2 "" H 1850 7350 50  0001 C CNN
F 3 "~" H 1850 7350 50  0001 C CNN
	1    1850 7350
	-1   0    0    1   
$EndComp
Connection ~ 2050 7350
Wire Wire Line
	1100 7350 2050 7350
Connection ~ 2050 7450
Wire Wire Line
	1100 7450 2050 7450
Connection ~ 2050 7250
Wire Wire Line
	1100 7250 2050 7250
Connection ~ 2050 7150
Wire Wire Line
	1100 7150 2050 7150
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5C7C388D
P 900 1450
F 0 "J?" H 1050 1350 50  0000 C CNN
F 1 "HV-" H 1150 1450 50  0000 C CNN
F 2 "" H 900 1450 50  0001 C CNN
F 3 "~" H 900 1450 50  0001 C CNN
	1    900  1450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5C83C6D2
P 900 1300
F 0 "J?" H 900 1200 50  0000 C CNN
F 1 "HV+" H 1150 1300 50  0000 C CNN
F 2 "" H 900 1300 50  0001 C CNN
F 3 "~" H 900 1300 50  0001 C CNN
	1    900  1300
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C871653
P 1200 1050
F 0 "J?" V 1166 862 50  0000 R CNN
F 1 "IMD" V 1300 1050 50  0000 R CNN
F 2 "" H 1200 1050 50  0001 C CNN
F 3 "~" H 1200 1050 50  0001 C CNN
	1    1200 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 1300 1200 1300
Wire Wire Line
	1200 1250 1200 1300
Wire Wire Line
	1300 1250 1300 1450
Wire Wire Line
	1300 1450 1100 1450
Wire Wire Line
	2250 1300 2050 1300
Connection ~ 1200 1300
$Sheet
S 4600 1250 1600 900 
U 5C4E5628
F0 "uC+CAN" 50
F1 "uC+CAN.sch" 50
F2 "FAN_CTRL_0" O R 6200 1350 50 
F3 "FAN_CTRL_1" O R 6200 1450 50 
F4 "FAN_CTRL_2" O R 6200 1550 50 
F5 "FAN_CTRL_3" O R 6200 1650 50 
F6 "CAN+" B L 4600 1350 50 
F7 "CAN-" B L 4600 1450 50 
F8 "DC_DC_EN" O L 4600 1950 50 
F9 "DC_DC_FAULT" I L 4600 2050 50 
F10 "RXD" I L 4600 1700 50 
F11 "TXD" O L 4600 1600 50 
F12 "DC_DC_TRIM_EN" O L 4600 1850 50 
F13 "NTC1" I R 6200 1900 50 
F14 "NTC2" I R 6200 2000 50 
$EndSheet
Text Notes 4600 1150 0    50   ~ 0
Global nets connected to this sheet: \nGND, 5V,  SDA, SCL
$Sheet
S 6550 1250 1100 500 
U 5C5EE841
F0 "fanControl" 50
F1 "file5C5EE840.sch" 50
F2 "FANOUT0" O R 7650 1350 50 
F3 "FAN_CTRL_0" I L 6550 1350 50 
F4 "FANOUT1" O R 7650 1450 50 
F5 "FAN_CTRL_1" I L 6550 1450 50 
F6 "FANOUT2" O R 7650 1550 50 
F7 "FAN_CTRL_2" I L 6550 1550 50 
F8 "FANOUT3" O R 7650 1650 50 
F9 "FAN_CTRL_3" I L 6550 1650 50 
$EndSheet
Text Notes 6550 1150 0    50   ~ 0
Global nets connected to this sheet: \nGND, 12V
Wire Wire Line
	6200 1350 6550 1350
Wire Wire Line
	6200 1450 6550 1450
Wire Wire Line
	6200 1550 6550 1550
Wire Wire Line
	6200 1650 6550 1650
$Sheet
S 4600 2550 1600 850 
U 5C667FAF
F0 "DC->DC Converters" 50
F1 "file5C667FAE.sch" 50
F2 "TRIM_EN" I L 4600 3000 50 
F3 "ENABLE" I L 4600 2900 50 
F4 "FAULT" O L 4600 3100 50 
F5 "HV+" I L 4600 2650 50 
F6 "HV-" I L 4600 2750 50 
F7 "12V_OUT" O R 6200 2650 50 
F8 "5V_OUT" I R 6200 3000 50 
F9 "12V_IN" I R 6200 2900 50 
$EndSheet
Text Notes 4600 2450 0    50   ~ 0
Global nets connected to this sheet: \nGND
$Sheet
S 8150 2450 700  300 
U 5C4BAF41
F0 "meter" 50
F1 "file5C4BAF40.sch" 50
F2 "IN" I L 8150 2650 50 
F3 "OUT" I L 8150 2550 50 
$EndSheet
Text Notes 8050 2350 0    50   ~ 0
Global nets connected to this sheet: \nGND, 5V
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C4C2740
P 1550 1050
F 0 "J?" V 1516 862 50  0000 R CNN
F 1 "TSMP" V 1650 1100 50  0000 R CNN
F 2 "" H 1550 1050 50  0001 C CNN
F 3 "~" H 1550 1050 50  0001 C CNN
	1    1550 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 1300 1550 1300
Wire Wire Line
	1550 1250 1550 1300
Connection ~ 1550 1300
Wire Wire Line
	1550 1300 1850 1300
Wire Wire Line
	1650 1250 1650 1450
Wire Wire Line
	1300 1450 1650 1450
Connection ~ 1300 1450
Wire Wire Line
	4600 2650 4350 2650
Wire Wire Line
	4600 2750 4350 2750
Text Label 4350 2650 0    50   ~ 0
HV+
Text Label 4350 2750 0    50   ~ 0
HV-
Text Label 4000 1850 0    50   ~ 0
DC_DC_TRIM_EN
Wire Wire Line
	4000 1850 4600 1850
Wire Wire Line
	4000 1950 4600 1950
Text Label 4000 1950 0    50   ~ 0
DC_DC_EN
Wire Wire Line
	4000 2050 4600 2050
Text Label 4000 2050 0    50   ~ 0
DC_DC_FAULT
Text Label 4000 3000 0    50   ~ 0
DC_DC_TRIM_EN
Wire Wire Line
	4000 3000 4600 3000
Wire Wire Line
	4000 2900 4600 2900
Text Label 4000 2900 0    50   ~ 0
DC_DC_EN
Wire Wire Line
	4000 3100 4600 3100
Text Label 4000 3100 0    50   ~ 0
DC_DC_FAULT
Text Label 6250 2550 0    50   ~ 0
SHDN_LOOP_OUT
$Comp
L Device:Fuse F?
U 1 1 5C4F1BA8
P 6650 2650
F 0 "F?" V 6750 2650 50  0000 C CNN
F 1 "20A" V 6850 2650 50  0000 C CNN
F 2 "" V 6580 2650 50  0001 C CNN
F 3 "~" H 6650 2650 50  0001 C CNN
	1    6650 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2650 6500 2650
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5C4F846B
P 7100 2600
F 0 "JP?" V 6900 2500 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 6750 2500 50  0000 L CNN
F 2 "" H 7100 2600 50  0001 C CNN
F 3 "~" H 7100 2600 50  0001 C CNN
	1    7100 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2550 6950 2450
Wire Wire Line
	6950 2450 7100 2450
Wire Wire Line
	7250 2450 7250 2550
Wire Wire Line
	7250 2550 7500 2550
Wire Wire Line
	6250 2550 6950 2550
Connection ~ 7100 2450
Wire Wire Line
	7100 2450 7250 2450
Wire Wire Line
	6950 2650 6950 2750
Wire Wire Line
	6950 2750 7100 2750
Wire Wire Line
	7250 2750 7250 2650
Wire Wire Line
	7250 2650 7500 2650
Wire Wire Line
	6800 2650 6950 2650
Connection ~ 7100 2750
Wire Wire Line
	7100 2750 7250 2750
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 5C4FC42F
P 7650 2550
F 0 "JP?" H 7650 2755 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7650 2664 50  0000 C CNN
F 2 "" H 7650 2550 50  0001 C CNN
F 3 "~" H 7650 2550 50  0001 C CNN
	1    7650 2550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 5C4FC4FB
P 7650 2650
F 0 "JP?" H 7650 2550 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7650 2500 50  0000 C CNN
F 2 "" H 7650 2650 50  0001 C CNN
F 3 "~" H 7650 2650 50  0001 C CNN
	1    7650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2550 8150 2550
Wire Wire Line
	7800 2650 8150 2650
Wire Wire Line
	7650 1350 8150 1350
Wire Wire Line
	7650 1450 8150 1450
Wire Wire Line
	7650 1550 8150 1550
Wire Wire Line
	7650 1650 8150 1650
Text Label 8150 1450 2    50   ~ 0
FANOUT1
Text Label 8150 1550 2    50   ~ 0
FANOUT2
Text Label 8150 1650 2    50   ~ 0
FANOUT3
Text Label 1850 5550 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1100 5550 1850 5550
Wire Wire Line
	1200 5350 1200 5450
Wire Wire Line
	1200 5450 1100 5450
Connection ~ 1200 5350
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C50D03B
P 900 4600
F 0 "J?" H 900 4700 50  0000 C CNN
F 1 "CASEFAN2" V 1050 4550 50  0000 C CNN
F 2 "" H 900 4600 50  0001 C CNN
F 3 "~" H 900 4600 50  0001 C CNN
	1    900  4600
	-1   0    0    -1  
$EndComp
Text Label 8150 1350 2    50   ~ 0
FANOUT0
Wire Wire Line
	1100 4700 1450 4700
Text Label 1450 4700 2    50   ~ 0
FANOUT0
$Comp
L power:+12V #PWR?
U 1 1 5C510DD6
P 1150 4550
F 0 "#PWR?" H 1150 4400 50  0001 C CNN
F 1 "+12V" H 1165 4723 50  0000 C CNN
F 2 "" H 1150 4550 50  0001 C CNN
F 3 "" H 1150 4550 50  0001 C CNN
	1    1150 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 4550 1150 4600
Wire Wire Line
	1150 4600 1100 4600
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C51F28D
P 900 4100
F 0 "J?" H 900 4200 50  0000 C CNN
F 1 "CASEFAN1" V 1050 4050 50  0000 C CNN
F 2 "" H 900 4100 50  0001 C CNN
F 3 "~" H 900 4100 50  0001 C CNN
	1    900  4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1100 4200 1450 4200
Text Label 1450 4200 2    50   ~ 0
FANOUT0
$Comp
L power:+12V #PWR?
U 1 1 5C51F296
P 1150 4050
F 0 "#PWR?" H 1150 3900 50  0001 C CNN
F 1 "+12V" H 1165 4223 50  0000 C CNN
F 2 "" H 1150 4050 50  0001 C CNN
F 3 "" H 1150 4050 50  0001 C CNN
	1    1150 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 4050 1150 4100
Wire Wire Line
	1150 4100 1100 4100
$Comp
L Device:Fuse F?
U 1 1 5C52E25F
P 6400 2900
F 0 "F?" V 6200 2900 50  0000 C CNN
F 1 "1A" V 6300 2900 50  0000 C CNN
F 2 "" V 6330 2900 50  0001 C CNN
F 3 "~" H 6400 2900 50  0001 C CNN
	1    6400 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2900 6250 2900
$Comp
L power:+12V #PWR?
U 1 1 5C530767
P 6800 2900
F 0 "#PWR?" H 6800 2750 50  0001 C CNN
F 1 "+12V" H 6815 3073 50  0000 C CNN
F 2 "" H 6800 2900 50  0001 C CNN
F 3 "" H 6800 2900 50  0001 C CNN
	1    6800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2900 6550 2900
$Comp
L power:+5V #PWR?
U 1 1 5C5334AC
P 6400 3000
F 0 "#PWR?" H 6400 2850 50  0001 C CNN
F 1 "+5V" V 6415 3128 50  0000 L CNN
F 2 "" H 6400 3000 50  0001 C CNN
F 3 "" H 6400 3000 50  0001 C CNN
	1    6400 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3000 6200 3000
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5C5369F5
P 900 3250
F 0 "J?" H 900 2950 50  0000 C CNN
F 1 "HECS" V 1050 3250 50  0000 C CNN
F 2 "" H 900 3250 50  0001 C CNN
F 3 "~" H 900 3250 50  0001 C CNN
	1    900  3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C536CD3
P 1150 3350
F 0 "#PWR?" H 1150 3200 50  0001 C CNN
F 1 "+5V" V 1165 3478 50  0000 L CNN
F 2 "" H 1150 3350 50  0001 C CNN
F 3 "" H 1150 3350 50  0001 C CNN
	1    1150 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 3350 1100 3350
$Comp
L power:GND #PWR?
U 1 1 5C539587
P 1150 3500
F 0 "#PWR?" H 1150 3250 50  0001 C CNN
F 1 "GND" H 1155 3327 50  0000 C CNN
F 2 "" H 1150 3500 50  0001 C CNN
F 3 "" H 1150 3500 50  0001 C CNN
	1    1150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3500 1150 3450
Wire Wire Line
	1150 3450 1100 3450
Wire Wire Line
	1100 3250 1450 3250
Wire Wire Line
	1100 3150 1450 3150
Wire Wire Line
	1100 3050 1450 3050
Text Label 1450 3050 2    50   ~ 0
IMD_AN1
Text Label 1450 3150 2    50   ~ 0
IMD_AN2
Text Label 1450 3250 2    50   ~ 0
IMD_AN3
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5C546232
P 1900 3300
F 0 "J?" H 1900 3000 50  0000 C CNN
F 1 "UART" V 2000 3250 50  0000 C CNN
F 2 "" H 1900 3300 50  0001 C CNN
F 3 "~" H 1900 3300 50  0001 C CNN
	1    1900 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C549431
P 2150 3200
F 0 "#PWR?" H 2150 2950 50  0001 C CNN
F 1 "GND" V 2155 3072 50  0000 R CNN
F 2 "" H 2150 3200 50  0001 C CNN
F 3 "" H 2150 3200 50  0001 C CNN
	1    2150 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 3200 2100 3200
$Comp
L power:+5V #PWR?
U 1 1 5C54C53B
P 2150 3050
F 0 "#PWR?" H 2150 2900 50  0001 C CNN
F 1 "+5V" H 2165 3223 50  0000 C CNN
F 2 "" H 2150 3050 50  0001 C CNN
F 3 "" H 2150 3050 50  0001 C CNN
	1    2150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3050 2150 3100
Wire Wire Line
	2150 3100 2100 3100
Wire Wire Line
	2100 3300 2450 3300
Wire Wire Line
	2100 3400 2450 3400
Wire Wire Line
	4600 1600 4250 1600
Wire Wire Line
	4600 1700 4250 1700
Text Label 4250 1700 0    50   ~ 0
UART_RX
Text Label 4250 1600 0    50   ~ 0
UART_TX
Text Label 2450 3400 2    50   ~ 0
UART_RX
Text Label 2450 3300 2    50   ~ 0
UART_TX
$Comp
L Connector:RJ45 J?
U 1 1 5C565B8C
P 3000 6150
F 0 "J?" H 2670 6154 50  0000 R CNN
F 1 "RJ45" H 2670 6245 50  0000 R CNN
F 2 "" V 3000 6175 50  0001 C CNN
F 3 "~" V 3000 6175 50  0001 C CNN
	1    3000 6150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C569DF7
P 3450 6700
F 0 "#PWR?" H 3450 6450 50  0001 C CNN
F 1 "GND" H 3455 6527 50  0000 C CNN
F 2 "" H 3450 6700 50  0001 C CNN
F 3 "" H 3450 6700 50  0001 C CNN
	1    3450 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6700 3450 6350
Wire Wire Line
	3450 6350 3400 6350
Wire Wire Line
	3450 6350 3450 6050
Wire Wire Line
	3450 6050 3400 6050
Connection ~ 3450 6350
Wire Wire Line
	3400 5850 3700 5850
Wire Wire Line
	3400 5950 3700 5950
Wire Wire Line
	4600 1350 4300 1350
Wire Wire Line
	4600 1450 4300 1450
Text Label 4300 1350 0    50   ~ 0
CAN+
Text Label 4300 1450 0    50   ~ 0
CAN-
Text Label 3700 5850 2    50   ~ 0
CAN+
Text Label 3700 5950 2    50   ~ 0
CAN-
$Comp
L Device:Fuse_Small F?
U 1 1 5C584F9F
P 1950 1450
F 0 "F?" H 1950 1350 50  0000 C CNN
F 1 "2.5A" H 1950 1250 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 1950 1450 50  0001 C CNN
F 3 "~" H 1950 1450 50  0001 C CNN
	1    1950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1450 1850 1450
Connection ~ 1650 1450
Wire Wire Line
	2050 1450 2250 1450
Text Label 6500 1900 2    50   ~ 0
TEMP_1
Text Label 6500 2000 2    50   ~ 0
TEMP_2
Wire Wire Line
	6200 1900 6500 1900
Wire Wire Line
	6200 2000 6500 2000
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C5BFA90
P 1900 4100
F 0 "J?" H 1900 4200 50  0000 C CNN
F 1 "NTC1" V 2050 4050 50  0000 C CNN
F 2 "" H 1900 4100 50  0001 C CNN
F 3 "~" H 1900 4100 50  0001 C CNN
	1    1900 4100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C5BFB82
P 1900 4600
F 0 "J?" H 1900 4700 50  0000 C CNN
F 1 "NTC1" V 2050 4550 50  0000 C CNN
F 2 "" H 1900 4600 50  0001 C CNN
F 3 "~" H 1900 4600 50  0001 C CNN
	1    1900 4600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C5BFC27
P 2150 4050
F 0 "#PWR?" H 2150 3900 50  0001 C CNN
F 1 "+5V" H 2165 4223 50  0000 C CNN
F 2 "" H 2150 4050 50  0001 C CNN
F 3 "" H 2150 4050 50  0001 C CNN
	1    2150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4050 2150 4100
Wire Wire Line
	2150 4100 2100 4100
$Comp
L power:+5V #PWR?
U 1 1 5C5C4219
P 2150 4550
F 0 "#PWR?" H 2150 4400 50  0001 C CNN
F 1 "+5V" H 2165 4723 50  0000 C CNN
F 2 "" H 2150 4550 50  0001 C CNN
F 3 "" H 2150 4550 50  0001 C CNN
	1    2150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4550 2150 4600
Wire Wire Line
	2150 4600 2100 4600
Text Label 2400 4200 2    50   ~ 0
TEMP_1
Wire Wire Line
	2100 4200 2400 4200
Wire Wire Line
	2100 4700 2400 4700
Text Label 2400 4700 2    50   ~ 0
TEMP_2
$EndSCHEMATC
