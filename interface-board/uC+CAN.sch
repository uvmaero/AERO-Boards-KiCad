EESchema Schematic File Version 4
LIBS:interface-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L interface-board-rescue:MCP2515-IST-Interface_CAN_LIN U2
U 1 1 5C509F1F
P 3850 1750
F 0 "U2" H 4050 2550 50  0000 C CNN
F 1 "MCP2515-IST" H 3550 2550 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3850 850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21801e.pdf" H 3950 950 50  0001 C CNN
	1    3850 1750
	-1   0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U1
U 1 1 5C509F26
P 2200 1350
F 0 "U1" H 2500 1700 50  0000 C CNN
F 1 "MCP2551-I-SN" H 1850 1700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2200 850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 2200 1350 50  0001 C CNN
	1    2200 1350
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR023
U 1 1 5C509F38
P 2200 950
F 0 "#PWR023" H 2200 800 50  0001 C CNN
F 1 "+5V" H 2215 1123 50  0000 C CNN
F 2 "" H 2200 950 50  0001 C CNN
F 3 "" H 2200 950 50  0001 C CNN
	1    2200 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5C509F3E
P 2200 1750
F 0 "#PWR024" H 2200 1500 50  0001 C CNN
F 1 "GND" H 2205 1577 50  0000 C CNN
F 2 "" H 2200 1750 50  0001 C CNN
F 3 "" H 2200 1750 50  0001 C CNN
	1    2200 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5C509F44
P 2750 1750
F 0 "R2" H 2850 1750 50  0000 L CNN
F 1 "10k" H 2800 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2790 1740 50  0001 C CNN
F 3 "~" H 2750 1750 50  0001 C CNN
	1    2750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1550 2750 1550
Wire Wire Line
	2750 1550 2750 1600
$Comp
L power:GND #PWR027
U 1 1 5C509F4D
P 2750 1900
F 0 "#PWR027" H 2750 1650 50  0001 C CNN
F 1 "GND" H 2755 1727 50  0000 C CNN
F 2 "" H 2750 1900 50  0001 C CNN
F 3 "" H 2750 1900 50  0001 C CNN
	1    2750 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5C509F53
P 3100 2150
F 0 "R3" H 2900 2200 50  0000 L CNN
F 1 "10k" H 2850 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3140 2140 50  0001 C CNN
F 3 "~" H 3100 2150 50  0001 C CNN
	1    3100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2300 3100 2350
Wire Wire Line
	3100 2350 3250 2350
$Comp
L power:+5V #PWR028
U 1 1 5C509F5C
P 3100 2000
F 0 "#PWR028" H 3100 1850 50  0001 C CNN
F 1 "+5V" H 3115 2173 50  0000 C CNN
F 2 "" H 3100 2000 50  0001 C CNN
F 3 "" H 3100 2000 50  0001 C CNN
	1    3100 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5C509F67
P 3850 2550
F 0 "#PWR030" H 3850 2300 50  0001 C CNN
F 1 "GND" H 3855 2377 50  0000 C CNN
F 2 "" H 3850 2550 50  0001 C CNN
F 3 "" H 3850 2550 50  0001 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 5C509F6D
P 3850 950
F 0 "#PWR029" H 3850 800 50  0001 C CNN
F 1 "+5V" H 3865 1123 50  0000 C CNN
F 2 "" H 3850 950 50  0001 C CNN
F 3 "" H 3850 950 50  0001 C CNN
	1    3850 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1150 4700 1150
Wire Wire Line
	4450 1250 4700 1250
Wire Wire Line
	4450 1450 4700 1450
$Comp
L Device:C C3
U 1 1 5C509F77
P 1900 2100
F 0 "C3" H 2015 2146 50  0000 L CNN
F 1 "0.1uF" H 2015 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1938 1950 50  0001 C CNN
F 3 "~" H 1900 2100 50  0001 C CNN
	1    1900 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C509F7E
P 2400 2100
F 0 "C4" H 2515 2146 50  0000 L CNN
F 1 "0.1uF" H 2515 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2438 1950 50  0001 C CNN
F 3 "~" H 2400 2100 50  0001 C CNN
	1    2400 2100
	1    0    0    -1  
