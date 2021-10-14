v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -170 150 -170 180 { lab=vin}
N 120 -150 120 -120 { lab=vdd}
N 280 30 280 80 { lab=vdd}
N 10 120 150 120 { lab=vin}
N 280 160 280 210 { lab=GND}
N 400 110 460 110 { lab=vp}
N 400 130 460 130 { lab=vn}
N 530 110 550 110 { lab=#net1}
N 550 100 550 110 { lab=#net1}
N 530 130 550 130 { lab=#net2}
N 550 130 550 140 { lab=#net2}
N 700 60 700 90 { lab=vdd}
N 700 150 700 180 { lab=GND}
N 850 120 890 120 { lab=#net3}
N 520 110 530 110 { lab=#net1}
N 520 130 530 130 { lab=#net2}
C {vsource.sym} -170 210 0 0 {name=V1 value="pulse(0 1.8 0 1n 1n 1u 2u)"}
C {gnd.sym} -170 240 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -170 150 0 0 {name=l6 sig_type=std_logic lab=vin}
C {lab_wire.sym} 70 120 0 0 {name=l7 sig_type=std_logic lab=vin}
C {netlist_not_shown.sym} -160 -30 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/class_d_audio_amplifier/dead_time/dead_time_post.spice

* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {code_shown.sym} 1110 -200 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1n 50u
plot vp vn
.endc

"}
C {vsource.sym} 120 -90 0 0 {name=V3 value=1.8}
C {gnd.sym} 120 -60 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 120 -140 0 0 {name=l23 sig_type=std_logic lab=vdd}
C {src/dead_time/dead_time_post.sym} 210 100 0 0 {name=x4}
C {lab_wire.sym} 280 50 0 0 {name=l29 sig_type=std_logic lab=vdd}
C {gnd.sym} 280 210 0 0 {name=l31 lab=GND}
C {src/output_driver/half_driver.sym} 700 120 0 0 {name=x5}
C {lab_wire.sym} 700 80 0 0 {name=l33 sig_type=std_logic lab=vdd}
C {gnd.sym} 700 180 0 0 {name=l36 lab=GND}
C {lab_wire.sym} 450 110 0 0 {name=l1 sig_type=std_logic lab=vp}
C {lab_wire.sym} 450 130 0 0 {name=l2 sig_type=std_logic lab=vn}
C {vsource.sym} 490 110 1 0 {name=V2 value=0}
C {vsource.sym} 490 130 1 0 {name=V4 value=0}
