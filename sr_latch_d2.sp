* SPICE export by:  S-Edit 16.30
* Export time:      Thu Jun 13 06:53:28 2024
* Design:           Akanksha_project
* Cell:             sr_latch_d2
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
.subckt nand_d2 A B Out Gnd Vdd 
MNMOS_1 Out A N_1 N_1 NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1600 $y=-200 $w=400 $h=600
MNMOS_2 N_1 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=2000 $y=-1300 $w=400 $h=600 $m
MPMOS_1 Out A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1200 $y=900 $w=400 $h=600
MPMOS_2 Out B Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=2400 $y=900 $w=400 $h=600 $m
.ends


***** Top Level *****
Xnand_d2_1 Set Qnot Q Gnd Vdd nand_d2 $ $x=1100 $y=2300 $w=1800 $h=1400
Xnand_d2_2 Q Reset Qnot Gnd Vdd nand_d2 $ $x=3400 $y=700 $w=1800 $h=1400

********* Simulation Settings - Analysis Section *********
V1 Set 0 PULSE (1 0 0 1n 1n 10n 20n)
V2 Reset 0 PULSE (1 0 0 1n 1n 20n 40n)
Vdd Vdd 0 1
.tran 1n 200n start=0
.print tran v(Set,0) v(Reset,0) v(Q,0) v(Qnot,0)
********* Simulation Settings - Additional SPICE Commands *********

.end

