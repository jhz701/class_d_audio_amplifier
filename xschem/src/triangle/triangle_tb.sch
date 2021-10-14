v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -170 -10 -170 10 { lab=vref}
N -170 -10 -170 10 { lab=vref}
N -170 70 -170 90 { lab=GND}
N -350 70 -350 90 { lab=GND}
N -350 -20 -350 10 { lab=vdd}
N -110 210 -110 290 { lab=v1}
N -110 240 -40 240 { lab=v1}
N -110 130 -110 150 { lab=vdd}
N -110 350 -110 360 { lab=GND}
N -110 320 -110 350 { lab=GND}
N -70 320 -30 320 { lab=v1}
N -40 240 -40 320 { lab=v1}
N -30 320 10 320 { lab=v1}
N 40 360 70 360 { lab=GND}
N 60 360 60 390 { lab=GND}
N 10 360 40 360 { lab=GND}
N 70 360 100 360 { lab=GND}
N -20 360 -20 410 { lab=vbias1}
N 130 360 130 410 { lab=vbias2}
N 10 320 100 320 { lab=v1}
N 100 320 300 320 { lab=v1}
N 170 360 170 410 { lab=vbias3}
N 200 360 230 360 { lab=GND}
N 230 360 300 360 { lab=GND}
N 250 360 250 390 { lab=GND}
N 330 360 330 410 { lab=vbias4}
N -20 410 -20 450 { lab=vbias1}
N 130 410 130 450 { lab=vbias2}
N 170 410 170 450 { lab=vbias3}
N 330 410 330 450 { lab=vbias4}
N 330 510 330 530 { lab=GND}
N 170 510 170 530 { lab=GND}
N 130 510 130 530 { lab=GND}
N -20 510 -20 530 { lab=GND}
N 330 -20 330 10 { lab=vdd}
N 330 90 330 120 { lab=GND}
N 240 30 270 30 { lab=vbias1}
N 240 50 270 50 { lab=vbias2}
N 240 70 270 70 { lab=vref}
N 400 40 470 40 { lab=vt}
N 470 -10 470 40 { lab=vt}
N 470 -10 490 -10 { lab=vt}
N 470 40 470 130 { lab=vt}
N 470 130 490 130 { lab=vt}
N 460 10 490 10 { lab=vbias3}
N 460 150 490 150 { lab=vbias4}
N 450 110 490 110 { lab=vref}
N 460 -30 490 -30 { lab=vref}
N 550 -60 550 -30 { lab=vdd}
N 550 10 550 40 { lab=GND}
N 550 70 550 110 { lab=vdd}
N 550 150 550 190 { lab=GND}
C {vsource.sym} -170 40 0 0 {name=V1 value=0.9}
C {vsource.sym} -350 40 0 0 {name=V2 value=1.8}
C {lab_wire.sym} -170 -10 0 0 {name=l4 sig_type=std_logic lab=vref}
C {netlist_not_shown.sym} 110 -270 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_tri_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_post.spice
.include /home/eda/magic/class_d_audio_amplifier/triang/triangle_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_int_revised_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_revised_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_tri_revised_post.spice
.include /home/eda/magic/class_d_audio_amplifier/triang/triangle_revised_post.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {code_shown.sym} -250 -290 0 0 {name=s1 only_toplevel=false value="
.nodeset v(vt)=0.9 v(vsquare)=0.9
.control
save all
op 

tran 1n 50u 
*dc V3 0 1.8 0.01 
*write tri.raw

.endc
"}
C {gnd.sym} -170 90 0 0 {name=l6 lab=GND}
C {gnd.sym} -350 90 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -350 -10 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {isource.sym} -110 180 0 0 {name=I2 value=15u}
C {lab_wire.sym} -110 130 0 0 {name=l53 sig_type=std_logic lab=vdd}
C {gnd.sym} -110 360 0 0 {name=l16 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -90 320 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 10 340 3 1 {name=M6
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
C {lab_wire.sym} -60 240 0 1 {name=l62 sig_type=std_logic lab=v1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 340 1 0 {name=M7
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
C {gnd.sym} 60 390 0 0 {name=l54 lab=GND}
C {lab_wire.sym} -20 400 0 0 {name=l39 sig_type=std_logic lab=vbias1}
C {lab_wire.sym} 130 410 0 0 {name=l66 sig_type=std_logic lab=vbias2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 200 340 3 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 300 340 1 0 {name=M2
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
C {gnd.sym} 250 390 0 0 {name=l17 lab=GND}
C {lab_wire.sym} 170 410 0 1 {name=l18 sig_type=std_logic lab=vbias3}
C {lab_wire.sym} 330 410 0 1 {name=l19 sig_type=std_logic lab=vbias4}
C {capa.sym} -20 480 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 130 480 0 0 {name=C2
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 170 480 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 330 480 0 0 {name=C4
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -20 530 0 0 {name=l26 lab=GND}
C {gnd.sym} 130 530 0 0 {name=l27 lab=GND}
C {gnd.sym} 170 530 0 0 {name=l28 lab=GND}
C {gnd.sym} 330 530 0 0 {name=l29 lab=GND}
C {lab_wire.sym} 250 30 0 0 {name=l1 sig_type=std_logic lab=vbias1}
C {lab_wire.sym} 250 50 0 0 {name=l2 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} 250 70 0 0 {name=l3 sig_type=std_logic lab=vref}
C {gnd.sym} 330 120 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 330 -10 0 0 {name=l9 sig_type=std_logic lab=vdd}
C {src/comparator/comparator.sym} 580 30 0 0 {name=x2}
C {src/comparator/comparator.sym} 580 170 0 0 {name=x3}
C {lab_wire.sym} 460 10 0 0 {name=l10 sig_type=std_logic lab=vbias3}
C {lab_wire.sym} 460 150 0 0 {name=l11 sig_type=std_logic lab=vbias4}
C {lab_wire.sym} 470 -30 0 0 {name=l12 sig_type=std_logic lab=vref}
C {lab_wire.sym} 460 110 0 0 {name=l13 sig_type=std_logic lab=vref}
C {gnd.sym} 550 190 0 0 {name=l14 lab=GND}
C {gnd.sym} 550 40 0 0 {name=l15 lab=GND}
C {lab_wire.sym} 550 90 0 0 {name=l20 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 550 -50 0 0 {name=l21 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 450 40 0 0 {name=l22 sig_type=std_logic lab=vt}
C {src/triangle/triangle_revised_post.sym} 260 50 0 0 {name=x1}
