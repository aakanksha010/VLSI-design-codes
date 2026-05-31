* SPICE export by:  S-Edit 16.30
* Export time:      Wed Jun 12 22:53:04 2024
* Design:           Akanksha_project
* Cell:             nand3input_d2
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
MNMOS_1 Out In1 N_1 N_1 NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=6500 $y=100 $w=400 $h=600
MNMOS_2 N_1 In2 N_2 N_2 NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=6500 $y=100 $w=400 $h=600
MNMOS_3 N_2 In3 Gnd Gnd NMOS W=45n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=6500 $y=100 $w=400 $h=600
MPMOS_1 Out In1 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=6500 $y=100 $w=400 $h=600
MPMOS_2 Out In2 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=6500 $y=100 $w=400 $h=600
MPMOS_3 Out In3 Vdd Vdd PMOS W=90n L=45n $AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=6500 $y=100 $w=400 $h=600

********* Simulation Settings - Analysis Section *********
V1 In1 0 PULSE (0 1 0 1n 1n 10n 20n)
V2 In2 0 PULSE (0 1 0 1n 1n 20n 40n)
V3 In3 0 PULSE (0 1 0 1n 1n 40n 80n)
Vdd Vdd 0 1
.tran 1n 200n start=0
.print tran v(In1,0) v(In2,0) v(In3,0) v(Out,0)

********* Simulation Settings - Additional SPICE Commands *********

.end

