v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -570 -70 -500 -70 { lab=s0}
N -570 80 -500 80 { lab=s1}
N -420 -70 -270 -70 { lab=#net1}
N -520 20 -310 20 { lab=s1}
N -310 -50 -310 -20 { lab=s1}
N -310 -50 -270 -50 { lab=s1}
N -510 -70 -510 -30 { lab=s0}
N -510 -30 -380 -30 { lab=s0}
N -380 -30 -380 50 { lab=s0}
N -380 50 -270 50 { lab=s0}
N -420 80 -290 80 { lab=#net2}
N -290 70 -270 70 { lab=#net2}
N -290 70 -290 80 { lab=#net2}
N -310 -20 -310 20 { lab=s1}
N -520 30 -520 80 { lab=s1}
N -520 20 -520 30 { lab=s1}
N -380 50 -380 170 { lab=s0}
N -380 170 -270 170 { lab=s0}
N -400 20 -400 190 { lab=s1}
N -400 190 -270 190 { lab=s1}
N -200 -60 -40 -60 { lab=sel0}
N -200 60 -40 60 { lab=sel1}
N -200 180 -40 180 { lab=sel2}
N 140 410 140 450 { lab=#net3}
N 20 -140 60 -140 { lab=sel0}
N 30 170 60 170 { lab=sel1}
N 20 450 60 450 { lab=sel2}
N 20 170 30 170 { lab=sel1}
N -470 -130 -470 -90 { lab=vdd}
N -470 -50 -470 -40 { lab=vss}
N -470 40 -470 60 { lab=vdd}
N -470 100 -470 120 { lab=vss}
N -250 -120 -250 -90 { lab=vdd}
N -250 -30 -250 -10 { lab=vss}
N -250 10 -250 30 { lab=vdd}
N -250 90 -250 110 { lab=#net4}
N -250 130 -250 150 { lab=vdd}
N -250 210 -250 230 { lab=vss}
N 90 -180 90 -160 { lab=vdd}
N 90 -120 90 -100 { lab=vss}
N 90 120 90 150 { lab=vdd}
N 90 190 90 210 { lab=#net5}
N 90 410 90 430 { lab=vdd}
N 90 470 90 500 { lab=vss}
N 90 -320 110 -320 { lab=vin0}
N 90 -320 90 -210 { lab=vin0}
N 90 -210 110 -210 { lab=vin0}
N 170 -320 190 -320 { lab=vout0}
N 190 -320 190 -210 { lab=vout0}
N 170 -210 190 -210 { lab=vout0}
N 30 -260 90 -260 { lab=vin0}
N 190 -250 270 -250 { lab=vout0}
N 140 -390 140 -360 { lab=sel0}
N 140 -320 170 -320 { lab=vout0}
N 140 -210 170 -210 { lab=vout0}
N 90 -30 110 -30 { lab=vin1}
N 90 -30 90 80 { lab=vin1}
N 90 80 110 80 { lab=vin1}
N 170 -30 190 -30 { lab=vout1}
N 190 -30 190 80 { lab=vout1}
N 170 80 190 80 { lab=vout1}
N 30 30 90 30 { lab=vin1}
N 190 40 270 40 { lab=vout1}
N 140 -100 140 -70 { lab=sel1}
N 140 -30 170 -30 { lab=vout1}
N 140 80 170 80 { lab=vout1}
N 90 260 110 260 { lab=vin2}
N 90 260 90 370 { lab=vin2}
N 90 370 110 370 { lab=vin2}
N 170 260 190 260 { lab=vout2}
N 190 260 190 370 { lab=vout2}
N 170 370 190 370 { lab=vout2}
N 30 320 90 320 { lab=vin2}
N 190 330 270 330 { lab=vout2}
N 140 190 140 220 { lab=sel2}
N 140 410 140 450 { lab=#net3}
N 140 260 170 260 { lab=vout2}
N 140 370 170 370 { lab=vout2}
N 140 -160 140 -140 { lab=#net6}
N 140 -170 140 -160 { lab=#net6}
N 140 120 140 170 { lab=#net7}
N -370 -280 -290 -280 { lab=vdd}
N -370 -200 -290 -200 { lab=vss}
C {src/nand/nand.sym} -210 -60 0 0 {name=x4}
C {src/nand/nand.sym} -210 60 0 0 {name=x5}
C {src/nand/nand.sym} -210 180 0 0 {name=x6}
C {src/inverter/inverter.sym} -450 80 0 0 {name=x8}
C {src/inverter/inverter.sym} -450 -70 0 0 {name=x9}
C {lab_wire.sym} -540 -70 0 0 {name=l1 sig_type=std_logic lab=s0}
C {lab_wire.sym} -540 80 0 0 {name=l2 sig_type=std_logic lab=s1}
C {lab_wire.sym} -90 -60 0 0 {name=l3 sig_type=std_logic lab=sel0}
C {lab_wire.sym} -90 60 0 0 {name=l4 sig_type=std_logic lab=sel1}
C {lab_wire.sym} -90 180 0 0 {name=l5 sig_type=std_logic lab=sel2}
C {lab_wire.sym} 140 -380 0 0 {name=l6 sig_type=std_logic lab=sel0}
C {lab_wire.sym} 140 -90 0 0 {name=l7 sig_type=std_logic lab=sel1}
C {lab_wire.sym} 140 210 0 0 {name=l8 sig_type=std_logic lab=sel2}
C {src/inverter/inverter.sym} 110 450 0 0 {name=x7}
C {src/inverter/inverter.sym} 110 170 0 0 {name=x10}
C {src/inverter/inverter.sym} 110 -140 0 0 {name=x11}
C {lab_wire.sym} 50 -140 0 0 {name=l9 sig_type=std_logic lab=sel0}
C {lab_wire.sym} 40 170 0 0 {name=l10 sig_type=std_logic lab=sel1}
C {lab_wire.sym} 40 450 0 0 {name=l11 sig_type=std_logic lab=sel2}
C {lab_wire.sym} -470 -110 0 0 {name=l12 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -250 -100 0 0 {name=l13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -470 50 0 0 {name=l14 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -250 20 0 0 {name=l15 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -250 140 0 0 {name=l16 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 90 -170 0 0 {name=l17 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 90 140 0 0 {name=l18 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 90 420 0 0 {name=l19 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -250 -10 0 0 {name=l20 sig_type=std_logic lab=vss}
C {lab_wire.sym} -470 -40 0 1 {name=l21 sig_type=std_logic lab=vss}
C {lab_wire.sym} -470 120 0 1 {name=l22 sig_type=std_logic lab=vss}
C {lab_wire.sym} -250 230 0 1 {name=l23 sig_type=std_logic lab=vss}
C {lab_wire.sym} 90 -110 0 1 {name=l24 sig_type=std_logic lab=vss}
C {lab_wire.sym} 90 490 0 1 {name=l26 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 140 -190 3 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 140 -340 1 0 {name=M2
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
C {ipin.sym} 30 -260 0 0 {name=p1 lab=vin0}
C {opin.sym} 270 -250 0 0 {name=p2 lab=vout0}
C {sky130_fd_pr/nfet_01v8.sym} 140 100 3 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 140 -50 1 0 {name=M4
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
C {ipin.sym} 30 30 0 0 {name=p3 lab=vin1}
C {opin.sym} 270 40 0 0 {name=p4 lab=vout1}
C {sky130_fd_pr/nfet_01v8.sym} 140 390 3 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 140 240 1 0 {name=M6
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
C {ipin.sym} 30 320 0 0 {name=p5 lab=vin2}
C {opin.sym} 270 330 0 0 {name=p6 lab=vout2}
C {iopin.sym} -380 -280 0 0 {name=p7 lab=vdd}
C {iopin.sym} -380 -200 0 0 {name=p8 lab=vss}
C {lab_wire.sym} -300 -280 0 0 {name=l25 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -300 -200 0 0 {name=l27 sig_type=std_logic lab=vss}
C {ipin.sym} -570 -70 0 0 {name=p9 lab=s0}
C {ipin.sym} -570 80 0 0 {name=p10 lab=s1}
