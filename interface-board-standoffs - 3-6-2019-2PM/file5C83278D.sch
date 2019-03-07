EESchema Schematic File Version 4
LIBS:interface-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2150 1150 2    50   ~ 0
HV+
Text Label 2150 1400 2    50   ~ 0
HV-
Text Label 1400 6150 2    50   ~ 0
FANOUT1
Wire Wire Line
	1050 6150 1400 6150
Wire Wire Line
	1050 6850 1400 6850
Wire Wire Line
	1050 6050 1400 6050
Text Label 1400 6850 2    50   ~ 0
FANOUT2
Text Label 1400 6050 2    50   ~ 0
FANOUT3
Text Label 1400 7350 2    50   ~ 0
IMD_AN1
Text Label 1400 7450 2    50   ~ 0
IMD_AN2
Text Label 1400 7550 2    50   ~ 0
IMD_AN3
Wire Wire Line
	1050 7450 1400 7450
$Comp
L power:GND #PWR?
U 1 1 5C83048B
P 1250 5750
AR Path="/5C83048B" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C83048B" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 1250 5500 50  0001 C CNN
F 1 "GND" V 1255 5622 50  0000 R CNN
F 2 "" H 1250 5750 50  0001 C CNN
F 3 "" H 1250 5750 50  0001 C CNN
	1    1250 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 5650 1050 5650
Wire Wire Line
	1050 5750 1100 5750
Wire Wire Line
	1050 6450 1400 6450
Wire Wire Line
	1050 6550 1400 6550
Text Label 1400 6450 2    50   ~ 0
CAN+
Text Label 1400 6550 2    50   ~ 0
CAN-
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5C830497
P 1000 1150
AR Path="/5C830497" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C830497" Ref="J5"  Part="1" 
F 0 "J5" H 1000 1050 50  0000 C CNN
F 1 "HV+" H 1150 1150 50  0000 C CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 1000 1150 50  0001 C CNN
F 3 "~" H 1000 1150 50  0001 C CNN
	1    1000 1150
	-1   0    0    1   
$EndComp
$Sheet
S 6350 1500 1600 900 
U 5C8304A7
F0 "sheet5C830476" 50
F1 "uC+CAN.sch" 50
F2 "FAN_CTRL_0" O R 7950 1600 50 
F3 "FAN_CTRL_1" O R 7950 1700 50 
F4 "FAN_CTRL_2" O R 7950 1800 50 
F5 "FAN_CTRL_3" O R 7950 1900 50 
F6 "CAN+" B L 6350 1600 50 
F7 "CAN-" B L 6350 1700 50 
F8 "DC_DC_EN" O L 6350 2200 50 
F9 "DC_DC_FAULT" I L 6350 2300 50 
F10 "RXD" I L 6350 1950 50 
F11 "TXD" O L 6350 1850 50 
F12 "DC_DC_TRIM_EN" O L 6350 2100 50 
F13 "NTC1" I R 7950 2150 50 
F14 "NTC2" I R 7950 2250 50 
$EndSheet
Text Notes 6350 1400 0    50   ~ 0
Global nets connected to this sheet: \nGND, 5V,  SDA, SCL
$Sheet
S 8300 1500 1100 500 
U 5C8304B2
F0 "sheet5C830477" 50
F1 "file5C5EE840.sch" 50
F2 "FANOUT0" O R 9400 1600 50 
F3 "FAN_CTRL_0" I L 8300 1600 50 
F4 "FANOUT1" O R 9400 1700 50 
F5 "FAN_CTRL_1" I L 8300 1700 50 
F6 "FANOUT2" O R 9400 1800 50 
F7 "FAN_CTRL_2" I L 8300 1800 50 
F8 "FANOUT3" O R 9400 1900 50 
F9 "FAN_CTRL_3" I L 8300 1900 50 
$EndSheet
Text Notes 8300 1400 0    50   ~ 0
Global nets connected to this sheet: \nGND, 12V
Wire Wire Line
	7950 1600 8300 1600
Wire Wire Line
	7950 1700 8300 1700
Wire Wire Line
	7950 1800 8300 1800
Wire Wire Line
	7950 1900 8300 1900
