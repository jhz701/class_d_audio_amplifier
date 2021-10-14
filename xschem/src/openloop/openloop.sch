v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -190 140 -190 160 { lab=vdd}
N -120 140 -120 160 { lab=vbias}
N 220 60 250 60 { lab=vt}
N 240 -70 290 -70 { lab=vt}
N 50 60 90 60 { lab=vbias}
N 350 -90 350 -70 { lab=vdd}
N 150 -0 150 30 { lab=vdd}
N 150 110 150 130 { lab=GND}
N 350 -30 350 -10 { lab=GND}
N 400 -50 440 -50 { lab=vpwm}
N -130 -100 -130 -20 { lab=vref}
N -130 -70 -60 -70 { lab=vref}
N -130 -160 -130 -130 { lab=vdd}
N -130 -180 -130 -160 { lab=vdd}
N -90 -130 -90 -70 { lab=vref}
N -130 40 -130 50 { lab=GND}
N 40 90 90 90 { lab=vref}
N 240 -30 290 -30 { lab=vref}
N -300 140 -300 160 { lab=vin}
N 240 -50 290 -50 { lab=vin}
N 470 -100 470 -70 { lab=vdd}
N 470 -30 470 -10 { lab=GND}
N 520 -50 550 -50 { lab=vout}
C {src/triangle/triangle.sym} 150 70 0 0 {name=x1}
C {src/OTA/OTA.sym} 380 -150 0 0 {name=x2}
C {vsource.sym} -120 190 0 0 {name=V1 value=0.9}
C {vsource.sym} -190 190 0 0 {name=V2 value=1.8}
C {gnd.sym} -190 220 0 0 {name=l1 lab=GND}
C {gnd.sym} -120 220 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -190 140 0 0 {name=l3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 240 60 0 1 {name=l4 sig_type=std_logic lab=vt}
C {lab_wire.sym} 250 -70 0 1 {name=l5 sig_type=std_logic lab=vt}
C {lab_wire.sym} -120 140 0 0 {name=l6 sig_type=std_logic lab=vbias}
C {lab_wire.sym} 70 60 0 0 {name=l7 sig_type=std_logic lab=vbias}
C {lab_wire.sym} 350 -90 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 150 10 0 0 {name=l9 sig_type=std_logic lab=vdd}
C {gnd.sym} 150 130 0 0 {name=l10 lab=GND}
C {gnd.sym} 350 -10 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -110 -130 0 1 {name=M6
L=1
W=4
nf=2
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -130 10 0 0 {name=I0 value=150u}
C {lab_wire.sym} -130 -180 0 0 {name=l13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -60 -70 0 0 {name=l14 sig_type=std_logic lab=vref}
C {gnd.sym} -130 50 0 0 {name=l15 lab=GND}
C {lab_wire.sym} 50 90 0 0 {name=l16 sig_type=std_logic lab=vref}
C {lab_wire.sym} 270 -30 0 0 {name=l17 sig_type=std_logic lab=vref}
C {netlist_not_shown.sym} 20 -180 0 0 {name=TT_MODELS1
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
C {vsource.sym} -300 190 0 0 {name=V3 value="sin(0.915 0.35 5k)"}
C {gnd.sym} -300 220 0 0 {name=l18 lab=GND}
C {lab_wire.sym} -300 140 0 0 {name=l19 sig_type=std_logic lab=vin}
C {lab_wire.sym} 270 -50 0 0 {name=l20 sig_type=std_logic lab=vin}
C {src/inverter/inverter.sym} 490 -50 0 0 {name=x3}
C {lab_wire.sym} 470 -90 0 0 {name=l21 sig_type=std_logic lab=vdd}
C {gnd.sym} 470 -10 0 0 {name=l22 lab=GND}
C {capa.sym} 550 -20 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 550 10 0 0 {name=l23 lab=GND}
C {code_shown.sym} 490 110 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1n 1m
*fourier 5k V(vpwm)
*fourier 5k V(vout)
*setplot tran1
*linearize V(vout)
*fft V(vout)
*plot mag(V(vout))
*setplot previous
write openloop.raw
.endc
"}
C {lab_wire.sym} 430 -50 0 0 {name=l24 sig_type=std_logic lab=vpwm}
C {lab_wire.sym} 540 -50 0 0 {name=l25 sig_type=std_logic lab=vout}
