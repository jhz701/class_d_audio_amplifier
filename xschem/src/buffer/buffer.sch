v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 770 380 770 390 { lab=vss}
N 770 350 800 350 { lab=vss}
N 800 350 800 380 { lab=vss}
N 770 210 770 230 { lab=vdd}
N 770 380 800 380 { lab=vss}
N 770 260 790 260 { lab=vdd}
N 790 230 790 260 { lab=vdd}
N 770 230 790 230 { lab=vdd}
N 770 290 770 310 { lab=#net1}
N 770 310 770 320 { lab=#net1}
N 730 260 730 310 { lab=vip}
N 730 320 730 350 { lab=vip}
N 730 310 730 320 { lab=vip}
N 770 310 840 310 { lab=#net1}
N 880 380 880 390 { lab=vss}
N 880 350 910 350 { lab=vss}
N 910 350 910 380 { lab=vss}
N 880 210 880 230 { lab=vdd}
N 880 380 910 380 { lab=vss}
N 880 260 900 260 { lab=vdd}
N 900 230 900 260 { lab=vdd}
N 880 230 900 230 { lab=vdd}
N 880 290 880 310 { lab=#net2}
N 880 310 880 320 { lab=#net2}
N 840 260 840 310 { lab=#net1}
N 840 320 840 350 { lab=#net1}
N 840 310 840 320 { lab=#net1}
N 990 380 990 390 { lab=vss}
N 990 350 1020 350 { lab=vss}
N 1020 350 1020 380 { lab=vss}
N 990 210 990 230 { lab=vdd}
N 990 380 1020 380 { lab=vss}
N 990 260 1010 260 { lab=vdd}
N 1010 230 1010 260 { lab=vdd}
N 990 230 1010 230 { lab=vdd}
N 990 290 990 310 { lab=#net3}
N 990 310 990 320 { lab=#net3}
N 950 260 950 310 { lab=#net2}
N 950 320 950 350 { lab=#net2}
N 950 310 950 320 { lab=#net2}
N 1090 380 1090 390 { lab=vss}
N 1090 350 1120 350 { lab=vss}
N 1120 350 1120 380 { lab=vss}
N 1090 210 1090 230 { lab=vdd}
N 1090 380 1120 380 { lab=vss}
N 1090 260 1110 260 { lab=vdd}
N 1110 230 1110 260 { lab=vdd}
N 1090 230 1110 230 { lab=vdd}
N 1090 290 1090 310 { lab=vop}
N 1090 310 1090 320 { lab=vop}
N 1050 260 1050 310 { lab=#net3}
N 1050 320 1050 350 { lab=#net3}
N 1050 310 1050 320 { lab=#net3}
N 880 310 950 310 { lab=#net2}
N 990 310 1050 310 { lab=#net3}
N 770 610 770 620 { lab=gnd}
N 770 580 800 580 { lab=gnd}
N 800 580 800 610 { lab=gnd}
N 770 440 770 460 { lab=vdd}
N 770 610 800 610 { lab=gnd}
N 770 420 770 440 { lab=vdd}
N 770 490 790 490 { lab=vdd}
N 790 460 790 490 { lab=vdd}
N 770 460 790 460 { lab=vdd}
N 770 520 770 540 { lab=#net4}
N 770 540 770 550 { lab=#net4}
N 730 490 730 540 { lab=vin}
N 730 550 730 580 { lab=vin}
N 730 540 730 550 { lab=vin}
N 880 610 880 620 { lab=gnd}
N 880 580 910 580 { lab=gnd}
N 910 580 910 610 { lab=gnd}
N 880 440 880 460 { lab=vdd}
N 880 610 910 610 { lab=gnd}
N 880 420 880 440 { lab=vdd}
N 880 490 900 490 { lab=vdd}
N 900 460 900 490 { lab=vdd}
N 880 460 900 460 { lab=vdd}
N 880 520 880 540 { lab=#net5}
N 880 540 880 550 { lab=#net5}
N 840 490 840 540 { lab=#net4}
N 840 550 840 580 { lab=#net4}
N 840 540 840 550 { lab=#net4}
N 990 610 990 620 { lab=gnd}
N 990 580 1020 580 { lab=gnd}
N 1020 580 1020 610 { lab=gnd}
N 990 440 990 460 { lab=vdd}
N 990 610 1020 610 { lab=gnd}
N 990 420 990 440 { lab=vdd}
N 990 490 1010 490 { lab=vdd}
N 1010 460 1010 490 { lab=vdd}
N 990 460 1010 460 { lab=vdd}
N 990 520 990 540 { lab=von}
N 990 540 990 550 { lab=von}
N 950 490 950 540 { lab=#net5}
N 950 550 950 580 { lab=#net5}
N 950 540 950 550 { lab=#net5}
N 770 530 840 530 { lab=#net4}
N 880 530 950 530 { lab=#net5}
N 640 300 730 300 { lab=vip}
N 630 520 730 520 { lab=vin}
N 990 540 1200 540 { lab=von}
N 1090 310 1200 310 { lab=vop}
N 750 390 1090 390 { lab=vss}
N 770 210 1090 210 { lab=vdd}
N 770 420 990 420 { lab=vdd}
N 770 620 990 620 { lab=gnd}
N 630 390 660 390 { lab=vdd}
N 630 450 660 450 { lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 750 350 0 0 {name=M3
L=0.15
W=5
nf=2 
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
C {sky130_fd_pr/pfet_01v8.sym} 750 260 0 0 {name=M1
L=0.15
W=10
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 860 350 0 0 {name=M2
L=0.15
W=20
nf=8
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
C {sky130_fd_pr/pfet_01v8.sym} 860 260 0 0 {name=M4
L=0.15
W=40
nf=8
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
C {sky130_fd_pr/nfet_01v8.sym} 970 350 0 0 {name=M5
L=0.15
W=90
nf=36
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
C {sky130_fd_pr/pfet_01v8.sym} 970 260 0 0 {name=M6
L=0.15
W=180
nf=36
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
C {sky130_fd_pr/nfet_01v8.sym} 1070 350 0 0 {name=M7
L=0.15
W=202.5
nf=81
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1070 260 0 0 {name=M8
L=0.15
W=405
nf=81
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 750 580 0 0 {name=M9
L=0.15
W=5
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 750 490 0 0 {name=M10
L=0.15
W=10
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 860 580 0 0 {name=M11
L=0.15
W=20
nf=8
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
C {sky130_fd_pr/pfet_01v8.sym} 860 490 0 0 {name=M12
L=0.15
W=40
nf=8
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
C {sky130_fd_pr/nfet_01v8.sym} 970 580 0 0 {name=M13
L=0.15
W=90
nf=36
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
C {sky130_fd_pr/pfet_01v8.sym} 970 490 0 0 {name=M14
L=0.15
W=180
nf=36
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
C {iopin.sym} 630 390 0 1 {name=p1 lab=vdd}
C {iopin.sym} 630 450 0 1 {name=p2 lab=vss}
C {ipin.sym} 640 300 0 0 {name=p3 lab=vip}
C {ipin.sym} 630 520 0 0 {name=p4 lab=vin}
C {opin.sym} 1200 310 0 0 {name=p5 lab=vop}
C {opin.sym} 1200 540 0 0 {name=p6 lab=von}
C {lab_wire.sym} 810 420 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 840 210 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 840 390 0 0 {name=l3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 850 620 0 0 {name=l4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 660 390 0 0 {name=l5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 660 450 0 0 {name=l6 sig_type=std_logic lab=vss}
