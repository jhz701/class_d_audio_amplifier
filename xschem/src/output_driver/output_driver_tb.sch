v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -180 40 -180 80 { lab=vdd1}
N 450 30 450 70 { lab=vdd2}
N 210 210 210 310 { lab=in_n}
N 160 90 160 230 { lab=in_p}
N 160 90 280 90 { lab=in_p}
N 160 110 280 110 { lab=in_p}
N 440 180 440 190 { lab=GND}
N 440 170 440 180 { lab=GND}
N 600 130 600 340 { lab=out_n}
N 590 130 600 130 { lab=out_n}
N 590 -100 590 110 { lab=out_p}
N 280 90 290 90 { lab=in_p}
N 280 110 290 110 { lab=in_p}
N 210 130 210 210 { lab=in_n}
N 210 130 290 130 { lab=in_n}
N 210 150 290 150 { lab=in_n}
N 420 40 420 70 { lab=vdd1}
N 780 -90 860 -90 { lab=audio_p}
N 800 -90 800 -80 { lab=audio_p}
N 800 380 800 400 { lab=GND}
N 770 320 800 320 { lab=audio_n}
N 800 320 860 320 { lab=audio_n}
N 700 320 710 320 { lab=#net1}
N 700 320 700 340 { lab=#net1}
N 700 -90 720 -90 { lab=#net2}
N 700 -100 700 -90 { lab=#net2}
N 860 -30 860 -0 { lab=audio_n}
N 590 -100 630 -100 { lab=out_p}
N 690 -100 700 -100 { lab=#net2}
N 600 340 640 340 { lab=out_n}
N -90 40 -90 80 { lab=vdd2}
N 860 -0 860 10 { lab=audio_n}
N 800 -20 800 10 { lab=GND}
N 860 10 860 320 { lab=audio_n}
C {vsource.sym} -180 110 0 0 {name=V2 value=1.8}
C {gnd.sym} -180 140 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -180 50 0 0 {name=l4 sig_type=std_logic lab=vdd1}
C {code_shown.sym} 1100 -280 0 0 {name=s1 only_toplevel=false value="
.nodeset v(audio_p)=0
.option rshunt=1e20
.control
save in_p in_n out_p out_n audio_p audio_n i(v2) 
*save all
tran 10n 1000u
*ac dec 1000 1 100
*op
*plot (v(vpwm_p)-v(vdd))/@m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
*plot vpwm_p
*plot (v(vpwm_p))/@m.xm2.msky130_fd_pr__nfet_01v8_lvt[id]
*plot (vpwm_p1-v(vdd))/@m.xm6.msky130_fd_pr__pfet_01v8[id]
*plot vpwm_p1/@m.xm5.msky130_fd_pr__nfet_01v8[id]
let pout=2*(audio_p)*(audio_p)/4
plot pout
let pin=1.8*i(v2)
meas tran p avg pin
*plot (V(vout_p)-v(vout_n))/4


.endc



"}
C {vsource.sym} 160 260 0 0 {name=V4 value="pulse(0 1.8 0 10n 10n 1u 2u 0)"}
C {gnd.sym} 160 290 0 0 {name=l17 lab=GND}
C {vsource.sym} 210 340 0 0 {name=V5 value="pulse(0 1.8 0 10n 10n 1u 2u 180)"}
C {gnd.sym} 210 370 0 0 {name=l26 lab=GND}
C {netlist_not_shown.sym} 230 -260 0 0 {name=TT_MODELS2
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_int_post.spice
.include /home/eda/magic/class_d_audio_amplifier/OTA/OTA_post.spice
.include /home/eda/magic/class_d_audio_amplifier/S_to_D/S_to_D_post.spice
.include /home/eda/magic/class_d_audio_amplifier/triang/triangle_post.spice
.include /home/eda/magic/class_d_audio_amplifier/output_driver/output_driver_post.spice
.include /home/eda/magic/class_d_audio_amplifier/output_driver/half_driver_post.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

"
}
C {lab_wire.sym} 450 40 0 0 {name=l2 sig_type=std_logic lab=vdd2}
C {lab_wire.sym} 590 10 0 0 {name=l5 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 600 290 0 0 {name=l6 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 160 160 0 0 {name=l9 sig_type=std_logic lab=in_p}
C {lab_wire.sym} 210 280 0 0 {name=l10 sig_type=std_logic lab=in_n}
C {gnd.sym} 440 190 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 420 50 0 0 {name=l3 sig_type=std_logic lab=vdd1}
C {ind.sym} 740 320 3 1 {name=L2
m=1
value=28u
footprint=1206
device=inductor}
C {capa.sym} 800 350 0 1 {name=C4
m=1
value=1.3u
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 810 320 0 1 {name=l44 sig_type=std_logic lab=audio_n}
C {gnd.sym} 800 400 0 0 {name=l55 lab=GND}
C {res.sym} 860 -60 2 0 {name=R1
value=8
footprint=1206
device=resistor
m=1}
C {vsource.sym} -90 110 0 0 {name=V1 value=1.8}
C {gnd.sym} -90 140 0 0 {name=l11 lab=GND}
C {lab_wire.sym} -90 60 0 0 {name=l13 sig_type=std_logic lab=vdd2}
C {vsource.sym} 670 340 1 0 {name=V3 value=0}
C {ind.sym} 750 -90 3 1 {name=L1
m=1
value=28u
footprint=1206
device=inductor}
C {capa.sym} 800 -50 0 1 {name=C1
m=1
value=1.3u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 800 10 0 0 {name=l14 lab=GND}
C {vsource.sym} 660 -100 1 0 {name=V6 value=0}
C {lab_wire.sym} 830 -90 0 1 {name=l7 sig_type=std_logic lab=audio_p}
C {src/output_driver/output_driver.sym} 440 120 0 0 {name=x1}
