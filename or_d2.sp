* SPICE export by:  S-Edit 16.30
* Export time:      Wed Mar 13 21:48:42 2024
* Design:           Akanksha_project
* Cell:             or_d2
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
MNMOS_1 N_2 A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1300 $y=-1500 $w=400 $h=600
MNMOS_2 N_2 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1300 $y=-1500 $w=400 $h=600
MNMOS_3 Out N_2 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-1300 $y=-1500 $w=400 $h=600
MPMOS_1 N_1 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=200 $y=800 $w=400 $h=600
MPMOS_2 N_2 B N_1 N_1 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=200 $y=800 $w=400 $h=600
MPMOS_3 Out N_2 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=200 $y=800 $w=400 $h=600

********* Simulation Settings - Analysis Section *********
V1 A 0 PULSE (0 1 0 1n 1n 20n 40n)
V2 B 0 PULSE (0 1 0 1n 1n 40n 80n)
Vdd Vdd 0 1
.tran 1n 100n start=0
.print tran v(A,0) v(B,0) v(Out,0)

********* Simulation Settings - Additional SPICE Commands *********

.end

