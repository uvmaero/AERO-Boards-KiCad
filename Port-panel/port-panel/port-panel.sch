EESchema Schematic File Version 4
LIBS:port-panel-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date "2019-11-09"
Rev ""
Comp "UVM AERO"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B J?
U 1 1 5DA5DC32
P 850 1100
F 0 "J?" H 907 1567 50  0000 C CNN
F 1 "USB_B" H 907 1476 50  0000 C CNN
F 2 "" H 1000 1050 50  0001 C CNN
F 3 " ~" H 1000 1050 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45 J?
U 1 1 5DA5EC34
P 1350 5800
F 0 "J?" H 1407 6467 50  0000 C CNN
F 1 "RJ45" H 1407 6376 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE5380" V 1350 5825 50  0001 C CNN
F 3 "~" V 1350 5825 50  0001 C CNN
	1    1350 5800
	1    0    0    1   
$EndComp
Text Notes 6850 5600 0    50   ~ 0
Ideally change to USB to RS232\n
Text Label 1900 5500 0    50   ~ 0
CAN_1_P
Text Label 1900 5600 0    50   ~ 0
CAN_1_N
Wire Wire Line
	1900 5600 1750 5600
Wire Wire Line
	1900 5500 1750 5500
$Comp
L power:GND #PWR?
U 1 1 5DAE3190
P 1750 5700
F 0 "#PWR?" H 1750 5450 50  0001 C CNN
F 1 "GND" V 1755 5572 50  0000 R CNN
F 2 "" H 1750 5700 50  0001 C CNN
F 3 "" H 1750 5700 50  0001 C CNN
	1    1750 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DAE38CA
P 1750 6000
F 0 "#PWR?" H 1750 5750 50  0001 C CNN
F 1 "GND" V 1755 5872 50  0000 R CNN
F 2 "" H 1750 6000 50  0001 C CNN
F 3 "" H 1750 6000 50  0001 C CNN
	1    1750 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DAE6597
P 750 1650
F 0 "R?" H 820 1696 50  0000 L CNN
F 1 "1M" H 820 1605 50  0000 L CNN
F 2 "" V 680 1650 50  0001 C CNN
F 3 "~" H 750 1650 50  0001 C CNN
	1    750  1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DAE7203
P 750 1800
F 0 "#PWR?" H 750 1550 50  0001 C CNN
F 1 "GND" H 755 1627 50  0000 C CNN
F 2 "" H 750 1800 50  0001 C CNN
F 3 "" H 750 1800 50  0001 C CNN
	1    750  1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1500 850  1800
Wire Wire Line
	850  1800 750  1800
Connection ~ 750  1800
$Comp
L power:VBUS #PWR?
U 1 1 5DAF07A3
P 1150 900
F 0 "#PWR?" H 1150 750 50  0001 C CNN
F 1 "VBUS" V 1165 1028 50  0000 L CNN
F 2 "" H 1150 900 50  0001 C CNN
F 3 "" H 1150 900 50  0001 C CNN
	1    1150 900 
	0    1    1    0   
$EndComp
Text Label 1150 1100 0    50   ~ 0
USB_P
Text Label 1150 1200 0    50   ~ 0
USB_N
Text Label 1900 6100 0    50   ~ 0
CAN_2_N
Text Label 1900 6200 0    50   ~ 0
CAN_2_P
Wire Wire Line
	1750 6100 1900 6100
Wire Wire Line
	1750 6200 1900 6200
$Sheet
S 1450 2400 1300 750 
U 5DB772F0
F0 "USBHUB" 50
F1 "USBHUB.sch" 50
F2 "USB_UP_D_N" B L 1450 2550 50 
F3 "USB_1_D_P" B R 2750 2650 50 
F4 "USB_1_D_N" B R 2750 2750 50 
F5 "USB_UP_D_P" B L 1450 2450 50 
F6 "USB_2_D_P" B R 2750 2950 50 
F7 "USB_2_D_N" B R 2750 3050 50 
$EndSheet
Text Notes 1750 950  0    50   ~ 0
USB Protectoin IC here
Text Notes 2700 5750 0    50   ~ 0
TVS diodes everywhere
Text Notes 1800 1150 0    50   ~ 0
Common mode choke
Text Notes 1450 1650 0    50   ~ 0
Ferrite Bead\nTVS Diode\nZener\netc\nYou know,m the standard usb protect shit
Text Notes 1150 6800 0    50   ~ 0
Common mode choke??? probably not necessary TBH, maybe not even TVS since no circuits
$Sheet
S 3250 2200 950  500 
U 5DC5978A
F0 "USBRS232" 50
F1 "fileUSBRS232.sch" 50
$EndSheet
Text Notes 2600 5450 0    50   ~ 0
NO TERMINATOR ON CAN (duh, this is a bus tap)\n
$Comp
L Power_Protection:SP0504BAJT D?
U 1 1 5DC69656
P 3550 1500
F 0 "D?" H 3855 1546 50  0000 L CNN
F 1 "SP0504BAJT" H 3855 1455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3850 1450 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 3675 1625 50  0001 C CNN
	1    3550 1500
	1    0    0    -1  
$EndComp
Text Notes 1200 4050 0    50   ~ 0
Charge Input!!!\n
$Comp
L Connector:USB_A J?
U 1 1 5DC8D1E4
P 5100 3500
F 0 "J?" H 5157 3967 50  0000 C CNN
F 1 "USB_A" H 5157 3876 50  0000 C CNN
F 2 "" H 5250 3450 50  0001 C CNN
F 3 " ~" H 5250 3450 50  0001 C CNN
	1    5100 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC936FC
P 4800 3300
F 0 "#PWR?" H 4800 3150 50  0001 C CNN
F 1 "+5V" V 4815 3428 50  0000 L CNN
F 2 "" H 4800 3300 50  0001 C CNN
F 3 "" H 4800 3300 50  0001 C CNN
	1    4800 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC94066
P 5100 4200
F 0 "#PWR?" H 5100 3950 50  0001 C CNN
F 1 "GND" H 5105 4027 50  0000 C CNN
F 2 "" H 5100 4200 50  0001 C CNN
F 3 "" H 5100 4200 50  0001 C CNN
	1    5100 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DC94EF6
P 5200 4050
F 0 "R?" H 5268 4096 50  0000 L CNN
F 1 "10M" H 5268 4005 50  0000 L CNN
F 2 "" V 5240 4040 50  0001 C CNN
F 3 "~" H 5200 4050 50  0001 C CNN
	1    5200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4200 5100 4200
Wire Wire Line
	5100 3900 5100 4200
Connection ~ 5100 4200
Wire Wire Line
	2750 2950 3750 2950
Wire Wire Line
	3750 2950 3750 3500
Wire Wire Line
	3750 3500 4800 3500
Wire Wire Line
	2750 3050 3650 3050
Wire Wire Line
	3650 3050 3650 3600
Wire Wire Line
	3650 3600 4800 3600
Text Notes 7900 3800 0    50   ~ 0
Ampseal here\n
Text Notes 1150 5250 0    50   ~ 0
Vertical
$EndSCHEMATC
