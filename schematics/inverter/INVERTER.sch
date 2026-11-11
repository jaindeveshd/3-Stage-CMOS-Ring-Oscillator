v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 -110 -40 -70 {
lab=OUT}
N -110 -140 -110 -90 {
lab=IN}
N -110 -90 -110 -40 {
lab=IN}
N -110 -40 -80 -40 {
lab=IN}
N -40 -90 30 -90 {
lab=OUT}
N -130 -90 -110 -90 {
lab=IN}
N -180 -90 -150 -90 {
lab=IN}
N 190 -180 190 -140 {
lab=VDD}
N 190 -80 190 -0 {
lab=GND}
N -40 0 190 -0 {
lab=GND}
N -230 -150 -230 -140 {
lab=IN}
N -230 -150 -180 -150 {
lab=IN}
N -180 -150 -180 -90 {
lab=IN}
N -230 -80 -230 -70 {
lab=GND}
N -230 -70 -230 -0 {
lab=GND}
N -230 0 -40 -0 {
lab=GND}
N -40 -10 -40 -0 {
lab=GND}
N -150 -90 -130 -90 {
lab=IN}
N -40 -40 -30 -40 {
lab=GND}
N -30 -40 -30 10 {
lab=GND}
N -40 10 -30 10 {
lab=GND}
N -110 -140 -80 -140 {
lab=IN}
N -40 0 -40 30 {
lab=GND}
N -40 -140 10 -140 {
lab=VDD}
N 10 -200 10 -140 {
lab=VDD}
N -40 -200 10 -200 {
lab=VDD}
N -40 -180 190 -180 {
lab=VDD}
N -40 -200 -40 -170 {
lab=VDD}
C {/home/devesh/vlsi_tools/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr} -1860 -1160 0 0 {}
C {ipin.sym} -130 -90 0 0 {name=IN
 lab=IN}
C {opin.sym} 30 -90 0 0 {name=OUT lab=OUT
}
C {vsource.sym} 190 -110 0 0 {name=V1 value=1.8
 savecurrent=false}
C {vsource.sym} -230 -110 0 0 {name=V2 value="pulse(0 1.8 1n 100p 100p 5n 10n)" savecurrent=false}
C {code.sym} 230 -140 0 0 {name=code
control 
tran 0.01n 50n 
plot v(IN) v(OUT)
 .endc}
C {/home/devesh/vlsi_tools/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -60 -140 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/home/devesh/vlsi_tools/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -60 -40 0 0 {name=M2
W=0.5
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} -230 0 0 0 {name=l3 lab=GND}
C {gnd.sym} -40 30 0 0 {name=l1 lab=GND}
C {gnd.sym} 190 0 0 0 {name=l4 lab=GND}
C {vdd.sym} -40 -200 0 0 {name=l2 lab=VDD}
