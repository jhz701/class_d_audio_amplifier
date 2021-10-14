v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -20 -140 -20 -120 { lab=vdd}
N -20 -140 0 -140 { lab=vdd}
N -30 20 -30 40 { lab=vref}
N 350 -110 390 -110 { lab=#net1}
N 350 -90 390 -90 { lab=vref}
N 350 -70 390 -70 { lab=vbias3}
N 450 -140 450 -110 { lab=vdd}
N 450 -70 450 -20 { lab=GND}
N 500 -90 540 -90 { lab=vout}
N 90 70 90 150 { lab=v1}
N 90 100 160 100 { lab=v1}
N 90 -10 90 10 { lab=vdd}
N 90 210 90 220 { lab=GND}
N 90 180 90 210 { lab=GND}
N 130 180 170 180 { lab=v1}
N 160 100 160 180 { lab=v1}
N 170 180 210 180 { lab=v1}
N 240 220 270 220 { lab=GND}
N 260 220 260 250 { lab=GND}
N 440 220 440 250 { lab=GND}
N 210 220 240 220 { lab=GND}
N 270 220 300 220 { lab=GND}
N 390 220 420 220 { lab=GND}
N 180 220 180 270 { lab=vbias1}
N 330 220 330 270 { lab=vbias2}
N 360 220 360 270 { lab=vbias3}
N 420 220 440 220 { lab=GND}
N 210 180 390 180 { lab=v1}
N 200 -110 200 -90 { lab=#net1}
N 200 -110 350 -110 { lab=#net1}
C {vsource.sym} -20 -90 0 0 {name=V3 value=1.8}
C {gnd.sym} -20 -60 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 0 -140 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {code_shown.sym} 840 -290 0 0 {name=s1 only_toplevel=false value="
.nodeset V(vt)=0.9
.control
save @m.xm3.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.xm7.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.xm8.msky130_fd_pr__nfet_01v8_lvt[id]
save all
op
*tran 4n 500u
*5n
*plot @m.xm7.msky130_fd_pr__pfet_01v8_lvt[id]
*plot @m.xm8.msky130_fd_pr__nfet_01v8_lvt[id]
*dc V2 0 1.8 0.01
ac dec 10000 100 100G
meas ac GBW when vdb(vout)=0
meas ac DC_Gain find vdb(vout) at=1000
meas ac PM find vp(vout) when vdb(vout)=0
print PM*180/PI
plot vdb(vout) (vp(vout))*180/PI

.endc
"}
C {netlist_not_shown.sym} -150 -300 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/class_d_audio_amplifier/comparator/comparator_post.spice

.include /home/eda/magic/class_d_audio_amplifier/comparator/comparator_revised_post.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {vsource.sym} -30 70 0 0 {name=V1 value=0.9}
C {gnd.sym} -30 100 0 0 {name=l10 lab=GND}
C {lab_wire.sym} -30 30 0 0 {name=l11 sig_type=std_logic lab=vref}
C {lab_wire.sym} 360 -90 0 0 {name=l1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 450 -130 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {gnd.sym} 450 -20 0 0 {name=l3 lab=GND}
C {isource.sym} 90 40 0 0 {name=I0 value=15u}
C {lab_wire.sym} 90 -10 0 0 {name=l53 sig_type=std_logic lab=vdd}
C {gnd.sym} 90 220 0 0 {name=l9 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 110 180 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 210 200 3 1 {name=M6
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
C {lab_wire.sym} 140 100 0 1 {name=l62 sig_type=std_logic lab=v1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 300 200 1 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 390 200 3 1 {name=M8
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
C {gnd.sym} 260 250 0 0 {name=l54 lab=GND}
C {gnd.sym} 440 250 0 0 {name=l59 lab=GND}
C {lab_wire.sym} 180 260 0 0 {name=l39 sig_type=std_logic lab=vbias1}
C {lab_wire.sym} 330 270 0 0 {name=l66 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} 360 270 0 1 {name=l67 sig_type=std_logic lab=vbias3}
C {lab_wire.sym} 360 -70 0 0 {name=l14 sig_type=std_logic lab=vbias3}
C {lab_wire.sym} 530 -90 0 1 {name=l15 sig_type=std_logic lab=vout}
C {src/comparator/comparator_revised_post.sym} 420 -90 0 0 {name=x1}
C {vsource.sym} 200 -60 0 0 {name=V2 value="dc 0.9 ac 1"}
C {gnd.sym} 200 -30 0 0 {name=l4 lab=GND}
