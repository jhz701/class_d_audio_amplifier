v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -140 -100 -140 -80 { lab=vdd}
N -140 -100 -120 -100 { lab=vdd}
N -250 90 -250 120 { lab=vin}
N 220 -50 220 -30 { lab=vdd}
N 220 10 220 40 { lab=GND}
N 270 -10 300 -10 { lab=vout}
N 90 -10 160 -10 { lab=vin}
N 120 10 160 10 { lab=vbias}
N 140 -30 160 -30 { lab=vref}
N 300 -10 330 -10 { lab=vout}
N -150 90 -150 120 { lab=vref}
N -10 110 -10 190 { lab=#net1}
N -10 140 60 140 { lab=#net1}
N -10 30 -10 50 { lab=vdd}
N -10 250 -10 260 { lab=GND}
N -10 220 -10 250 { lab=GND}
N 30 220 70 220 { lab=#net1}
N 60 140 60 220 { lab=#net1}
N 70 220 110 220 { lab=#net1}
N 160 260 160 290 { lab=GND}
N 150 250 160 250 { lab=GND}
N 160 250 160 260 { lab=GND}
N 150 220 160 220 { lab=GND}
N 160 220 160 250 { lab=GND}
N 150 140 150 190 { lab=vbias}
C {vsource.sym} -140 -50 0 0 {name=V3 value=1.8}
C {gnd.sym} -140 -20 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -120 -100 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {netlist_not_shown.sym} -270 -260 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/ss.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_revised_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_tri_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_int_post.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {vsource.sym} -250 150 0 0 {name=V2 value="dc 0.9 ac 1"}
C {gnd.sym} -250 180 0 0 {name=l9 lab=GND}
C {lab_wire.sym} -250 100 0 0 {name=l11 sig_type=std_logic lab=vin}
C {lab_wire.sym} 220 -50 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {gnd.sym} 220 40 0 0 {name=l2 lab=GND}
C {vsource.sym} -150 150 0 0 {name=V1 value=0.9}
C {gnd.sym} -150 180 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 320 -10 0 1 {name=l15 sig_type=std_logic lab=vout}
C {lab_wire.sym} 100 -10 0 0 {name=l8 sig_type=std_logic lab=vin}
C {lab_wire.sym} -150 100 0 0 {name=l5 sig_type=std_logic lab=vref}
C {lab_wire.sym} 150 -30 0 0 {name=l10 sig_type=std_logic lab=vref}
C {lab_wire.sym} 130 10 0 0 {name=l12 sig_type=std_logic lab=vbias}
C {isource.sym} -10 80 0 0 {name=I0 value=15u}
C {lab_wire.sym} -10 30 0 0 {name=l53 sig_type=std_logic lab=vdd}
C {gnd.sym} -10 260 0 0 {name=l18 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 10 220 0 1 {name=M9
L=2
W=32
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 130 220 0 0 {name=M10
L=2
W=32
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {gnd.sym} 160 290 0 0 {name=l54 lab=GND}
C {lab_wire.sym} 150 160 0 0 {name=l19 sig_type=std_logic lab=vbias}
C {code_shown.sym} 540 -230 0 0 {name=s2 only_toplevel=false value="

.control

save all
op
*tran 10n 500u
*plot @m.xm7.msky130_fd_pr__pfet_01v8_lvt[id]
*plot @m.xm8.msky130_fd_pr__nfet_01v8_lvt[id]
*dc V2 0 1.8 0.01
print @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
print @m.xm5.msky130_fd_pr__nfet_01v8_lvt[gm]
print @m.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
print vbias
ac dec 10000 0.1 100G
meas ac GBW when vdb(vout)=0
meas ac DC_Gain find vdb(vout) at=1000
meas ac PM find vp(vout) when vdb(vout)=0
print PM*180/PI
plot vdb(vout) vp(vout)*180/pi


.endc
"}
C {src/OTA/OTA_revised_post.sym} 110 -20 0 0 {name=x1}
