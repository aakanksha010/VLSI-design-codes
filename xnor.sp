* SPICE export by:  S-Edit 16.30
* Export time:      Thu Mar 14 22:45:59 2024
* Design:           Akanksha_project
* Cell:             xnor
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

***** Top Level *****
MNMOS_1 Out N_5 N_1 N_1 NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MNMOS_2 Out A N_2 N_2 NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MNMOS_3 N_1 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MNMOS_4 N_2 N_6 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MNMOS_5 N_6 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MNMOS_6 N_5 A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MPMOS_1 N_3 N_5 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MPMOS_2 N_4 B Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MPMOS_3 Out A N_3 N_3 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MPMOS_4 Out N_6 N_4 N_4 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MPMOS_5 N_5 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600
MPMOS_6 N_6 B Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1500 $y=-900 $w=400 $h=600

********* Simulation Settings - Analysis Section *********

V1 A 0 PULSE (0 1 0 1n 1n 20n 40n)
V2 B 0 PULSE (0 1 0 1n 1n 40n 80n)
Vdd Vdd 0 1
.tran 1n 200n start=0
.print tran v(A,0) v(B,0) v(Out,0)

********* Simulation Settings - Additional SPICE Commands *********

.end

