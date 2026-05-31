* SPICE export by:  S-Edit 16.30
* Export time:      Wed Mar 27 16:04:32 2024
* Design:           Akanksha_project
* Cell:             NMOS_CHECK_D2
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
.include "H:\p045\nmos_vtl_ff.inc"

***** Top Level *****
MNMOS_1 Drain Gate Gnd Gnd NMOS W=45n L=45n *AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1900 $y=400 $w=400 $h=600
VVds Drain Gnd  DC 1 $ $x=3100 $y=400 $w=400 $h=600
VVgs Gate Gnd  DC 1 $ $x=800 $y=-100 $w=400 $h=600

********* Simulation Settings - Analysis Section *********
.print dc id(MNMOS_1)
*.dc lin source VVds 0 1 0.01
.dc lin source VVds 0 1 0.1 sweep lin source VVgs 0.5 1 0.1


********* Simulation Settings - Additional SPICE Commands *********

.end

