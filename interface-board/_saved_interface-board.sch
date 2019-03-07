EESchema Schematic File Version 4
LIBS:interface-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2100 1150 2    50   ~ 0
HV+
Text Label 2100 1400 2    50   ~ 0
HV-
Text Label 1350 6150 2    50   ~ 0
FANOUT1
Wire Wire Line
	1000 6150 1350 6150
Wire Wire Line
	1000 6850 1350 6850
Wire Wire Line
	1000 6050 1350 6050
Text Label 1350 6850 2    50   ~ 0
FANOUT2
Text Label 1350 6050 2    50   ~ 0
FANOUT3
Text Label 1350 7350 2    50   ~ 0
IMD_AN1
Text Label 1350 7450 2    50   ~ 0
IMD_AN2
Text Label 1350 7550 2    50   ~ 0
IMD_AN3
Wire Wire Line
	1000 7450 1350 7450
$Comp
L power:GND #PWR08
U 1 1 5C4B6D8C
P 1200 5750
F 0 "#PWR08" H 1200 5500 50  0001 C CNN
F 1 "GND" V 1205 5622 50  0000 R CNN
F 2 "" H 1200 5750 50  0001 C CNN
F 3 "" H 1200 5750 50  0001 C CNN
	1    1200 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 5650 1000 5650
Wire Wire Line
	1000 5750 1050 5750
Wire Wire Line
	1000 6450 1350 6450
Wire Wire Line
	1000 6550 1350 6550
Text Label 1350 6450 2    50   ~ 0
CAN+
Text Label 1350 6550 2    50   ~ 0
CAN-
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5C83C6D2
P 950 1150
F 0 "J6" H 950 1050 50  0000 C CNN
F 1 "HV+" H 1100 1150 50  0000 C CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 950 1150 50  0001 C CNN
F 3 "~" H 950 1150 50  0001 C CNN
	1    950  1150
	-1   0    0    1   
$EndComp
$Sheet
S 5750 1500 1600 900 
U 5C4E5628
F0 "uC+CAN" 50
F1 "uC+CAN.sch" 50
F2 "FAN_CTRL_0" O R 7350 1600 50 
F3 "FAN_CTRL_1" O R 7350 1700 50 
F4 "FAN_CTRL_2" O R 7350 1800 50 
F5 "FAN_CTRL_3" O R 7350 1900 50 
F6 "CAN+" B L 5750 1600 50 
F7 "CAN-" B L 5750 1700 50 
F8 "DC_DC_EN" O L 5750 2200 50 
F9 "DC_DC_FAULT" I L 5750 2300 50 
F10 "RXD" I L 5750 1950 50 
F11 "TXD" O L 5750 1850 50 
F12 "DC_DC_TRIM_EN" O L 5750 2100 50 
F13 "NTC1" I R 7350 2150 50 
F14 "NTC2" I R 7350 2250 50 
$EndSheet
Text Notes 5750 1400 0    50   ~ 0
Global nets connected to this sheet: \nGND, 5V,  SDA, SCL
$Sheet
S 7700 1500 1100 500 
U 5C5EE841
F0 "fanControl" 50
F1 "file5C5EE840.sch" 50
F2 "FANOUT0" O R 8800 1600 50 
F3 "FAN_CTRL_0" I L 7700 1600 50 
F4 "FANOUT1" O R 8800 1700 50 
F5 "FAN_CTRL_1" I L 7700 1700 50 
F6 "FANOUT2" O R 8800 1800 50 
F7 "FAN_CTRL_2" I L 7700 1800 50 
F8 "FANOUT3" O R 8800 1900 50 
F9 "FAN_CTRL_3" I L 7700 1900 50 
$EndSheet
Text Notes 7700 1400 0    50   ~ 0
Global nets connected to this sheet: \nGND, 12V
Wire Wire Line
	7350 1600 7700 1600
Wire Wire Line
	7350 1700 7700 1700
Wire Wire Line
	7350 1800 7700 1800
Wire Wire Line
	7350 1900 7700 1900
