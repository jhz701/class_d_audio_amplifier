v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 430 -1650 430 -1630 { lab=vdd}
N 530 -1510 550 -1510 { lab=out}
N 310 -1510 340 -1510 { lab=in}
N -220 -1660 -220 -1610 { lab=vdd}
N -220 -1550 -220 -1510 { lab=GND}
N 280 -1510 310 -1510 { lab=in}
N 550 -1510 580 -1510 { lab=out}
N 430 -1530 430 -1480 { lab=out}
N 390 -1560 390 -1450 { lab=in}
N 430 -1420 430 -1410 { lab=GND}
N 430 -1450 460 -1450 { lab=GND}
N 460 -1450 460 -1420 { lab=GND}
N 430 -1610 430 -1590 { lab=vdd}
N 430 -1420 460 -1420 { lab=GND}
N 430 -1510 530 -1510 { lab=out}
N 340 -1510 390 -1510 { lab=in}
N 430 -1630 430 -1610 { lab=vdd}
N 430 -1410 430 -1390 { lab=GND}
N 430 -1560 450 -1560 { lab=vdd}
N 450 -1590 450 -1560 { lab=vdd}
N 430 -1590 450 -1590 { lab=vdd}
C {netlist_not_shown.sym} -70 -1840 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice


* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {vsource.sym} -220 -1580 0 0 {name=V1 value=1.8}
C {gnd.sym} -220 -1510 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -220 -1650 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 430 -1650 0 0 {name=l3 sig_type=std_logic lab=vdd}
C {vsource.sym} 280 -1480 0 0 {name=V2 value="pulse(0 1.8 0 1n 1n 1u 2u 0)"}
C {gnd.sym} 280 -1450 0 0 {name=l5 lab=GND}
C {code_shown.sym} 230 -1700 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 10n 10u
.endc

"}
C {lab_wire.sym} 570 -1510 0 0 {name=l6 sig_type=std_logic lab=out}
C {lab_wire.sym} 310 -1510 0 0 {name=l7 sig_type=std_logic lab=in}
C {sky130_fd_pr/nfet_01v8.sym} 410 -1450 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 410 -1560 0 0 {name=M1
L=0.15
W=2
nf=2
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
C {gnd.sym} 430 -1390 0 0 {name=l8 lab=GND}