$Sheet
S 6400 3150 1600 850 
U 5C8304BF
F0 "sheet5C830478" 50
F1 "file5C667FAE.sch" 50
F2 "TRIM_EN" I L 6400 3600 50 
F3 "ENABLE" I L 6400 3500 50 
F4 "FAULT" O L 6400 3700 50 
F5 "HV+" I L 6400 3250 50 
F6 "HV-" I L 6400 3350 50 
F7 "12V_OUT" O R 8000 3250 50 
$EndSheet
Text Notes 6400 3050 0    50   ~ 0
Global nets connected to this sheet: \nGND
$Sheet
S 8750 3050 700  300 
U 5C8304C6
F0 "sheet5C830479" 50
F1 "file5C4BAF40.sch" 50
F2 "IN" I L 8750 3250 50 
F3 "OUT" I L 8750 3150 50 
F4 "SCL" I R 9450 3150 50 
F5 "SDA" I R 9450 3250 50 
$EndSheet
Text Notes 8750 2950 0    50   ~ 0
Global nets connected to this sheet: \nGND, 5V
Text Label 5650 3250 0    50   ~ 0
HV+
Text Label 5650 3350 0    50   ~ 0
HV-
Text Label 5750 2100 0    50   ~ 0
DC_DC_TRIM_EN
Wire Wire Line
	5750 2100 6350 2100
Wire Wire Line
	5750 2200 6350 2200
Text Label 5750 2200 0    50   ~ 0
DC_DC_EN
Wire Wire Line
	5750 2300 6350 2300
Text Label 5750 2300 0    50   ~ 0
DC_DC_FAULT
Text Label 5800 3600 0    50   ~ 0
DC_DC_TRIM_EN
Wire Wire Line
	5800 3600 6400 3600
Wire Wire Line
	5800 3500 6400 3500
Text Label 5800 3500 0    50   ~ 0
DC_DC_EN
Wire Wire Line
	5800 3700 6400 3700
Text Label 5800 3700 0    50   ~ 0
DC_DC_FAULT
Text Label 8050 3150 0    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	8050 3150 8750 3150
Wire Wire Line
	9400 1600 9900 1600
Wire Wire Line
	9400 1700 9900 1700
Wire Wire Line
	9400 1800 9900 1800
Wire Wire Line
	9400 1900 9900 1900
Text Label 9900 1700 2    50   ~ 0
FANOUT1
Text Label 9900 1800 2    50   ~ 0
FANOUT2
Text Label 9900 1900 2    50   ~ 0
FANOUT3
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C8304E4
P 950 4600
AR Path="/5C8304E4" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C8304E4" Ref="J4"  Part="1" 
F 0 "J4" H 950 4700 50  0000 C CNN
F 1 "CASEFAN2" V 1100 4550 50  0000 C CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 950 4600 50  0001 C CNN
F 3 "~" H 950 4600 50  0001 C CNN
	1    950  4600
	-1   0    0    -1  
$EndComp
Text Label 9900 1600 2    50   ~ 0
FANOUT0
Wire Wire Line
	1150 4700 1500 4700
Text Label 1500 4700 2    50   ~ 0
FANOUT0
$Comp
L power:+12V #PWR?
U 1 1 5C8304EE
P 1200 4550
AR Path="/5C8304EE" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C8304EE" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 1200 4400 50  0001 C CNN
F 1 "+12V" H 1215 4723 50  0000 C CNN
F 2 "" H 1200 4550 50  0001 C CNN
F 3 "" H 1200 4550 50  0001 C CNN
	1    1200 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 4550 1200 4600
Wire Wire Line
	1200 4600 1150 4600
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C8304F6
P 950 4100
AR Path="/5C8304F6" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C8304F6" Ref="J3"  Part="1" 
F 0 "J3" H 950 4200 50  0000 C CNN
F 1 "CASEFAN1" V 1100 4050 50  0000 C CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 950 4100 50  0001 C CNN
F 3 "~" H 950 4100 50  0001 C CNN
	1    950  4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 4200 1500 4200
Text Label 1500 4200 2    50   ~ 0
FANOUT0
$Comp
L power:+12V #PWR?
U 1 1 5C8304FF
P 1200 4050
AR Path="/5C8304FF" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C8304FF" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 1200 3900 50  0001 C CNN
F 1 "+12V" H 1215 4223 50  0000 C CNN
F 2 "" H 1200 4050 50  0001 C CNN
F 3 "" H 1200 4050 50  0001 C CNN
	1    1200 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 4050 1200 4100
