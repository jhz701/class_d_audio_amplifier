v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -410 -230 -200 -80 { lab=#net1}
N -410 -140 -200 -60 { lab=#net2}
N -410 -50 -200 -40 { lab=vin0}
N -410 40 -200 -20 { lab=vin1}
N -410 140 -200 0 { lab=vin2}
N 240 -220 240 -190 { lab=vdd}
N 240 -130 240 -100 { lab=GND}
N -50 -120 -50 -90 { lab=vdd}
N 100 -60 130 -60 { lab=vout0}
N 100 -40 130 -40 { lab=vout1}
N 100 -20 130 -20 { lab=vout2}
N 330 60 330 80 { lab=vref}
N 330 60 330 80 { lab=vref}
N 330 140 330 160 { lab=GND}
N 390 280 390 360 { lab=v1}
N 390 310 460 310 { lab=v1}
N 390 200 390 220 { lab=vdd}
N 390 420 390 430 { lab=GND}
N 390 390 390 420 { lab=GND}
N 430 390 470 390 { lab=v1}
N 460 310 460 390 { lab=v1}
N 470 390 510 390 { lab=v1}
N 540 430 570 430 { lab=GND}
N 560 430 560 460 { lab=GND}
N 510 430 540 430 { lab=GND}
N 570 430 600 430 { lab=GND}
N 480 430 480 480 { lab=vbias1}
N 630 430 630 480 { lab=vbias2}
N 510 390 600 390 { lab=v1}
N 600 390 800 390 { lab=v1}
N 670 430 670 480 { lab=vbias3}
N 700 430 730 430 { lab=GND}
N 730 430 800 430 { lab=GND}
N 750 430 750 460 { lab=GND}
N 830 430 830 480 { lab=vbias4}
N 480 480 480 520 { lab=vbias1}
N 630 480 630 520 { lab=vbias2}
N 670 480 670 520 { lab=vbias3}
N 830 480 830 520 { lab=vbias4}
N 830 580 830 600 { lab=GND}
N 670 580 670 600 { lab=GND}
N 630 580 630 600 { lab=GND}
N 480 580 480 600 { lab=GND}
N -580 90 -580 120 { lab=vdd}
N -580 200 -580 230 { lab=GND}
N -670 140 -640 140 { lab=vbias1}
N -670 160 -640 160 { lab=vbias2}
N -670 180 -640 180 { lab=vref}
N -510 150 -420 150 { lab=vin2}
N -420 150 -410 140 { lab=vin2}
N 130 -20 170 -20 { lab=vout2}
N 450 -20 510 -20 { lab=vtest}
N 510 40 510 60 { lab=GND}
N 210 -20 210 10 { lab=vtest}
N 210 100 210 130 { lab=GND}
N 210 10 210 70 { lab=vtest}
N 120 100 170 100 { lab=v1}
N 210 130 210 150 { lab=GND}
N 310 -20 450 -20 { lab=vtest}
N 310 -20 310 40 { lab=vtest}
N 210 40 310 40 { lab=vtest}
N 210 -70 210 -50 { lab=vdd}
N 460 40 460 60 { lab=GND}
C {src/output_select/out_select.sym} -50 -40 0 0 {name=x1}
C {netlist_not_shown.sym} -210 -400 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/class_d_audio_amplifier/Class_D/Class_D_post.spice

* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {vsource.sym} 240 -160 0 0 {name=V1 value=1.8}
C {vsource.sym} -410 -200 0 0 {name=V2 value=1.8}
C {vsource.sym} -410 -110 0 0 {name=V3 value=1.8}
C {vsource.sym} -410 -20 0 0 {name=V4 value=1.8}
C {vsource.sym} -410 70 0 0 {name=V5 value=1.8}
C {gnd.sym} -410 -170 0 0 {name=l1 lab=GND}
C {gnd.sym} -410 -80 0 0 {name=l2 lab=GND}
C {gnd.sym} -410 10 0 0 {name=l3 lab=GND}
C {gnd.sym} -410 100 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 240 -210 0 0 {name=l6 sig_type=std_logic lab=vdd}
C {gnd.sym} 240 -100 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -50 -100 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {gnd.sym} -50 10 0 0 {name=l9 lab=GND}
C {lab_wire.sym} 130 -60 0 0 {name=l10 sig_type=std_logic lab=vout0}
C {lab_wire.sym} 130 -40 0 0 {name=l11 sig_type=std_logic lab=vout1}
C {lab_wire.sym} 130 -20 0 0 {name=l12 sig_type=std_logic lab=vout2}
C {code_shown.sym} 110 -340 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1n 100u
 
.endc


"}
C {lab_wire.sym} -410 140 0 0 {name=l13 sig_type=std_logic lab=vin2}
C {lab_wire.sym} -410 40 0 0 {name=l14 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -410 -50 0 0 {name=l15 sig_type=std_logic lab=vin0}
C {vsource.sym} 330 110 0 0 {name=V7 value=0.9}
C {lab_wire.sym} 330 60 0 0 {name=l16 sig_type=std_logic lab=vref}
C {gnd.sym} 330 160 0 0 {name=l17 lab=GND}
C {isource.sym} 390 250 0 0 {name=I2 value=15u}
C {lab_wire.sym} 390 200 0 0 {name=l53 sig_type=std_logic lab=vdd}
C {gnd.sym} 390 430 0 0 {name=l18 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 410 390 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 510 410 3 1 {name=M6
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
C {lab_wire.sym} 440 310 0 1 {name=l62 sig_type=std_logic lab=v1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 600 410 1 0 {name=M7
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
C {gnd.sym} 560 460 0 0 {name=l54 lab=GND}
C {lab_wire.sym} 480 470 0 0 {name=l39 sig_type=std_logic lab=vbias1}
C {lab_wire.sym} 630 480 0 0 {name=l66 sig_type=std_logic lab=vbias2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 700 410 3 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 800 410 1 0 {name=M2
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
C {gnd.sym} 750 460 0 0 {name=l19 lab=GND}
C {lab_wire.sym} 670 480 0 1 {name=l20 sig_type=std_logic lab=vbias3}
C {lab_wire.sym} 830 480 0 1 {name=l21 sig_type=std_logic lab=vbias4}
C {capa.sym} 480 550 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 630 550 0 0 {name=C2
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 670 550 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 830 550 0 0 {name=C4
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 480 600 0 0 {name=l26 lab=GND}
C {gnd.sym} 630 600 0 0 {name=l27 lab=GND}
C {gnd.sym} 670 600 0 0 {name=l28 lab=GND}
C {gnd.sym} 830 600 0 0 {name=l29 lab=GND}
C {lab_wire.sym} -660 140 0 0 {name=l22 sig_type=std_logic lab=vbias1}
C {lab_wire.sym} -660 160 0 0 {name=l23 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} -660 180 0 0 {name=l24 sig_type=std_logic lab=vref}
C {gnd.sym} -580 230 0 0 {name=l25 lab=GND}
C {lab_wire.sym} -580 100 0 0 {name=l30 sig_type=std_logic lab=vdd}
C {src/triangle/triangle.sym} -580 160 0 0 {name=x2}
C {capa.sym} 510 10 0 0 {name=C5
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 510 60 0 0 {name=l31 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 190 -20 0 0 {name=M4
L=2
W=4
nf=2
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 190 100 0 0 {name=M3
L=2
W=4
nf=2
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_wire.sym} 130 100 0 1 {name=l32 sig_type=std_logic lab=v1}
C {gnd.sym} 210 150 0 0 {name=l33 lab=GND}
C {lab_wire.sym} 210 -60 0 0 {name=l34 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 370 -20 0 0 {name=l35 sig_type=std_logic lab=vtest}
C {res.sym} 460 10 0 0 {name=R1
value=1MEG
footprint=1206
device=resistor
m=1}
C {gnd.sym} 460 60 0 0 {name=l5 lab=GND}
