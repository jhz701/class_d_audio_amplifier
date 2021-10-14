v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 290 80 350 80 { lab=error1}
N -150 220 -150 250 { lab=vbias}
N -90 220 -90 250 { lab=vdd}
N 400 40 400 60 { lab=GND}
N 400 160 400 200 { lab=vdd}
N 400 40 420 40 { lab=GND}
N -30 220 -30 250 { lab=vpulse}
N 300 140 350 140 { lab=vtriang}
N -210 220 -210 250 { lab=vin}
N 450 110 470 110 { lab=vcmp}
N 470 110 470 160 { lab=vcmp}
N 470 160 530 160 { lab=vcmp}
N 470 20 470 110 { lab=vcmp}
N 470 20 530 20 { lab=vcmp}
N 540 50 540 130 { lab=out}
N 540 -30 540 -10 { lab=vdd}
N 540 190 540 200 { lab=GND}
N 540 90 580 90 { lab=out}
N 550 20 570 20 { lab=vbias}
N 550 160 570 160 { lab=vbias}
N 580 90 600 90 { lab=out}
N 290 50 290 80 { lab=error1}
N -60 30 -60 50 { lab=input}
N -60 30 -0 30 { lab=input}
N -20 -90 10 -90 { lab=feedback}
N -20 -90 -20 70 { lab=feedback}
N -20 70 0 70 { lab=feedback}
N 150 50 290 50 { lab=error1}
N 230 300 280 300 { lab=vpulse}
N 490 300 550 300 { lab=vtriang}
N 870 90 910 90 { lab=audio}
N 910 90 910 100 { lab=audio}
N 910 90 1000 90 { lab=audio}
N 1000 90 1000 100 { lab=audio}
N 910 160 1000 160 { lab=GND}
N 790 90 810 90 { lab=#net1}
N -370 210 -370 240 { lab=v1}
N -300 210 -300 240 { lab=v2}
N 220 -90 250 -90 { lab=#net2}
N 400 -110 600 -110 { lab=out}
N 330 -30 330 -10 { lab=GND}
N 400 -70 450 -70 { lab=vbias}
N 610 -110 610 90 { lab=out}
N 600 -110 610 -110 { lab=out}
N -510 30 -450 30 { lab=vin}
N -300 50 -270 50 { lab=#net3}
N -490 70 -450 70 { lab=vbias}
N -380 110 -380 130 { lab=GND}
N 610 70 640 70 { lab=out}
N 600 90 610 90 { lab=out}
N 620 110 640 110 { lab=vbias}
N 710 150 710 170 { lab=GND}
C {src/behavior_mdl/comparator.sym} 310 120 2 1 {name=x2}
C {vsource.sym} -150 280 0 0 {name=V2 value=0.9}
C {vsource.sym} -90 280 0 0 {name=V3 value=1.8}
C {vsource.sym} -30 280 0 0 {name=V4 value="pulse(-1.8 1.8 0 0.1n 0.1n 1u 2u 0)"}
C {gnd.sym} -150 310 0 0 {name=l1 lab=GND}
C {gnd.sym} -90 310 0 0 {name=l2 lab=GND}
C {gnd.sym} -30 310 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -150 230 0 0 {name=l4 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -90 230 0 0 {name=l5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 400 200 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {gnd.sym} 420 40 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -30 230 0 0 {name=l9 sig_type=std_logic lab=vpulse}
C {lab_wire.sym} 300 140 0 0 {name=l10 sig_type=std_logic lab=vtriang}
C {vsource.sym} -210 280 0 0 {name=V1 value="sin(0.9 0.1 5k)"}
C {gnd.sym} -210 310 0 0 {name=l13 lab=GND}
C {lab_wire.sym} -210 230 0 0 {name=l14 sig_type=std_logic lab=vin}
C {netlist_not_shown.sym} -470 -220 0 0 {name=s1 only_toplevel=false value="
.include /home/eda/xschem/xschem_library/src/behavior_mdl/OTA.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/comparator.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/switch.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/integrator_feedback.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/integrator_input.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/adder.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/triang.spice
.include /home/eda/xschem/xschem_library/src/behavior_mdl/ideal_amp.spice
"}
C {code_shown.sym} -770 -90 0 0 {name=s2 only_toplevel=false value="
.control
save all
tran 9n 10m
*linearize V(audio)
*linearize V(out)
*fft V(out)
*fft V(audio)
*plot mag(V(audio))
*plot mag(V(out))
fourier 5k V(out)
fourier 5k V(audio)

.endc


"}
C {src/behavior_mdl/switch.sym} 560 190 3 0 {name=x1}
C {src/behavior_mdl/switch.sym} 520 50 1 1 {name=x3}
C {lab_wire.sym} 570 90 0 1 {name=l15 sig_type=std_logic lab=out}
C {lab_wire.sym} 560 20 0 1 {name=l16 sig_type=std_logic lab=vbias}
C {lab_wire.sym} 560 160 0 1 {name=l17 sig_type=std_logic lab=vbias}
C {lab_wire.sym} 470 70 0 1 {name=l18 sig_type=std_logic lab=vcmp}
C {lab_wire.sym} -500 30 0 1 {name=l6 sig_type=std_logic lab=vin}
C {lab_wire.sym} 220 50 0 0 {name=l21 sig_type=std_logic lab=error1}
C {src/behavior_mdl/integrator_feedback.sym} 340 -70 0 1 {name=x4}
C {src/behavior_mdl/integrator_input.sym} -220 50 0 0 {name=x5}
C {src/behavior_mdl/adder.sym} -60 40 0 0 {name=x6}
C {gnd.sym} 70 110 0 0 {name=l19 lab=GND}
C {src/behavior_mdl/triang.sym} 350 280 0 0 {name=x7}
C {lab_wire.sym} 230 300 0 0 {name=l20 sig_type=std_logic lab=vpulse}
C {lab_wire.sym} 540 300 0 0 {name=l22 sig_type=std_logic lab=vtriang}
C {lab_wire.sym} -20 -70 0 0 {name=l23 sig_type=std_logic lab=feedback}
C {lab_wire.sym} -30 30 0 0 {name=l24 sig_type=std_logic lab=input}
C {ind.sym} 840 90 1 0 {name=L1
m=1
value=10u
footprint=1206
device=inductor}
C {capa.sym} 910 130 0 0 {name=C1
m=1
value=1.2u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1000 130 0 0 {name=R2
value=4
footprint=1206
device=resistor
m=1}
C {gnd.sym} 960 160 0 0 {name=l29 lab=GND}
C {lab_wire.sym} 960 90 0 1 {name=l30 sig_type=std_logic lab=audio}
C {vsource.sym} -370 270 0 0 {name=V5 value=0.9}
C {vsource.sym} -300 270 0 0 {name=V6 value=-0.9}
C {gnd.sym} -370 300 0 0 {name=l25 lab=GND}
C {gnd.sym} -300 300 0 0 {name=l26 lab=GND}
C {lab_wire.sym} -370 220 0 0 {name=l27 sig_type=std_logic lab=v1}
C {lab_wire.sym} -300 220 0 0 {name=l28 sig_type=std_logic lab=v2}
C {src/behavior_mdl/adder.sym} 460 -100 0 1 {name=x8}
C {gnd.sym} 330 -10 0 0 {name=l31 lab=GND}
C {lab_wire.sym} 450 -70 0 0 {name=l32 sig_type=std_logic lab=vbias}
C {lab_wire.sym} 540 -30 0 0 {name=l11 sig_type=std_logic lab=vdd}
C {gnd.sym} 540 200 0 0 {name=l12 lab=GND}
C {src/behavior_mdl/adder.sym} -510 40 0 0 {name=x9}
C {lab_wire.sym} -460 70 0 0 {name=l33 sig_type=std_logic lab=vbias}
C {gnd.sym} -380 130 0 0 {name=l34 lab=GND}
C {src/behavior_mdl/adder.sym} 580 80 0 0 {name=x10}
C {lab_wire.sym} 620 110 0 0 {name=l35 sig_type=std_logic lab=vbias}
C {gnd.sym} 710 170 0 0 {name=l36 lab=GND}