$EndComp
Text Label 4800 1350 2    50   ~ 0
CAN_CS
Text Label 4700 1250 2    50   ~ 0
MISO
Text Label 4700 1150 2    50   ~ 0
MOSI
Text Label 4700 1450 2    50   ~ 0
SCK
$Comp
L power:+5V #PWR021
U 1 1 5C509F89
P 1900 1950
F 0 "#PWR021" H 1900 1800 50  0001 C CNN
F 1 "+5V" H 1915 2123 50  0000 C CNN
F 2 "" H 1900 1950 50  0001 C CNN
F 3 "" H 1900 1950 50  0001 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5C509F8F
P 1900 2250
F 0 "#PWR022" H 1900 2000 50  0001 C CNN
F 1 "GND" H 1905 2077 50  0000 C CNN
F 2 "" H 1900 2250 50  0001 C CNN
F 3 "" H 1900 2250 50  0001 C CNN
	1    1900 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 5C509F95
P 2400 1950
F 0 "#PWR025" H 2400 1800 50  0001 C CNN
F 1 "+5V" H 2415 2123 50  0000 C CNN
F 2 "" H 2400 1950 50  0001 C CNN
F 3 "" H 2400 1950 50  0001 C CNN
	1    2400 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5C509F9B
P 2400 2250
F 0 "#PWR026" H 2400 2000 50  0001 C CNN
F 1 "GND" H 2405 2077 50  0000 C CNN
F 2 "" H 2400 2250 50  0001 C CNN
F 3 "" H 2400 2250 50  0001 C CNN
	1    2400 2250
	1    0    0    -1  
$EndComp
Text Notes 750  850  0    100  ~ 0
CAN Interface
$Comp
L Device:Crystal_Small Y1
U 1 1 5C509FA2
P 4650 2000
F 0 "Y1" V 4800 1950 50  0000 L CNN
F 1 "16MHz" V 4500 1850 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 4650 2000 50  0001 C CNN
F 3 "~" H 4650 2000 50  0001 C CNN
	1    4650 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1250 2850 1250
Wire Wire Line
	2850 1250 2950 1150
Wire Wire Line
	2950 1150 3250 1150
Wire Wire Line
	2700 1150 2850 1150
Wire Wire Line
	2850 1150 2950 1250
Wire Wire Line
	2950 1250 3250 1250
Wire Wire Line
	4450 1950 4500 1950
Wire Wire Line
	4500 1950 4500 1900
Wire Wire Line
	4500 1900 4650 1900
Wire Wire Line
	4450 2050 4500 2050
Wire Wire Line
	4500 2050 4500 2100
Wire Wire Line
	4500 2100 4650 2100
$Comp
L Device:C_Small C5
U 1 1 5C509FB5
P 4850 1900
F 0 "C5" V 5050 1900 50  0000 C CNN
F 1 "22pF" V 4950 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4850 1900 50  0001 C CNN
F 3 "~" H 4850 1900 50  0001 C CNN
	1    4850 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5C509FBC
P 4850 2100
F 0 "C6" V 4650 2100 50  0000 C CNN
F 1 "22pF" V 4750 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4850 2100 50  0001 C CNN
F 3 "~" H 4850 2100 50  0001 C CNN
	1    4850 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 1900 4750 1900
Connection ~ 4650 1900
Wire Wire Line
	4650 2100 4750 2100
Connection ~ 4650 2100
$Comp
L power:GND #PWR031
U 1 1 5C509FC7
P 5000 2150
F 0 "#PWR031" H 5000 1900 50  0001 C CNN
F 1 "GND" H 5005 1977 50  0000 C CNN
F 2 "" H 5000 2150 50  0001 C CNN
F 3 "" H 5000 2150 50  0001 C CNN
	1    5000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2150 5000 2100
Wire Wire Line
	5000 2100 4950 2100
Wire Wire Line
	5000 2100 5000 1900
Wire Wire Line
	5000 1900 4950 1900
Connection ~ 5000 2100
$Comp
L Device:R_US R1
U 1 1 5C509FD2
P 1650 1400
F 0 "R1" H 1550 1600 50  0000 L CNN
F 1 "R_US" H 1550 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1690 1390 50  0001 C CNN
F 3 "~" H 1650 1400 50  0001 C CNN
	1    1650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1450 1700 1550
Wire Wire Line
	1700 1550 1650 1550
Wire Wire Line
	1700 1250 1650 1250
$Comp
L interface-board-rescue:ATmega328P-AU-MCU_Microchip_ATmega U?
U 1 1 5C509FE1
P 6900 4450
AR Path="/5C0BCEFE/5C509FE1" Ref="U?"  Part="1" 
AR Path="/5C509FE1" Ref="U?"  Part="1" 
AR Path="/5C48D638/5C509FE1" Ref="U?"  Part="1" 
AR Path="/5C4E5628/5C509FE1" Ref="U3"  Part="1" 
F 0 "U3" H 7100 6050 50  0000 C CNN
F 1 "ATmega328P-AU" H 7350 5950 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 6900 4450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 6900 4450 50  0001 C CNN
	1    6900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2950 6900 2900
