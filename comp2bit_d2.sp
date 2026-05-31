* SPICE export by:  S-Edit 16.30
* Export time:      Thu Mar 21 22:52:04 2024
* Design:           Akanksha_project
* Cell:             comp2bit_d2
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

.subckt or_d2 A Unknown_Pin_B Out Gnd Vdd 
MNMOS_1 N_4 A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_2 N_4 N_1 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_3 Out N_4 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_1 N_3 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_2 N_4 N_2 N_3 N_3 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_3 Out N_4 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
.ends

.subckt xor_d2 A B Out Gnd Vdd 
MNMOS_1 Out N_4 N_1 Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_2 N_1 N_5 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_3 Out A N_2 Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600 $m
MNMOS_4 N_2 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600 $m
MNMOS_5 N_5 B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600 $m
MNMOS_6 N_4 A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_1 N_3 N_4 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_2 Out A N_3 N_3 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_3 N_3 N_5 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_4 Out B N_3 N_3 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_5 N_4 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_6 N_5 B Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
.ends


***** Top Level *****
Xand_d2_1 N_1 A1 N_2 Gnd Vdd and_d2 $ $x=0 $y=3900 $w=1800 $h=1400
Xand_d2_2 N_3 A0 N_7 Gnd Vdd and_d2 $ $x=0 $y=2000 $w=1800 $h=1400
Xand_d2_3 B1 N_4 N_5 Gnd Vdd and_d2 $ $x=0 $y=-1900 $w=1800 $h=1400
Xand_d2_4 B0 N_6 N_9 Gnd Vdd and_d2 $ $x=0 $y=-3900 $w=1800 $h=1400
Xand_d2_5 N_7 N_14 N_8 Gnd Vdd and_d2 $ $x=2700 $y=1200 $w=1800 $h=1400
Xand_d2_6 N_9 N_16 N_10 Gnd Vdd and_d2 $ $x=2600 $y=-4800 $w=1800 $h=1400
Xand_d2_7 N_11 N_12 Bgreat Gnd Vdd and_d2 $ $x=4600 $y=-9100 $w=1800 $h=1400
Xinv_1 N_17 N_11 Gnd Vdd inv $ $x=2300 $y=-8100 $w=1800 $h=1400
Xinv_2 N_18 N_12 Gnd Vdd inv $ $x=2200 $y=-10300 $w=1800 $h=1400
Xinv_3 B0 N_3 Gnd Vdd inv $ $x=-2600 $y=2000 $w=1800 $h=1400
Xinv_4 B1 N_13 Gnd Vdd inv $ $x=-2700 $y=100 $w=1800 $h=1400
Xinv_5 A1 N_4 Gnd Vdd inv $ $x=-2700 $y=-2100 $w=1800 $h=1400
Xinv_6 A0 N_6 Gnd Vdd inv $ $x=-2700 $y=-4100 $w=1800 $h=1400
Xinv_7 A1 N_15 Gnd Vdd inv $ $x=-2700 $y=-6100 $w=1800 $h=1400
Xinv_9 B1 N_1 Gnd Vdd inv $ $x=-2600 $y=3900 $w=1800 $h=1400
Xor_d2_1 N_13 A1 N_14 Gnd Vdd or_d2 $ $x=0 $y=100 $w=1800 $h=1400
Xor_d2_2 B1 N_15 N_16 Gnd Vdd or_d2 $ $x=0 $y=-5900 $w=1800 $h=1400
Xor_d2_3 N_2 N_8 Agreat Gnd Vdd or_d2 $ $x=4900 $y=2600 $w=1800 $h=1400
Xor_d2_4 N_5 N_10 Equal Gnd Vdd or_d2 $ $x=5000 $y=-2900 $w=1800 $h=1400
Xxor_d2_1 B1 A1 N_17 Gnd Vdd xor_d2 $ $x=0 $y=-8100 $w=1800 $h=1400
Xxor_d2_2 B0 A0 N_18 Gnd Vdd xor_d2 $ $x=-100 $y=-10300 $w=1800 $h=1400

********* Simulation Settings - Analysis Section *********
V1 A0 0 PULSE (0 1 0 1n 1n 10n 20n)
V2 A1 0 PULSE (0 1 0 1n 1n 20n 40n)
V3 B0 0 PULSE (0 1 0 1n 1n 10n 20n)
V4 B1 0 PULSE (0 1 0 1n 1n 20n 40n)
Vdd Vdd 0 1
.tran 1n 200n start=0
.print tran v(A1,0) v(A0,0) v(B1,0) v(B0,0) v(Equal,0) v(Agreat,0) v(Bgreat,0)

********* Simulation Settings - Additional SPICE Commands *********

.end

