v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -30 230 -30 {lab=#net1}
N 170 -30 170 -20 {lab=#net1}
N 140 -20 170 -20 {lab=#net1}
N 140 30 230 30 {lab=GND}
N 140 20 140 30 {lab=GND}
N 140 0 180 0 {lab=out}
N 180 -80 180 0 {lab=out}
N 170 -80 180 -80 {lab=out}
N 170 30 170 60 {lab=GND}
C {/home/mona121130125/percobaan_layout/ring_osc.sym} -10 0 0 0 {name=x1}
C {devices/vsource.sym} 230 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/code_shown.sym} -360 -190 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
tran 1ps 10ns
plot out
op
.endc
"}
C {sky130_fd_pr/corner.sym} -270 20 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/lab_pin.sym} 170 -80 0 0 {name=p1 sig_type=std_logic lab=out}
C {devices/gnd.sym} 170 60 0 0 {name=l1 lab=GND}
