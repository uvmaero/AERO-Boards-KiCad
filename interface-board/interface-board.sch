EESchema Schematic File Version 4
LIBS:interface-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2400 4400 2    50   ~ 0
2.5A fuse gives some \nheadroom, maybe \nshould change to 2A.
$Comp
L interface-board-rescue:INA219-AEROParts U?
U 1 1 5C4907A2
P 6500 5550
F 0 "U?" H 6525 6115 50  0000 C CNN
F 1 "INA219" H 6525 6024 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6600 5550 50  0001 C CNN
F 3 "" H 6600 5550 50  0001 C CNN
	1    6500 5550
	-1   0    0    -1  
$EndComp
Text Notes 4550 5450 0    50   ~ 0
May want to \nchange value to\nbetter suit current\nrange.
$Comp
L power:GND #PWR?
U 1 1 5C4907AA
P 7150 6000
F 0 "#PWR?" H 7150 5750 50  0001 C CNN
F 1 "GND" H 7155 5827 50  0000 C CNN
F 2 "" H 7150 6000 50  0001 C CNN
F 3 "" H 7150 6000 50  0001 C CNN
	1    7150 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 6000 7150 5850
Wire Wire Line
	6900 5850 7150 5850
Wire Wire Line
	6900 5700 7150 5700
Wire Wire Line
	7150 5700 7150 5850
Connection ~ 7150 5850
Wire Wire Line
	6900 5600 7150 5600
Wire Wire Line
	7150 5600 7150 5700
Connection ~ 7150 5700
Wire Notes Line
	4450 4750 4450 6300
Wire Notes Line
	4450 6300 7350 6300
Wire Notes Line
	7350 6300 7350 4750
Wire Notes Line
	7350 4750 4450 4750
$Comp
L Device:R_US R?
U 1 1 5C4907BC
P 5300 5550
F 0 "R?" V 5650 5550 50  0000 C CNN
F 1 "0.02" V 5550 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 5340 5540 50  0001 C CNN
F 3 "~" H 5300 5550 50  0001 C CNN
	1    5300 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 5950 5300 5700
Text Notes 4500 4900 0    100  ~ 0
Main Current/Voltage Meter
$Comp
L Device:R_US R?
U 1 1 5C4907C6
P 5500 5400
F 0 "R?" V 5295 5400 50  0000 C CNN
F 1 "10" V 5386 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5540 5390 50  0001 C CNN
F 3 "~" H 5500 5400 50  0001 C CNN
	1    5500 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C4907CD
P 5500 5700
F 0 "R?" V 5295 5700 50  0000 C CNN
F 1 "10" V 5386 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5540 5690 50  0001 C CNN
F 3 "~" H 5500 5700 50  0001 C CNN
	1    5500 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 5400 5300 5400
Connection ~ 5300 5400
Wire Wire Line
	5350 5700 5300 5700
Connection ~ 5300 5700
$Comp
L Device:C C?
U 1 1 5C4907D8
P 5800 5550
F 0 "C?" H 5915 5596 50  0000 L CNN
F 1 "0.1uF" H 5900 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5838 5400 50  0001 C CNN
F 3 "~" H 5800 5550 50  0001 C CNN
	1    5800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5400 5800 5400
Wire Wire Line
	5650 5700 5800 5700
Connection ~ 5800 5400
Connection ~ 5800 5700
Wire Wire Line
	5800 5400 6050 5400
Wire Wire Line
	5800 5700 6050 5700
Text Label 7300 5400 2    50   ~ 0
SCL
Text Label 7300 5500 2    50   ~ 0
SDA
$Comp
L power:+5V #PWR?
U 1 1 5C4907E7
P 6900 5000
F 0 "#PWR?" H 6900 4850 50  0001 C CNN
F 1 "+5V" H 6915 5173 50  0000 C CNN
F 2 "" H 6900 5000 50  0001 C CNN
F 3 "" H 6900 5000 50  0001 C CNN
	1    6900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5400 7300 5400
Wire Wire Line
	6900 5500 7300 5500
