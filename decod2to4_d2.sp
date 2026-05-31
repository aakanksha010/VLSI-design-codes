* SPICE export by:  S-Edit 16.30
* Export time:      Wed Mar 20 22:23:21 2024
* Design:           Akanksha_project
* Cell:             encod4_2_d2
* Interface:        view0
* View:             view0
* View type:        connectivity
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude empty cells: yes
* Exclude .model:   no
* Exclude .end:     no
* Exclude simulator commands:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Akanksha\Akanksha_project
* Exclude global pins:   no
* Exclude instance locations: no
* Control property name(s): SPICE

********* Simulation Settings - General Section *********
.include "H:\p045\p045_cmos_models_ff.inc"

*************** Subcircuits *****************
.subckt and_d2 A B Y Gnd Vdd 
MNMOS_1 N_2 A N_1 N_1 NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_2 N_1 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_3 Y N_2 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_1 N_2 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_2 N_2 B Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_3 Y N_2 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
.ends

.subckt inv In Out Gnd Vdd 
MNMOS_1 Out In Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_1 Out In Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
.ends

***** Top Level *****
Xand_d2_1 N_2 N_1 d0 Gnd Vdd and_d2 $ $x=700 $y=-100 $w=1800 $h=1400
Xand_d2_2 a0 N_1 d1 Gnd Vdd and_d2 $ $x=700 $y=-1900 $w=1800 $h=1400
Xand_d2_3 a1 N_2 d2 Gnd Vdd and_d2 $ $x=700 $y=-3700 $w=1800 $h=1400
Xand_d2_4 a1 a0 d3 Gnd Vdd and_d2 $ $x=700 $y=-5600 $w=1800 $h=1400
Xinv_1 a0 N_2 Gnd Vdd inv $ $x=-3600 $y=-100 $w=1800 $h=1400
Xinv_2 a1 N_1 Gnd Vdd inv $ $x=-3600 $y=-2200 $w=1800 $h=1400

********* Simulation Settings - Analysis Section *********

V1 a0 0 PULSE (0 1 0 1n 1n 10n 20n)
V2 a1 0 PULSE (0 1 0 1n 1n 20n 40n)
Vdd Vdd 0 1
.tran 1n 100n start=0
.print tran v(a0,0) v(a1,0) v(d0,0) v(d1,0) v(d2,0) v(d3,0)

********* Simulation Settings - Additional SPICE Commands *********

.end

