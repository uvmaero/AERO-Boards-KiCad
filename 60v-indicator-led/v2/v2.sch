EESchema Schematic File Version 4
LIBS:v2-cache
EELAYER 26 0
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
L Device:R_US R1
U 1 1 5C6F356F
P 2200 3300
F 0 "R1" V 1995 3300 50  0000 C CNN
F 1 "1k" V 2086 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2240 3290 50  0001 C CNN
F 3 "~" H 2200 3300 50  0001 C CNN
	1    2200 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5C6F39CA
P 2500 3300
F 0 "R3" V 2295 3300 50  0000 C CNN
F 1 "1k" V 2386 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2540 3290 50  0001 C CNN
F 3 "~" H 2500 3300 50  0001 C CNN
	1    2500 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5C6F39F0
P 2800 3300
F 0 "R5" V 2595 3300 50  0000 C CNN
F 1 "1k" V 2686 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2840 3290 50  0001 C CNN
F 3 "~" H 2800 3300 50  0001 C CNN
	1    2800 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R7
U 1 1 5C6F3A18
P 3100 3300
F 0 "R7" V 2895 3300 50  0000 C CNN
F 1 "1k" V 2986 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3140 3290 50  0001 C CNN
F 3 "~" H 3100 3300 50  0001 C CNN
	1    3100 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 5C6F3A3C
P 3400 3300
F 0 "R9" V 3195 3300 50  0000 C CNN
F 1 "1k" V 3286 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3440 3290 50  0001 C CNN
F 3 "~" H 3400 3300 50  0001 C CNN
	1    3400 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5C6F3C4D
P 2200 3600
F 0 "R2" V 1995 3600 50  0000 C CNN
F 1 "1k" V 2086 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2240 3590 50  0001 C CNN
F 3 "~" H 2200 3600 50  0001 C CNN
	1    2200 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5C6F3C54
P 2500 3600
F 0 "R4" V 2295 3600 50  0000 C CNN
F 1 "1k" V 2386 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2540 3590 50  0001 C CNN
F 3 "~" H 2500 3600 50  0001 C CNN
	1    2500 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5C6F3C5B
P 2800 3600
F 0 "R6" V 2595 3600 50  0000 C CNN
F 1 "1k" V 2686 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2840 3590 50  0001 C CNN
F 3 "~" H 2800 3600 50  0001 C CNN
	1    2800 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5C6F3C62
P 3100 3600
F 0 "R8" V 2895 3600 50  0000 C CNN
F 1 "1k" V 2986 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3140 3590 50  0001 C CNN
F 3 "~" H 3100 3600 50  0001 C CNN
	1    3100 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5C6F3C69
P 3400 3600
F 0 "R10" V 3195 3600 50  0000 C CNN
F 1 "1k" V 3286 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3440 3590 50  0001 C CNN
F 3 "~" H 3400 3600 50  0001 C CNN
	1    3400 3600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5C6F3EF9
P 3650 3450
F 0 "D1" V 3688 3332 50  0000 R CNN
F 1 "RED_LED" V 3597 3332 50  0000 R CNN
F 2 "CustomFootprints:LPA-C011301S-x LED 0805 LIGHT PIPE SINGLE VERT SMD" H 3650 3450 50  0001 C CNN
F 3 "~" H 3650 3450 50  0001 C CNN
	1    3650 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 3300 3550 3300
Wire Wire Line
	3650 3600 3550 3600
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5C809112
P 1750 3350
F 0 "J1" H 1670 3025 50  0000 C CNN
F 1 "Conn_01x02" H 1670 3116 50  0000 C CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_1-770866-x_1x02_P4.14mm_Vertical" H 1750 3350 50  0001 C CNN
F 3 "~" H 1750 3350 50  0001 C CNN
	1    1750 3350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5C80917C
P 1750 3650
F 0 "J2" H 1670 3325 50  0000 C CNN
F 1 "Conn_01x02" H 1670 3416 50  0000 C CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_1-770866-x_1x02_P4.14mm_Vertical" H 1750 3650 50  0001 C CNN
F 3 "~" H 1750 3650 50  0001 C CNN
	1    1750 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 3300 1950 3300
Wire Wire Line
	1950 3300 1950 3250
Wire Wire Line
	1950 3350 1950 3300
Connection ~ 1950 3300
Wire Wire Line
	2050 3600 1950 3600
Wire Wire Line
	1950 3600 1950 3550
Wire Wire Line
	1950 3650 1950 3600
Connection ~ 1950 3600
$EndSCHEMATC