Wire Wire Line
	7000 2900 7000 2950
Wire Wire Line
	6900 2900 6950 2900
$Comp
L power:+5V #PWR?
U 1 1 5C509FEB
P 6950 2850
AR Path="/5C0BCEFE/5C509FEB" Ref="#PWR?"  Part="1" 
AR Path="/5C509FEB" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C509FEB" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C509FEB" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 6950 2700 50  0001 C CNN
F 1 "+5V" H 6965 3023 50  0000 C CNN
F 2 "" H 6950 2850 50  0001 C CNN
F 3 "" H 6950 2850 50  0001 C CNN
	1    6950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2850 6950 2900
Connection ~ 6950 2900
Wire Wire Line
	6950 2900 7000 2900
$Comp
L power:+5V #PWR?
U 1 1 5C509FF4
P 6200 3200
AR Path="/5C0BCEFE/5C509FF4" Ref="#PWR?"  Part="1" 
AR Path="/5C509FF4" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C509FF4" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C509FF4" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 6200 3050 50  0001 C CNN
F 1 "+5V" H 6215 3373 50  0000 C CNN
F 2 "" H 6200 3200 50  0001 C CNN
F 3 "" H 6200 3200 50  0001 C CNN
	1    6200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3200 6200 3250
Wire Wire Line
	6200 3250 6300 3250
Wire Wire Line
	6350 1750 6050 1750
Text Label 6050 1750 0    50   ~ 0
MISO
Wire Wire Line
	6350 1850 6050 1850
Text Label 6050 1850 0    50   ~ 0
SCK
Wire Wire Line
	6350 1950 6050 1950
Text Label 6050 1950 0    50   ~ 0
RESET
$Comp
L power:+5V #PWR?
U 1 1 5C50A006
P 6900 1700
AR Path="/5C0BCEFE/5C50A006" Ref="#PWR?"  Part="1" 
AR Path="/5C50A006" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A006" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A006" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 6900 1550 50  0001 C CNN
F 1 "+5V" H 6915 1873 50  0000 C CNN
F 2 "" H 6900 1700 50  0001 C CNN
F 3 "" H 6900 1700 50  0001 C CNN
	1    6900 1700
	1    0    0    -1  
$EndComp
Text Label 7050 1850 2    50   ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5C50A00D
P 6900 2000
AR Path="/5C0BCEFE/5C50A00D" Ref="#PWR?"  Part="1" 
AR Path="/5C50A00D" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A00D" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A00D" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 6900 1750 50  0001 C CNN
F 1 "GND" H 6905 1827 50  0000 C CNN
F 2 "" H 6900 2000 50  0001 C CNN
F 3 "" H 6900 2000 50  0001 C CNN
	1    6900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2000 6900 1950
Wire Wire Line
	6900 1950 6850 1950
Wire Wire Line
	6900 1700 6900 1750
Wire Wire Line
	6900 1750 6850 1750
Wire Wire Line
	6850 1850 7050 1850
Wire Wire Line
	7500 3650 7750 3650
Text Label 7750 3650 2    50   ~ 0
MISO
Wire Wire Line
	7500 3750 7750 3750
Wire Wire Line
	7500 3550 7750 3550
Text Label 7750 3550 2    50   ~ 0
MOSI
Text Label 7750 3750 2    50   ~ 0
SCK
Text Label 7750 4750 2    50   ~ 0
RESET
Wire Notes Line
	6000 6200 6000 2550
Text Notes 6100 2750 0    100  ~ 0
uC
Wire Wire Line
	7500 5150 7750 5150
Text Label 7750 4150 2    50   ~ 0
LED1
Text Label 7750 5150 2    50   ~ 0
LED2
$Comp
L Device:LED D?
U 1 1 5C50A027
P 7650 1750
AR Path="/5C0BCEFE/5C50A027" Ref="D?"  Part="1" 
AR Path="/5C50A027" Ref="D?"  Part="1" 
AR Path="/5C48D638/5C50A027" Ref="D?"  Part="1" 
AR Path="/5C4E5628/5C50A027" Ref="D1"  Part="1" 
F 0 "D1" H 7650 1850 50  0000 C CNN
F 1 "LED" H 7650 1650 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7650 1750 50  0001 C CNN
F 3 "~" H 7650 1750 50  0001 C CNN
	1    7650 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5C50A02E
