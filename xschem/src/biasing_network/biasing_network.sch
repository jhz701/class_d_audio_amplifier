v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 280 160 360 { lab=iin_15u}
N 160 310 230 310 { lab=iin_15u}
N 160 420 160 430 { lab=vss}
N 160 390 160 420 { lab=vss}
N 200 390 240 390 { lab=iin_15u}
N 230 310 230 390 { lab=iin_15u}
N 240 390 280 390 { lab=iin_15u}
N 280 390 720 390 { lab=iin_15u}
N 310 430 340 430 { lab=vss}
N 490 430 520 430 { lab=vss}
N 660 430 690 430 { lab=vss}
N 330 430 330 460 { lab=vss}
N 510 430 510 460 { lab=vss}
N 670 430 670 460 { lab=vss}
N 280 430 310 430 { lab=vss}
N 340 430 370 430 { lab=vss}
N 460 430 490 430 { lab=vss}
N 520 430 550 430 { lab=vss}
N 630 430 660 430 { lab=vss}
N 690 430 720 430 { lab=vss}
N 720 390 880 390 { lab=iin_15u}
N 830 430 850 430 { lab=vss}
N 840 430 840 460 { lab=vss}
N 850 430 880 430 { lab=vss}
N 800 430 830 430 { lab=vss}
N 250 430 250 480 { lab=ibias1_15u}
N 400 430 400 480 { lab=ibias2_15u}
N 430 430 430 480 { lab=ibias3_15u}
N 580 430 580 480 { lab=ibias4_15u}
N 600 430 600 480 { lab=ibias5_15u}
N 750 430 750 480 { lab=ibias6_15u}
N 770 430 770 480 { lab=ibias7_15u}
N 910 430 910 480 { lab=ibias8_15u}
N 160 430 160 470 { lab=vss}
N 100 510 160 510 { lab=vss}
N 100 280 160 280 { lab=iin_15u}
N 80 280 100 280 { lab=iin_15u}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 180 390 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 280 410 3 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 370 410 1 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 460 410 3 1 {name=M8
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 550 410 1 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 630 410 3 1 {name=M10
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 720 410 1 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 800 410 1 0 {name=M12
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 880 410 1 0 {name=M13
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
C {lab_wire.sym} 160 460 0 1 {name=l1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 330 460 0 1 {name=l2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 510 460 0 1 {name=l3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 670 460 0 1 {name=l4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 840 460 0 1 {name=l5 sig_type=std_logic lab=vss}
C {iopin.sym} 80 280 0 0 {name=p1 lab=iin_15u}
C {iopin.sym} 90 510 0 0 {name=p2 lab=vss}
C {lab_wire.sym} 150 510 0 1 {name=l6 sig_type=std_logic lab=vss}
C {opin.sym} 250 480 1 0 {name=p3 lab=ibias1_15u}
C {opin.sym} 400 480 1 0 {name=p4 lab=ibias2_15u}
C {opin.sym} 430 480 1 0 {name=p5 lab=ibias3_15u}
C {opin.sym} 580 480 1 0 {name=p6 lab=ibias4_15u}
C {opin.sym} 600 480 1 0 {name=p7 lab=ibias5_15u}
C {opin.sym} 750 480 1 0 {name=p8 lab=ibias6_15u}
C {opin.sym} 770 480 1 0 {name=p9 lab=ibias7_15u}
C {opin.sym} 910 480 1 0 {name=p10 lab=ibias8_15u}