$Sheet
S 5800 3150 1600 850 
U 5C667FAF
F0 "DC->DC Converter" 50
F1 "file5C667FAE.sch" 50
F2 "TRIM_EN" I L 5800 3600 50 
F3 "ENABLE" I L 5800 3500 50 
F4 "FAULT" O L 5800 3700 50 
F5 "HV+" I L 5800 3250 50 
F6 "HV-" I L 5800 3350 50 
F7 "12V_OUT" O R 7400 3250 50 
$EndSheet
Text Notes 5800 3050 0    50   ~ 0
Global nets connected to this sheet: \nGND
$Sheet
S 8150 3050 700  300 
U 5C4BAF41
F0 "meter" 50
F1 "file5C4BAF40.sch" 50
F2 "IN" I L 8150 3250 50 
F3 "OUT" I L 8150 3150 50 
F4 "SCL" I R 8850 3150 50 
F5 "SDA" I R 8850 3250 50 
$EndSheet
Text Notes 8150 2950 0    50   ~ 0
Global nets connected to this sheet: \nGND, 5V
Text Label 5050 3250 0    50   ~ 0
HV+
Text Label 5050 3350 0    50   ~ 0
HV-
Text Label 5150 2100 0    50   ~ 0
DC_DC_TRIM_EN
Wire Wire Line
	5150 2100 5750 2100
Wire Wire Line
	5150 2200 5750 2200
Text Label 5150 2200 0    50   ~ 0
DC_DC_EN
Wire Wire Line
	5150 2300 5750 2300
Text Label 5150 2300 0    50   ~ 0
DC_DC_FAULT
Text Label 5200 3600 0    50   ~ 0
DC_DC_TRIM_EN
Wire Wire Line
	5200 3600 5800 3600
Wire Wire Line
	5200 3500 5800 3500
Text Label 5200 3500 0    50   ~ 0
DC_DC_EN
Wire Wire Line
	5200 3700 5800 3700
Text Label 5200 3700 0    50   ~ 0
DC_DC_FAULT
Text Label 7450 3150 0    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	7450 3150 8150 3150
Wire Wire Line
	8800 1600 9300 1600
Wire Wire Line
	8800 1700 9300 1700
Wire Wire Line
	8800 1800 9300 1800
Wire Wire Line
	8800 1900 9300 1900
Text Label 9300 1700 2    50   ~ 0
FANOUT1
Text Label 9300 1800 2    50   ~ 0
FANOUT2
Text Label 9300 1900 2    50   ~ 0
FANOUT3
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5C50D03B
P 900 4600
F 0 "J3" H 900 4700 50  0000 C CNN
F 1 "CASEFAN2" V 1050 4550 50  0000 C CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 900 4600 50  0001 C CNN
F 3 "~" H 900 4600 50  0001 C CNN
	1    900  4600
	-1   0    0    -1  
$EndComp
Text Label 9300 1600 2    50   ~ 0
FANOUT0
Wire Wire Line
	1100 4700 1450 4700
Text Label 1450 4700 2    50   ~ 0
FANOUT0
$Comp
L power:+12V #PWR04
U 1 1 5C510DD6
P 1150 4550
F 0 "#PWR04" H 1150 4400 50  0001 C CNN
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
L Connector_Generic:Conn_01x02 J2
U 1 1 5C51F28D
P 900 4100
F 0 "J2" H 900 4200 50  0000 C CNN
F 1 "CASEFAN1" V 1050 4050 50  0000 C CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 900 4100 50  0001 C CNN
F 3 "~" H 900 4100 50  0001 C CNN
	1    900  4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1100 4200 1450 4200
Text Label 1450 4200 2    50   ~ 0
FANOUT0
$Comp
L power:+12V #PWR03
U 1 1 5C51F296
P 1150 4050
F 0 "#PWR03" H 1150 3900 50  0001 C CNN
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
L Connector_Generic:Conn_01x05 J1
U 1 1 5C5369F5
P 900 3250
F 0 "J1" H 900 2950 50  0000 C CNN
F 1 "HECS" V 1050 3250 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 900 3250 50  0001 C CNN
F 3 "~" H 900 3250 50  0001 C CNN
	1    900  3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5C536CD3
P 1150 3350
F 0 "#PWR01" H 1150 3200 50  0001 C CNN
F 1 "+5V" V 1165 3478 50  0000 L CNN
F 2 "" H 1150 3350 50  0001 C CNN
F 3 "" H 1150 3350 50  0001 C CNN
	1    1150 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 3350 1100 3350