P 7650 2100
AR Path="/5C0BCEFE/5C50A02E" Ref="D?"  Part="1" 
AR Path="/5C50A02E" Ref="D?"  Part="1" 
AR Path="/5C48D638/5C50A02E" Ref="D?"  Part="1" 
AR Path="/5C4E5628/5C50A02E" Ref="D2"  Part="1" 
F 0 "D2" H 7650 2200 50  0000 C CNN
F 1 "LED" H 7650 2000 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7650 2100 50  0001 C CNN
F 3 "~" H 7650 2100 50  0001 C CNN
	1    7650 2100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C50A035
P 8000 1750
AR Path="/5C0BCEFE/5C50A035" Ref="R?"  Part="1" 
AR Path="/5C50A035" Ref="R?"  Part="1" 
AR Path="/5C48D638/5C50A035" Ref="R?"  Part="1" 
AR Path="/5C4E5628/5C50A035" Ref="R5"  Part="1" 
F 0 "R5" V 7795 1750 50  0000 C CNN
F 1 "1k" V 7886 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8040 1740 50  0001 C CNN
F 3 "~" H 8000 1750 50  0001 C CNN
	1    8000 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C50A03C
P 8000 2100
AR Path="/5C0BCEFE/5C50A03C" Ref="R?"  Part="1" 
AR Path="/5C50A03C" Ref="R?"  Part="1" 
AR Path="/5C48D638/5C50A03C" Ref="R?"  Part="1" 
AR Path="/5C4E5628/5C50A03C" Ref="R6"  Part="1" 
F 0 "R6" V 7795 2100 50  0000 C CNN
F 1 "1k" V 7886 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8040 2090 50  0001 C CNN
F 3 "~" H 8000 2100 50  0001 C CNN
	1    8000 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 1750 7850 1750
Wire Wire Line
	7800 2100 7850 2100
$Comp
L power:GND #PWR?
U 1 1 5C50A045
P 8250 2200
AR Path="/5C0BCEFE/5C50A045" Ref="#PWR?"  Part="1" 
AR Path="/5C50A045" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A045" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A045" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 8250 1950 50  0001 C CNN
F 1 "GND" H 8255 2027 50  0000 C CNN
F 2 "" H 8250 2200 50  0001 C CNN
F 3 "" H 8250 2200 50  0001 C CNN
	1    8250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2200 8250 2100
Wire Wire Line
	8250 2100 8150 2100
Wire Wire Line
	8250 2100 8250 1750
Wire Wire Line
	8250 1750 8150 1750
Connection ~ 8250 2100
Wire Wire Line
	7500 1750 7250 1750
Wire Wire Line
	7500 2100 7250 2100
Text Label 7250 1750 0    50   ~ 0
LED1
Text Label 7250 2100 0    50   ~ 0
LED2
Wire Notes Line
	7100 2250 6000 2250
Wire Notes Line
	6000 2250 6000 1300
Wire Notes Line
	6000 1300 7100 1300
Wire Notes Line
	7100 1300 7100 2250
Text Notes 6050 1450 0    100  ~ 0
ICSP
Wire Notes Line
	8400 2450 7150 2450
Wire Notes Line
	7150 2450 7150 1300
Wire Notes Line
	7150 1300 8400 1300
Wire Notes Line
	8400 1300 8400 2450
Text Notes 7200 1450 0    100  ~ 0
Status LEDs
Text Label 7800 5550 2    50   ~ 0
CAN_CS
$Comp
L power:GND #PWR?
U 1 1 5C50A060
P 6900 5950
AR Path="/5C0BCEFE/5C50A060" Ref="#PWR?"  Part="1" 
AR Path="/5C50A060" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A060" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A060" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 6900 5700 50  0001 C CNN
F 1 "GND" H 6905 5777 50  0000 C CNN
F 2 "" H 6900 5950 50  0001 C CNN
F 3 "" H 6900 5950 50  0001 C CNN
	1    6900 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C50A066
P 6150 4300
AR Path="/5C0BCEFE/5C50A066" Ref="C?"  Part="1" 
AR Path="/5C50A066" Ref="C?"  Part="1" 
AR Path="/5C48D638/5C50A066" Ref="C?"  Part="1" 
AR Path="/5C4E5628/5C50A066" Ref="C7"  Part="1" 
F 0 "C7" H 6265 4346 50  0000 L CNN
F 1 "0.1uF" H 6265 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6188 4150 50  0001 C CNN
F 3 "~" H 6150 4300 50  0001 C CNN
	1    6150 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C50A06D
