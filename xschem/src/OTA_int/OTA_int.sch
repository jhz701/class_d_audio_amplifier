v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {1.79p} 470 160 0 0 0.2 0.2 {}
T {gm/id=11} -10 50 0 0 0.2 0.2 {}
T {gm/id=11} 170 50 0 0 0.2 0.2 {}
T {gm/id=11} 510 50 0 0 0.2 0.2 {}
T {gm/id=15} 160 150 0 0 0.2 0.2 {}
T {gm/id=15} 260 150 0 0 0.2 0.2 {}
T {gm/id=17} 180 290 0 0 0.2 0.2 {}
T {gm/id=17} 240 290 0 0 0.2 0.2 {}
T {gm/id=17} 510 240 0 0 0.2 0.2 {}
T {8k} 370 160 0 0 0.2 0.2 {}
N -160 180 -90 180 { lab=vn}
N -170 220 -90 220 { lab=vbias}
N -170 180 -160 180 { lab=vn}
N -170 140 -150 140 { lab=vp}
N -150 140 -90 140 { lab=vp}
N -160 110 -90 110 { lab=vdd}
N -150 250 -90 250 { lab=vss}
N -160 250 -150 250 { lab=vss}
N 600 120 640 120 { lab=vout}
N -20 50 -20 130 { lab=vbias}
N -20 310 320 310 { lab=vss}
N 150 280 150 310 { lab=vss}
N 320 280 320 310 { lab=vss}
N 150 160 150 250 { lab=vf}
N 320 160 320 250 { lab=v1}
N 150 100 320 100 { lab=vc}
N 240 50 240 100 { lab=vc}
N 190 280 280 280 { lab=vf}
N 150 230 230 230 { lab=vf}
N 230 230 230 280 { lab=vf}
N -20 80 50 80 { lab=vbias}
N 50 20 50 80 { lab=vbias}
N 20 20 200 20 { lab=vbias}
N 570 50 570 170 { lab=vout}
N 570 20 580 20 { lab=vdd}
N 580 -10 580 20 { lab=vdd}
N 570 230 570 310 { lab=vss}
N 320 310 470 310 { lab=vss}
N 570 200 600 200 { lab=vss}
N 600 200 600 230 { lab=vss}
N 570 230 600 230 { lab=vss}
N -20 -10 480 -10 { lab=vdd}
N 240 -10 240 20 { lab=vdd}
N -20 -10 -20 20 { lab=vdd}
N 500 20 530 20 { lab=vbias}
N 530 200 530 230 { lab=v1}
N 320 230 430 230 { lab=v1}
N 90 130 110 130 { lab=vn}
N 360 130 380 130 { lab=vp}
N 530 310 570 310 { lab=vss}
N 500 230 530 230 { lab=v1}
N 480 -10 550 -10 { lab=vdd}
N 470 310 530 310 { lab=vss}
N 550 -10 570 -10 { lab=vdd}
N 570 -10 580 -10 { lab=vdd}
N 390 150 390 160 { lab=v2}
N 410 150 430 150 { lab=v2}
N 390 220 390 230 { lab=v1}
N 390 150 410 150 { lab=v2}
N 430 150 450 150 { lab=v2}
N 510 150 570 150 { lab=vout}
N 430 230 500 230 { lab=v1}
N 340 190 370 190 { lab=vss}
N 570 120 600 120 { lab=vout}
N 150 100 150 130 { lab=vc}
N 320 100 320 130 { lab=vc}
N 450 90 450 150 { lab=v2}
N 510 90 510 150 { lab=vout}
C {ipin.sym} -160 140 0 0 {name=p3 lab=vp}
C {ipin.sym} -160 180 0 0 {name=p4 lab=vn}
C {ipin.sym} -160 220 0 0 {name=p6 lab=vbias}
C {lab_wire.sym} -100 220 0 0 {name=l5 sig_type=std_logic lab=vbias}
C {iopin.sym} -160 250 0 1 {name=p2 lab=vss}
C {lab_wire.sym} -110 140 0 0 {name=l7 sig_type=std_logic lab=vp}
C {lab_wire.sym} -120 180 0 1 {name=l9 sig_type=std_logic lab=vn}
C {lab_wire.sym} -100 110 0 1 {name=l10 sig_type=std_logic lab=vdd}
C {iopin.sym} -160 110 0 1 {name=p7 lab=vdd}
C {lab_wire.sym} -110 250 0 0 {name=l18 sig_type=std_logic lab=vss}
C {opin.sym} 640 120 0 0 {name=p1 lab=vout}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 340 130 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 130 130 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 220 20 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 300 280 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 170 280 0 1 {name=M5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 0 20 0 1 {name=M6
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 550 20 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 550 200 0 0 {name=M8
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
C {lab_wire.sym} 100 20 0 0 {name=l1 sig_type=std_logic lab=vbias}
C {lab_wire.sym} 90 -10 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 490 230 0 0 {name=l13 sig_type=std_logic lab=v1}
C {lab_wire.sym} 280 100 0 0 {name=l14 sig_type=std_logic lab=vc}
C {lab_wire.sym} 570 140 0 0 {name=l15 sig_type=std_logic lab=vout}
C {lab_wire.sym} 210 230 0 0 {name=l16 sig_type=std_logic lab=vf}
C {lab_wire.sym} 380 130 0 0 {name=l12 sig_type=std_logic lab=vp}
C {lab_wire.sym} 520 20 0 0 {name=l4 sig_type=std_logic lab=vbias}
C {lab_wire.sym} 100 130 0 0 {name=l17 sig_type=std_logic lab=vn}
C {lab_wire.sym} 10 310 0 0 {name=l3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 350 190 0 0 {name=l11 sig_type=std_logic lab=vss}
C {sky130_fd_pr/cap_mim_m3_1.sym} 480 150 3 0 {name=C1 model=cap_mim_m3_1 W=14 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 390 190 0 0 {name=R1
W=0.35
L=2.8
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 480 90 3 0 {name=C2 model=cap_mim_m3_1 W=30 L=14 MF=1 spiceprefix=X}
C {lab_wire.sym} 430 150 0 0 {name=l2 sig_type=std_logic lab=v2}
