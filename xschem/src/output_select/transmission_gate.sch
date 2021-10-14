v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -500 -210 -480 -210 { lab=vin}
N -500 -210 -500 -100 { lab=vin}
N -500 -100 -480 -100 { lab=vin}
N -420 -210 -400 -210 { lab=vout}
N -400 -210 -400 -100 { lab=vout}
N -420 -100 -400 -100 { lab=vout}
N -560 -150 -500 -150 { lab=vin}
N -400 -140 -320 -140 { lab=vout}
N -450 -280 -450 -250 { lab=ena_n}
N -450 -60 -450 -20 { lab=ena}
N -450 -210 -420 -210 { lab=vout}
N -450 -100 -420 -100 { lab=vout}
C {sky130_fd_pr/nfet_01v8.sym} -450 -80 3 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -450 -230 1 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -560 -150 0 0 {name=p1 lab=vin}
C {opin.sym} -320 -140 0 0 {name=p2 lab=vout}
C {ipin.sym} -450 -280 1 0 {name=p3 lab=ena_n}
C {ipin.sym} -450 -20 3 0 {name=p4 lab=ena}