P 6150 4150
AR Path="/5C0BCEFE/5C50A06D" Ref="#PWR?"  Part="1" 
AR Path="/5C50A06D" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A06D" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A06D" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 6150 4000 50  0001 C CNN
F 1 "+5V" H 6165 4323 50  0000 C CNN
F 2 "" H 6150 4150 50  0001 C CNN
F 3 "" H 6150 4150 50  0001 C CNN
	1    6150 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C50A073
P 6150 4450
AR Path="/5C0BCEFE/5C50A073" Ref="#PWR?"  Part="1" 
AR Path="/5C50A073" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A073" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A073" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 6150 4200 50  0001 C CNN
F 1 "GND" H 6155 4277 50  0000 C CNN
F 2 "" H 6150 4450 50  0001 C CNN
F 3 "" H 6150 4450 50  0001 C CNN
	1    6150 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C50A079
P 7900 4750
AR Path="/5C0BCEFE/5C50A079" Ref="R?"  Part="1" 
AR Path="/5C50A079" Ref="R?"  Part="1" 
AR Path="/5C48D638/5C50A079" Ref="R?"  Part="1" 
AR Path="/5C4E5628/5C50A079" Ref="R4"  Part="1" 
F 0 "R4" V 8000 4700 50  0000 L CNN
F 1 "10k" V 7800 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7940 4740 50  0001 C CNN
F 3 "~" H 7900 4750 50  0001 C CNN
	1    7900 4750
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C50A081
P 8100 4700
AR Path="/5C0BCEFE/5C50A081" Ref="#PWR?"  Part="1" 
AR Path="/5C50A081" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A081" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A081" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 8100 4550 50  0001 C CNN
F 1 "+5V" H 8115 4873 50  0000 C CNN
F 2 "" H 8100 4700 50  0001 C CNN
F 3 "" H 8100 4700 50  0001 C CNN
	1    8100 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C50A087
P 6150 5200
AR Path="/5C0BCEFE/5C50A087" Ref="C?"  Part="1" 
AR Path="/5C50A087" Ref="C?"  Part="1" 
AR Path="/5C48D638/5C50A087" Ref="C?"  Part="1" 
AR Path="/5C4E5628/5C50A087" Ref="C8"  Part="1" 
F 0 "C8" H 6265 5246 50  0000 L CNN
F 1 "0.1uF" H 6265 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6188 5050 50  0001 C CNN
F 3 "~" H 6150 5200 50  0001 C CNN
	1    6150 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C50A08E
P 6150 5050
AR Path="/5C0BCEFE/5C50A08E" Ref="#PWR?"  Part="1" 
AR Path="/5C50A08E" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A08E" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A08E" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 6150 4900 50  0001 C CNN
F 1 "+5V" H 6165 5223 50  0000 C CNN
F 2 "" H 6150 5050 50  0001 C CNN
F 3 "" H 6150 5050 50  0001 C CNN
	1    6150 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C50A094
P 6150 5350
AR Path="/5C0BCEFE/5C50A094" Ref="#PWR?"  Part="1" 
AR Path="/5C50A094" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A094" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A094" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 6150 5100 50  0001 C CNN
F 1 "GND" H 6155 5177 50  0000 C CNN
F 2 "" H 6150 5350 50  0001 C CNN
F 3 "" H 6150 5350 50  0001 C CNN
	1    6150 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5C50A09A
P 6550 1850
AR Path="/5C0BCEFE/5C50A09A" Ref="J?"  Part="1" 
AR Path="/5C50A09A" Ref="J?"  Part="1" 
AR Path="/5C48D638/5C50A09A" Ref="J?"  Part="1" 
AR Path="/5C4E5628/5C50A09A" Ref="J15"  Part="1" 
F 0 "J15" H 6600 2167 50  0000 C CNN
F 1 "ICSP" H 6600 2076 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 6550 1850 50  0001 C CNN
F 3 "~" H 6550 1850 50  0001 C CNN
	1    6550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4150 7750 4150
Wire Notes Line
	5100 2800 5100 700 
Wire Notes Line
	5100 700  650  700 
Wire Notes Line
	650  700  650  2800
Wire Notes Line
	650  2800 5100 2800
Wire Wire Line
	1650 1250 1300 1250
