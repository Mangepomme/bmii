v 20150930 2
C 43200 46500 1 0 0 header10-2.sym
{
T 43200 48500 5 10 0 1 0 0 1
device=HEADER10
T 43500 48600 5 10 1 1 0 0 1
refdes=JTAG_CPLD
T 43200 46500 5 10 0 0 0 0 1
footprint=HEADER10_2
}
N 43200 48300 41100 48300 4
N 43200 47500 41100 47500 4
N 43200 46700 41100 46700 4
C 44900 48000 1 0 0 gnd-1.sym
N 44600 48300 45000 48300 4
N 43200 47900 41100 47900 4
C 44600 47000 1 0 0 nc-right-1.sym
{
T 44700 47500 5 10 0 0 0 0 1
value=NoConnection
T 44700 47700 5 10 0 0 0 0 1
device=DRC_Directive
}
C 42700 47000 1 0 0 nc-left-1.sym
{
T 42700 47400 5 10 0 0 0 0 1
value=NoConnection
T 42700 47800 5 10 0 0 0 0 1
device=DRC_Directive
}
C 44900 46400 1 0 0 gnd-1.sym
N 44600 46700 45000 46700 4
N 44600 47500 45400 47500 4
N 45400 47500 45400 48400 4
N 44600 47900 45400 47900 4
C 41500 48600 1 90 0 resistor-1.sym
{
T 41100 48900 5 10 0 0 90 0 1
device=RESISTOR
T 41200 48800 5 10 1 1 90 0 1
refdes=R4
T 41500 48600 5 10 1 1 0 0 1
value=10k
T 41500 48600 5 10 0 1 0 0 1
footprint=RESC2012L
}
C 42100 48600 1 90 0 resistor-1.sym
{
T 41700 48900 5 10 0 0 90 0 1
device=RESISTOR
T 41800 48800 5 10 1 1 90 0 1
refdes=R3
T 42100 48600 5 10 1 1 0 0 1
value=10k
T 42100 48600 5 10 0 1 0 0 1
footprint=RESC2012L
}
C 42700 45500 1 90 0 resistor-1.sym
{
T 42300 45800 5 10 0 0 90 0 1
device=RESISTOR
T 42700 45500 5 10 0 1 0 0 1
footprint=RESC2012L
T 42400 45700 5 10 1 1 90 0 1
refdes=R2
T 42700 45500 5 10 1 1 0 0 1
value=1k
}
C 42500 45100 1 0 0 gnd-1.sym
N 42600 45500 42600 45400 4
N 41400 48600 41400 46700 4
N 42000 47500 42000 48600 4
N 42600 48300 42600 46400 4
C 39700 47800 1 0 0 input-2.sym
{
T 39700 48100 5 10 0 0 0 0 1
net=TDO:1
T 40300 48500 5 10 0 0 0 0 1
device=none
T 40200 47900 5 10 1 1 0 7 1
value=TDO
}
C 41100 48400 1 180 0 output-2.sym
{
T 40300 48200 5 10 0 0 180 0 1
net=TCK:1
T 40900 47700 5 10 0 0 180 0 1
device=none
T 40200 48300 5 10 1 1 180 1 1
value=TCK
}
C 41100 47600 1 180 0 output-2.sym
{
T 40300 47400 5 10 0 0 180 0 1
net=TMS:1
T 40900 46900 5 10 0 0 180 0 1
device=none
T 40200 47500 5 10 1 1 180 1 1
value=TMS
}
C 41100 46800 1 180 0 output-2.sym
{
T 40300 46600 5 10 0 0 180 0 1
net=TDI:1
T 40900 46100 5 10 0 0 180 0 1
device=none
T 40200 46700 5 10 1 1 180 1 1
value=TDI
}
N 41400 49500 42000 49500 4
C 34900 45900 1 0 0 74244-1.sym
{
T 35200 49050 5 10 0 0 0 0 1
device=74244
T 36600 48900 5 10 1 1 0 6 1
refdes=U5
T 35200 49250 5 10 0 0 0 0 1
footprint=TSSOP20
}
C 36900 47600 1 0 0 output-2.sym
{
T 37700 47800 5 10 0 0 0 0 1
net=TDI:1
T 37100 48300 5 10 0 0 0 0 1
device=none
T 37800 47700 5 10 1 1 0 1 1
value=TDI
}
C 36900 47900 1 0 0 output-2.sym
{
T 37700 48100 5 10 0 0 0 0 1
net=TMS:1
T 37100 48600 5 10 0 0 0 0 1
device=none
T 37800 48000 5 10 1 1 0 1 1
value=TMS
}
C 36900 48200 1 0 0 output-2.sym
{
T 37700 48400 5 10 0 0 0 0 1
net=TCK:1
T 37100 48900 5 10 0 0 0 0 1
device=none
T 37800 48300 5 10 1 1 0 1 1
value=TCK
}
C 33500 46700 1 0 0 input-2.sym
{
T 33500 47000 5 10 0 0 0 0 1
net=TDO:1
T 34100 47400 5 10 0 0 0 0 1
device=none
T 34000 46800 5 10 1 1 0 7 1
value=TDO
}
C 34900 48400 1 180 0 io-1.sym
{
T 34000 48200 5 10 0 0 180 0 1
net=FD7:1
T 34700 47800 5 10 0 0 180 0 1
device=none
T 34000 48300 5 10 1 1 180 1 1
value=FD7
}
C 36900 46700 1 0 0 io-1.sym
{
T 37800 46900 5 10 0 0 0 0 1
net=FD6:1
T 37100 47300 5 10 0 0 0 0 1
device=none
T 37800 46800 5 10 1 1 0 1 1
value=FD6
}
C 34900 48100 1 180 0 io-1.sym
{
T 34000 47900 5 10 0 0 180 0 1
net=FD5:1
T 34700 47500 5 10 0 0 180 0 1
device=none
T 34000 48000 5 10 1 1 180 1 1
value=FD5
}
C 34900 47800 1 180 0 io-1.sym
{
T 34000 47600 5 10 0 0 180 0 1
net=FD4:1
T 34700 47200 5 10 0 0 180 0 1
device=none
T 34000 47700 5 10 1 1 180 1 1
value=FD4
}
N 35500 45900 36300 45900 4
C 34100 45800 1 0 0 input-2.sym
{
T 34100 46100 5 10 0 0 0 0 1
net=JTAGE:1
T 34700 46500 5 10 0 0 0 0 1
device=none
T 34600 45900 5 10 1 1 0 7 1
value=JTAGE
}
C 41500 49500 1 0 0 3.3V-plus-1.sym
C 45200 48400 1 0 0 3.3V-plus-1.sym
C 37400 51000 1 0 0 24Cxx-1.sym
{
T 37700 52150 5 10 0 0 0 0 1
device=24Cxx
T 38400 52000 5 10 1 1 0 0 1
refdes=U7
T 37700 52350 5 10 0 0 0 0 1
footprint=SO8
}
C 42800 51400 1 180 0 input-2.sym
{
T 42800 51100 5 10 0 0 180 0 1
net=SCL:1
T 42200 50700 5 10 0 0 180 0 1
device=none
T 42300 51300 5 10 1 1 180 7 1
value=SCL
}
N 41400 51300 38700 51300 4
C 41400 51000 1 0 0 io-1.sym
{
T 42300 51200 5 10 0 0 0 0 1
net=SDA:1
T 41600 51600 5 10 0 0 0 0 1
device=none
T 42300 51100 5 10 1 1 0 1 1
value=SDA
}
N 41400 51100 38700 51100 4
C 37000 50700 1 0 0 gnd-1.sym
N 37400 51500 37100 51500 4
C 36600 51900 1 0 0 3.3V-plus-1.sym
C 39800 51700 1 90 0 resistor-1.sym
{
T 39400 52000 5 10 0 0 90 0 1
device=RESISTOR
T 39500 51900 5 10 1 1 90 0 1
refdes=R11
T 39800 51700 5 10 1 1 0 0 1
value=2.2k
T 39800 51700 5 10 0 1 0 0 1
footprint=RESC2012L
}
C 40400 51700 1 90 0 resistor-1.sym
{
T 40000 52000 5 10 0 0 90 0 1
device=RESISTOR
T 40100 51900 5 10 1 1 90 0 1
refdes=R12
T 40400 51700 5 10 1 1 0 0 1
value=2.2k
T 40400 51700 5 10 0 1 0 0 1
footprint=RESC2012L
}
C 39800 52600 1 0 0 3.3V-plus-1.sym
N 39700 52600 40300 52600 4
N 39700 51700 39700 51300 4
N 40300 51700 40300 51100 4
N 38900 51500 38700 51500 4
C 38800 50700 1 0 0 gnd-1.sym
N 38900 51500 38900 51000 4
N 37100 51500 37100 51000 4
N 37400 51300 37100 51300 4
N 37400 51700 36800 51700 4
N 36800 51700 36800 51900 4
