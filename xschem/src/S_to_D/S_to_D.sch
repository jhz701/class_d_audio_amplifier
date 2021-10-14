v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 -100 250 -80 { lab=vdd}
N 250 -40 250 -10 { lab=vss}
N 300 -60 330 -60 { lab=vn}
N 330 -160 330 -60 { lab=vn}
N 280 -160 330 -160 { lab=vn}
N 120 -160 220 -160 { lab=v1}
N 120 -160 120 -60 { lab=v1}
N 110 -60 120 -60 { lab=v1}
N 30 -60 50 -60 { lab=vi}
N 120 -60 190 -60 { lab=v1}
N 150 -40 190 -40 { lab=vbias2}
N 170 -80 190 -80 { lab=vref}
N 330 -60 360 -60 { lab=vn}
N 260 -330 260 -300 { lab=vdd}
N 260 -260 260 -240 { lab=vss}
N 310 -280 340 -280 { lab=vp}
N 170 -260 200 -260 { lab=vbias1}
N 340 -280 380 -280 { lab=vp}
N 80 -40 100 -40 { lab=vss}
N 250 -140 270 -140 { lab=vss}
N 30 -230 30 -60 { lab=vi}
N 120 -230 340 -230 { lab=vp}
N 120 -280 120 -230 { lab=vp}
N 340 -280 340 -230 { lab=vp}
N 30 -280 30 -240 { lab=vi}
N 30 -240 30 -230 { lab=vi}
N -110 -200 30 -200 { lab=vi}
N 360 -60 370 -60 { lab=vn}
N -110 -230 -90 -230 { lab=vdd}
N -110 -90 -100 -90 { lab=vss}
N -100 -90 -90 -90 { lab=vss}
N -110 -160 -70 -160 { lab=vref}
N 170 -300 200 -300 { lab=vi}
N -110 -120 -70 -120 { lab=vbias1}
N 120 -280 200 -280 { lab=vp}
N 30 -300 170 -300 { lab=vi}
N 30 -300 30 -280 { lab=vi}
N -110 -60 -70 -60 { lab=vbias2}
C {src/OTA/OTA.sym} 280 -160 0 0 {name=x1}
C {lab_wire.sym} 250 -100 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 170 -40 0 0 {name=l5 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} 180 -80 0 0 {name=l12 sig_type=std_logic lab=vref}
C {lab_wire.sym} 350 -60 0 1 {name=l15 sig_type=std_logic lab=vn}
C {lab_wire.sym} 160 -60 0 0 {name=l16 sig_type=std_logic lab=v1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 250 -160 3 0 {name=R2
W=0.35
L=10
model=res_xhigh_po
spiceprefix=X
mult=1}
C {src/OTA/OTA.sym} 290 -380 0 0 {name=x2}
C {lab_wire.sym} 260 -320 0 0 {name=l19 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 190 -260 0 0 {name=l21 sig_type=std_logic lab=vbias1}
C {lab_wire.sym} 360 -280 0 1 {name=l22 sig_type=std_logic lab=vp}
C {lab_wire.sym} 250 -20 0 1 {name=l3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 260 -240 0 1 {name=l4 sig_type=std_logic lab=vss}
C {iopin.sym} -110 -230 0 1 {name=p1 lab=vdd}
C {iopin.sym} -110 -90 0 1 {name=p2 lab=vss}
C {ipin.sym} -110 -200 0 0 {name=p3 lab=vi}
C {opin.sym} 380 -280 0 0 {name=p4 lab=vp}
C {opin.sym} 370 -60 0 0 {name=p5 lab=vn}
C {lab_wire.sym} -100 -230 0 1 {name=l7 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -100 -90 0 1 {name=l9 sig_type=std_logic lab=vss}
C {ipin.sym} -110 -160 0 0 {name=p6 lab=vref}
C {lab_wire.sym} -80 -160 0 1 {name=l10 sig_type=std_logic lab=vref}
C {ipin.sym} -110 -120 0 0 {name=p7 lab=vbias1}
C {lab_wire.sym} -80 -120 0 1 {name=l13 sig_type=std_logic lab=vbias1}
C {ipin.sym} -110 -60 0 0 {name=p8 lab=vbias2}
C {lab_wire.sym} -80 -60 0 1 {name=l8 sig_type=std_logic lab=vbias2}
C {lab_wire.sym} 90 -40 0 1 {name=l2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 260 -140 0 1 {name=l6 sig_type=std_logic lab=vss}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 80 -60 3 0 {name=R1
W=0.35
L=10
model=res_xhigh_po
spiceprefix=X
mult=1}
