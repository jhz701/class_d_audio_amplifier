v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -460 -60 -460 -30 { lab=vref}
N -460 30 -460 70 { lab=GND}
N -340 30 -340 50 { lab=GND}
N -400 30 -400 60 { lab=GND}
N -380 -160 -380 -130 { lab=GND}
N 350 -250 430 -250 { lab=audio_p}
N 370 -250 370 -240 { lab=audio_p}
N 370 -180 370 -160 { lab=GND}
N 370 -10 370 10 { lab=GND}
N 340 -70 370 -70 { lab=audio_n}
N 430 -200 430 -190 { lab=audio_p}
N 370 -70 430 -70 { lab=audio_n}
N 430 -130 430 -70 { lab=audio_n}
N 430 -250 430 -200 { lab=audio_p}
N -400 -60 -400 -30 { lab=avdd}
N -340 -60 -340 -30 { lab=dvdd}
N -380 -220 -270 -220 { lab=#net1}
N 30 -220 110 -220 { lab=out_p}
N 110 -250 110 -220 { lab=out_p}
N 110 -250 220 -250 { lab=out_p}
N 30 -120 110 -120 { lab=out_n}
N 110 -120 110 -70 { lab=out_n}
N 110 -70 210 -70 { lab=out_n}
N -320 -200 -270 -200 { lab=vref}
N 30 -140 110 -140 { lab=dvdd}
N 30 -200 110 -200 { lab=avdd}
N 30 -180 110 -180 { lab=GND}
N 30 -160 150 -160 { lab=#net2}
N 280 -160 320 -160 { lab=avdd}
N 220 -250 290 -250 { lab=out_p}
N 150 -160 220 -160 { lab=#net2}
N 210 -70 280 -70 { lab=out_n}
C {gnd.sym} -460 70 0 0 {name=l2 lab=GND}
C {netlist_not_shown.sym} 1240 -610 0 0 {name=TT_MODELS1
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
C {vsource.sym} -460 0 0 0 {name=V5 value=0.9}
C {vsource.sym} -340 0 0 0 {name=V1 value=1.8}
C {gnd.sym} -340 50 0 0 {name=l4 lab=GND}
C {vsource.sym} -400 0 0 0 {name=V2 value="pulse(0 1.8 0 1u 1u 1 2)"}
C {gnd.sym} -400 60 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -460 -40 0 0 {name=l5 sig_type=std_logic lab=vref}
C {lab_wire.sym} -340 -40 0 0 {name=l7 sig_type=std_logic lab=dvdd}
C {lab_wire.sym} -400 -40 0 0 {name=l8 sig_type=std_logic lab=avdd}
C {vsource.sym} -380 -190 0 0 {name=V3 value="sin(0.9 0.4 5k)"}
C {gnd.sym} -380 -130 0 0 {name=l10 lab=GND}
C {ind.sym} 320 -250 1 0 {name=L1
m=1
value=28u
footprint=1206
device=inductor}
C {capa.sym} 370 -210 0 0 {name=C1
m=1
value=1.3u
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 310 -70 3 1 {name=L2
m=1
value=28u
footprint=1206
device=inductor}
C {capa.sym} 370 -40 0 1 {name=C4
m=1
value=1.3u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 430 -160 2 0 {name=R6
value=8
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 380 -250 0 1 {name=l43 sig_type=std_logic lab=audio_p}
C {lab_wire.sym} 380 -70 0 1 {name=l44 sig_type=std_logic lab=audio_n}
C {gnd.sym} 370 10 0 0 {name=l55 lab=GND}
C {gnd.sym} 370 -160 0 0 {name=l58 lab=GND}
C {code_shown.sym} -860 -840 0 0 {name=s2 only_toplevel=false value="
.option rshunt=1e20
.nodeset all=0.7
*.option VNTOL=1e-6 ABSTOL=1e-9
*.option savecurrents
*set the absolute voltage error tolerance and absolute current error tolerance
.control
save out_p out_n audio_p audio_n I(V1) I(V2) @r6[i] x1.vtriang x1.vin_p x1.vin_n x1.vcmp_p x1.vcmp_n x1.vp_p x1.vp_n x1.vn_p x1.vn_n x1.iin_15u_f x1.fgnd
*save all
*save vtriang audio_p audio_n I(V2) @r6[i] out_p out_n
*op
tran 1n 5m
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
write class_d_5k_04_presim_withesd.raw

.endc


"}
C {lab_wire.sym} 190 -70 0 1 {name=l20 sig_type=std_logic lab=out_n}
C {src/Class_D/Class_D_bondwire.sym} -120 -170 0 0 {name=x1}
C {lab_wire.sym} 160 -250 0 1 {name=l1 sig_type=std_logic lab=out_p}
C {lab_wire.sym} -290 -200 0 0 {name=l3 sig_type=std_logic lab=vref}
C {lab_wire.sym} 90 -140 0 0 {name=l9 sig_type=std_logic lab=dvdd}
C {lab_wire.sym} 100 -200 0 0 {name=l11 sig_type=std_logic lab=avdd}
C {gnd.sym} 110 -180 0 0 {name=l12 lab=GND}
C {res.sym} 250 -160 3 0 {name=R1
value=83k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 300 -160 0 1 {name=l13 sig_type=std_logic lab=avdd}
C {capa.sym} 180 -130 0 1 {name=C2
m=1
value=50n
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 -100 0 0 {name=l14 lab=GND}