$Comp
L Device:R_US R?
U 1 1 5C4907EF
P 5150 5550
F 0 "R?" V 5550 5550 50  0000 C CNN
F 1 "0.02" V 5450 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 5190 5540 50  0001 C CNN
F 3 "~" H 5150 5550 50  0001 C CNN
	1    5150 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 5400 5300 5400
Wire Wire Line
	5150 5700 5300 5700
Wire Notes Line
	5400 5100 5400 5800
Wire Notes Line
	5900 5100 5400 5100
Wire Notes Line
	5400 5800 5900 5800
Text Notes 4500 6250 0    50   ~ 0
Optional filter circuit. If not needed, \nresistors can be replaced with 0Ω, and \ncap can be desoldered.
Wire Notes Line
	5900 5100 5900 5800
Wire Notes Line
	5650 5800 5650 6000
$Comp
L Device:Fuse_Small F?
U 1 1 5C49093C
P 1500 4650
F 0 "F?" H 1500 4835 50  0000 C CNN
F 1 "2.5A" H 1500 4744 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 1500 4650 50  0001 C CNN
F 3 "~" H 1500 4650 50  0001 C CNN
	1    1500 4650
	1    0    0    -1  
$EndComp
Text Label 1800 4650 2    50   ~ 0
HV+
Text Label 1800 4800 2    50   ~ 0
HV-
$Comp
L Device:C_Small C?
U 1 1 5C49095F
P 7000 5250
F 0 "C?" V 6800 5250 50  0000 C CNN
F 1 "0.1uF" V 6900 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7000 5250 50  0001 C CNN
F 3 "~" H 7000 5250 50  0001 C CNN
	1    7000 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 5250 6900 5000
$Comp
L power:GND #PWR?
U 1 1 5C490967
P 7100 5250
F 0 "#PWR?" H 7100 5000 50  0001 C CNN
F 1 "GND" V 7100 5200 50  0000 R CNN
F 2 "" H 7100 5250 50  0001 C CNN
F 3 "" H 7100 5250 50  0001 C CNN
	1    7100 5250
	0    -1   -1   0   
$EndComp
Connection ~ 6900 5250
$Comp
L Connector_Generic:Conn_01x14 J?
U 1 1 5C49DE86
P 800 6800
F 0 "J?" H 720 5875 50  0000 C CNN
F 1 "AMPSEAL_MAIN" V 900 6800 50  0000 C CNN
F 2 "" H 800 6800 50  0001 C CNN
F 3 "~" H 800 6800 50  0001 C CNN
	1    800  6800
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C49DC58
P 1100 5200
F 0 "#PWR?" H 1100 5050 50  0001 C CNN
F 1 "+12V" H 1115 5373 50  0000 C CNN
F 2 "" H 1100 5200 50  0001 C CNN
F 3 "" H 1100 5200 50  0001 C CNN
	1    1100 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C512F6B
P 1050 7500
F 0 "#PWR?" H 1050 7250 50  0001 C CNN
F 1 "GND" V 1055 7372 50  0000 R CNN
F 2 "" H 1050 7500 50  0001 C CNN
F 3 "" H 1050 7500 50  0001 C CNN
	1    1050 7500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 7500 1000 7500
Text Label 1350 6200 2    50   ~ 0
FANOUT1
Wire Wire Line
	1000 6200 1350 6200
Wire Wire Line
	1000 6300 1350 6300
Wire Wire Line
	1000 6400 1350 6400
Text Label 1350 6300 2    50   ~ 0
FANOUT2
Text Label 1350 6400 2    50   ~ 0
FANOUT3
$Comp
L power:+5V #PWR?
U 1 1 5C5AF86A
P 1100 6500
F 0 "#PWR?" H 1100 6350 50  0001 C CNN
F 1 "+5V" V 1100 6600 50  0000 L CNN
F 2 "" H 1100 6500 50  0001 C CNN
F 3 "" H 1100 6500 50  0001 C CNN
	1    1100 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 6500 1000 6500
Wire Wire Line
	1000 6600 1350 6600
Text Label 1350 6600 2    50   ~ 0
IMD_AN1
Text Label 1350 6900 2    50   ~ 0
IMD_AN2
Text Label 1350 7000 2    50   ~ 0
IMD_AN3
Wire Wire Line
	1000 6900 1350 6900