$Comp
L power:GND #PWR02
U 1 1 5C539587
P 1150 3500
F 0 "#PWR02" H 1150 3250 50  0001 C CNN
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
L Connector_Generic:Conn_01x04 J11
U 1 1 5C546232
P 1900 3300
F 0 "J11" H 1900 3000 50  0000 C CNN
F 1 "UART" V 2000 3250 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1900 3300 50  0001 C CNN
F 3 "~" H 1900 3300 50  0001 C CNN
	1    1900 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5C549431
P 2150 3200
F 0 "#PWR012" H 2150 2950 50  0001 C CNN
F 1 "GND" V 2155 3072 50  0000 R CNN
F 2 "" H 2150 3200 50  0001 C CNN
F 3 "" H 2150 3200 50  0001 C CNN
	1    2150 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 3200 2100 3200
$Comp
L power:+5V #PWR011
U 1 1 5C54C53B
P 2150 3050
F 0 "#PWR011" H 2150 2900 50  0001 C CNN
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
	5750 1850 5400 1850
Wire Wire Line
	5750 1950 5400 1950
Text Label 5400 1950 0    50   ~ 0
UART_RX
Text Label 5400 1850 0    50   ~ 0
UART_TX
Text Label 2450 3400 2    50   ~ 0
UART_RX
Text Label 2450 3300 2    50   ~ 0
UART_TX
Wire Wire Line
	5750 1600 5450 1600
Wire Wire Line
	5750 1700 5450 1700
Text Label 5450 1600 0    50   ~ 0
CAN+
Text Label 5450 1700 0    50   ~ 0
CAN-
Text Label 7650 2150 2    50   ~ 0
TEMP_1
Text Label 7650 2250 2    50   ~ 0
TEMP_2
Wire Wire Line
	7350 2150 7650 2150
Wire Wire Line
	7350 2250 7650 2250
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5C5BFA90
P 1900 4100
F 0 "J12" H 1900 4200 50  0000 C CNN
F 1 "NTC1" V 2050 4050 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1900 4100 50  0001 C CNN
F 3 "~" H 1900 4100 50  0001 C CNN
	1    1900 4100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 5C5BFB82
P 1900 4600
F 0 "J13" H 1900 4700 50  0000 C CNN
F 1 "NTC1" V 2050 4550 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1900 4600 50  0001 C CNN
F 3 "~" H 1900 4600 50  0001 C CNN
	1    1900 4600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5C5BFC27
P 2150 4050
F 0 "#PWR013" H 2150 3900 50  0001 C CNN
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
L power:+5V #PWR014
U 1 1 5C5C4219
P 2150 4550
F 0 "#PWR014" H 2150 4400 50  0001 C CNN
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
$Comp
L Device:C C1
U 1 1 5C62DA6B
P 3000 7100
AR Path="/5C62DA6B" Ref="C1"  Part="1" 
AR Path="/5C5EE841/5C62DA6B" Ref="C?"  Part="1" 
F 0 "C1" H 3115 7146 50  0000 L CNN
F 1 "470uF" H 3115 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3038 6950 50  0001 C CNN
F 3 "~" H 3000 7100 50  0001 C CNN
	1    3000 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5C62DA87
P 3000 7250
AR Path="/5C62DA87" Ref="#PWR010"  Part="1" 
AR Path="/5C5EE841/5C62DA87" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 3000 7000 50  0001 C CNN
F 1 "GND" H 3005 7077 50  0000 C CNN
F 2 "" H 3000 7250 50  0001 C CNN
F 3 "" H 3000 7250 50  0001 C CNN
	1    3000 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR09
U 1 1 5C62DA9F
P 3000 6950
AR Path="/5C62DA9F" Ref="#PWR09"  Part="1" 
AR Path="/5C5EE841/5C62DA9F" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 3000 6800 50  0001 C CNN
F 1 "+12V" H 3015 7123 50  0000 C CNN
F 2 "" H 3000 6950 50  0001 C CNN
F 3 "" H 3000 6950 50  0001 C CNN
	1    3000 6950
	1    0    0    -1  
$EndComp
Wire Notes Line width 39 rgb(253, 0, 0)
	600  850  2850 850 
Wire Notes Line width 39 rgb(255, 0, 0)
	2900 900  2900 2150
