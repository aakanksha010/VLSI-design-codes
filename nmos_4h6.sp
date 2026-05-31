* SPICE export by:  S-Edit 16.30
* Export time:      Fri Apr 19 12:17:55 2024
* Design:           kavya_4h6
* Cell:             nmos_4h6
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
.include "C:\Users\dell\Desktop\VLSI\p045\nmos_vtl_ff.inc"

***** Top Level *****
MNMOS_1 N_1 Gate Gnd Gnd NMOS W=45n L=45n *AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=200 $y=900 $w=400 $h=600
VDS N_1 Gnd  DC 1 $ $x=1700 $y=0 $w=400 $h=600
VGS Gate Gnd  DC 1 $ $x=-1000 $y=0 $w=400 $h=600

********* Simulation Settings - Analysis Section *********
*.dc lin source VGS 0 1 0.01
.dc lin source VDS 0 1 0.01 sweep lin source VGS 0.5 1 0.1
.print dc id(MNMOS_1)

********* Simulation Settings - Additional SPICE Commands *********

.end