Wire Wire Line
	1200 4100 1150 4100
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5C830507
P 950 3250
AR Path="/5C830507" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C830507" Ref="J2"  Part="1" 
F 0 "J2" H 950 2950 50  0000 C CNN
F 1 "HECS" V 1100 3250 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 950 3250 50  0001 C CNN
F 3 "~" H 950 3250 50  0001 C CNN
	1    950  3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C83050E
P 1200 3350
AR Path="/5C83050E" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C83050E" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 1200 3200 50  0001 C CNN
F 1 "+5V" V 1215 3478 50  0000 L CNN
F 2 "" H 1200 3350 50  0001 C CNN
F 3 "" H 1200 3350 50  0001 C CNN
	1    1200 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 3350 1150 3350
$Comp
L power:GND #PWR?
U 1 1 5C830515
P 1200 3500
AR Path="/5C830515" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C830515" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 1200 3250 50  0001 C CNN
F 1 "GND" H 1205 3327 50  0000 C CNN
F 2 "" H 1200 3500 50  0001 C CNN
F 3 "" H 1200 3500 50  0001 C CNN
	1    1200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3500 1200 3450
Wire Wire Line
	1200 3450 1150 3450
Wire Wire Line
	1150 3250 1500 3250
Wire Wire Line
	1150 3150 1500 3150
Wire Wire Line
	1150 3050 1500 3050
Text Label 1500 3050 2    50   ~ 0
IMD_AN1
Text Label 1500 3150 2    50   ~ 0
IMD_AN2
Text Label 1500 3250 2    50   ~ 0
IMD_AN3
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5C830523
P 1950 3300
AR Path="/5C830523" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C830523" Ref="J8"  Part="1" 
F 0 "J8" H 1950 3000 50  0000 C CNN
F 1 "UART" V 2050 3250 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1950 3300 50  0001 C CNN
F 3 "~" H 1950 3300 50  0001 C CNN
	1    1950 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C83052A
P 2200 3200
AR Path="/5C83052A" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C83052A" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 2200 2950 50  0001 C CNN
F 1 "GND" V 2205 3072 50  0000 R CNN
F 2 "" H 2200 3200 50  0001 C CNN
F 3 "" H 2200 3200 50  0001 C CNN
	1    2200 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3200 2150 3200
$Comp
L power:+5V #PWR?
U 1 1 5C830531
P 2200 3050
AR Path="/5C830531" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C830531" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 2200 2900 50  0001 C CNN
F 1 "+5V" H 2215 3223 50  0000 C CNN
F 2 "" H 2200 3050 50  0001 C CNN
F 3 "" H 2200 3050 50  0001 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3050 2200 3100
Wire Wire Line
	2200 3100 2150 3100
Wire Wire Line
	2150 3300 2500 3300
Wire Wire Line
	2150 3400 2500 3400
Wire Wire Line
	6350 1850 6000 1850
Wire Wire Line
	6350 1950 6000 1950
Text Label 6000 1950 0    50   ~ 0
UART_RX
Text Label 6000 1850 0    50   ~ 0
UART_TX
Text Label 2500 3400 2    50   ~ 0
UART_RX
Text Label 2500 3300 2    50   ~ 0
UART_TX
Wire Wire Line
	6350 1600 6050 1600
Wire Wire Line
	6350 1700 6050 1700
Text Label 6050 1600 0    50   ~ 0
CAN+
Text Label 6050 1700 0    50   ~ 0
CAN-
Text Label 8250 2150 2    50   ~ 0
TEMP_1
Text Label 8250 2250 2    50   ~ 0
TEMP_2
Wire Wire Line
	7950 2150 8250 2150
Wire Wire Line
	7950 2250 8250 2250
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C830549
P 1950 4100
AR Path="/5C830549" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C830549" Ref="J9"  Part="1" 
F 0 "J9" H 1950 4200 50  0000 C CNN
F 1 "NTC1" V 2100 4050 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1950 4100 50  0001 C CNN
F 3 "~" H 1950 4100 50  0001 C CNN
	1    1950 4100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C830550
