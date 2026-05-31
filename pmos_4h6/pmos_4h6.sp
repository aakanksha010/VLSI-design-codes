* SPICE export by:  S-Edit 16.30
* Export time:      Fri Apr 19 12:58:48 2024
* Design:           kavya_4h6
* Cell:             pmos_4h6
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
* Root path:        C:\kavya_project\kavya_4h6
* Exclude global pins:   no
* Exclude instance locations: no
* Control property name(s): SPICE

********* Simulation Settings - General Section *********
.include "H:\p045\nmos_vtl_ff.inc"


***** Top Level *****
MPMOS_1 N_1 Gate Gnd N_1 PMOS W=90n L=45n *AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=700 $y=600 $w=400 $h=600
VDS N_1 Gnd  DC -1 $ $x=900 $y=-500 $w=400 $h=600
VGS Gate Gnd  DC -1 $ $x=-500 $y=-300 $w=400 $h=600

********* Simulation Settings - Analysis Section *********
.dc lin source VGS -1 0 0.01
.dc lin source VDS -1 0 0.1 sweep lin source VGS -0.5 0 0.1
.print dc id(MPMOS_1)


********* Simulation Settings - Additional SPICE Commands *********

.end

