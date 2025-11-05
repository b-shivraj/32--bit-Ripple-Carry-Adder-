# gcd flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"
source "Nangate45/Nangate45.vars"

set design "RCA_Adder"
set top_module "RCA_32"
set synth_verilog "netlist_RCA.v"
set sdc_file "top.sdc"
set die_area {0 0 100.13 100.8}
set core_area {10.07 11.2 90.25 91}

#source -echo "floorplan_flow.tcl"
#source -echo "flow_pdn.tcl"
#source -echo "flow_global_placement.tcl"
#source -echo "flow_detailed_placement.tcl" 

#source -echo "flow_cts.tcl" 
source -echo "flow.tcl"