P 1950 4600
AR Path="/5C830550" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C830550" Ref="J10"  Part="1" 
F 0 "J10" H 1950 4700 50  0000 C CNN
F 1 "NTC1" V 2100 4550 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1950 4600 50  0001 C CNN
F 3 "~" H 1950 4600 50  0001 C CNN
	1    1950 4600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C830557
P 2200 4050
AR Path="/5C830557" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C830557" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 2200 3900 50  0001 C CNN
F 1 "+5V" H 2215 4223 50  0000 C CNN
F 2 "" H 2200 4050 50  0001 C CNN
F 3 "" H 2200 4050 50  0001 C CNN
	1    2200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4050 2200 4100
Wire Wire Line
	2200 4100 2150 4100
$Comp
L power:+5V #PWR?
U 1 1 5C83055F
P 2200 4550
AR Path="/5C83055F" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C83055F" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 2200 4400 50  0001 C CNN
F 1 "+5V" H 2215 4723 50  0000 C CNN
F 2 "" H 2200 4550 50  0001 C CNN
F 3 "" H 2200 4550 50  0001 C CNN
	1    2200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4550 2200 4600
Wire Wire Line
	2200 4600 2150 4600
Text Label 2450 4200 2    50   ~ 0
TEMP_1
Wire Wire Line
	2150 4200 2450 4200
Wire Wire Line
	2150 4700 2450 4700
Text Label 2450 4700 2    50   ~ 0
TEMP_2
$Comp
L Device:C C?
U 1 1 5C83056B
P 3050 7100
AR Path="/5C83056B" Ref="C?"  Part="1" 
AR Path="/5C5EE841/5C83056B" Ref="C?"  Part="1" 
AR Path="/5C83278E/5C83056B" Ref="C1"  Part="1" 
F 0 "C1" H 3165 7146 50  0000 L CNN
F 1 "470uF" H 3165 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3088 6950 50  0001 C CNN
F 3 "~" H 3050 7100 50  0001 C CNN
	1    3050 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C830572
P 3050 7250
AR Path="/5C830572" Ref="#PWR?"  Part="1" 
AR Path="/5C5EE841/5C830572" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C830572" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 3050 7000 50  0001 C CNN
F 1 "GND" H 3055 7077 50  0000 C CNN
F 2 "" H 3050 7250 50  0001 C CNN
F 3 "" H 3050 7250 50  0001 C CNN
	1    3050 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C830578
P 3050 6950
AR Path="/5C830578" Ref="#PWR?"  Part="1" 
AR Path="/5C5EE841/5C830578" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C830578" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 3050 6800 50  0001 C CNN
F 1 "+12V" H 3065 7123 50  0000 C CNN
F 2 "" H 3050 6950 50  0001 C CNN
F 3 "" H 3050 6950 50  0001 C CNN
	1    3050 6950
	1    0    0    -1  
$EndComp
Wire Notes Line width 39 rgb(253, 0, 0)
	650  850  2900 850 
Wire Notes Line width 39 rgb(255, 0, 0)
	2950 900  2950 2150
Wire Notes Line width 39 rgb(255, 0, 0)
	2900 2150 650  2150
Wire Notes Line width 39 rgb(255, 0, 0)
	650  2100 650  850 
Text Notes 650  800  0    157  ~ 31
HV Danger!
$Comp
L Connector_Generic:Conn_01x23 J?
U 1 1 5C830583
P 850 6550
AR Path="/5C830583" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C830583" Ref="J1"  Part="1" 
F 0 "J1" H 770 7867 50  0000 C CNN
F 1 "Conn_01x23" H 770 7776 50  0000 C CNN
F 2 "1-776087-1:TE_1-776087-1" H 850 6550 50  0001 C CNN
F 3 "~" H 850 6550 50  0001 C CNN
	1    850  6550
	-1   0    0    -1  
$EndComp
Text Label 1800 5450 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1050 5450 1800 5450
Text Label 1800 6250 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1050 6250 1800 6250
Text Label 1800 6950 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1050 6950 1800 6950
Wire Wire Line
	1050 7350 1400 7350
Wire Wire Line
	1050 7550 1400 7550
Text Label 1800 5550 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1050 5550 1800 5550
Text Label 1800 6350 2    50   ~ 0
SHDN_LOOP_OUT
Wire Wire Line
	1050 6350 1800 6350
Wire Wire Line
	1050 5850 1100 5850
