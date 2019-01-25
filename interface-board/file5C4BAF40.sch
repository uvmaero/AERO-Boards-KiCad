EESchema Schematic File Version 4
LIBS:interface-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L interface-board-rescue:INA219-AEROParts U?
U 1 1 5C4BB14F
P 4000 3550
AR Path="/5C4BB14F" Ref="U?"  Part="1" 
AR Path="/5C4BAF41/5C4BB14F" Ref="U?"  Part="1" 
F 0 "U?" H 4025 4115 50  0000 C CNN
F 1 "INA219" H 4025 4024 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4100 3550 50  0001 C CNN
F 3 "" H 4100 3550 50  0001 C CNN
	1    4000 3550
	-1   0    0    -1  
$EndComp
Text Notes 2050 3450 0    50   ~ 0
May want to \nchange value to\nbetter suit current\nrange.
$Comp
L power:GND #PWR?
U 1 1 5C4BB157
P 4650 4000
AR Path="/5C4BB157" Ref="#PWR?"  Part="1" 
AR Path="/5C4BAF41/5C4BB157" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4650 3750 50  0001 C CNN
F 1 "GND" H 4655 3827 50  0000 C CNN
F 2 "" H 4650 4000 50  0001 C CNN
F 3 "" H 4650 4000 50  0001 C CNN
	1    4650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4000 4650 3850
Wire Wire Line
	4400 3850 4650 3850
Wire Wire Line
	4400 3700 4650 3700
Wire Wire Line
	4650 3700 4650 3850
Connection ~ 4650 3850
Wire Wire Line
	4400 3600 4650 3600
Wire Wire Line
	4650 3600 4650 3700
Connection ~ 4650 3700
Wire Notes Line
	1950 2750 1950 4300
Wire Notes Line
	1950 4300 4850 4300
Wire Notes Line
	4850 4300 4850 2750
Wire Notes Line
	4850 2750 1950 2750
$Comp
L Device:R_US R?
U 1 1 5C4BB169
P 2800 3550
AR Path="/5C4BB169" Ref="R?"  Part="1" 
AR Path="/5C4BAF41/5C4BB169" Ref="R?"  Part="1" 
F 0 "R?" V 3150 3550 50  0000 C CNN
F 1 "0.02" V 3050 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 2840 3540 50  0001 C CNN
F 3 "~" H 2800 3550 50  0001 C CNN
	1    2800 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 3950 2800 3700
Text Notes 2000 2900 0    100  ~ 0
Main Current/Voltage Meter
$Comp
L Device:R_US R?
U 1 1 5C4BB172
P 3000 3400
AR Path="/5C4BB172" Ref="R?"  Part="1" 
AR Path="/5C4BAF41/5C4BB172" Ref="R?"  Part="1" 
F 0 "R?" V 2795 3400 50  0000 C CNN
F 1 "10" V 2886 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3040 3390 50  0001 C CNN
F 3 "~" H 3000 3400 50  0001 C CNN
	1    3000 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C4BB179
P 3000 3700
AR Path="/5C4BB179" Ref="R?"  Part="1" 
AR Path="/5C4BAF41/5C4BB179" Ref="R?"  Part="1" 
F 0 "R?" V 2795 3700 50  0000 C CNN
F 1 "10" V 2886 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3040 3690 50  0001 C CNN
F 3 "~" H 3000 3700 50  0001 C CNN
	1    3000 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3400 2800 3400
Connection ~ 2800 3400
Wire Wire Line
	2850 3700 2800 3700
Connection ~ 2800 3700
$Comp
L Device:C C?
U 1 1 5C4BB184
P 3300 3550
AR Path="/5C4BB184" Ref="C?"  Part="1" 
AR Path="/5C4BAF41/5C4BB184" Ref="C?"  Part="1" 
F 0 "C?" H 3415 3596 50  0000 L CNN
F 1 "0.1uF" H 3400 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3338 3400 50  0001 C CNN
F 3 "~" H 3300 3550 50  0001 C CNN
	1    3300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3400 3300 3400
Wire Wire Line
	3150 3700 3300 3700
Connection ~ 3300 3400
Connection ~ 3300 3700
Wire Wire Line
	3300 3400 3550 3400
Wire Wire Line
	3300 3700 3550 3700
Text Label 4800 3400 2    50   ~ 0
SCL
Text Label 4800 3500 2    50   ~ 0
SDA
$Comp
L power:+5V #PWR?
U 1 1 5C4BB193
P 4400 3000
AR Path="/5C4BB193" Ref="#PWR?"  Part="1" 
AR Path="/5C4BAF41/5C4BB193" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4400 2850 50  0001 C CNN
F 1 "+5V" H 4415 3173 50  0000 C CNN
F 2 "" H 4400 3000 50  0001 C CNN
F 3 "" H 4400 3000 50  0001 C CNN
	1    4400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3400 4800 3400
Wire Wire Line
	4400 3500 4800 3500
$Comp
L Device:R_US R?
U 1 1 5C4BB19B
P 2650 3550
AR Path="/5C4BB19B" Ref="R?"  Part="1" 
AR Path="/5C4BAF41/5C4BB19B" Ref="R?"  Part="1" 
F 0 "R?" V 3050 3550 50  0000 C CNN
F 1 "0.02" V 2950 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 2690 3540 50  0001 C CNN
F 3 "~" H 2650 3550 50  0001 C CNN
	1    2650 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3400 2800 3400
Wire Wire Line
	2650 3700 2800 3700
Wire Notes Line
	2900 3100 2900 3800
Wire Notes Line
	3400 3100 2900 3100
Wire Notes Line
	2900 3800 3400 3800
Text Notes 2000 4250 0    50   ~ 0
Optional filter circuit. If not needed, \nresistors can be replaced with 0Ω, and \ncap can be desoldered.
Wire Notes Line
	3400 3100 3400 3800
Wire Notes Line
	3150 3800 3150 4000
$Comp
L Device:C_Small C?
U 1 1 5C4BB1AA
P 4500 3250
AR Path="/5C4BB1AA" Ref="C?"  Part="1" 
AR Path="/5C4BAF41/5C4BB1AA" Ref="C?"  Part="1" 
F 0 "C?" V 4300 3250 50  0000 C CNN
F 1 "0.1uF" V 4400 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4500 3250 50  0001 C CNN
F 3 "~" H 4500 3250 50  0001 C CNN
	1    4500 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3250 4400 3000
$Comp
L power:GND #PWR?
U 1 1 5C4BB1B2
P 4600 3250
AR Path="/5C4BB1B2" Ref="#PWR?"  Part="1" 
AR Path="/5C4BAF41/5C4BB1B2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 3000 50  0001 C CNN
F 1 "GND" V 4600 3200 50  0000 R CNN
F 2 "" H 4600 3250 50  0001 C CNN
F 3 "" H 4600 3250 50  0001 C CNN
	1    4600 3250
	0    -1   -1   0   
$EndComp
Connection ~ 4400 3250
Wire Wire Line
	2800 3050 1750 3050
Wire Wire Line
	2800 3050 2800 3400
Wire Wire Line
	2800 3950 1750 3950
Text HLabel 1750 3050 0    50   Input ~ 0
IN
Text HLabel 1750 3950 0    50   Input ~ 0
OUT
$EndSCHEMATC