Wire Notes Line width 39 rgb(255, 0, 0)
	2850 2150 600  2150
Wire Notes Line width 39 rgb(255, 0, 0)
	600  2100 600  850 
Text Notes 600  800  0    157  ~ 31
HV Danger!
$Comp
L Connector_Generic:Conn_01x23 J16
U 1 1 5C4D7AA0
P 800 6550
F 0 "J16" H 720 7867 50  0000 C CNN
F 1 "Conn_01x23" H 720 7776 50  0000 C CNN
F 2 "1-776087-1:TE_1-776087-1" H 800 6550 50  0001 C CNN
F 3 "~" H 800 6550 50  0001 C CNN
	1    800  6550
	-1   0    0    -1  
$EndComp
Text Label 1750 5450 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1000 5450 1750 5450
Text Label 1750 6250 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1000 6250 1750 6250
Text Label 1750 6950 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1000 6950 1750 6950
Wire Wire Line
	1000 7350 1350 7350
Wire Wire Line
	1000 7550 1350 7550
Text Label 1750 5550 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1000 5550 1750 5550
Text Label 1750 6350 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1000 6350 1750 6350
Wire Wire Line
	1000 5850 1050 5850
Wire Wire Line
	1050 5650 1050 5750
Connection ~ 1050 5750
Wire Wire Line
	1050 5750 1050 5850
Wire Wire Line
	1050 5750 1200 5750
$Comp
L power:GND #PWR0102
U 1 1 5C5705AA
P 1150 6650
F 0 "#PWR0102" H 1150 6400 50  0001 C CNN
F 1 "GND" V 1155 6522 50  0000 R CNN
F 2 "" H 1150 6650 50  0001 C CNN
F 3 "" H 1150 6650 50  0001 C CNN
	1    1150 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 6650 1000 6650
$Comp
L power:+12V #PWR0103
U 1 1 5C575810
P 1250 5950
F 0 "#PWR0103" H 1250 5800 50  0001 C CNN
F 1 "+12V" V 1265 6078 50  0000 L CNN
F 2 "" H 1250 5950 50  0001 C CNN
F 3 "" H 1250 5950 50  0001 C CNN
	1    1250 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 5950 1250 5950
$Comp
L power:+12V #PWR0104
U 1 1 5C57A846
P 1150 6750
F 0 "#PWR0104" H 1150 6600 50  0001 C CNN
F 1 "+12V" V 1165 6878 50  0000 L CNN
F 2 "" H 1150 6750 50  0001 C CNN
F 3 "" H 1150 6750 50  0001 C CNN
	1    1150 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 6750 1000 6750
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5C4FC040
P 2950 5850
F 0 "J4" H 2950 5550 50  0000 C CNN
F 1 "Bender-LV" V 3050 5800 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 2950 5850 50  0001 C CNN
F 3 "~" H 2950 5850 50  0001 C CNN
	1    2950 5850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C509587
P 3200 5950
F 0 "#PWR0105" H 3200 5700 50  0001 C CNN
F 1 "GND" V 3205 5822 50  0000 R CNN
F 2 "" H 3200 5950 50  0001 C CNN
F 3 "" H 3200 5950 50  0001 C CNN
	1    3200 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 5850 3150 5950
Connection ~ 3150 5950
Wire Wire Line
	3150 5950 3150 6050
Wire Wire Line
	3150 5950 3200 5950
Wire Wire Line
	3150 5750 3450 5750
Text Label 3450 5750 2    50   ~ 0
IMD_OK
$Comp
L power:+12V #PWR0106
U 1 1 5C51B056
P 3200 5600
F 0 "#PWR0106" H 3200 5450 50  0001 C CNN
F 1 "+12V" H 3215 5773 50  0000 C CNN
F 2 "" H 3200 5600 50  0001 C CNN
F 3 "" H 3200 5600 50  0001 C CNN
	1    3200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5600 3200 5650
Wire Wire Line
	3200 5650 3150 5650
Wire Wire Line
	1000 7250 1350 7250
