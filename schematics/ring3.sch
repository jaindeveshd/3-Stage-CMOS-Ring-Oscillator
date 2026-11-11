v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -35 355 -35 {
lab=n1}
N 655 -35 840 -35 {
lab=n2}
N 1140 -35 1170 -35 {
lab=n3}
N 1170 -75 1170 -35 {
lab=n3}
N -115 -75 1170 -75 {
lab=n3}
N -115 -35 -80 -35 {
lab=n3}
N -115 -45 -115 -35 {
lab=n3}
N -115 -75 -115 -45 {
lab=n3}
C {in.sym} 70 -35 0 0 {name=x1}
C {in.sym} 505 -35 0 0 {name=x2}
C {in.sym} 990 -35 0 0 {name=x3}
C {lab_pin.sym} 315 -35 0 0 {name=p1 sig_type=std_logic lab=n1
}
C {lab_pin.sym} 750 -35 0 0 {name=p2 sig_type=std_logic lab=n2
}
C {lab_pin.sym} 420 -75 0 0 {name=p3 sig_type=std_logic lab=n3
}
C {code.sym} 695 25 0 0 {name=s1 only_toplevel=false value=".lib /home/devesh/vlsi_tools/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice fs

.ic V(n1)=1.8 V(n2)=0 V(n3)=0
.temp 27


.control
tran 1p 10n uic
run

meas tran period TRIG v(n1) VAL=0.9 RISE=5 TARG v(n1) VAL=0.9 RISE=6
let freq = 1/period

print period
print freq

plot v(n1)
.endc"}
C {vsource.sym} 965 105 0 0 {name=VDDSRC value=1.8 savecurrent=false}
C {vdd.sym} 965 75 0 0 {name=l1 lab=VDD}
C {gnd.sym} 965 135 0 0 {name=l2 lab=GND}
C {capa.sym} 260 -5 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 695 -5 0 0 {name=C2
m=1
value=10f

footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1165 -5 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 260 25 0 0 {name=l3 lab=GND}
C {gnd.sym} 695 25 0 0 {name=l4 lab=GND}
C {gnd.sym} 1165 25 0 0 {name=l5 lab=GND}