Wire Wire Line
	1100 5650 1100 5750
Connection ~ 1100 5750
Wire Wire Line
	1100 5750 1100 5850
Wire Wire Line
	1100 5750 1250 5750
$Comp
L power:GND #PWR?
U 1 1 5C83059B
P 1200 6650
AR Path="/5C83059B" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C83059B" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 1200 6400 50  0001 C CNN
F 1 "GND" V 1205 6522 50  0000 R CNN
F 2 "" H 1200 6650 50  0001 C CNN
F 3 "" H 1200 6650 50  0001 C CNN
	1    1200 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 6650 1050 6650
$Comp
L power:+12V #PWR?
U 1 1 5C8305A2
P 1300 5950
AR Path="/5C8305A2" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C8305A2" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 1300 5800 50  0001 C CNN
F 1 "+12V" V 1315 6078 50  0000 L CNN
F 2 "" H 1300 5950 50  0001 C CNN
F 3 "" H 1300 5950 50  0001 C CNN
	1    1300 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 5950 1300 5950
$Comp
L power:+12V #PWR?
U 1 1 5C8305A9
P 1200 6750
AR Path="/5C8305A9" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C8305A9" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 1200 6600 50  0001 C CNN
F 1 "+12V" V 1215 6878 50  0000 L CNN
F 2 "" H 1200 6750 50  0001 C CNN
F 3 "" H 1200 6750 50  0001 C CNN
	1    1200 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 6750 1050 6750
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5C8305B0
P 3000 5850
AR Path="/5C8305B0" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C8305B0" Ref="J12"  Part="1" 
F 0 "J12" H 3000 5550 50  0000 C CNN
F 1 "Bender-LV" V 3100 5800 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 3000 5850 50  0001 C CNN
F 3 "~" H 3000 5850 50  0001 C CNN
	1    3000 5850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C8305B7
P 3250 5950
AR Path="/5C8305B7" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C8305B7" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 3250 5700 50  0001 C CNN
F 1 "GND" V 3255 5822 50  0000 R CNN
F 2 "" H 3250 5950 50  0001 C CNN
F 3 "" H 3250 5950 50  0001 C CNN
	1    3250 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 5850 3200 5950
Connection ~ 3200 5950
Wire Wire Line
	3200 5950 3200 6050
Wire Wire Line
	3200 5950 3250 5950
Wire Wire Line
	3200 5750 3500 5750
Text Label 3500 5750 2    50   ~ 0
IMD_OK
$Comp
L power:+12V #PWR?
U 1 1 5C8305C3
P 3250 5600
AR Path="/5C8305C3" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C8305C3" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 3250 5450 50  0001 C CNN
F 1 "+12V" H 3265 5773 50  0000 C CNN
F 2 "" H 3250 5600 50  0001 C CNN
F 3 "" H 3250 5600 50  0001 C CNN
	1    3250 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5600 3250 5650
Wire Wire Line
	3250 5650 3200 5650
Wire Wire Line
	1050 7250 1400 7250
Text Label 1400 7250 2    50   ~ 0
IMD_OK
$Comp
L Device:Fuse F?
U 1 1 5C8305CD
P 6200 3250
AR Path="/5C8305CD" Ref="F?"  Part="1" 
AR Path="/5C83278E/5C8305CD" Ref="F1"  Part="1" 
F 0 "F1" V 6003 3250 50  0000 C CNN
F 1 "2A" V 6094 3250 50  0000 C CNN
F 2 "CustomFootprints:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open_3d" V 6130 3250 50  0001 C CNN
F 3 "~" H 6200 3250 50  0001 C CNN
	1    6200 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3250 6350 3250
Wire Wire Line
	5650 3250 6050 3250
Wire Wire Line
	5650 3350 6400 3350
Wire Wire Line
	8000 3250 8750 3250
Text Notes 1650 6000 0    50   ~ 0
Return from safety loop
Text GLabel 9550 3250 2    50   Input ~ 0
SDA
Wire Wire Line
	9550 3250 9450 3250
Text GLabel 9550 3150 2    50   Input ~ 0
SCL
Wire Wire Line
	9450 3150 9550 3150