Text Label 1350 7250 2    50   ~ 0
IMD_OK
$Comp
L Device:Fuse F1
U 1 1 5C5E871F
P 5600 3250
F 0 "F1" V 5403 3250 50  0000 C CNN
F 1 "2A" V 5494 3250 50  0000 C CNN
F 2 "CustomFootprints:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open_3d" V 5530 3250 50  0001 C CNN
F 3 "~" H 5600 3250 50  0001 C CNN
	1    5600 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3250 5750 3250
Wire Wire Line
	5050 3250 5450 3250
Wire Wire Line
	5050 3350 5800 3350
Wire Wire Line
	7400 3250 8150 3250
Text Notes 1600 6000 0    50   ~ 0
Return from safety loop
Text GLabel 8950 3250 2    50   Input ~ 0
SDA
Wire Wire Line
	8950 3250 8850 3250
Text GLabel 8950 3150 2    50   Input ~ 0
SCL
Wire Wire Line
	8850 3150 8950 3150
$Comp
L interface-board-rescue:EPM1510SJ-CUSTOM_IC U10
U 1 1 5C600D22
P 1550 2000
F 0 "U10" H 1550 2450 50  0000 C CNN
F 1 "EPM1510SJ" H 1550 1950 50  0000 C CNN
F 2 "CustomFootprints:EPM1510SJ" H 1550 2000 50  0001 C CNN
F 3 "" H 1550 2000 50  0001 C CNN
	1    1550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1700 800  1700
Wire Wire Line
	1000 1900 800  1900
Text Label 800  1700 0    50   ~ 0
HV+
Text Label 800  1900 0    50   ~ 0
HV-
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5C61B783
P 2350 1750
F 0 "J5" V 2316 1562 50  0000 R CNN
F 1 "BLINKY" H 2500 1850 50  0000 R CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 2350 1750 50  0001 C CNN
F 3 "~" H 2350 1750 50  0001 C CNN
	1    2350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1700 2150 1700
Wire Wire Line
	2150 1700 2150 1750
Wire Wire Line
	2100 1900 2150 1900
Wire Wire Line
	2150 1900 2150 1850
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5C622267
P 1450 950
F 0 "J8" V 1416 762 50  0000 R CNN
F 1 "HV+" V 1325 762 50  0000 R CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_1-770870-x_1x03_P4.14mm_Vertical" H 1450 950 50  0001 C CNN
F 3 "~" H 1450 950 50  0001 C CNN
	1    1450 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 1150 1350 1150
Wire Wire Line
	1150 1400 2100 1400
Wire Wire Line
	1550 1150 2100 1150
Wire Wire Line
	1350 1150 1450 1150
Connection ~ 1350 1150
Connection ~ 1550 1150
Connection ~ 1450 1150
Wire Wire Line
	1450 1150 1550 1150
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5C62A13D
P 950 1400
F 0 "J7" H 870 1075 50  0000 C CNN
F 1 "HV-" H 1100 1400 50  0000 C CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_1-770870-x_1x03_P4.14mm_Vertical" H 950 1400 50  0001 C CNN
F 3 "~" H 950 1400 50  0001 C CNN
	1    950  1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 1300 1150 1400
Connection ~ 1150 1400
Wire Wire Line
	1150 1400 1150 1500
Text Notes 600  5200 0    50   ~ 0
SHDN_LOOP_OUT is connected to 12V through shutdown loop
Text Notes 3150 6950 0    50   ~ 0
Can remove this
Text Notes 850  3850 0    50   ~ 0
Local fan controls and thermocoupler inputs
Text Notes 850  2800 0    50   ~ 0
Current monitor for HV and UART debug port
Text Notes 1800 1550 0    50   ~ 0
This is to run a HV indicator LED (called blinky).
$Comp
L Regulator_Switching:R-78E5.0-0.5 U7
U 1 1 5C80E327
P 6450 5300
AR Path="/5C80E327" Ref="U7"  Part="1" 
AR Path="/5C667FAF/5C80E327" Ref="U?"  Part="1" 
F 0 "U7" H 6450 5542 50  0000 C CNN
F 1 "R-78E5.0-0.5" H 6450 5451 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 6500 5050 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-0.5.pdf" H 6450 5300 50  0001 C CNN
	1    6450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5300 6150 5300
Wire Wire Line
	6900 5300 6750 5300
