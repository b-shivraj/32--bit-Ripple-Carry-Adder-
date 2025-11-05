read_liberty NangateOCL.lib
read_verilog netlist_RCA.v
link_design RCA_32
read_sdc top.sdc
report_checks -path_delay max -format full
report_checks -path_delay min -format full
