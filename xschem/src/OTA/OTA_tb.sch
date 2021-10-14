v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -50 -50 -50 -30 { lab=vdd}
N -50 -50 -30 -50 { lab=vdd}
N -120 -60 -120 -30 { lab=vp}
N -50 30 -50 60 { lab=GND}
N -120 30 -120 50 { lab=GND}
N -330 100 -330 180 { lab=#net1}
N -330 130 -260 130 { lab=#net1}
N -330 20 -330 40 { lab=vdd}
N -330 240 -330 250 { lab=GND}
N -330 210 -330 240 { lab=GND}
N -290 210 -250 210 { lab=#net1}
N -260 130 -260 210 { lab=#net1}
N -250 210 -210 210 { lab=#net1}
N -160 250 -160 280 { lab=GND}
N -260 250 -240 250 { lab=vbias1}
N -260 250 -260 330 { lab=vbias1}
N -210 250 -180 250 { lab=GND}
N -180 250 -160 250 { lab=GND}
N 30 140 30 150 { lab=GND}
N 30 50 30 80 { lab=vn}
N 410 290 410 300 { lab=vout2}
N 390 290 410 290 { lab=vout2}
N 340 230 340 270 { lab=vdd}
N 340 310 340 340 { lab=GND}
N 250 270 280 270 { lab=vp}
N 250 290 280 290 { lab=#net2}
N 250 310 280 310 { lab=vbias2}
N 220 290 250 290 { lab=#net2}
N 160 290 220 290 { lab=#net2}
N 410 300 410 390 { lab=vout2}
N 390 390 410 390 { lab=vout2}
N 180 370 180 380 { lab=vp}
N 180 290 180 310 { lab=#net2}
N 70 290 100 290 { lab=vn}
N 410 10 410 20 { lab=vout1}
N 390 10 410 10 { lab=vout1}
N 340 -50 340 -10 { lab=vdd}
N 340 30 340 60 { lab=GND}
N 250 -10 280 -10 { lab=vp}
N 250 10 280 10 { lab=#net3}
N 250 30 280 30 { lab=vbias1}
N 220 10 250 10 { lab=#net3}
N 160 10 220 10 { lab=#net3}
N 410 20 410 110 { lab=vout1}
N 390 110 410 110 { lab=vout1}
N 70 10 100 10 { lab=vn}
N 430 610 430 620 { lab=vout3}
N 410 610 430 610 { lab=vout3}
N 360 550 360 590 { lab=vdd}
N 360 630 360 660 { lab=GND}
N 270 590 300 590 { lab=vp}
N 270 610 300 610 { lab=#net4}
N 270 630 300 630 { lab=vbias3}
N 240 610 270 610 { lab=#net4}
N 180 610 240 610 { lab=#net4}
N 430 620 430 710 { lab=vout3}
N 410 710 430 710 { lab=vout3}
N 200 610 200 630 { lab=#net4}
N 90 610 120 610 { lab=vn}
N 370 710 410 710 { lab=vout3}
N 200 710 310 710 { lab=#net4}
N 200 630 200 710 { lab=#net4}
N -210 210 -30 210 { lab=#net1}
N -160 250 -120 250 { lab=GND}
N -90 250 -90 320 { lab=vbias2}
N -60 250 -60 320 { lab=vbias3}
N -30 250 10 250 { lab=GND}
C {isource.sym} -330 70 0 0 {name=I0 value=15u}
C {vsource.sym} -120 0 0 0 {name=V1 value="dc 0.9"}
C {vsource.sym} -50 0 0 0 {name=V3 value=1.8}
C {lab_wire.sym} -30 -50 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -120 -50 0 0 {name=l10 sig_type=std_logic lab=vp}
C {code_shown.sym} 810 -200 0 0 {name=s1 only_toplevel=false value="

.control

save all
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
meas ac GBW when vdb(vout)=0
meas ac DC_Gain find vdb(vout) at=1000
meas ac PM find vp(vout2) when vdb(vout2)=0
print PM*180/PI
plot vdb(vout1)-20*log10(1+vout2) vdb(vout3)
plot vdb(vout2) vp(vout2)*180/pi


.endc
"}
C {netlist_not_shown.sym} -180 -210 0 0 {name=TT_MODELS1
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
C {gnd.sym} -120 50 0 0 {name=l9 lab=GND}
C {gnd.sym} -50 60 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -330 20 0 0 {name=l53 sig_type=std_logic lab=vdd}
C {gnd.sym} -330 250 0 0 {name=l18 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -310 210 0 1 {name=M9
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -210 230 3 1 {name=M10
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
C {gnd.sym} -160 280 0 0 {name=l54 lab=GND}
C {lab_wire.sym} -260 330 0 0 {name=l19 sig_type=std_logic lab=vbias1}
C {gnd.sym} 30 150 0 0 {name=l20 lab=GND}
C {lab_wire.sym} 30 60 0 0 {name=l22 sig_type=std_logic lab=vn}
C {gnd.sym} 340 340 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 340 250 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 260 270 0 0 {name=l4 sig_type=std_logic lab=vp}
C {lab_wire.sym} 260 310 0 0 {name=l6 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} 410 290 0 1 {name=l8 sig_type=std_logic lab=vout2}
C {res.sym} 180 340 2 0 {name=R1
value=200k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 80 290 0 0 {name=l11 sig_type=std_logic lab=vn}
C {capa.sym} 390 420 0 0 {name=C1
m=1
value=3.6p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 390 450 0 0 {name=l5 lab=GND}
C {capa.sym} 130 290 1 0 {name=C2
m=1
value=3.6p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 180 380 0 0 {name=l12 sig_type=std_logic lab=vp}
C {vsource.sym} 30 110 0 0 {name=V2 value="dc 0.9 ac 1"}
C {gnd.sym} 340 60 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 340 -30 0 0 {name=l15 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 260 -10 0 0 {name=l16 sig_type=std_logic lab=vp}
C {lab_wire.sym} 260 30 0 0 {name=l17 sig_type=std_logic lab=vbias1}
C {src/OTA_int/OTA_int.sym} 340 30 0 0 {name=x2}
C {lab_wire.sym} 410 10 0 1 {name=l21 sig_type=std_logic lab=vout1}
C {res.sym} 130 10 3 0 {name=R2
value=200k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 80 10 0 0 {name=l23 sig_type=std_logic lab=vn}
C {capa.sym} 390 140 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 390 170 0 0 {name=l24 lab=GND}
C {capa.sym} 180 -20 2 0 {name=C5
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 -50 2 0 {name=l27 lab=GND}
C {gnd.sym} 360 660 0 0 {name=l13 lab=GND}
C {lab_wire.sym} 360 570 0 0 {name=l25 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 280 590 0 0 {name=l26 sig_type=std_logic lab=vp}
C {lab_wire.sym} 280 630 0 0 {name=l28 sig_type=std_logic lab=vbias3}
C {src/OTA_int/OTA_int.sym} 360 630 0 0 {name=x3}
C {lab_wire.sym} 430 610 0 1 {name=l29 sig_type=std_logic lab=vout3}
C {res.sym} 150 610 3 0 {name=R3
value=200k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 100 610 0 0 {name=l30 sig_type=std_logic lab=vn}
C {capa.sym} 340 710 1 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -120 230 1 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -30 230 3 1 {name=M2
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
C {lab_wire.sym} -90 320 0 0 {name=l31 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} -60 320 0 1 {name=l32 sig_type=std_logic lab=vbias3}
C {gnd.sym} 10 250 0 0 {name=l33 lab=GND}
C {src/OTA_int/OTA_int_post.sym} 320 300 0 0 {name=x1}
