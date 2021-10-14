v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1150 -300 -1150 -270 { lab=vref}
N -1150 -210 -1150 -170 { lab=GND}
N -1030 -210 -1030 -190 { lab=GND}
N -1090 -210 -1090 -180 { lab=GND}
N -710 -300 -710 -270 { lab=GND}
N 1130 -40 1210 -40 { lab=audio_p}
N 1150 -40 1150 -30 { lab=audio_p}
N 1150 30 1150 50 { lab=GND}
N 1150 200 1150 220 { lab=GND}
N 1120 140 1150 140 { lab=audio_n}
N 1210 10 1210 20 { lab=audio_p}
N 1150 140 1210 140 { lab=audio_n}
N 1210 80 1210 140 { lab=audio_n}
N 1210 -40 1210 10 { lab=audio_p}
N -1090 -300 -1090 -270 { lab=avdd}
N -1030 -300 -1030 -270 { lab=dvdd}
N -110 -360 -60 -360 { lab=io_analog[1]}
N -540 -360 -510 -360 { lab=#net1}
N -710 -360 -600 -360 { lab=vin}
N -400 -300 -400 -270 { lab=GND}
N -450 -360 -230 -360 { lab=io_analog[10]}
N -540 -200 -510 -200 { lab=#net2}
N -400 -140 -400 -110 { lab=GND}
N -450 -200 -400 -200 { lab=io_analog[1]}
N -640 -200 -600 -200 { lab=vref}
N -400 -200 -170 -200 { lab=io_analog[1]}
N -170 -320 -170 -200 { lab=io_analog[1]}
N -170 -340 -170 -320 { lab=io_analog[1]}
N 700 -40 730 -40 { lab=#net3}
N 590 -40 640 -40 { lab=io_analog[6:8]}
N 790 -40 830 -40 { lab=out_p}
N 880 -400 910 -400 { lab=#net4}
N 770 -400 820 -400 { lab=#net5}
N 970 -400 1010 -400 { lab=avdd}
N 880 -300 910 -300 { lab=#net6}
N 770 -300 820 -300 { lab=#net7}
N 970 -300 1010 -300 { lab=GND}
N 700 -400 770 -400 { lab=#net5}
N 710 -300 770 -300 { lab=#net7}
N 700 -300 710 -300 { lab=#net7}
N 700 140 730 140 { lab=#net8}
N 590 140 640 140 { lab=io_analog[2:4]}
N 790 140 830 140 { lab=out_n}
N 890 -200 920 -200 { lab=#net9}
N 780 -200 830 -200 { lab=#net10}
N 980 -200 1020 -200 { lab=dvdd}
N 710 -200 780 -200 { lab=#net10}
N 530 140 590 140 { lab=io_analog[2:4]}
N 520 140 530 140 { lab=io_analog[2:4]}
N 700 -200 710 -200 { lab=#net10}
N 830 -40 1070 -40 { lab=out_p}
N 830 140 970 140 { lab=out_n}
N 970 140 1060 140 { lab=out_n}
N -170 -360 -170 -340 { lab=io_analog[1]}
N -170 -360 -110 -360 { lab=io_analog[1]}
N -230 -380 -230 -360 { lab=io_analog[10]}
N -230 -380 -60 -380 { lab=io_analog[10]}
N 270 -390 700 -390 { lab=#net5}
N 700 -400 700 -390 { lab=#net5}
N 270 -370 700 -370 { lab=#net5}
N 700 -390 700 -370 { lab=#net5}
N 270 -350 270 -330 { lab=#net7}
N 270 -330 700 -330 { lab=#net7}
N 700 -330 700 -300 { lab=#net7}
N 270 -270 700 -270 { lab=#net7}
N 700 -300 700 -270 { lab=#net7}
N 270 -250 700 -250 { lab=#net7}
N 700 -270 700 -250 { lab=#net7}
N 270 -310 270 -290 { lab=#net10}
N 270 -290 650 -290 { lab=#net10}
N 650 -290 650 -200 { lab=#net10}
N 650 -200 700 -200 { lab=#net10}
N 270 -90 360 -90 { lab=io_analog[10:0]}
N 520 -40 590 -40 { lab=io_analog[6:8]}
N 870 290 900 290 { lab=#net11}
N 760 290 810 290 { lab=io_analog[5]}
N 960 290 1000 290 { lab=dvdd}
N 710 290 760 290 { lab=io_analog[5]}
N 860 450 890 450 { lab=#net12}
N 750 450 800 450 { lab=io_analog[0]}
N 950 450 990 450 { lab=#net13}
N 700 450 750 450 { lab=io_analog[0]}
N 1050 450 1230 450 { lab=avdd}
C {gnd.sym} -1150 -170 0 0 {name=l2 lab=GND}
C {netlist_not_shown.sym} 1450 -770 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/class_d_audio_amplifier/Class_D/Class_D_post.spice

* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {vsource.sym} -1150 -240 0 0 {name=V5 value=0.9}
C {vsource.sym} -1030 -240 0 0 {name=V1 value=1.8}
C {gnd.sym} -1030 -190 0 0 {name=l4 lab=GND}
C {vsource.sym} -1090 -240 0 0 {name=V2 value="pulse(0 1.8 0 1u 1u 1 2)"}
C {gnd.sym} -1090 -180 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -1150 -280 0 0 {name=l5 sig_type=std_logic lab=vref}
C {lab_wire.sym} -1030 -280 0 0 {name=l7 sig_type=std_logic lab=dvdd}
C {lab_wire.sym} -1090 -280 0 0 {name=l8 sig_type=std_logic lab=avdd}
C {vsource.sym} -710 -330 0 0 {name=V3 value="sin(0.9 0.4 5k)"}
C {gnd.sym} -710 -270 0 0 {name=l10 lab=GND}
C {ind.sym} 1100 -40 1 0 {name=L1
m=1
value=28u
footprint=1206
device=inductor}
C {capa.sym} 1150 0 0 0 {name=C1
m=1
value=1.3u
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 1090 140 3 1 {name=L2
m=1
value=28u
footprint=1206
device=inductor}
C {capa.sym} 1150 170 0 1 {name=C4
m=1
value=1.3u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1210 50 2 0 {name=R6
value=8
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1160 -40 0 1 {name=l43 sig_type=std_logic lab=audio_p}
C {lab_wire.sym} 1160 140 0 1 {name=l44 sig_type=std_logic lab=audio_n}
C {gnd.sym} 1150 220 0 0 {name=l55 lab=GND}
C {gnd.sym} 1150 50 0 0 {name=l58 lab=GND}
C {code_shown.sym} -1080 -980 0 0 {name=s2 only_toplevel=false value="
.option rshunt=1e20
.nodeset all=0.7
*.option VNTOL=1e-6 ABSTOL=1e-9
*.option savecurrents
*set the absolute voltage error tolerance and absolute current error tolerance
.control
save out_p out_n audio_p audio_n I(V1) I(V2) @r6[i] x1.x1.vtriang x1.x1.vin_n x1.x1.vin_n
*save all
*save vtriang audio_p audio_n I(V2) @r6[i] out_p out_n
*op
tran 1n 5m 0.5m
*linearize V(audio)
*linearize V(out)
*fft V(out)
*fft V(audio)
*plot mag(V(audio))
*plot mag(V(out))
let pout=(V(audio_p)-V(audio_n))*(V(audio_p)-V(audio_n))/@r6[i]
let pin=1.8*(I(V2)+I(V1))
meas tran pload avg pout from=1m to=5m
meas tran p_supply avg pin from=1m to=5m
*print pload/p_supply
set nfreqs=5
*fourier 10k V(out_p)-V(out_n)

fourier 5k V(audio_p)-V(audio_n)
write class_d_5k_04_presim_with_wrapper.raw

.endc


"}
C {lab_wire.sym} -640 -360 0 0 {name=l22 sig_type=std_logic lab=vin}
C {ind.sym} -570 -360 1 0 {name=L3
m=1
value=1n
footprint=1206
device=inductor}
C {res.sym} -480 -360 1 0 {name=R4
value=0.05
footprint=1206
device=resistor
m=1}
C {capa.sym} -400 -330 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -400 -270 0 0 {name=l11 lab=GND}
C {ind.sym} -570 -200 1 0 {name=L4
m=1
value=1n
footprint=1206
device=inductor}
C {res.sym} -480 -200 1 0 {name=R5
value=0.05
footprint=1206
device=resistor
m=1}
C {capa.sym} -400 -170 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -400 -110 0 0 {name=l13 lab=GND}
C {ind.sym} 760 -40 3 1 {name=L7
m=1
value=0.3n
footprint=1206
device=inductor}
C {res.sym} 670 -40 3 1 {name=R9
value=0.02
footprint=1206
device=resistor
m=1}
C {capa.sym} 590 -10 0 1 {name=C7
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 590 20 0 1 {name=l18 lab=GND}
C {ind.sym} 940 -400 3 1 {name=L11
m=1
value=0.3n
footprint=1206
device=inductor}
C {res.sym} 850 -400 3 1 {name=R13
value=0.02
footprint=1206
device=resistor
m=1}
C {capa.sym} 770 -370 0 1 {name=C11
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 770 -340 0 1 {name=l24 lab=GND}
C {ind.sym} 940 -300 3 1 {name=L12
m=1
value=0.3n
footprint=1206
device=inductor}
C {res.sym} 850 -300 3 1 {name=R14
value=0.02
footprint=1206
device=resistor
m=1}
C {capa.sym} 770 -270 0 1 {name=C12
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 770 -240 0 1 {name=l25 lab=GND}
C {ind.sym} 760 140 3 1 {name=L16
m=1
value=0.3n
footprint=1206
device=inductor}
C {res.sym} 670 140 3 1 {name=R18
value=0.02
footprint=1206
device=resistor
m=1}
C {capa.sym} 590 170 0 1 {name=C16
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 590 200 0 1 {name=l23 lab=GND}
C {ind.sym} 950 -200 3 1 {name=L18
m=1
value=0.3n
footprint=1206
device=inductor}
C {res.sym} 860 -200 3 1 {name=R20
value=0.02
footprint=1206
device=resistor
m=1}
C {capa.sym} 780 -170 0 1 {name=C18
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 780 -140 0 1 {name=l29 lab=GND}
C {lab_wire.sym} 1000 -400 0 1 {name=l30 sig_type=std_logic lab=avdd}
C {gnd.sym} 1010 -300 0 1 {name=l1 lab=GND}
C {lab_wire.sym} 1010 -200 0 1 {name=l31 sig_type=std_logic lab=dvdd}
C {lab_wire.sym} -620 -200 0 0 {name=l33 sig_type=std_logic lab=vref}
C {lab_wire.sym} 910 140 0 1 {name=l45 sig_type=std_logic lab=out_n}
C {capa.sym} -640 -170 0 0 {name=C20
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -630 -330 0 0 {name=C21
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -640 -140 0 0 {name=l49 lab=GND}
C {gnd.sym} -630 -300 0 0 {name=l50 lab=GND}
C {capa.sym} 890 -10 0 0 {name=C23
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 890 20 0 1 {name=l52 lab=GND}
C {capa.sym} 1000 -370 0 0 {name=C27
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1000 -340 0 1 {name=l57 lab=GND}
C {capa.sym} 1010 -170 0 0 {name=C31
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1010 -140 0 1 {name=l62 lab=GND}
C {src/user_analog_project_wrapper/user_analog_project_wrapper.sym} 120 -210 0 0 {name=x1}
C {lab_wire.sym} 330 -90 0 1 {name=l3 sig_type=std_logic lab=io_analog[10:0]}
C {lab_wire.sym} 970 -40 0 1 {name=l9 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 540 -40 0 1 {name=l12 sig_type=std_logic lab=io_analog[6:8]}
C {lab_wire.sym} 530 140 0 1 {name=l14 sig_type=std_logic lab=io_analog[2:4]}
C {ind.sym} 930 290 3 1 {name=L5
m=1
value=0.3n
footprint=1206
device=inductor}
C {res.sym} 840 290 3 1 {name=R1
value=0.02
footprint=1206
device=resistor
m=1}
C {capa.sym} 760 320 0 1 {name=C5
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 760 350 0 1 {name=l15 lab=GND}
C {lab_wire.sym} 990 290 0 1 {name=l16 sig_type=std_logic lab=dvdd}
C {capa.sym} 990 320 0 0 {name=C6
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 990 350 0 1 {name=l17 lab=GND}
C {lab_wire.sym} 720 290 0 1 {name=l19 sig_type=std_logic lab=io_analog[5]}
C {ind.sym} 920 450 3 1 {name=L6
m=1
value=0.3n
footprint=1206
device=inductor}
C {res.sym} 830 450 3 1 {name=R2
value=0.02
footprint=1206
device=resistor
m=1}
C {capa.sym} 750 480 0 1 {name=C8
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 750 510 0 1 {name=l20 lab=GND}
C {lab_wire.sym} 1210 450 0 1 {name=l21 sig_type=std_logic lab=avdd}
C {capa.sym} 1210 480 0 0 {name=C9
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1210 510 0 1 {name=l26 lab=GND}
C {lab_wire.sym} 710 450 0 1 {name=l27 sig_type=std_logic lab=io_analog[0]}
C {res.sym} 1020 450 3 1 {name=R3
value=83k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -210 -380 0 1 {name=l28 sig_type=std_logic lab=io_analog[10]}
C {lab_wire.sym} -250 -200 0 1 {name=l32 sig_type=std_logic lab=io_analog[1]}
