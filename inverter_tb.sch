v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -30 230 -30 {lab=#net1}
N 230 -30 230 -10 {lab=#net1}
N 230 50 230 70 {lab=GND}
N 140 70 230 70 {lab=GND}
N 140 10 140 70 {lab=GND}
N 310 -20 310 -10 {lab=in}
N 310 50 310 70 {lab=GND}
N 230 70 310 70 {lab=GND}
N 310 -70 310 -20 {lab=in}
N -180 -70 310 -70 {lab=in}
N -180 -70 -180 -30 {lab=in}
N -180 -30 -160 -30 {lab=in}
N 160 70 160 100 {lab=GND}
N 140 -10 190 -10 {lab=out}
N 190 -20 190 -10 {lab=out}
N 190 -90 190 -20 {lab=out}
N 190 -90 320 -90 {lab=out}
N 320 -90 320 -20 {lab=out}
N 320 -20 350 -20 {lab=out}
C {devices/vsource.sym} 230 20 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 310 20 0 0 {name=V2 value="PULSE(0 1.8 2NS 2NS 2NS 50NS 100NS 5)" savecurrent=false}
C {devices/code_shown.sym} -90 80 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
trans 1ns 200ns
plot in out
op
.endc
"}
C {devices/gnd.sym} 160 100 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -240 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt
.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/lab_pin.sym} -180 -50 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 350 -20 2 0 {name=p2 sig_type=std_logic lab=out}
C {/home/mona121130125/percobaan_layout/inverter.sym} -10 -10 0 0 {name=x1}
