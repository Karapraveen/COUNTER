set log file counter_lec.log -replace
read library /home/vlsi6/Desktop/kumar_dicd/counter/equi_check/tsl18fs120_scl_ss.v -verilog -both
read design /home/vlsi6/Desktop/kumar_dicd/counter/rtl/counter.v -verilog -golden
read design /home/vlsi6/Desktop/kumar_dicd/counter/synthesis/counter_netlist.v -verilog -revised
set system mode lec 
add compare point -all
compare

