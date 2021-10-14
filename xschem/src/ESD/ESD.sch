v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 150 -30 150 0 { lab=vin}
N 150 -90 300 -90 { lab=vdd}
N 150 0 150 20 { lab=vin}
N 150 80 150 100 { lab=vss}
N 150 -0 190 -0 { lab=vin}
C {sky130_fd_pr/diode.sym} 150 -60 0 0 {name=D17
model=diode_pd2nw_05v5
area=22500
}
C {sky130_fd_pr/diode.sym} 150 50 0 0 {name=D1
model=diode_pw2nd_05v5
area=22500
}
C {lab_wire.sym} 270 -90 0 1 {name=l1 sig_type=std_logic lab=vdd}
C {iopin.sym} 300 -90 0 0 {name=p1 lab=vdd}
C {iopin.sym} 190 0 0 0 {name=p2 lab=vin}
C {iopin.sym} 150 100 0 0 {name=p3 lab=vss}
