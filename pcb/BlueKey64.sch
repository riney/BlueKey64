EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:synertek
LIBS:BlueKey64-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "BlueKey 64"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SST39SF020 U1
U 1 1 5674E607
P 4550 2250
F 0 "U1" H 4650 3550 50  0000 C CNN
F 1 "SST39SF020" H 4550 1050 50  0000 C CNN
F 2 "" H 4550 2550 50  0000 C CNN
F 3 "" H 4550 2550 50  0000 C CNN
	1    4550 2250
	1    0    0    -1  
$EndComp
$Comp
L CONN_C64_EXPANSION P1
U 1 1 5674F8FA
P 2100 2050
F 0 "P1" H 2100 3200 50  0000 C CNN
F 1 "CONN_C64_EXPANSION" V 2100 2050 50  0000 C CNN
F 2 "" H 2250 1150 50  0000 C CNN
F 3 "" H 2250 1150 50  0000 C CNN
	1    2100 2050
	1    0    0    -1  
$EndComp
Entry Bus Bus
	5150 1750 5250 1850
Entry Bus Bus
	5150 1650 5250 1750
Entry Bus Bus
	5150 1550 5250 1650
Entry Bus Bus
	5150 1450 5250 1550
Entry Bus Bus
	5150 1350 5250 1450
Entry Bus Bus
	5150 1250 5250 1350
Entry Bus Bus
	5150 1150 5250 1250
Entry Bus Bus
	5150 1050 5250 1150
$Comp
L SY6551A U2
U 1 1 56749730
P 4500 4850
F 0 "U2" H 4500 5650 60  0000 C CNN
F 1 "SY6551A" V 4500 4850 60  0000 C CNN
F 2 "" H 4500 5650 60  0000 C CNN
F 3 "" H 4500 5650 60  0000 C CNN
	1    4500 4850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