Connection ~ 1650 1250
Wire Wire Line
	1650 1550 1300 1550
Connection ~ 1650 1550
Text GLabel 7550 4550 2    50   Input ~ 0
SDA
Text GLabel 7550 4650 2    50   Input ~ 0
SCL
Wire Wire Line
	7550 4650 7500 4650
Wire Wire Line
	7550 4550 7500 4550
Wire Wire Line
	7550 3350 7500 3350
Wire Wire Line
	7550 3450 7500 3450
Wire Wire Line
	7550 5250 7500 5250
Wire Wire Line
	7550 5450 7500 5450
Text HLabel 7550 3350 2    50   Output ~ 0
FAN_CTRL_0
Text HLabel 7550 3450 2    50   Output ~ 0
FAN_CTRL_1
Text HLabel 7550 5250 2    50   Output ~ 0
FAN_CTRL_2
Text HLabel 7550 5450 2    50   Output ~ 0
FAN_CTRL_3
Wire Wire Line
	4450 1350 4800 1350
Wire Wire Line
	7500 5550 7800 5550
$Comp
L Device:R_US R7
U 1 1 5C53D9DB
P 8750 1900
F 0 "R7" H 8682 1854 50  0000 R CNN
F 1 "10k" H 8682 1945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8790 1890 50  0001 C CNN
F 3 "~" H 8750 1900 50  0001 C CNN
	1    8750 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5C540E62
P 8750 2050
F 0 "#PWR043" H 8750 1800 50  0001 C CNN
F 1 "GND" H 8755 1877 50  0000 C CNN
F 2 "" H 8750 2050 50  0001 C CNN
F 3 "" H 8750 2050 50  0001 C CNN
	1    8750 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5C5485A4
P 9350 1900
F 0 "R8" H 9282 1854 50  0000 R CNN
F 1 "10k" H 9282 1945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9390 1890 50  0001 C CNN
F 3 "~" H 9350 1900 50  0001 C CNN
	1    9350 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5C5485BA
P 9350 2050
F 0 "#PWR044" H 9350 1800 50  0001 C CNN
F 1 "GND" H 9355 1877 50  0000 C CNN
F 2 "" H 9350 2050 50  0001 C CNN
F 3 "" H 9350 2050 50  0001 C CNN
	1    9350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4750 7750 4750
Wire Wire Line
	8100 4700 8100 4750
Wire Wire Line
	8100 4750 8050 4750
Text HLabel 1300 1250 0    50   BiDi ~ 0
CAN+
Text HLabel 1300 1550 0    50   BiDi ~ 0
CAN-
Text HLabel 7550 5350 2    50   Output ~ 0
DC_DC_EN
Wire Wire Line
	7550 5350 7500 5350
Text HLabel 7550 5650 2    50   Input ~ 0
DC_DC_FAULT
Wire Wire Line
	7550 5650 7500 5650
Text HLabel 7550 4950 2    50   Input ~ 0
RXD
Text HLabel 7550 5050 2    50   Input ~ 0
TXD
Wire Wire Line
	7550 4950 7500 4950
Wire Wire Line
	7550 5050 7500 5050
Text Notes 900  7050 0    157  ~ 31
Tight constraints on which\npins can be which. Hoping\nthis isn't a routing nightmare.
Wire Notes Line
	8350 2550 8350 6200
Wire Notes Line
	6000 2550 8350 2550
Wire Notes Line
	6000 6200 8350 6200
Text Notes 8550 1500 0    100  ~ 0
Thermistor Inputs
Text Notes 8600 1600 0    50   ~ 0
Filtering circuitry???
Text HLabel 7550 3250 2    50   Output ~ 0
DC_DC_TRIM_EN
Wire Wire Line
	7500 3250 7550 3250
Text HLabel 8800 1750 2    50   Input ~ 0
NTC1
Wire Wire Line
	8800 1750 8750 1750
Text HLabel 9400 1750 2    50   Input ~ 0
NTC2
Wire Wire Line
	9400 1750 9350 1750
Text HLabel 7550 4350 2    50   Input ~ 0
NTC2
Text HLabel 7550 4250 2    50   Input ~ 0
NTC1
Wire Wire Line
	7550 4250 7500 4250
Wire Wire Line
	7550 4350 7500 4350
Wire Notes Line
	8500 1350 9900 1350
Wire Notes Line
	8500 1350 8500 2300
Wire Notes Line
	8500 2300 9900 2300
Wire Notes Line
	9900 2300 9900 1350
$EndSCHEMATC
