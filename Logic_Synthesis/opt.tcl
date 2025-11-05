# read modules from Verilog file
read_verilog  Full_Adder.v RCA_4.v RCA_8.v RCA_32.v

#hierarchy set 
hierarchy -check -top RCA_32
# translate processes to netlists
proc
# remove unused cells and wires
clean
# show the generic netlist
show

#perform optimization
opt
#resource sharing optimization
share -aggressive


# show the generic netlist
show

# mapping to internal cell library
techmap
# mapping flip-flops to toy.lib 
dfflibmap -liberty NangateOCL.lib
# mapping logic to toy.lib 
abc -liberty NangateOCL.lib
# remove unused cells and wires
clean
#report design statistics
stat -liberty NangateOCL.lib

# Write the current design to a Verilog file
write_verilog -noattr -noexpr -nohex -nodec netlist_RCA.v 