$Comp
L interface-board-rescue:EPM1510SJ-CUSTOM_IC U?
U 1 1 5C8305DD
P 1600 2000
AR Path="/5C8305DD" Ref="U?"  Part="1" 
AR Path="/5C83278E/5C8305DD" Ref="U7"  Part="1" 
F 0 "U7" H 1600 2450 50  0000 C CNN
F 1 "EPM1510SJ" H 1600 1950 50  0000 C CNN
F 2 "CustomFootprints:EPM1510SJ" H 1600 2000 50  0001 C CNN
F 3 "" H 1600 2000 50  0001 C CNN
	1    1600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1700 850  1700
Wire Wire Line
	1050 1900 850  1900
Text Label 850  1700 0    50   ~ 0
HV+
Text Label 850  1900 0    50   ~ 0
HV-
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C8305E8
P 2400 1750
AR Path="/5C8305E8" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C8305E8" Ref="J11"  Part="1" 
F 0 "J11" V 2366 1562 50  0000 R CNN
F 1 "BLINKY" H 2550 1850 50  0000 R CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 2400 1750 50  0001 C CNN
F 3 "~" H 2400 1750 50  0001 C CNN
	1    2400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1700 2200 1700
Wire Wire Line
	2200 1700 2200 1750
Wire Wire Line
	2150 1900 2200 1900
Wire Wire Line
	2200 1900 2200 1850
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5C8305F3
P 1500 950
AR Path="/5C8305F3" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C8305F3" Ref="J7"  Part="1" 
F 0 "J7" V 1466 762 50  0000 R CNN
F 1 "HV+" V 1375 762 50  0000 R CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_1-770870-x_1x03_P4.14mm_Vertical" H 1500 950 50  0001 C CNN
F 3 "~" H 1500 950 50  0001 C CNN
	1    1500 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 1150 1400 1150
Wire Wire Line
	1200 1400 2150 1400
Wire Wire Line
	1600 1150 2150 1150
Wire Wire Line
	1400 1150 1500 1150
Connection ~ 1400 1150
Connection ~ 1600 1150
Connection ~ 1500 1150
Wire Wire Line
	1500 1150 1600 1150
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5C830602
P 1000 1400
AR Path="/5C830602" Ref="J?"  Part="1" 
AR Path="/5C83278E/5C830602" Ref="J6"  Part="1" 
F 0 "J6" H 920 1075 50  0000 C CNN
F 1 "HV-" H 1150 1400 50  0000 C CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_1-770870-x_1x03_P4.14mm_Vertical" H 1000 1400 50  0001 C CNN
F 3 "~" H 1000 1400 50  0001 C CNN
	1    1000 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 1300 1200 1400
Connection ~ 1200 1400
Wire Wire Line
	1200 1400 1200 1500
Text Notes 650  5200 0    50   ~ 0
SHDN_LOOP_OUT is connected to 12V through shutdown loop
Text Notes 3200 6950 0    50   ~ 0
Can remove this
Text Notes 900  3850 0    50   ~ 0
Local fan controls and thermocoupler inputs
Text Notes 900  2800 0    50   ~ 0
Current monitor for HV and UART debug port
Text Notes 1850 1550 0    50   ~ 0
This is to run a HV indicator LED (called blinky).
$Comp
L Regulator_Switching:R-78E5.0-0.5 U?
U 1 1 5C830611
P 7050 5300
AR Path="/5C830611" Ref="U?"  Part="1" 
AR Path="/5C667FAF/5C830611" Ref="U?"  Part="1" 
AR Path="/5C83278E/5C830611" Ref="U10"  Part="1" 
F 0 "U10" H 7050 5542 50  0000 C CNN
F 1 "R-78E5.0-0.5" H 7050 5451 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 7100 5050 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-0.5.pdf" H 7050 5300 50  0001 C CNN
	1    7050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5300 6750 5300
Wire Wire Line
	7500 5300 7350 5300
$Comp
L power:GND #PWR?
U 1 1 5C83061A
P 7050 5650
AR Path="/5C83061A" Ref="#PWR?"  Part="1" 
AR Path="/5C667FAF/5C83061A" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C83061A" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 7050 5400 50  0001 C CNN
F 1 "GND" H 7055 5477 50  0000 C CNN
F 2 "" H 7050 5650 50  0001 C CNN
F 3 "" H 7050 5650 50  0001 C CNN
	1    7050 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5650 7050 5600
