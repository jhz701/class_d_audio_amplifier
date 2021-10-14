v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 20 200 20 280 { lab=v1}
N 20 230 90 230 { lab=v1}
N 20 120 20 140 { lab=vdd}
N 20 340 20 350 { lab=GND}
N 20 310 20 340 { lab=GND}
N 60 310 100 310 { lab=v1}
N 90 230 90 310 { lab=v1}
N 100 310 140 310 { lab=v1}
N 180 340 180 350 { lab=GND}
N 180 310 180 340 { lab=GND}
N 180 100 180 150 { lab=vbias}
N 180 120 230 120 { lab=vbias}
N 230 70 230 120 { lab=vbias}
N 220 70 230 70 { lab=vbias}
N 230 70 280 70 { lab=vbias}
N 180 40 180 70 { lab=vdd}
N 180 20 180 40 { lab=vdd}
N -110 230 -110 260 { lab=GND}
N -110 140 -110 170 { lab=vdd}
N 180 250 180 280 { lab=#net1}
N 180 150 180 190 { lab=vbias}
C {netlist_not_shown.sym} -60 -90 0 0 {name=TT_MODELS1
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
C {code_shown.sym} 350 80 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.control
save all
tran 1n 1u
.endc


"}
C {isource.sym} 20 170 0 0 {name=I0 value=150u}
C {lab_wire.sym} 20 120 0 0 {name=l53 sig_type=std_logic lab=vdd}
C {gnd.sym} 20 350 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 40 310 0 1 {name=M5
L=2
W=4
nf=2
mult=80
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 160 310 0 0 {name=M6
L=2
W=4
nf=2
mult=80
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {gnd.sym} 180 350 0 0 {name=l54 lab=GND}
C {lab_wire.sym} 180 160 0 0 {name=l59 sig_type=std_logic lab=vbias}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 200 70 0 1 {name=M1
L=1
W=4
nf=2
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_wire.sym} 180 20 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {vsource.sym} -110 200 0 0 {name=V1 value=1.8}
C {gnd.sym} -110 260 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -110 160 0 0 {name=l3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 70 230 0 1 {name=l4 sig_type=std_logic lab=v1}
C {vsource.sym} 180 220 0 0 {name=V2 value=0}
