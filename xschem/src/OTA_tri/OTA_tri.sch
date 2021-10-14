v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {gm/id=11} -250 -190 0 0 0.2 0.2 {}
T {gm/id=11} -70 -190 0 0 0.2 0.2 {}
T {gm/id=11} 270 -190 0 0 0.2 0.2 {}
T {gm/id=15} -80 -90 0 0 0.2 0.2 {}
T {gm/id=15} 20 -90 0 0 0.2 0.2 {}
T {gm/id=17} -60 50 0 0 0.2 0.2 {}
T {gm/id=17} 0 50 0 0 0.2 0.2 {}
T {gm/id=17} 270 0 0 0 0.2 0.2 {}
T {32k} 130 -80 0 0 0.2 0.2 {}
N -380 -70 -310 -70 { lab=vn}
N -390 -30 -310 -30 { lab=vbias}
N -390 -70 -380 -70 { lab=vn}
N -390 -110 -370 -110 { lab=vp}
N -370 -110 -310 -110 { lab=vp}
N -380 -140 -310 -140 { lab=vdd}
N -370 0 -310 0 { lab=vss}
N -380 0 -370 0 { lab=vss}
N -260 -190 -260 -110 { lab=vbias}
N -260 70 80 70 { lab=vss}
N -90 40 -90 70 { lab=vss}
N 80 40 80 70 { lab=vss}
N -90 -80 -90 10 { lab=vf}
N 80 -80 80 10 { lab=v1}
N -90 -140 80 -140 { lab=vc}
N 0 -190 0 -140 { lab=vc}
N -50 40 40 40 { lab=vf}
N -90 -10 -10 -10 { lab=vf}
N -10 -10 -10 40 { lab=vf}
N -260 -160 -190 -160 { lab=vbias}
N -190 -220 -190 -160 { lab=vbias}
N -220 -220 -40 -220 { lab=vbias}
N 330 -190 330 -70 { lab=vout}
N 330 -220 340 -220 { lab=vdd}
N 340 -250 340 -220 { lab=vdd}
N 330 -10 330 70 { lab=vss}
N 80 70 230 70 { lab=vss}
N 330 -40 360 -40 { lab=vss}
N 360 -40 360 -10 { lab=vss}
N 330 -10 360 -10 { lab=vss}
N -260 -250 240 -250 { lab=vdd}
N 0 -250 0 -220 { lab=vdd}
N -260 -250 -260 -220 { lab=vdd}
N 260 -220 290 -220 { lab=vbias}
N 290 -40 290 -10 { lab=v1}
N 80 -10 190 -10 { lab=v1}
N -150 -110 -130 -110 { lab=vn}
N 120 -110 140 -110 { lab=vp}
N 290 70 330 70 { lab=vss}
N 260 -10 290 -10 { lab=v1}
N 240 -250 310 -250 { lab=vdd}
N 230 70 290 70 { lab=vss}
N 310 -250 330 -250 { lab=vdd}
N 330 -250 340 -250 { lab=vdd}
N 150 -90 150 -80 { lab=#net1}
N 170 -90 190 -90 { lab=#net1}
N 150 -20 150 -10 { lab=v1}
N 150 -90 170 -90 { lab=#net1}
N 190 -90 210 -90 { lab=#net1}
N 270 -90 330 -90 { lab=vout}
N 190 -10 260 -10 { lab=v1}
N 330 -120 370 -120 { lab=vout}
N 100 -50 130 -50 { lab=vss}
N -90 -140 -90 -110 { lab=vc}
N 80 -140 80 -110 { lab=vc}
C {ipin.sym} -380 -110 0 0 {name=p3 lab=vp}
C {ipin.sym} -380 -70 0 0 {name=p4 lab=vn}
C {ipin.sym} -380 -30 0 0 {name=p6 lab=vbias}
C {lab_wire.sym} -320 -30 0 0 {name=l5 sig_type=std_logic lab=vbias}
C {iopin.sym} -380 0 0 1 {name=p2 lab=vss}
C {lab_wire.sym} -330 -110 0 0 {name=l7 sig_type=std_logic lab=vp}
C {lab_wire.sym} -340 -70 0 1 {name=l9 sig_type=std_logic lab=vn}
C {lab_wire.sym} -320 -140 0 1 {name=l10 sig_type=std_logic lab=vdd}
C {iopin.sym} -380 -140 0 1 {name=p7 lab=vdd}
C {lab_wire.sym} -330 0 0 0 {name=l18 sig_type=std_logic lab=vss}
C {opin.sym} 370 -120 0 0 {name=p1 lab=vout}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 100 -110 0 1 {name=M1
L=1
W=4
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -110 -110 0 0 {name=M2
L=1
W=4
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -220 0 0 {name=M3
L=1
W=2
nf=2
mult=24
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 60 40 0 0 {name=M4
L=1
W=1
nf=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -70 40 0 1 {name=M5
L=1
W=1
nf=1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -240 -220 0 1 {name=M6
L=1
W=2
nf=2
mult=24
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 310 -220 0 0 {name=M7
L=1
W=2
nf=3
mult=48
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 310 -40 0 0 {name=M8
L=1
W=1
nf=1
mult=64
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_wire.sym} -140 -220 0 0 {name=l1 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -150 -250 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 250 -10 0 0 {name=l13 sig_type=std_logic lab=v1}
C {lab_wire.sym} 40 -140 0 0 {name=l14 sig_type=std_logic lab=vc}
C {lab_wire.sym} 330 -100 0 0 {name=l15 sig_type=std_logic lab=vout}
C {lab_wire.sym} -30 -10 0 0 {name=l16 sig_type=std_logic lab=vf}
C {lab_wire.sym} 140 -110 0 0 {name=l12 sig_type=std_logic lab=vp}
C {lab_wire.sym} 280 -220 0 0 {name=l4 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -140 -110 0 0 {name=l17 sig_type=std_logic lab=vn}
C {sky130_fd_pr/cap_mim_m3_1.sym} 240 -90 3 0 {name=C1 model=cap_mim_m3_1 W=27 L=18 MF=1 spiceprefix=X}
C {lab_wire.sym} -230 70 0 0 {name=l3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 110 -50 0 0 {name=l11 sig_type=std_logic lab=vss}
C {sky130_fd_pr/res_xhigh_po.sym} 150 -50 0 0 {name=R1
W=0.35
L=1.4
model=res_xhigh_po
spiceprefix=X
mult=1}
