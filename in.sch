v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -30 -70 10 {
lab=OUT}
N -140 -60 -140 -10 {
lab=IN}
N -140 -10 -140 40 {
lab=IN}
N -140 40 -110 40 {
lab=IN}
N -70 -10 0 -10 {
lab=OUT}
N -160 -10 -140 -10 {
lab=IN}
N -70 70 -70 80 {
lab=GND}
N -180 -10 -160 -10 {
lab=IN}
N -70 40 -60 40 {
lab=GND}
N -60 40 -60 90 {
lab=GND}
N -70 90 -60 90 {
lab=GND}
N -140 -60 -110 -60 {
lab=IN}
N -70 80 -70 110 {
lab=GND}
N -70 -60 -20 -60 {
lab=VDD}
N -20 -120 -20 -60 {
lab=VDD}
N -70 -120 -20 -120 {
lab=VDD}
N -70 -120 -70 -90 {
lab=VDD}
N 0 -10 210 -10 {
lab=OUT}
N -240 -10 -180 -10 {
lab=IN}
N -260 -10 -240 -10 {
lab=IN}
C {/home/devesh/vlsi_tools/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -90 -60 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {/home/devesh/vlsi_tools/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -90 40 0 0 {name=M2 
W=0.5
L=0.15
nf=1
mult=1
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} -70 110 0 0 {name=l1 lab=GND}
C {vdd.sym} -70 -120 0 0 {name=l2 lab=VDD}
C {opin.sym} 210 -10 0 0 {name=OUT lab=OUT}
C {ipin.sym} -240 -10 0 0 {name=IN lab=IN}
