v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 20 -140 180 -140 { lab=vdd}
N 20 -140 20 -110 { lab=vdd}
N 180 -140 180 -110 { lab=vdd}
N 20 -80 180 -80 { lab=out}
N 90 -80 90 -0 { lab=out}
N 90 60 90 90 { lab=#net1}
N 90 120 90 150 { lab=vss}
N -80 30 50 30 { lab=A}
N -50 -110 -50 30 { lab=A}
N -50 -110 -20 -110 { lab=A}
N -80 120 50 120 { lab=B}
N 30 -110 30 120 { lab=B}
N 30 -110 140 -110 { lab=B}
N 20 -210 90 -210 { lab=vdd}
N 90 -210 90 -140 { lab=vdd}
N 90 150 90 190 { lab=vss}
N 40 190 90 190 { lab=vss}
N 90 -20 180 -20 { lab=out}
N 90 30 110 30 { lab=vss}
N 110 30 110 190 { lab=vss}
N 90 190 110 190 { lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 70 30 0 0 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 0 -110 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 70 120 0 0 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 160 -110 0 0 {name=M4
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
C {ipin.sym} -70 30 0 0 {name=p3 lab=A}
C {ipin.sym} -70 120 0 0 {name=p4 lab=B}
C {opin.sym} 180 -20 0 0 {name=p5 lab=out}
C {iopin.sym} 20 -210 0 1 {name=p1 lab=vdd}
C {iopin.sym} 40 190 0 1 {name=p2 lab=vss}
