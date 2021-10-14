v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -220 -380 -220 -350 { lab=vdd}
N -220 -290 -220 -260 { lab=GND}
N -0 -270 -0 -230 { lab=#net1}
N 0 -30 -0 0 { lab=GND}
N -0 -360 0 -330 { lab=vdd}
N -50 -360 0 -360 { lab=vdd}
C {netlist_not_shown.sym} -20 -510 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_int_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_post.spice
.include /home/eda/magic/class_d_audio_amplifier/S_to_D/S_to_D_post.spice
.include /home/eda/magic/class_d_audio_amplifier/triang/triangle_post.spice
.include /home/eda/magic/class_d_audio_amplifier/comparator/comparator_post.spice
.include /home/eda/magic/class_d_audio_amplifier/dead_time/dead_time_post.spice
.include /home/eda/magic/class_d_audio_amplifier/output_driver/output_driver_post.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {vsource.sym} -220 -320 0 0 {name=V4 value=1.8}
C {lab_wire.sym} -220 -370 0 0 {name=l16 sig_type=std_logic lab=vdd}
C {gnd.sym} -220 -260 0 0 {name=l63 lab=GND}
C {src/biasing_network/biasing_network.sym} -50 -130 0 0 {name=x1}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {res.sym} 0 -300 0 0 {name=R1
value=83k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -30 -360 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {code_shown.sym} 170 -520 0 0 {name=s2 only_toplevel=false value="
.control
save all
op
tran 10n 1u
.endc


"}