$Comp
L power:GND #PWR?
U 1 1 5C80E330
P 6450 5650
AR Path="/5C80E330" Ref="#PWR?"  Part="1" 
AR Path="/5C667FAF/5C80E330" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 5400 50  0001 C CNN
F 1 "GND" H 6455 5477 50  0000 C CNN
F 2 "" H 6450 5650 50  0001 C CNN
F 3 "" H 6450 5650 50  0001 C CNN
	1    6450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5650 6450 5600
Text Notes 5550 4800 0    100  ~ 0
12V->5V
$Comp
L Device:C C?
U 1 1 5C80E338
P 6900 5450
AR Path="/5C80E338" Ref="C?"  Part="1" 
AR Path="/5C667FAF/5C80E338" Ref="C?"  Part="1" 
F 0 "C?" H 7015 5496 50  0000 L CNN
F 1 "0.1uF" H 6650 5350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6938 5300 50  0001 C CNN
F 3 "~" H 6900 5450 50  0001 C CNN
	1    6900 5450
	1    0    0    -1  
$EndComp
Connection ~ 6900 5300
$Comp
L power:GND #PWR?
U 1 1 5C80E340
P 7050 5650
AR Path="/5C80E340" Ref="#PWR?"  Part="1" 
AR Path="/5C667FAF/5C80E340" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 5400 50  0001 C CNN
F 1 "GND" H 7055 5477 50  0000 C CNN
F 2 "" H 7050 5650 50  0001 C CNN
F 3 "" H 7050 5650 50  0001 C CNN
	1    7050 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5600 7050 5600
Wire Wire Line
	7050 5600 7050 5650
Connection ~ 7050 5600
Wire Wire Line
	7050 5600 7200 5600
$Comp
L Device:C C?
U 1 1 5C80E34A
P 6000 5450
AR Path="/5C80E34A" Ref="C?"  Part="1" 
AR Path="/5C667FAF/5C80E34A" Ref="C?"  Part="1" 
F 0 "C?" H 6115 5496 50  0000 L CNN
F 1 "10uF" H 6115 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6038 5300 50  0001 C CNN
F 3 "~" H 6000 5450 50  0001 C CNN
	1    6000 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C80E351
P 6000 5600
AR Path="/5C80E351" Ref="#PWR?"  Part="1" 
AR Path="/5C667FAF/5C80E351" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6000 5350 50  0001 C CNN
F 1 "GND" H 6005 5427 50  0000 C CNN
F 2 "" H 6000 5600 50  0001 C CNN
F 3 "" H 6000 5600 50  0001 C CNN
	1    6000 5600
	1    0    0    -1  
$EndComp
Wire Notes Line
	7600 4650 7600 5950
Text HLabel 5950 5300 0    50   Input ~ 0
12V_IN
Wire Wire Line
	5950 5300 6000 5300
Connection ~ 6000 5300
Wire Wire Line
	7200 5300 6900 5300
$Comp
L Device:C C?
U 1 1 5C80E35C
P 7200 5450
AR Path="/5C80E35C" Ref="C?"  Part="1" 
AR Path="/5C667FAF/5C80E35C" Ref="C?"  Part="1" 
F 0 "C?" H 7315 5496 50  0000 L CNN
F 1 "10uF" H 7315 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7238 5300 50  0001 C CNN
F 3 "~" H 7200 5450 50  0001 C CNN
	1    7200 5450
	1    0    0    -1  
$EndComp
Text HLabel 7300 5300 2    50   Input ~ 0
5V_OUT
Connection ~ 7200 5300
Wire Notes Line
	5500 5950 7600 5950
Wire Notes Line
	5500 4650 5500 5950
Wire Notes Line
	5500 4650 7600 4650
Wire Wire Line
	7200 5300 7300 5300
$Sheet
S 9800 6150 1300 250 
U 5C83278E
F0 "Title Page" 50
F1 "file5C83278D.sch" 50
$EndSheet
$Comp
L Device:Fuse F?
U 1 1 5C705837
P 1400 2500
F 0 "F?" V 1203 2500 50  0000 C CNN
F 1 "2A" V 1294 2500 50  0000 C CNN
F 2 "CustomFootprints:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open_3d" V 1330 2500 50  0001 C CNN
F 3 "~" H 1400 2500 50  0001 C CNN
	1    1400 2500
	0    1    1    0   
$EndComp
$EndSCHEMATC