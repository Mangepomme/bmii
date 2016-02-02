v 20150930 2
N 38100 50400 40900 50400 4
N 43600 50400 46600 50400 4
C 42200 49000 1 0 0 gnd-1.sym
N 48000 49300 48000 49700 4
C 47900 49000 1 0 0 gnd-1.sym
N 49300 50400 50500 50400 4
N 50500 50400 50500 50800 4
C 43300 47100 1 90 0 resistor-1.sym
{
T 42900 47400 5 10 0 0 90 0 1
device=RESISTOR
T 43000 47300 5 10 1 1 90 0 1
refdes=R1
T 43300 47500 5 10 1 1 0 0 1
value=121
T 43300 47100 5 10 0 1 0 0 1
footprint=RESC2012L
}
C 43100 47100 1 270 0 led-2.sym
{
T 43400 46300 5 10 1 1 270 0 1
refdes=D1
T 43700 47000 5 10 0 0 270 0 1
device=LED
T 43100 47100 5 10 0 0 0 0 1
footprint=SMD_DIODE 60 30
}
C 43100 45900 1 0 0 gnd-1.sym
C 44400 50700 1 0 0 3.3V-plus-1.sym
C 43000 48000 1 0 0 3.3V-plus-1.sym
C 46600 49700 1 0 0 MCP1826.sym
{
T 47100 50900 5 10 1 1 0 3 1
refdes=U4
T 48300 50900 5 10 1 1 0 0 1
value=1.8V/1A
T 46600 49700 5 10 0 0 0 0 1
footprint=SOT223
}
C 40900 49700 1 0 0 LD1117A.sym
{
T 41400 50900 5 10 1 1 0 3 1
refdes=U3
T 42600 50900 5 10 1 1 0 0 1
value=3.3V/1A
T 40900 49700 5 10 0 0 0 0 1
footprint=SOT223
}
N 40500 49500 44000 49500 4
N 42300 49700 42300 49500 4
C 40300 50400 1 270 0 capacitor-1.sym
{
T 41000 50200 5 10 0 0 270 0 1
device=CAPACITOR
T 40800 50200 5 10 1 1 270 0 1
refdes=C2
T 41200 50200 5 10 0 0 270 0 1
symversion=0.1
T 40600 49600 5 10 1 1 0 0 1
value=100n
T 40300 50400 5 10 0 1 0 0 1
footprint=CAPC2012L
}
C 43800 50400 1 270 0 capacitor-1.sym
{
T 44500 50200 5 10 0 0 270 0 1
device=CAPACITOR
T 44300 50200 5 10 1 1 270 0 1
refdes=C3
T 44700 50200 5 10 0 0 270 0 1
symversion=0.1
T 44100 49600 5 10 1 1 0 0 1
value=10u
T 43800 50400 5 10 0 1 0 0 1
footprint=CAPC2012L
}
N 42300 49500 42300 49300 4
C 46000 50400 1 270 0 capacitor-1.sym
{
T 46700 50200 5 10 0 0 270 0 1
device=CAPACITOR
T 46500 50200 5 10 1 1 270 0 1
refdes=C4
T 46900 50200 5 10 0 0 270 0 1
symversion=0.1
T 46300 49700 5 10 1 1 0 0 1
value=4.7u
T 46000 50400 5 10 0 1 0 0 1
footprint=CAPC2012L
}
C 49500 50400 1 270 0 capacitor-1.sym
{
T 50200 50200 5 10 0 0 270 0 1
device=CAPACITOR
T 50000 50200 5 10 1 1 270 0 1
refdes=C5
T 50400 50200 5 10 0 0 270 0 1
symversion=0.1
T 49800 49700 5 10 1 1 0 0 1
value=4.7u
T 49500 50400 5 10 0 1 0 0 1
footprint=CAPC2012L
}
N 46200 49500 48000 49500 4
N 49700 49500 48000 49500 4
N 44600 50400 44600 50700 4
N 38800 50400 38800 50800 4
C 38600 50800 1 0 0 5V-plus-1.sym
C 37200 50300 1 0 0 resistor-2.sym
{
T 37600 50650 5 10 0 0 0 0 1
device=FERRITE
T 37400 50600 5 10 1 1 0 0 1
refdes=F1
T 37200 50300 5 10 0 0 0 0 1
footprint=INDC4532N
T 36800 50100 5 10 1 1 0 0 1
value=110ohms@100MHz
}
N 36000 50400 37200 50400 4
C 35800 50400 1 270 0 capacitor-1.sym
{
T 36500 50200 5 10 0 0 270 0 1
device=CAPACITOR
T 36700 50200 5 10 0 0 270 0 1
symversion=0.1
T 36100 50000 5 10 0 1 0 0 1
footprint=CAPC2012L
T 36300 50200 5 10 1 1 270 0 1
refdes=C1
T 36100 49600 5 10 1 1 0 0 1
value=10u
}
C 35900 49200 1 0 0 gnd-1.sym
T 35000 48600 9 10 1 0 0 0 2
USB spec requires <=10uF
bypass capacitor
T 43600 46600 9 10 1 0 0 0 1
POWER ON led
C 50300 50800 1 0 0 generic-power.sym
{
T 50500 51050 5 10 1 1 0 3 1
net=VCCINT:1
}
N 36000 51800 36000 50400 4
C 36700 51500 1 0 0 gnd-1.sym
C 36400 51100 1 0 0 io-1.sym
{
T 37300 51300 5 10 0 0 0 0 1
net=USB_D+:1
T 36600 51700 5 10 0 0 0 0 1
device=none
T 37300 51200 5 10 1 1 0 1 1
value=USB_D+
}
C 36400 50800 1 0 0 io-1.sym
{
T 37300 51000 5 10 0 0 0 0 1
net=USB_D-:1
T 36600 51400 5 10 0 0 0 0 1
device=none
T 37300 50900 5 10 1 1 0 1 1
value=USB_D-
}
N 36400 51800 36400 51200 4
N 36200 51800 36200 50900 4
N 36200 50900 36400 50900 4
C 37200 53100 1 90 1 USB_mini_TYPE-B_5_SMT.sym
{
T 35750 53000 5 10 1 1 90 6 1
refdes=USB
T 36590 52810 5 10 1 1 180 2 1
device=USB
T 24550 52700 5 10 0 0 90 6 1
footprint=USBB
}
C 39400 50400 1 0 0 testpt-1.sym
{
T 39500 50800 5 10 1 1 0 0 1
refdes=TP1
T 39800 51300 5 10 0 0 0 0 1
device=TESTPOINT
T 39800 51100 5 10 0 0 0 0 1
footprint=tp-40
}
C 44900 50400 1 0 0 testpt-1.sym
{
T 45000 50800 5 10 1 1 0 0 1
refdes=TP2
T 45300 51300 5 10 0 0 0 0 1
device=TESTPOINT
T 45300 51100 5 10 0 0 0 0 1
footprint=tp-40
}
C 49600 50400 1 0 0 testpt-1.sym
{
T 49800 50800 5 10 1 1 0 0 1
refdes=TP3
T 50000 51300 5 10 0 0 0 0 1
device=TESTPOINT
T 50000 51100 5 10 0 0 0 0 1
footprint=tp-40
}
C 39200 52600 1 0 0 testpt-1.sym
{
T 39300 53000 5 10 1 1 0 0 1
refdes=TP5
T 39600 53500 5 10 0 0 0 0 1
device=TESTPOINT
T 39600 53300 5 10 0 0 0 0 1
footprint=tp-40
}
C 39200 52300 1 0 0 gnd-1.sym
C 45400 50400 1 0 0 vcc-1.sym
