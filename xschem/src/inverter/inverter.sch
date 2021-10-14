v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -20 -1600 -20 -1550 { lab=B}
N -60 -1630 -60 -1520 { lab=A}
N -20 -1490 -20 -1480 { lab=gnd}
N -20 -1520 10 -1520 { lab=gnd}
N 10 -1520 10 -1490 { lab=gnd}
N -20 -1680 -20 -1660 { lab=vdd}
N -20 -1490 10 -1490 { lab=gnd}
N -20 -1580 80 -1580 { lab=B}
N -110 -1580 -60 -1580 { lab=A}
N -20 -1700 -20 -1680 { lab=vdd}
N -20 -1480 -20 -1460 { lab=gnd}
N -20 -1630 -0 -1630 { lab=vdd}
N -0 -1660 -0 -1630 { lab=vdd}
N -20 -1660 0 -1660 { lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -40 -1520 0 0 {name=M3
L=0.15
W=1
nf=1 
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -1630 0 0 {name=M1
L=0.15
W=2
nf=1
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
C {iopin.sym} -20 -1700 0 0 {name=p1 lab=vdd}
C {iopin.sym} -20 -1460 0 0 {name=p2 lab=vss}
C {ipin.sym} -110 -1580 0 0 {name=p3 lab=A}
C {opin.sym} 80 -1580 0 0 {name=p4 lab=B}
