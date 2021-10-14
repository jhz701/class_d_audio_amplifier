v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 770 -250 770 -230 { lab=dvdd1}
N 770 -110 770 -90 { lab=vss}
N 920 -200 960 -200 { lab=out_p}
N 770 -170 770 -110 { lab=vss}
N 960 -200 980 -200 { lab=out_p}
N 360 -250 420 -250 { lab=dvdd1}
N 360 -190 420 -190 { lab=vss}
N 600 -220 620 -220 { lab=vp_p}
N 600 -180 620 -180 { lab=vp_n}
N 600 -0 620 -0 { lab=vn_p}
N 600 40 620 40 { lab=vn_n}
N 920 20 990 20 { lab=out_n}
N 770 -40 770 -10 { lab=dvdd2}
N 770 50 770 80 { lab=vss}
N 360 -130 420 -130 { lab=dvdd2}
C {lab_wire.sym} 770 -250 0 0 {name=l31 sig_type=std_logic lab=dvdd1}
C {lab_wire.sym} 770 -100 0 0 {name=l1 sig_type=std_logic lab=vss}
C {ipin.sym} 610 -220 0 0 {name=p1 lab=vp_p}
C {ipin.sym} 610 -180 0 0 {name=p2 lab=vp_n
}
C {ipin.sym} 610 0 0 0 {name=p3 lab=vn_p}
C {ipin.sym} 610 40 0 0 {name=p4 lab=vn_n}
C {opin.sym} 980 -200 0 0 {name=p5 lab=out_p}
C {opin.sym} 980 20 0 0 {name=p6 lab=out_n}
C {iopin.sym} 350 -250 0 0 {name=p7 lab=dvdd1}
C {iopin.sym} 350 -190 0 0 {name=p8 lab=vss}
C {lab_wire.sym} 420 -190 0 1 {name=l3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 410 -250 0 1 {name=l4 sig_type=std_logic lab=dvdd1}
C {lab_wire.sym} 770 -30 0 0 {name=l2 sig_type=std_logic lab=dvdd2}
C {lab_wire.sym} 770 80 0 0 {name=l5 sig_type=std_logic lab=vss}
C {iopin.sym} 350 -130 0 0 {name=p9 lab=dvdd2}
C {lab_wire.sym} 410 -130 0 1 {name=l6 sig_type=std_logic lab=dvdd2}
C {src/output_driver/half_driver.sym} 770 -200 0 0 {name=x1}
C {src/output_driver/half_driver.sym} 770 20 0 0 {name=x2}
