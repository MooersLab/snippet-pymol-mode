# -*- mode: snippet -*-
# contributor: Blaine Mooers, bmooers1@gmail.com, github.com/MooersLab
# key: ms
# name: Measure surface area of the selection with the msms_pymol.py script.
# group: Measurements
# key: ms
# --
fetch ${1:3nd3}, name=${1:3nd3}, type=pdb, async=0;
select ${2:temp}, ${1:3nd3} and chain ${4:A};
run ${5:/Users/blaine-mooers/Scripts/PyMOLScripts/msms_pymol.py};
calc_msms_area ${2:temp};
$0
