v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -120 410 -120 440 { lab=vdd}
N -350 410 -350 440 { lab=vin}
N 290 270 290 300 { lab=GND}
N 150 270 230 270 { lab=v1}
N -70 270 -40 270 { lab=vin}
N 320 340 380 340 { lab=out}
N -220 270 -180 270 { lab=vin}
N 290 200 290 230 { lab=vdd}
N 220 230 230 230 { lab=vbias}
N 110 190 160 190 { lab=vbias}
N 220 190 220 230 { lab=vbias}
N 40 270 150 270 { lab=v1}
N 20 270 40 270 { lab=v1}
N 110 320 110 340 { lab=v1}
N 110 270 110 320 { lab=v1}
N 380 250 380 260 { lab=out}
N 380 320 380 340 { lab=out}
N 380 260 380 320 { lab=out}
N 210 340 260 340 { lab=v1}
N 150 340 210 340 { lab=v1}
N 110 340 150 340 { lab=v1}
N -120 500 -120 530 { lab=vbias}
N -120 590 -120 630 { lab=GND}
N 340 250 380 250 { lab=out}
N 160 190 220 190 { lab=vbias}
N -120 270 -70 270 { lab=vin}
N -180 270 -120 270 { lab=vin}
C {vsource.sym} -120 470 0 0 {name=V2 value=0.9}
C {gnd.sym} -120 630 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -120 420 0 0 {name=l9 sig_type=std_logic lab=vdd}
C {vsource.sym} -350 470 0 0 {name=V4 value="pulse(0.9 0.95 0 1n 1n 1u 2u 0)"}
C {gnd.sym} -350 500 0 0 {name=l10 lab=GND}
C {lab_wire.sym} -350 420 0 0 {name=l11 sig_type=std_logic lab=vin}
C {netlist_not_shown.sym} -310 -110 0 0 {name=s3 only_toplevel=false value="
.include /home/eda/xschem/xschem_library/src/behavior_mdl/comparator.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/switch.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/integrator_feedback.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/integrator_input.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/adder.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/triang.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/ideal_amp.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/limiter.spice
"}
C {code_shown.sym} -400 20 0 0 {name=s4 only_toplevel=false value="
.control
save all
op
*ac dec 10000 1 100G
tran 10n 10m
*linearize V(audio)
*linearize V(out)
*fft V(out)
*fft V(audio)
*plot mag(V(audio))
*plot mag(V(out))
*fourier 5k V(out)
*fourier 5k V(audio)
write behavior.raw

.endc


"}
C {lab_wire.sym} -210 270 0 1 {name=l12 sig_type=std_logic lab=vin}
C {res.sym} -10 270 1 0 {name=R5
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 290 210 0 0 {name=l19 sig_type=std_logic lab=vdd}
C {gnd.sym} 290 300 0 0 {name=l20 lab=GND}
C {capa.sym} 290 340 1 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {netlist_not_shown.sym} -160 -100 0 0 {name=TT_MODELS2
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice


* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {lab_wire.sym} 120 190 0 0 {name=l33 sig_type=std_logic lab=vbias}
C {src/behavior_mdl/ideal_amp.sym} 370 400 0 0 {name=x4}
C {vsource.sym} -120 560 0 0 {name=V7 value=0.9}
C {lab_wire.sym} -120 520 0 0 {name=l38 sig_type=std_logic lab=vbias}
C {lab_wire.sym} 380 250 0 0 {name=l1 sig_type=std_logic lab=out}
C {lab_wire.sym} 170 270 0 0 {name=l2 sig_type=std_logic lab=v1}
