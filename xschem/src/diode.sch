v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -130 140 -130 170 { lab=vdd}
N -20 220 0 220 { lab=vin}
N -0 220 50 220 { lab=vin}
N -130 230 -130 400 { lab=GND}
N -130 400 -130 460 { lab=GND}
N 50 220 130 220 { lab=vin}
N 230 80 300 80 { lab=vdd}
N 300 80 300 120 { lab=vdd}
N -240 210 -240 240 { lab=#net1}
N -240 390 -240 400 { lab=#net2}
N -240 300 -240 330 { lab=#net3}
N -240 150 -130 150 { lab=vdd}
N -240 460 -130 460 { lab=GND}
C {code_shown.sym} -620 0 0 0 {name=s2 only_toplevel=false value="

*.nodeset all=0.9
*.option VNTOL=1e-6 ABSTOL=50e-9
*.option savecurrents
*set the absolute voltage error tolerance and absolute current error tolerance
.control
save all
*dc v8 0 5 0.01
tran 1n 10u
.endc


"}
C {netlist_not_shown.sym} -230 -200 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/diode_pd2nw_05v5/sky130_fd_pr__diode_pd2nw_05v5.model.spice
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/diode_pw2nd_05v5/sky130_fd_pr__diode_pw2nd_05v5.model.spice
*.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice


* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {vsource.sym} -130 200 0 0 {name=V3 value=1.8}
C {lab_wire.sym} -130 150 0 0 {name=l5 sig_type=std_logic lab=vdd}
C {gnd.sym} -20 280 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 0 220 0 1 {name=l6 sig_type=std_logic lab=vin}
C {gnd.sym} 130 320 0 0 {name=l2 lab=GND}
C {gnd.sym} -130 460 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 300 110 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {isource.sym} -20 250 2 0 {name=I0 value=10}
C {sky130_fd_pr/diode.sym} -240 360 2 0 {name=D4
model=diode_pd2nw_05v5
area=22500
}
C {sky130_fd_pr/diode.sym} -240 270 2 0 {name=D1
model=diode_pd2nw_05v5
area=22500
}
C {sky130_fd_pr/diode.sym} -240 180 2 0 {name=D2
model=diode_pd2nw_05v5
area=22500
}
C {sky130_fd_pr/diode.sym} -240 430 2 0 {name=D3
model=diode_pd2nw_05v5
area=22500
}
