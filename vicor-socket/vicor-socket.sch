EESchema Schematic File Version 4
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
L DC_DCBoard-rescue:DCM4623TD2J13D0T70-AEROParts U1
U 1 1 5C7EAE2A
P 5950 3600
F 0 "U1" H 5975 4125 50  0000 C CNN
F 1 "DCM4623TD2J13D0T70-AEROParts" H 5975 4034 50  0000 C CNN
F 2 "CustomFootprints:DCM4623TD2J13D0T70_w_landpattern" H 5950 3600 50  0001 C CNN
F 3 "" H 5950 3600 50  0001 C CNN
	1    5950 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5C7EAEF1
P 5350 3700
F 0 "J2" H 5750 3700 50  0000 C CNN
F 1 "HV+" H 5500 3700 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5350 3700 50  0001 C CNN
F 3 "~" H 5350 3700 50  0001 C CNN
	1    5350 3700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5C7EAF3F
P 5350 3850
F 0 "J3" H 5750 3850 50  0000 C CNN
F 1 "HV-" H 5500 3850 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5350 3850 50  0001 C CNN
F 3 "~" H 5350 3850 50  0001 C CNN
	1    5350 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5C7EAF57
P 6750 3500
F 0 "J4" H 6750 3600 50  0000 L CNN
F 1 "12V+" H 6850 3500 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 6750 3500 50  0001 C CNN
F 3 "~" H 6750 3500 50  0001 C CNN
	1    6750 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5C7EAFA7
P 6750 3750
F 0 "J5" H 6750 3850 50  0000 L CNN
F 1 "12V-" H 6850 3750 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 6750 3750 50  0001 C CNN
F 3 "~" H 6750 3750 50  0001 C CNN
	1    6750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3400 6450 3400
Wire Wire Line
	6450 3400 6450 3500
Wire Wire Line
	6450 3700 6400 3700
Wire Wire Line
	6550 3500 6450 3500
Connection ~ 6450 3500
Wire Wire Line
	6450 3500 6450 3700
Wire Wire Line
	6400 3550 6550 3550
Wire Wire Line
	6550 3550 6550 3750
Wire Wire Line
	6550 3850 6400 3850
Connection ~ 6550 3750
Wire Wire Line
	6550 3750 6550 3850
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5C7EB2B3
P 5350 3400
F 0 "J1" H 5550 3150 50  0000 C CNN
F 1 "Interface" V 5500 3400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5350 3400 50  0001 C CNN
F 3 "~" H 5350 3400 50  0001 C CNN
	1    5350 3400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
