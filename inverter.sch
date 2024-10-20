v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 120 -20 140 {lab=gnd}
N -20 -80 -20 -60 {lab=vdd}
N -60 -30 -60 30 {lab=in}
N -60 30 -60 90 {lab=in}
N -20 90 70 90 {lab=gnd}
N 70 90 70 130 {lab=gnd}
N -20 130 70 130 {lab=gnd}
N -20 0 -20 30 {lab=out}
N -20 30 -20 60 {lab=out}
N -20 -30 50 -30 {lab=vdd}
N 50 -60 50 -30 {lab=vdd}
N -20 -60 50 -60 {lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -40 -30 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -40 90 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -60 30 0 0 {name=p1 lab=in}
C {devices/opin.sym} -20 30 0 0 {name=p2 lab=out}
C {devices/iopin.sym} -20 -80 3 0 {name=p3 lab=vdd}
C {devices/iopin.sym} -20 140 1 0 {name=p4 lab=gnd}
