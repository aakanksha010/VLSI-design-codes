* SPICE export by:  S-Edit 16.30
* Export time:      Wed Mar 13 22:12:07 2024
* Design:           Akanksha_project
* Cell:             fa_d2
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
MPMOS_1 N_2 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
MPMOS_2 N_2 B Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
MPMOS_3 Y N_2 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
.ends

.subckt or_d2 A B Out Gnd Vdd 
MNMOS_1 N_2 A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_2 N_2 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_3 Out N_2 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_1 N_1 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
MPMOS_2 N_2 B N_1 N_1 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
MPMOS_3 Out N_2 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
.ends

.subckt xor_d2 A B Out Gnd Vdd 
MNMOS_1 Out N_4 N_1 Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_2 N_1 N_5 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_3 Out A N_2 Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_4 N_2 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_5 N_5 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_6 N_4 A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_1 N_3 N_4 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
MPMOS_2 Out A N_3 N_3 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
MPMOS_3 N_3 N_5 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
MPMOS_4 Out B N_3 N_3 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
MPMOS_5 N_4 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
MPMOS_6 N_5 B Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-100 $y=1000 $w=400 $h=600
.ends

.subckt ha_d2 A B Carry Sum Gnd Vdd 
Xand_d2_1 A B Carry Gnd Vdd and_d2 $ $x=-600 $y=100 $w=1800 $h=1400
Xxor_d2_1 A B Sum Gnd Vdd xor_d2 $ $x=-600 $y=2100 $w=1800 $h=1400
.ends


***** Top Level *****
Xha_d2_1 A B N_1 N_2 Gnd Vdd ha_d2 $ $x=700 $y=400 $w=1800 $h=1400
Xha_d2_2 N_2 C N_3 Sum Gnd Vdd ha_d2 $ $x=2700 $y=-1100 $w=1800 $h=1400
Xor_d2_1 N_1 N_3 Carry Gnd Vdd or_d2 $ $x=4900 $y=500 $w=1800 $h=1400

********* Simulation Settings - Analysis Section *********
V1 C 0 PULSE (0 1 0 1n 1n 10n 20n)
V2 B 0 PULSE (0 1 0 1n 1n 20n 40n)
V3 A 0 PULSE (0 1 0 1n 1n 40n 80n)
Vdd Vdd 0 1
.tran 1n 200n start=0
.print tran v(A,0) v(B,0) v(C,0) v(Sum,0) v(Carry,0)

********* Simulation Settings - Additional SPICE Commands *********

.end

