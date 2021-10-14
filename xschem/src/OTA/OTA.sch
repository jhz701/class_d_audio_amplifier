v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {0.386p} 320 60 0 0 0.2 0.2 {}
T {gm/id=11} -160 -20 0 0 0.2 0.2 {}
T {gm/id=11} 20 -20 0 0 0.2 0.2 {}
T {gm/id=11} 360 -20 0 0 0.2 0.2 {}
T {gm/id=15} 10 80 0 0 0.2 0.2 {}
T {gm/id=15} 110 80 0 0 0.2 0.2 {}
T {gm/id=17} 30 220 0 0 0.2 0.2 {}
T {gm/id=17} 90 220 0 0 0.2 0.2 {}
T {gm/id=17} 360 170 0 0 0.2 0.2 {}
T {32k} 220 90 0 0 0.2 0.2 {}
N -320 50 -250 50 { lab=vn}
N -330 90 -250 90 { lab=vbias}
N -330 50 -320 50 { lab=vn}
N -330 10 -310 10 { lab=vp}
N -310 10 -250 10 { lab=vp}
N -320 -20 -250 -20 { lab=vdd}
N -310 120 -250 120 { lab=vss}
N -320 120 -310 120 { lab=vss}
N -170 -20 -170 60 { lab=vbias}
N -170 240 170 240 { lab=vss}
N 0 210 0 240 { lab=vss}
N 170 210 170 240 { lab=vss}
N 0 90 0 180 { lab=vf}
N 170 90 170 180 { lab=v1}
N 0 30 170 30 { lab=vc}
N 90 -20 90 30 { lab=vc}
N 40 210 130 210 { lab=vf}
N 0 160 80 160 { lab=vf}
N 80 160 80 210 { lab=vf}
N -170 10 -100 10 { lab=vbias}
N -100 -50 -100 10 { lab=vbias}
N -130 -50 50 -50 { lab=vbias}
N 420 -20 420 100 { lab=vout}
N 420 -50 430 -50 { lab=vdd}
N 430 -80 430 -50 { lab=vdd}
N 420 160 420 240 { lab=vss}
N 170 240 320 240 { lab=vss}
N 420 130 450 130 { lab=vss}
N 450 130 450 160 { lab=vss}
N 420 160 450 160 { lab=vss}
N -170 -80 330 -80 { lab=vdd}
N 90 -80 90 -50 { lab=vdd}
N -170 -80 -170 -50 { lab=vdd}
N 350 -50 380 -50 { lab=vbias}
N 380 130 380 160 { lab=v1}
N 170 160 280 160 { lab=v1}
N -60 60 -40 60 { lab=vn}
N 210 60 230 60 { lab=vp}
N 380 240 420 240 { lab=vss}
N 350 160 380 160 { lab=v1}
N 330 -80 400 -80 { lab=vdd}
N 320 240 380 240 { lab=vss}
N 400 -80 420 -80 { lab=vdd}
N 420 -80 430 -80 { lab=vdd}
N 240 80 240 90 { lab=#net1}
N 260 80 280 80 { lab=#net1}
N 240 150 240 160 { lab=v1}
N 240 80 260 80 { lab=#net1}
N 280 80 300 80 { lab=#net1}
N 360 80 420 80 { lab=vout}
N 280 160 350 160 { lab=v1}
N 420 50 460 50 { lab=vout}
N 190 120 220 120 { lab=vss}
N 0 30 -0 60 { lab=vc}
N 170 30 170 60 { lab=vc}
C {ipin.sym} -320 10 0 0 {name=p3 lab=vp}
C {ipin.sym} -320 50 0 0 {name=p4 lab=vn}
C {ipin.sym} -320 90 0 0 {name=p6 lab=vbias}
C {lab_wire.sym} -260 90 0 0 {name=l5 sig_type=std_logic lab=vbias}
C {iopin.sym} -320 120 0 1 {name=p2 lab=vss}
C {lab_wire.sym} -270 10 0 0 {name=l3 sig_type=std_logic lab=vp}
C {lab_wire.sym} -280 50 0 1 {name=l7 sig_type=std_logic lab=vn}
C {lab_wire.sym} -260 -20 0 1 {name=l10 sig_type=std_logic lab=vdd}
C {iopin.sym} -320 -20 0 1 {name=p7 lab=vdd}
C {lab_wire.sym} -270 120 0 0 {name=l11 sig_type=std_logic lab=vss}
C {opin.sym} 460 50 0 0 {name=p1 lab=vout}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 190 60 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 60 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 70 -50 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 150 210 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 20 210 0 1 {name=M5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -150 -50 0 1 {name=M6
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 400 -50 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 400 130 0 0 {name=M8
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
C {lab_wire.sym} -50 -50 0 0 {name=l1 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -60 -80 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 340 160 0 0 {name=l13 sig_type=std_logic lab=v1}
C {lab_wire.sym} 130 30 0 0 {name=l14 sig_type=std_logic lab=vc}
C {lab_wire.sym} 420 70 0 0 {name=l15 sig_type=std_logic lab=vout}
C {lab_wire.sym} 60 160 0 0 {name=l16 sig_type=std_logic lab=vf}
C {lab_wire.sym} 230 60 0 0 {name=l12 sig_type=std_logic lab=vp}
C {lab_wire.sym} 370 -50 0 0 {name=l4 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -50 60 0 0 {name=l17 sig_type=std_logic lab=vn}
C {lab_wire.sym} -140 240 0 0 {name=l9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 200 120 0 0 {name=l18 sig_type=std_logic lab=vss}
C {sky130_fd_pr/res_xhigh_po.sym} 240 120 0 0 {name=R1
W=0.35
L=0.5
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 330 80 3 0 {name=C2 model=cap_mim_m3_1 W=14 L=14 MF=1 spiceprefix=X}
