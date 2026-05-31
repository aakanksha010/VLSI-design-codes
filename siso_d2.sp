* SPICE export by:  S-Edit 16.30
* Export time:      Thu Jun 13 07:32:17 2024
* Design:           Akanksha_project
* Cell:             siso_d2
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
MPMOS_1 Out In Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=6000
.ends

.subckt nor_d2 A B Out Gnd Vdd 
MNMOS_1 Out A Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MNMOS_2 Out B Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_1 N_1 A Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
MPMOS_2 Out B N_1 N_1 PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=600 $y=0 $w=400 $h=600
.ends

.subckt dff_d2 Clk Delay Q Qnot Gnd Vdd 
Xand_d2_1 N_1 Clk N_2 Gnd Vdd and_d2 $ $x=300 $y=700 $w=1800 $h=1400
Xand_d2_2 Clk Delay N_3 Gnd Vdd and_d2 $ $x=300 $y=-1800 $w=1800 $h=1400
Xinv_1 Delay N_1 Gnd Vdd inv $ $x=-1900 $y=-400 $w=1400 $h=1800 $r=270
Xnor_d2_1 N_2 Qnot Q Gnd Vdd nor_d2 $ $x=3100 $y=700 $w=1800 $h=1400
Xnor_d2_2 Q N_3 Qnot Gnd Vdd nor_d2 $ $x=2600 $y=-1600 $w=1800 $h=1400
.ends


***** Top Level *****
Xdff_d2_1 Clk D Q3 N_1 Gnd Vdd dff_d2 $ $x=500 $y=2400 $w=1800 $h=1400
Xdff_d2_2 Clk Q3 Q2 N_2 Gnd Vdd dff_d2 $ $x=2700 $y=2400 $w=1800 $h=1400
Xdff_d2_3 Clk Q2 Q1 N_3 Gnd Vdd dff_d2 $ $x=4900 $y=2400 $w=1800 $h=1400
Xdff_d2_4 Clk Q1 Q0 N_4 Gnd Vdd dff_d2 $ $x=7100 $y=2400 $w=1800 $h=1400

********* Simulation Settings - Analysis Section *********
V1 Clk 0 PULSE (0 1 0 1n 1n 10n 20n)
V2 D 0 PULSE (0 1 0 1n 1n 20n 40n)
Vdd Vdd 0 1
.tran 1n 200n start=0
.print tran v(Q3,0) v(Q2,0) v(Q1,0) v(Q0,0) v(Clk,0) v(D,0)

********* Simulation Settings - Additional SPICE Commands *********

.end

