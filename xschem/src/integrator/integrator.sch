v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 -140 30 -140 { lab=vout}
N -40 -50 30 -50 { lab=vout}
N 30 -140 30 -50 { lab=vout}
N -160 -50 -100 -50 { lab=vi}
N -50 -190 -50 -160 { lab=vdd}
N -50 -120 -50 -100 { lab=vss}
N -130 -160 -110 -160 { lab=vref}
N -140 -160 -130 -160 { lab=vref}
N -180 -120 -110 -120 { lab=vbias}
N 30 -140 70 -140 { lab=vout}
N -300 -50 -160 -50 { lab=vi}
N -300 -140 -300 -50 { lab=vi}
N -170 -140 -110 -140 { lab=vi}
N -300 -140 -170 -140 { lab=vi}
N -450 -140 -380 -140 { lab=vi}
N -460 -110 -380 -110 { lab=vbias}
N -460 -140 -450 -140 { lab=vi}
N -450 -180 -380 -180 { lab=vdd}
N -440 -80 -380 -80 { lab=vss}
N -450 -80 -440 -80 { lab=vss}
N 70 -140 90 -140 { lab=vout}
N -380 -140 -300 -140 { lab=vi}
N -450 -50 -380 -50 { lab=vref}
C {lab_wire.sym} -50 -190 2 1 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -120 -120 2 1 {name=l15 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -130 -160 0 0 {name=l17 sig_type=std_logic lab=vref}
C {lab_wire.sym} 70 -140 2 0 {name=l10 sig_type=std_logic lab=vout}
C {src/OTA_int/OTA_int.sym} -50 -120 0 0 {name=x1}
C {lab_wire.sym} -300 -80 2 0 {name=l1 sig_type=std_logic lab=vi}
C {sky130_fd_pr/cap_mim_m3_1.sym} -70 -50 3 0 {name=C1 model=cap_mim_m3_1 W=17.5 L=17.5 MF=16 spiceprefix=X}
C {lab_wire.sym} -50 -100 2 1 {name=l3 sig_type=std_logic lab=vss}
C {ipin.sym} -450 -140 0 0 {name=p4 lab=vi}
C {ipin.sym} -450 -110 0 0 {name=p6 lab=vbias}
C {lab_wire.sym} -390 -110 0 0 {name=l5 sig_type=std_logic lab=vbias}
C {iopin.sym} -450 -80 0 1 {name=p2 lab=vss}
C {lab_wire.sym} -410 -140 0 1 {name=l9 sig_type=std_logic lab=vi}
C {lab_wire.sym} -390 -180 0 1 {name=l4 sig_type=std_logic lab=vdd}
C {iopin.sym} -450 -180 0 1 {name=p7 lab=vdd}
C {lab_wire.sym} -400 -80 0 0 {name=l18 sig_type=std_logic lab=vss}
C {opin.sym} 90 -140 0 0 {name=p1 lab=vout}
C {ipin.sym} -450 -50 0 0 {name=p3 lab=vref}
C {lab_wire.sym} -410 -50 0 0 {name=l6 sig_type=std_logic lab=vref}
