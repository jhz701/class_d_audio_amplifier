v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -220 -140 -220 -120 { lab=vdd}
N -220 -140 -200 -140 { lab=vdd}
N -180 80 -180 110 { lab=vin}
N -420 -100 -420 -70 { lab=vref}
N -490 -40 -490 -20 { lab=vdd}
N -490 180 -490 190 { lab=GND}
N -490 150 -490 180 { lab=GND}
N -450 150 -410 150 { lab=#net1}
N -420 70 -420 150 { lab=#net1}
N -410 150 -370 150 { lab=#net1}
N -330 190 -330 220 { lab=GND}
N -420 190 -400 190 { lab=vbias1}
N -420 190 -420 270 { lab=vbias1}
N -370 190 -340 190 { lab=GND}
N -340 190 -330 190 { lab=GND}
N -420 40 -420 70 { lab=#net1}
N -490 40 -420 40 { lab=#net1}
N -490 110 -490 120 { lab=#net2}
N -490 40 -490 50 { lab=#net1}
N -370 150 -280 150 { lab=#net1}
N -330 190 -310 190 { lab=GND}
N -310 190 -280 190 { lab=GND}
N -250 190 -250 270 { lab=vbias2}
N 70 -90 70 -60 { lab=vdd}
N 70 20 70 40 { lab=GND}
N -100 -50 -50 -50 { lab=vbias1}
N -100 -30 -50 -30 { lab=vbias2}
N -100 -10 -50 -10 { lab=vin}
N -100 10 -50 10 { lab=vref}
N 190 -30 240 -30 { lab=vp}
N 190 -10 240 -10 { lab=vn}
C {vsource.sym} -220 -90 0 0 {name=V3 value=1.8}
C {gnd.sym} -220 -60 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -200 -140 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {code_shown.sym} 350 -220 0 0 {name=s1 only_toplevel=false value="
.nodeset V(v1)=0.9
.control
save vp vn vin
tran 10n 500u
.endc
"}
C {netlist_not_shown.sym} -300 -280 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/ss.spice
.include /home/eda/magic/class_d_audio_amplifier/S_to_D/S_to_D_post.spice

.include /home/eda/magic/class_d_audio_amplifier/S_to_D/S_to_D_revised_post.spice

* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {vsource.sym} -180 140 0 0 {name=V2 value="sin(0.9 0.8 5k)"}
C {gnd.sym} -180 170 0 0 {name=l9 lab=GND}
C {vsource.sym} -420 -40 0 0 {name=V1 value=0.9}
C {gnd.sym} -420 -10 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -180 90 0 0 {name=l11 sig_type=std_logic lab=vin}
C {isource.sym} -490 10 0 0 {name=I0 value=15u}
C {lab_wire.sym} -490 -40 0 0 {name=l53 sig_type=std_logic lab=vdd}
C {gnd.sym} -490 190 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -470 150 0 1 {name=M5
L=2
W=4
nf=2
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -370 170 3 1 {name=M6
L=2
W=4
nf=2
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {gnd.sym} -330 220 0 0 {name=l54 lab=GND}
C {lab_wire.sym} -420 -90 0 0 {name=l10 sig_type=std_logic lab=vref}
C {vsource.sym} -490 80 2 0 {name=V5 value=0}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -280 170 1 0 {name=M1
L=2
W=4
nf=2
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_wire.sym} -250 240 2 0 {name=l1 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} -420 240 2 0 {name=l2 sig_type=std_logic lab=vbias1}
C {gnd.sym} 70 40 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 70 -80 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -70 -50 0 0 {name=l12 sig_type=std_logic lab=vbias1}
C {lab_wire.sym} -80 -30 0 0 {name=l13 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} -70 10 0 0 {name=l14 sig_type=std_logic lab=vref}
C {lab_wire.sym} -80 -10 0 0 {name=l15 sig_type=std_logic lab=vin}
C {lab_wire.sym} 210 -30 0 1 {name=l16 sig_type=std_logic lab=vp}
C {lab_wire.sym} 210 -10 0 1 {name=l17 sig_type=std_logic lab=vn}
C {src/S_to_D/S_to_D.sym} 100 -20 0 0 {name=x1}
