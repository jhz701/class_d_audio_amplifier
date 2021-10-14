v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 -90 380 -90 { lab=r}
N 250 -30 380 -30 { lab=GND}
N 360 -60 360 -30 { lab=GND}
C {netlist_not_shown.sym} 0 -90 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include /home/eda/pdk/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/tt.spice
.include /home/eda/magic/test/r_test.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice


"}
C {gnd.sym} 310 -30 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 320 -90 0 0 {name=l2 sig_type=std_logic lab=r}
C {code_shown.sym} 520 -120 0 0 {name=s1 only_toplevel=false value="
* NGSPICE file created from r_test.ext - technology: sky130A


.control
save all
op
print 3/i(v1)
.endc

"}
C {vsource.sym} 250 -60 0 0 {name=V1 value=3}
C {sky130_fd_pr/res_xhigh_po.sym} 380 -60 0 0 {name=R2
W=0.35
L=28
model=res_xhigh_po
spiceprefix=X
mult=1}