Wire Wire Line
	1000 7000 1350 7000
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5C6A6FBB
P 2100 7100
F 0 "JP?" H 2400 7100 50  0000 C CNN
F 1 "Jumper" H 2650 7100 50  0000 C CNN
F 2 "" H 2100 7100 50  0001 C CNN
F 3 "~" H 2100 7100 50  0001 C CNN
	1    2100 7100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5C6A7073
P 2100 7200
F 0 "JP?" H 2400 7200 50  0000 C CNN
F 1 "Jumper" H 2650 7200 50  0000 C CNN
F 2 "" H 2100 7200 50  0001 C CNN
F 3 "~" H 2100 7200 50  0001 C CNN
	1    2100 7200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5C6A712D
P 2100 7300
F 0 "JP?" H 2400 7300 50  0000 C CNN
F 1 "Jumper" H 2650 7300 50  0000 C CNN
F 2 "" H 2100 7300 50  0001 C CNN
F 3 "~" H 2100 7300 50  0001 C CNN
	1    2100 7300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5C6A71E9
P 2100 7400
F 0 "JP?" H 2400 7400 50  0000 C CNN
F 1 "Jumper" H 2650 7400 50  0000 C CNN
F 2 "" H 2100 7400 50  0001 C CNN
F 3 "~" H 2100 7400 50  0001 C CNN
	1    2100 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7400 2250 7400
Wire Wire Line
	2250 7300 2300 7300
Connection ~ 2300 7300
Wire Wire Line
	2300 7300 2300 7400
Wire Wire Line
	2250 7200 2300 7200
Connection ~ 2300 7200
Wire Wire Line
	2300 7200 2300 7300
Wire Wire Line
	2250 7100 2300 7100
Wire Wire Line
	2300 7100 2300 7200
$Comp
L power:GND #PWR?
U 1 1 5C771CC6
P 2300 7450
F 0 "#PWR?" H 2300 7200 50  0001 C CNN
F 1 "GND" H 2305 7277 50  0000 C CNN
F 2 "" H 2300 7450 50  0001 C CNN
F 3 "" H 2300 7450 50  0001 C CNN
	1    2300 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7450 2300 7400
Connection ~ 2300 7400
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5C4D8B07
P 800 5600
F 0 "J?" H 720 6117 50  0000 C CNN
F 1 "AMPSEAL_PWR" V 900 5600 50  0000 C CNN
F 2 "" H 800 5600 50  0001 C CNN
F 3 "~" H 800 5600 50  0001 C CNN
	1    800  5600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C4B6D8C
P 1300 5850
F 0 "#PWR?" H 1300 5600 50  0001 C CNN
F 1 "GND" V 1305 5722 50  0000 R CNN
F 2 "" H 1300 5850 50  0001 C CNN
F 3 "" H 1300 5850 50  0001 C CNN
	1    1300 5850
	0    -1   -1   0   
$EndComp
Text Label 1750 5700 2    50   ~ 0
SHDN_LOOP_OUT
Text Label 1750 6000 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1300 5850 1050 5850
Wire Wire Line
	1050 5850 1050 5800
Wire Wire Line
	1050 5800 1000 5800
Wire Wire Line
	1000 5900 1050 5900
Wire Wire Line
	1050 5900 1050 5850
Connection ~ 1050 5850
Wire Wire Line
	1100 5200 1100 5300
Wire Wire Line
	1000 5400 1100 5400
Wire Wire Line
	1000 5300 1100 5300
Connection ~ 1100 5300
Wire Wire Line
	1100 5300 1100 5400
Wire Wire Line
	1000 5700 1750 5700
Wire Wire Line
	1000 6000 1750 6000
Text Notes 1100 5250 0    50   ~ 0
Shutdown loop in = 12V bus
Wire Wire Line
	1000 6700 1350 6700
Wire Wire Line
	1000 6800 1350 6800
Text Label 1350 6700 2    50   ~ 0
CAN+
Text Label 1350 6800 2    50   ~ 0
CAN-
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5C6BA890
P 1750 7300
F 0 "J?" H 1750 7600 50  0000 C CNN
F 1 "AUX" H 1750 7500 50  0000 C CNN
F 2 "" H 1750 7300 50  0001 C CNN
F 3 "~" H 1750 7300 50  0001 C CNN
	1    1750 7300
	-1   0    0    1   
