v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 190 -70 190 -50 { lab=vdd}
N 560 30 560 180 { lab=stimuli}
N 120 180 560 180 { lab=stimuli}
N 120 10 120 180 { lab=stimuli}
N 120 10 150 10 { lab=stimuli}
N 190 -90 190 -70 { lab=vdd}
N 560 30 580 30 { lab=stimuli}
N 290 130 290 150 { lab=gnd}
N 230 10 270 10 { lab=out1}
N 350 10 380 10 { lab=out2}
N 460 10 560 10 { lab=stimuli}
N 560 10 560 30 { lab=stimuli}
N 290 70 290 130 { lab=gnd}
N 180 30 180 70 { lab=gnd}
N 410 30 410 70 { lab=gnd}
N 300 30 300 70 { lab=gnd}
N 180 70 410 70 { lab=gnd}
N 180 -50 180 -10 { lab=vdd}
N 300 -50 300 -10 { lab=vdd}
N 410 -50 410 -10 { lab=vdd}
N 350 -50 410 -50 { lab=vdd}
N 180 -50 350 -50 { lab=vdd}
C {iopin.sym} 190 -90 0 0 {name=p1 lab=vdd}
C {iopin.sym} 580 30 0 0 {name=p2 lab=stimuli}
C {iopin.sym} 290 150 0 0 {name=p3 lab=gnd}
C {src/inverter/inverter.sym} 200 10 0 0 {name=x1}
C {src/inverter/inverter.sym} 320 10 0 0 {name=x2}
C {src/inverter/inverter.sym} 430 10 0 0 {name=x3}
C {lab_wire.sym} 250 10 0 0 {name=l1 sig_type=std_logic lab=out1}
C {lab_wire.sym} 370 10 0 0 {name=l2 sig_type=std_logic lab=out2}
