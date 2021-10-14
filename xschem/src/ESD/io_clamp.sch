v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -160 -30 -70 -30 { lab=vdd}
N -160 280 -70 280 { lab=vss}
N -160 30 -160 60 { lab=#net1}
N -160 210 -160 220 { lab=#net2}
N -160 120 -160 150 { lab=#net3}
C {iopin.sym} -70 -30 0 0 {name=p1 lab=vdd}
C {iopin.sym} -70 280 0 0 {name=p2 lab=vss}
C {sky130_fd_pr/diode.sym} -160 180 2 0 {name=D4
model=diode_pd2nw_05v5
area=22500
}
C {sky130_fd_pr/diode.sym} -160 90 2 0 {name=D1
model=diode_pd2nw_05v5
area=22500
}
C {sky130_fd_pr/diode.sym} -160 0 2 0 {name=D2
model=diode_pd2nw_05v5
area=22500
}
C {sky130_fd_pr/diode.sym} -160 250 2 0 {name=D3
model=diode_pd2nw_05v5
area=22500
}
