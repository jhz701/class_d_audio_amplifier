v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -10 -120 -10 -100 { lab=vdd}
N -10 180 -10 190 { lab=vss}
N 0 40 10 40 { lab=out_p}
N -10 250 -10 270 { lab=vss}
N -10 40 0 40 { lab=out_p}
N -80 -30 -50 -30 { lab=vp_p}
N -80 110 -50 110 { lab=vp_n}
N -10 150 10 150 { lab=vss}
N 10 150 10 190 { lab=vss}
N -10 190 10 190 { lab=vss}
N -10 -70 10 -70 { lab=vdd}
N 10 -110 10 -70 { lab=vdd}
N -10 -110 10 -110 { lab=vdd}
N 10 40 50 40 { lab=out_p}
N -10 190 -10 250 { lab=vss}
N -10 110 -10 120 { lab=out_p}
N -10 30 -10 50 { lab=out_p}
N -10 -40 -10 -30 { lab=out_p}
N -50 110 -50 150 { lab=vp_n}
N -50 -70 -50 -30 { lab=vp_p}
N -10 -30 -10 110 { lab=out_p}
N -100 -30 -80 -30 { lab=vp_p}
N -210 110 -80 110 { lab=vp_n}
N -200 -30 -100 -30 { lab=vp_p}
N 50 40 70 40 { lab=out_p}
N -370 -120 -310 -120 { lab=vdd}
N -370 -60 -310 -60 { lab=vss}
C {lab_wire.sym} 10 40 0 1 {name=l15 sig_type=std_logic lab=out_p}
C {sky130_fd_pr/pfet_01v8.sym} -30 -70 0 0 {name=M1
L=0.15
W=12000
nf=200
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -30 150 0 0 {name=M2
L=0.15
W=2400
nf=100
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_wire.sym} -90 -30 0 0 {name=l49 sig_type=std_logic lab=vp_p}
C {lab_wire.sym} -70 110 0 0 {name=l50 sig_type=std_logic lab=vp_n}
C {lab_wire.sym} -10 -120 0 0 {name=l31 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -10 260 0 0 {name=l1 sig_type=std_logic lab=vss}
C {ipin.sym} -190 -30 0 0 {name=p1 lab=vp_p}
C {ipin.sym} -200 110 0 0 {name=p2 lab=vp_n
}
C {opin.sym} 70 40 0 0 {name=p5 lab=out_p}
C {iopin.sym} -380 -120 0 0 {name=p3 lab=vdd}
C {iopin.sym} -380 -60 0 0 {name=p4 lab=vss}
C {lab_wire.sym} -320 -120 0 1 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -320 -60 0 1 {name=l3 sig_type=std_logic lab=vss}
