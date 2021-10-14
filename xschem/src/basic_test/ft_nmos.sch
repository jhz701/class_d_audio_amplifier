v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 370 -70 370 -10 { lab=#net1}
N 460 -10 460 80 { lab=GND}
N 370 -10 370 0 { lab=#net1}
N 370 20 400 20 { lab=#net1}
N 400 -30 400 20 { lab=#net1}
N 370 -30 400 -30 { lab=#net1}
N 370 50 370 80 { lab=#net2}
N 370 140 370 170 { lab=GND}
N 370 -70 460 -70 { lab=#net1}
N 280 -70 380 -70 { lab=#net1}
N 280 -10 280 20 { lab=#net3}
N 280 20 330 20 { lab=#net3}
C {code_shown.sym} -170 10 0 0 {name=s1 only_toplevel=false value="
.control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__pfet_01v8[id]
save @m.xm1.msky130_fd_pr__nfet_01v8[cgs]
save @m.xm1.msky130_fd_pr__nfet_01v8[cgd]
save @m.xm1.msky130_fd_pr__nfet_01v8[cgb]

DC VGS 0 1.8 0.01
plot @m.xm1.msky130_fd_pr__pfet_01v8[id]
.endc
"}
C {vsource.sym} 460 -40 0 0 {name=VDD value=1.8}
C {gnd.sym} 460 80 0 0 {name=l1 lab=GND}
C {gnd.sym} 370 170 0 0 {name=l2 lab=GND}
C {vsource.sym} 280 -40 0 0 {name=VGS value=0.6}
C {vsource.sym} 370 110 0 0 {name=VDS value=0.9}
C {netlist_not_shown.sym} 70 -100 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/ss.spice


* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {sky130_fd_pr/pfet_01v8.sym} 350 20 0 0 {name=M1
L=0.15
W=10
nf=10
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
