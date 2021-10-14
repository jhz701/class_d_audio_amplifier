v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 340 -490 340 -470 { lab=vdd}
N 340 -490 360 -490 { lab=vdd}
N 270 -500 270 -470 { lab=vp}
N 340 -410 340 -380 { lab=GND}
N 270 -410 270 -390 { lab=GND}
N -650 -300 -650 -220 { lab=#net1}
N -650 -270 -580 -270 { lab=#net1}
N -650 -380 -650 -360 { lab=vdd}
N -650 -160 -650 -150 { lab=GND}
N -650 -190 -650 -160 { lab=GND}
N -610 -190 -570 -190 { lab=#net1}
N -580 -270 -580 -190 { lab=#net1}
N -570 -190 -530 -190 { lab=#net1}
N -480 -150 -480 -120 { lab=GND}
N -580 -150 -560 -150 { lab=vbias1}
N -580 -150 -580 -70 { lab=vbias1}
N -530 -150 -500 -150 { lab=GND}
N -500 -150 -480 -150 { lab=GND}
N 290 -230 290 -220 { lab=GND}
N 290 -320 290 -290 { lab=vin}
N 90 -50 90 -40 { lab=vout2}
N 70 -50 90 -50 { lab=vout2}
N 20 -110 20 -70 { lab=vdd}
N 20 -30 20 0 { lab=GND}
N -70 -70 -40 -70 { lab=vp}
N -70 -50 -40 -50 { lab=#net2}
N -70 -30 -40 -30 { lab=vbias2}
N -100 -50 -70 -50 { lab=#net2}
N -160 -50 -100 -50 { lab=#net2}
N 90 -40 90 50 { lab=vout2}
N 70 50 90 50 { lab=vout2}
N -140 30 -140 40 { lab=vp}
N -140 -50 -140 -30 { lab=#net2}
N -250 -50 -220 -50 { lab=vin}
N 110 -380 110 -370 { lab=vout1}
N 90 -380 110 -380 { lab=vout1}
N 40 -440 40 -400 { lab=vdd}
N 40 -360 40 -330 { lab=GND}
N -50 -400 -20 -400 { lab=vp}
N -50 -380 -20 -380 { lab=#net3}
N -50 -360 -20 -360 { lab=vbias1}
N -80 -380 -50 -380 { lab=#net3}
N -140 -380 -80 -380 { lab=#net3}
N 110 -370 110 -280 { lab=vout1}
N 90 -280 110 -280 { lab=vout1}
N -230 -380 -200 -380 { lab=vin}
N 110 290 110 300 { lab=vout3}
N 90 290 110 290 { lab=vout3}
N 40 230 40 270 { lab=vdd}
N 40 310 40 340 { lab=GND}
N -50 270 -20 270 { lab=vp}
N -50 290 -20 290 { lab=#net4}
N -50 310 -20 310 { lab=vbias3}
N -80 290 -50 290 { lab=#net4}
N -140 290 -80 290 { lab=#net4}
N 110 300 110 390 { lab=vout3}
N 90 390 110 390 { lab=vout3}
N -120 290 -120 310 { lab=#net4}
N -230 290 -200 290 { lab=vin}
N 50 390 90 390 { lab=vout3}
N -120 390 -10 390 { lab=#net4}
N -120 310 -120 390 { lab=#net4}
N -530 -190 -320 -190 { lab=#net1}
N -480 -150 -450 -150 { lab=GND}
N -450 -150 -420 -150 { lab=GND}
N -350 -150 -350 -90 { lab=GND}
N -390 -150 -380 -150 { lab=vbias2}
N -380 -150 -380 -80 { lab=vbias2}
N -350 -150 -320 -150 { lab=GND}
N -290 -150 -280 -150 { lab=vbias3}
N -280 -150 -280 -110 { lab=vbias3}
C {isource.sym} -650 -330 0 0 {name=I0 value=15u}
C {vsource.sym} 270 -440 0 0 {name=V1 value="dc 0.9"}
C {vsource.sym} 340 -440 0 0 {name=V3 value=1.8}
C {lab_wire.sym} 360 -490 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 270 -490 0 0 {name=l10 sig_type=std_logic lab=vp}
C {code_shown.sym} 490 -600 0 0 {name=s1 only_toplevel=false value="

.control

save vout2 vout3 vout1
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
plot vdb(vout1)-20*log10(1+vout2) vdb(vout3)
plot vdb(vout2) vp(vout2)*180/pi


.endc
"}
C {netlist_not_shown.sym} -500 -610 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_tri_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_int_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_int_revised_post.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {gnd.sym} 270 -390 0 0 {name=l9 lab=GND}
C {gnd.sym} 340 -380 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -650 -380 0 0 {name=l53 sig_type=std_logic lab=vdd}
C {gnd.sym} -650 -150 0 0 {name=l18 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -630 -190 0 1 {name=M9
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -530 -170 3 1 {name=M10
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
C {gnd.sym} -480 -120 0 0 {name=l54 lab=GND}
C {lab_wire.sym} -580 -70 0 0 {name=l19 sig_type=std_logic lab=vbias1}
C {gnd.sym} 290 -220 0 0 {name=l20 lab=GND}
C {lab_wire.sym} 290 -310 0 0 {name=l22 sig_type=std_logic lab=vin}
C {gnd.sym} 20 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 20 -90 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -60 -70 0 0 {name=l4 sig_type=std_logic lab=vp}
C {lab_wire.sym} -60 -30 0 0 {name=l6 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} 90 -50 0 1 {name=l8 sig_type=std_logic lab=vout2}
C {res.sym} -140 0 2 0 {name=R1
value=200k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -240 -50 0 0 {name=l11 sig_type=std_logic lab=vin}
C {capa.sym} 70 80 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 70 110 0 0 {name=l5 lab=GND}
C {capa.sym} -190 -50 1 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -140 40 0 0 {name=l12 sig_type=std_logic lab=vp}
C {vsource.sym} 290 -260 0 0 {name=V2 value="dc 0.9 ac 1"}
C {gnd.sym} 40 -330 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 40 -420 0 0 {name=l15 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -40 -400 0 0 {name=l16 sig_type=std_logic lab=vp}
C {lab_wire.sym} -40 -360 0 0 {name=l17 sig_type=std_logic lab=vbias1}
C {lab_wire.sym} 110 -380 0 1 {name=l21 sig_type=std_logic lab=vout1}
C {res.sym} -170 -380 3 0 {name=R2
value=200k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -220 -380 0 0 {name=l23 sig_type=std_logic lab=vin}
C {capa.sym} 90 -250 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 90 -220 0 0 {name=l24 lab=GND}
C {capa.sym} -120 -410 2 0 {name=C5
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -120 -440 2 0 {name=l27 lab=GND}
C {gnd.sym} 40 340 0 0 {name=l13 lab=GND}
C {lab_wire.sym} 40 250 0 0 {name=l25 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -40 270 0 0 {name=l26 sig_type=std_logic lab=vp}
C {lab_wire.sym} -40 310 0 0 {name=l28 sig_type=std_logic lab=vbias3}
C {lab_wire.sym} 110 290 0 1 {name=l29 sig_type=std_logic lab=vout3}
C {res.sym} -170 290 3 0 {name=R3
value=200k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -220 290 0 0 {name=l30 sig_type=std_logic lab=vin}
C {capa.sym} 20 390 1 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {src/OTA_int/OTA_int.sym} 40 -360 0 0 {name=x3}
C {src/OTA_int/OTA_int.sym} 20 -30 0 0 {name=x1}
C {src/OTA_int/OTA_int.sym} 40 310 0 0 {name=x2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -420 -170 1 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -320 -170 1 0 {name=M2
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
C {gnd.sym} -350 -90 0 0 {name=l31 lab=GND}
C {lab_wire.sym} -380 -90 0 0 {name=l32 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} -280 -120 0 1 {name=l33 sig_type=std_logic lab=vbias3}
