* SPICE export by:  S-Edit 16.30
* Export time:      Wed Mar 27 14:56:32 2024
* Design:           Akanksha_project
* Cell:             comp2bit2nd
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
.subckt inv In Out Gnd Vdd 
MNMOS_1 Out In Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MPMOS_1 Out In Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
.ends

.subckt nand_d2 A B Out Gnd Vdd 
MNMOS_1 Out A N_1 N_1 NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MNMOS_2 N_1 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MPMOS_1 Out A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
MPMOS_2 Out B Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
.ends

.subckt nor_d2 A B Out Gnd Vdd 
MNMOS_1 Out A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MNMOS_2 Out B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MPMOS_1 N_1 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
MPMOS_2 Out B N_1 N_1 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
.ends

.subckt xor_d2 A B Out Gnd Vdd 
MNMOS_1 Out N_4 N_1 Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MNMOS_2 N_1 N_5 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MNMOS_3 Out A N_2 Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MNMOS_4 N_2 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MNMOS_5 N_5 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MNMOS_6 N_4 A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-600 $w=400 $h=600
MPMOS_1 N_3 N_4 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
MPMOS_2 Out A N_3 N_3 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
MPMOS_3 N_3 N_5 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
MPMOS_4 Out B N_3 N_3 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
MPMOS_5 N_4 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
MPMOS_6 N_5 B Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=500 $w=400 $h=600
.ends


***** Top Level *****
Xinv_1 N_5 N_2 Gnd Vdd inv $ $x=3200 $y=-1600 $w=1800 $h=1400
Xnand_d2_1 B0 N_6 N_1 Gnd Vdd nand_d2 $ $x=3500 $y=-3900 $w=1800 $h=1400
Xnand_d2_2 N_2 N_1 N_3 Gnd Vdd nand_d2 $ $x=5600 $y=-1600 $w=1800 $h=1400
Xnor_d2_1 B1 N_2 N_4 Gnd Vdd nor_d2 $ $x=5700 $y=700 $w=1800 $h=1400
Xnor_d2_2 N_3 N_6 Bgreat Gnd Vdd nor_d2 $ $x=9000 $y=-1600 $w=1800 $h=1400
Xnor_d2_3 Agreat Bgreat Equal Gnd Vdd nor_d2 $ $x=11700 $y=-100 $w=1800 $h=1400
Xxor_d2_1 B1 A1 N_5 Gnd Vdd xor_d2 $ $x=1200 $y=-1600 $w=1800 $h=1400
Xxor_d2_2 B0 A0 N_6 Gnd Vdd xor_d2 $ $x=1100 $y=-4900 $w=1800 $h=1400
Xxor_d2_3 N_4 N_3 Agreat Gnd Vdd xor_d2 $ $x=9000 $y=700 $w=1800 $h=1400

********* Simulation Settings - Analysis Section *********
V1 A0 0 PULSE (0 1 0 1n 1n 10n 20n)
V3 B0 0 PULSE (0 1 0 1n 1n 20n 40n)
V4 B1 0 PULSE (0 1 0 1n 1n 30n 60n)
V2 A1 0 PULSE (0 1 0 1n 1n 40n 80n)
Vdd Vdd 0 1
.tran 1n 400n start=0
.print tran v(A0,0) v(A1,0) v(B0,0) v(B1,0) v(Agreat,0) v(Bgreat,0) v(Equal,0)

********* Simulation Settings - Additional SPICE Commands *********

.end

