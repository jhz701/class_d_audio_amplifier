v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -300 -270 -300 -250 { lab=vdd}
N -300 -270 -280 -270 { lab=vdd}
N -370 -280 -370 -250 { lab=vp}
N -300 -190 -300 -160 { lab=GND}
N -370 -190 -370 -170 { lab=GND}
N -580 -120 -580 -40 { lab=#net1}
N -580 -90 -510 -90 { lab=#net1}
N -580 -200 -580 -180 { lab=vdd}
N -580 20 -580 30 { lab=GND}
N -580 -10 -580 20 { lab=GND}
N -540 -10 -500 -10 { lab=#net1}
N -510 -90 -510 -10 { lab=#net1}
N -500 -10 -460 -10 { lab=#net1}
N -410 30 -410 60 { lab=GND}
N -510 30 -490 30 { lab=vbias}
N -510 30 -510 110 { lab=vbias}
N -460 30 -430 30 { lab=GND}
N -430 30 -410 30 { lab=GND}
N -350 -10 -350 0 { lab=GND}
N -350 -100 -350 -70 { lab=vin}
N 50 -150 50 -120 { lab=vdd}
N 50 -60 50 -20 { lab=GND}
N -140 -110 -100 -110 { lab=v1}
N -140 -90 -100 -90 { lab=vbias}
N -140 -70 -100 -70 { lab=vp}
N 200 -90 240 -90 { lab=vout}
N -320 -110 -200 -110 { lab=vin}
C {isource.sym} -580 -150 0 0 {name=I0 value=15u}
C {vsource.sym} -370 -220 0 0 {name=V1 value=0.9}
C {vsource.sym} -300 -220 0 0 {name=V3 value=1.8}
C {lab_wire.sym} -280 -270 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -370 -270 0 0 {name=l10 sig_type=std_logic lab=vp}
C {code_shown.sym} 330 -420 0 0 {name=s1 only_toplevel=false value="
.nodeset v(v1)=0.9 v(vout)=0.9
.control

save vout
op
*tran 10n 500u
*plot @m.xm7.msky130_fd_pr__pfet_01v8_lvt[id]
*plot @m.xm8.msky130_fd_pr__nfet_01v8_lvt[id]
*dc V2 0 1.8 0.01
*print @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
*print @m.xm5.msky130_fd_pr__nfet_01v8_lvt[gm]
*print @m.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
*print vbias
ac dec 10000 0.1 100G
*meas ac GBW when vdb(vout)=0
*meas ac DC_Gain find vdb(vout) at=1000
*meas ac PM find vp(vout2) when vdb(vout2)=0
*print PM*180/PI
*plot vdb(vout1)-20*log10(1+vout2) vdb(vout3)
plot vdb(vout) vp(vout)*180/pi


.endc
"}
C {netlist_not_shown.sym} -320 -430 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_tri_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_int_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_int_revised_post.spice
.include /home/eda/magic/class_d_audio_amplifier/integrator/integrator_post.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {gnd.sym} -370 -170 0 0 {name=l9 lab=GND}
C {gnd.sym} -300 -160 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -580 -200 0 0 {name=l53 sig_type=std_logic lab=vdd}
C {gnd.sym} -580 30 0 0 {name=l18 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -560 -10 0 1 {name=M9
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -460 10 3 1 {name=M10
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
C {gnd.sym} -410 60 0 0 {name=l54 lab=GND}
C {lab_wire.sym} -510 110 0 0 {name=l19 sig_type=std_logic lab=vbias}
C {gnd.sym} -350 0 0 0 {name=l20 lab=GND}
C {lab_wire.sym} -350 -90 0 0 {name=l22 sig_type=std_logic lab=vin}
C {vsource.sym} -350 -40 0 0 {name=V2 value="dc 0.9 ac 1"}
C {src/integrator/integrator_post.sym} -70 -90 0 0 {name=x1}
C {lab_wire.sym} 50 -140 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {gnd.sym} 50 -20 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -310 -110 0 0 {name=l4 sig_type=std_logic lab=vin}
C {lab_wire.sym} -130 -90 0 0 {name=l5 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -130 -70 0 0 {name=l6 sig_type=std_logic lab=vp}
C {lab_wire.sym} 240 -90 0 0 {name=l8 sig_type=std_logic lab=vout}
C {res.sym} -170 -110 1 0 {name=R1
value=200k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -110 -110 0 0 {name=l11 sig_type=std_logic lab=v1}