$EndComp
Connection ~ 1950 7300
Wire Wire Line
	1000 7300 1950 7300
Connection ~ 1950 7400
Wire Wire Line
	1000 7400 1950 7400
Connection ~ 1950 7200
Wire Wire Line
	1000 7200 1950 7200
Connection ~ 1950 7100
Wire Wire Line
	1000 7100 1950 7100
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5C7C388D
P 900 4800
F 0 "J?" H 1050 4700 50  0000 C CNN
F 1 "HV-" H 1150 4800 50  0000 C CNN
F 2 "" H 900 4800 50  0001 C CNN
F 3 "~" H 900 4800 50  0001 C CNN
	1    900  4800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5C83C6D2
P 900 4650
F 0 "J?" H 1050 4500 50  0000 C CNN
F 1 "HV+" H 1150 4650 50  0000 C CNN
F 2 "" H 900 4650 50  0001 C CNN
F 3 "~" H 900 4650 50  0001 C CNN
	1    900  4650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C871653
P 1200 4400
F 0 "J?" V 1166 4212 50  0000 R CNN
F 1 "IMD" V 1300 4400 50  0000 R CNN
F 2 "" H 1200 4400 50  0001 C CNN
F 3 "~" H 1200 4400 50  0001 C CNN
	1    1200 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 4650 1200 4650
Wire Wire Line
	1200 4600 1200 4650
Wire Wire Line
	1300 4600 1300 4800
Wire Wire Line
	1300 4800 1100 4800
Wire Wire Line
	1800 4650 1600 4650
Wire Wire Line
	1400 4650 1200 4650
Connection ~ 1200 4650
Wire Wire Line
	1300 4800 1800 4800
Connection ~ 1300 4800
Wire Wire Line
	1000 5500 1050 5500
Wire Wire Line
	1050 5500 1050 5550
Wire Wire Line
	1050 5600 1000 5600
Connection ~ 1050 5550
Wire Wire Line
	1050 5550 1050 5600
Text Label 1900 5550 2    50   ~ 0
BATT_12V_UNMETERED
Wire Wire Line
	1050 5550 1900 5550
Wire Wire Line
	5300 5050 4250 5050
Wire Wire Line
	5300 5050 5300 5400
Wire Wire Line
	5300 5950 4250 5950
$Sheet
S 4600 1250 1600 900 
U 5C4E5628
F0 "uC+CAN" 50
F1 "uC+CAN.sch" 50
F2 "FAN_CTRL_0" O R 6200 1350 50 
F3 "FAN_CTRL_1" O R 6200 1450 50 
F4 "FAN_CTRL_2" O R 6200 1550 50 
F5 "FAN_CTRL_3" O R 6200 1650 50 
F6 "NTC1" I R 6200 1800 50 
F7 "CAN+" B L 4600 1350 50 
F8 "CAN-" B L 4600 1450 50 
F9 "DC_DC_EN" O L 4600 1950 50 
F10 "DC_DC_FAULT" I L 4600 2050 50 
F11 "RXD" I L 4600 1700 50 
F12 "TXD" I L 4600 1600 50 
F13 "NTC2" I R 6200 1900 50 
F14 "DC_DC_TRIM_EN" O L 4600 1850 50 
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
F7 "12V_OUT" I R 6200 2800 50 
F8 "5V_OUT" I R 6200 2650 50 
$EndSheet
$Comp
L power:+5V #PWR?
U 1 1 5C6C52ED
P 6300 2600
F 0 "#PWR?" H 6300 2450 50  0001 C CNN
F 1 "+5V" H 6315 2773 50  0000 C CNN
F 2 "" H 6300 2600 50  0001 C CNN
F 3 "" H 6300 2600 50  0001 C CNN
	1    6300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2600 6300 2650
Wire Wire Line
	6300 2650 6200 2650
Text Notes 6350 2750 0    50   ~ 0
Need to feed METERED 12V back in \nso that 5V power isn't being ignored
Text Notes 4600 2450 0    50   ~ 0
Global nets connected to this sheet: \nGND
$EndSCHEMATC
