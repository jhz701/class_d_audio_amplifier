v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {gm/id=11} -210 -160 0 0 0.2 0.2 {}
T {gm/id=11} -30 -160 0 0 0.2 0.2 {}
T {gm/id=11} 310 -160 0 0 0.2 0.2 {}
T {gm/id=15} -40 -60 0 0 0.2 0.2 {}
T {gm/id=15} 60 -60 0 0 0.2 0.2 {}
T {gm/id=17} -20 80 0 0 0.2 0.2 {}
T {gm/id=17} 40 80 0 0 0.2 0.2 {}
T {gm/id=17} 310 30 0 0 0.2 0.2 {}
N -370 -90 -300 -90 { lab=vn}
N -380 -50 -300 -50 { lab=vbias}
N -380 -90 -370 -90 { lab=vn}
N -380 -130 -360 -130 { lab=vp}
N -360 -130 -300 -130 { lab=vp}
N -370 -160 -300 -160 { lab=vdd}
N -360 -20 -300 -20 { lab=vss}
N -370 -20 -360 -20 { lab=vss}
N -220 -160 -220 -80 { lab=vbias}
N -220 100 120 100 { lab=vss}
N -50 70 -50 100 { lab=vss}
N 120 70 120 100 { lab=vss}
N -50 -50 -50 40 { lab=vf}
N 120 -50 120 40 { lab=v1}
N -50 -110 120 -110 { lab=vc}
N 40 -160 40 -110 { lab=vc}
N -10 70 80 70 { lab=vf}
N -50 20 30 20 { lab=vf}
N 30 20 30 70 { lab=vf}
N -220 -130 -150 -130 { lab=vbias}
N -150 -190 -150 -130 { lab=vbias}
N -180 -190 0 -190 { lab=vbias}
N 370 -160 370 -40 { lab=vout}
N 370 -190 380 -190 { lab=vdd}
N 380 -220 380 -190 { lab=vdd}
N 370 20 370 100 { lab=vss}
N 120 100 270 100 { lab=vss}
N 370 -10 400 -10 { lab=vss}
N 400 -10 400 20 { lab=vss}
N 370 20 400 20 { lab=vss}
N -220 -220 280 -220 { lab=vdd}
N 40 -220 40 -190 { lab=vdd}
N -220 -220 -220 -190 { lab=vdd}
N 300 -190 330 -190 { lab=vbias}
N 330 -10 330 20 { lab=v1}
N 120 20 230 20 { lab=v1}
N -110 -80 -90 -80 { lab=vn}
N 160 -80 180 -80 { lab=vp}
N 330 100 370 100 { lab=vss}
N 300 20 330 20 { lab=v1}
N 280 -220 350 -220 { lab=vdd}
N 270 100 330 100 { lab=vss}
N 350 -220 370 -220 { lab=vdd}
N 370 -220 380 -220 { lab=vdd}
N 230 20 300 20 { lab=v1}
N 370 -90 410 -90 { lab=vout}
N -50 -110 -50 -80 { lab=vc}
N 120 -110 120 -80 { lab=vc}
C {ipin.sym} -370 -130 0 0 {name=p3 lab=vp}
C {ipin.sym} -370 -90 0 0 {name=p4 lab=vn}
C {ipin.sym} -370 -50 0 0 {name=p6 lab=vbias}
C {lab_wire.sym} -310 -50 0 0 {name=l5 sig_type=std_logic lab=vbias}
C {iopin.sym} -370 -20 0 1 {name=p2 lab=vss}
C {lab_wire.sym} -320 -130 0 0 {name=l3 sig_type=std_logic lab=vp}
C {lab_wire.sym} -330 -90 0 1 {name=l7 sig_type=std_logic lab=vn}
C {lab_wire.sym} -310 -160 0 1 {name=l10 sig_type=std_logic lab=vdd}
C {iopin.sym} -370 -160 0 1 {name=p7 lab=vdd}
C {lab_wire.sym} -320 -20 0 0 {name=l11 sig_type=std_logic lab=vss}
C {opin.sym} 410 -90 0 0 {name=p1 lab=vout}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 140 -80 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -70 -80 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 20 -190 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 70 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -30 70 0 1 {name=M5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -200 -190 0 1 {name=M6
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 350 -190 0 0 {name=M7
L=1
W=2
nf=2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 350 -10 0 0 {name=M8
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
C {lab_wire.sym} -100 -190 0 0 {name=l1 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -110 -220 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 290 20 0 0 {name=l13 sig_type=std_logic lab=v1}
C {lab_wire.sym} 80 -110 0 0 {name=l14 sig_type=std_logic lab=vc}
C {lab_wire.sym} 370 -70 0 0 {name=l15 sig_type=std_logic lab=vout}
C {lab_wire.sym} 10 20 0 0 {name=l16 sig_type=std_logic lab=vf}
C {lab_wire.sym} 180 -80 0 0 {name=l12 sig_type=std_logic lab=vp}
C {lab_wire.sym} 320 -190 0 0 {name=l4 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -100 -80 0 0 {name=l17 sig_type=std_logic lab=vn}
C {lab_wire.sym} -190 100 0 0 {name=l9 sig_type=std_logic lab=vss}
