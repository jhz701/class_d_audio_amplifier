v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 460 20 480 20 { lab=vcmp}
N 460 -60 460 20 { lab=vcmp}
N 450 -60 520 -60 { lab=vcmp}
N 260 130 330 130 { lab=vt}
N 330 40 330 130 { lab=vt}
N 140 130 200 130 { lab=vi}
N 140 40 140 130 { lab=vi}
N 110 40 190 40 { lab=vi}
N 20 40 50 40 { lab=vsquare}
N 20 40 20 190 { lab=vsquare}
N 20 190 570 190 { lab=vsquare}
N 630 40 630 190 { lab=vsquare}
N 590 40 630 40 { lab=vsquare}
N 580 -60 630 -60 { lab=vsquare}
N 630 -60 630 40 { lab=vsquare}
N 540 0 540 20 { lab=vdd}
N 250 -10 250 20 { lab=vdd}
N 540 -10 540 0 { lab=vdd}
N 250 60 250 80 { lab=vss}
N 250 80 280 80 { lab=vss}
N 540 60 540 80 { lab=vss}
N 540 80 570 80 { lab=vss}
N 160 60 190 60 { lab=vbias1}
N 450 60 480 60 { lab=vbias2}
N 170 20 190 20 { lab=vref}
N 450 40 480 40 { lab=vref}
N 160 20 170 20 { lab=vref}
N -90 0 -40 0 { lab=vdd}
N -90 40 -40 40 { lab=vbias1}
N -90 70 -40 70 { lab=vref}
N 250 -60 330 -60 { lab=vt}
N 630 0 660 0 { lab=vsquare}
N -90 130 -50 130 { lab=vss}
N 50 60 80 60 { lab=vss}
N 420 -40 450 -40 { lab=vss}
N 550 -40 590 -40 { lab=vss}
N -90 100 -40 100 { lab=vbias2}
N 300 40 330 40 { lab=vt}
N 360 -60 390 -60 { lab=vt}
N 330 -60 360 -60 { lab=vt}
N 330 20 330 40 { lab=vt}
N 330 -60 330 -40 { lab=vt}
N 330 -40 330 20 { lab=vt}
N 570 190 630 190 { lab=vsquare}
C {lab_wire.sym} 250 -10 2 1 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 540 -10 2 1 {name=l3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 180 60 2 1 {name=l15 sig_type=std_logic lab=vbias1}
C {lab_wire.sym} 470 60 2 1 {name=l16 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} 180 20 0 0 {name=l17 sig_type=std_logic lab=vref}
C {lab_wire.sym} 470 40 0 0 {name=l18 sig_type=std_logic lab=vref}
C {lab_wire.sym} 330 80 2 1 {name=l19 sig_type=std_logic lab=vt}
C {lab_wire.sym} 540 190 2 1 {name=l20 sig_type=std_logic lab=vsquare}
C {lab_wire.sym} 510 -60 2 1 {name=l21 sig_type=std_logic lab=vcmp}
C {lab_wire.sym} 160 130 2 1 {name=l1 sig_type=std_logic lab=vi}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 80 40 1 1 {name=R3
W=0.35
L=32
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 420 -60 1 1 {name=R1
W=0.35
L=4
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 550 -60 1 1 {name=R2
W=0.35
L=9
model=res_xhigh_po
spiceprefix=X
mult=1}
C {iopin.sym} -80 0 0 1 {name=p1 lab=vdd}
C {ipin.sym} -80 40 0 0 {name=p2 lab=vbias1}
C {opin.sym} 260 -60 2 0 {name=p3 lab=vt}
C {lab_wire.sym} -70 0 0 1 {name=l4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -40 40 0 0 {name=l5 sig_type=std_logic lab=vbias1}
C {ipin.sym} -80 70 0 0 {name=p4 lab=vref}
C {lab_wire.sym} -40 70 0 0 {name=l6 sig_type=std_logic lab=vref}
C {opin.sym} 650 0 2 1 {name=p5 lab=vsquare}
C {iopin.sym} -80 130 0 1 {name=p6 lab=vss}
C {lab_wire.sym} -70 130 0 1 {name=l7 sig_type=std_logic lab=vss}
C {lab_wire.sym} 60 60 0 0 {name=l8 sig_type=std_logic lab=vss}
C {lab_wire.sym} 280 80 0 0 {name=l9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 570 80 0 0 {name=l10 sig_type=std_logic lab=vss}
C {lab_wire.sym} 580 -40 0 1 {name=l11 sig_type=std_logic lab=vss}
C {lab_wire.sym} 430 -40 0 1 {name=l12 sig_type=std_logic lab=vss}
C {ipin.sym} -80 100 0 0 {name=p7 lab=vbias2}
C {lab_wire.sym} -70 100 0 1 {name=l13 sig_type=std_logic lab=vbias2}
C {src/OTA_tri/OTA_tri.sym} 270 70 0 0 {name=x1}
C {src/OTA/OTA.sym} 570 -60 0 0 {name=x2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 230 130 3 0 {name=C1 model=cap_mim_m3_1 W=15 L=15 MF=8 spiceprefix=X}
