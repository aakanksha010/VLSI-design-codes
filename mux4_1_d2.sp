* SPICE export by:  S-Edit 16.30
* Export time:      Wed Mar 20 15:31:41 2024
* Design:           Akanksha_project
* Cell:             mux4_1_d2
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

.subckt or_d2 A B Out Gnd Vdd 
MNMOS_1 N_2 A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_2 N_2 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_3 Out N_2 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_1 N_1 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_2 N_2 B N_1 N_1 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_3 Out N_2 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
.ends

.subckt mux2_1_d2 D0 D1 S Y Gnd Vdd 
Xand_d2_1 D0 N_1 N_2 Gnd Vdd and_d2 $ $x=1400 $y=-1600 $w=1800 $h=1400
Xand_d2_2 D1 S N_3 Gnd Vdd and_d2 $ $x=1300 $y=-3900 $w=1800 $h=1400
Xinv_1 S N_1 Gnd Vdd inv $ $x=-800 $y=-2400 $w=1800 $h=1400
Xor_d2_1 N_2 N_3 Y Gnd Vdd or_d2 $ $x=4200 $y=-2000 $w=1800 $h=1400
.ends


***** Top Level *****
Xmux2_1_d2_1 i0 i1 N_1 N_2 Gnd Vdd mux2_1_d2 $ $x=2600 $y=1100 $w=1800 $h=1600
Xmux2_1_d2_2 i2 i3 N_1 N_3 Gnd Vdd mux2_1_d2 $ $x=2600 $y=-1700 $w=1800 $h=1600
Xmux2_1_d2_3 N_2 N_3 S0 Out Gnd Vdd mux2_1_d2 $ $x=5900 $y=-200 $w=1800 $h=1600

********* Simulation Settings - Analysis Section *********
V1 i0 0 PULSE (0 1 0 1n 1n 10n 20n)
V2 i1 0 PULSE (0 1 0 1n 1n 20n 40n)
V3 i2 0 PULSE (0 1 0 1n 1n 40n 80n)
V4 i3 0 PULSE (0 1 0 1n 1n 80n 160n)
V5 S1 0 PULSE (0 1 0 1n 1n 20n 40n)
V6 S0 0 PULSE (0 1 0 1n 1n 40n 80n)
Vdd Vdd 0 1
.tran 1n 200n start=0
.print tran v(i0,0) v(i1,0) v(i2,0) v(i3,0) v(S0,0) v(S1,0) v(Out,0)

********* Simulation Settings - Additional SPICE Commands *********

.end

