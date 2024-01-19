set_attr init_lib_search_path /home/vlsi6/pdk/scl_pdk/stdlib/fs120/liberty/lib_flow_ss/
set_attr init_hdl_search_path /home/vlsi6/Desktop/kumar_dicd/counter/simulation/
set_attr library tsl18fs120_scl_ss.lib

read_hdl counter.v
elaborate
read_sdc /home/vlsi6/Desktop/kumar_dicd/counter/constraints/constraints.sdc 

set_attribute syn_generic_effort medium
set_attribute syn_map_effort medium
set_attribute syn_opt_effort medium

syn_generic
syn_map
syn_opt

write_hdl > counter_netlist.v
write_sdc > counter_sdc.sdc

report_timing > counter_timing.rep
report_gates > counter_area.rep
report_power > counter_power.rep