Text Notes 6150 4800 0    100  ~ 0
12V->5V
$Comp
L Device:C C?
U 1 1 5C830622
P 7500 5450
AR Path="/5C830622" Ref="C?"  Part="1" 
AR Path="/5C667FAF/5C830622" Ref="C?"  Part="1" 
AR Path="/5C83278E/5C830622" Ref="C6"  Part="1" 
F 0 "C6" H 7615 5496 50  0000 L CNN
F 1 "0.1uF" H 7250 5350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7538 5300 50  0001 C CNN
F 3 "~" H 7500 5450 50  0001 C CNN
	1    7500 5450
	1    0    0    -1  
$EndComp
Connection ~ 7500 5300
$Comp
L power:GND #PWR?
U 1 1 5C83062A
P 7650 5650
AR Path="/5C83062A" Ref="#PWR?"  Part="1" 
AR Path="/5C667FAF/5C83062A" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C83062A" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 7650 5400 50  0001 C CNN
F 1 "GND" H 7655 5477 50  0000 C CNN
F 2 "" H 7650 5650 50  0001 C CNN
F 3 "" H 7650 5650 50  0001 C CNN
	1    7650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5600 7650 5600
Wire Wire Line
	7650 5600 7650 5650
Connection ~ 7650 5600
Wire Wire Line
	7650 5600 7800 5600
$Comp
L Device:C C?
U 1 1 5C830634
P 6600 5450
AR Path="/5C830634" Ref="C?"  Part="1" 
AR Path="/5C667FAF/5C830634" Ref="C?"  Part="1" 
AR Path="/5C83278E/5C830634" Ref="C5"  Part="1" 
F 0 "C5" H 6715 5496 50  0000 L CNN
F 1 "10uF" H 6715 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6638 5300 50  0001 C CNN
F 3 "~" H 6600 5450 50  0001 C CNN
	1    6600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C83063B
P 6600 5600
AR Path="/5C83063B" Ref="#PWR?"  Part="1" 
AR Path="/5C667FAF/5C83063B" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C83063B" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 6600 5350 50  0001 C CNN
F 1 "GND" H 6605 5427 50  0000 C CNN
F 2 "" H 6600 5600 50  0001 C CNN
F 3 "" H 6600 5600 50  0001 C CNN
	1    6600 5600
	1    0    0    -1  
$EndComp
Wire Notes Line
	8200 4650 8200 5950
Wire Wire Line
	7800 5300 7500 5300
$Comp
L Device:C C?
U 1 1 5C830643
P 7800 5450
AR Path="/5C830643" Ref="C?"  Part="1" 
AR Path="/5C667FAF/5C830643" Ref="C?"  Part="1" 
AR Path="/5C83278E/5C830643" Ref="C15"  Part="1" 
F 0 "C15" H 7915 5496 50  0000 L CNN
F 1 "10uF" H 7915 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7838 5300 50  0001 C CNN
F 3 "~" H 7800 5450 50  0001 C CNN
	1    7800 5450
	1    0    0    -1  
$EndComp
Connection ~ 7800 5300
Wire Notes Line
	6100 5950 8200 5950
Wire Notes Line
	6100 4650 6100 5950
Wire Notes Line
	6100 4650 8200 4650
$Comp
L power:+12V #PWR?
U 1 1 5C83064E
P 6600 5250
AR Path="/5C83064E" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C83064E" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 6600 5100 50  0001 C CNN
F 1 "+12V" H 6615 5423 50  0000 C CNN
F 2 "" H 6600 5250 50  0001 C CNN
F 3 "" H 6600 5250 50  0001 C CNN
	1    6600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5250 6600 5300
Connection ~ 6600 5300
$Comp
L power:+5V #PWR?
U 1 1 5C830656
P 7800 5250
AR Path="/5C830656" Ref="#PWR?"  Part="1" 
AR Path="/5C83278E/5C830656" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 7800 5100 50  0001 C CNN
F 1 "+5V" H 7815 5423 50  0000 C CNN
F 2 "" H 7800 5250 50  0001 C CNN
F 3 "" H 7800 5250 50  0001 C CNN
	1    7800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5250 7800 5300
Text Notes 8800 7050 0    100  ~ 0
Willem Hillier\nUVM AERO\n3/5/2019
$EndSCHEMATC
