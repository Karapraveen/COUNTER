set_attr init_lib_search_path /home/vlsi6/pdk/scl_pdk/stdlib/fs120/liberty/lib_flow_ss/
set_attr init_hdl_search_path /home/vlsi6/Desktop/kumar_dicd/counter/simulation/
set_attr library tsl18fs120_scl_ss.lib

read_hdl counter.v
elaborate
read_sdc /home/vlsi6/Desktop/kumar_dicd/counter/constraints/constraints.sdc 

set_attr dft_scan_style muxed_scan
set_attr dft_prefix dft_
define_shift_enable -name SE -active high -create_port SE
check_dft_rules


set_attribute syn_generic_effort medium
set_attribute syn_map_effort medium
set_attribute syn_opt_effort medium

syn_generic
syn_map
syn_opt

check_dft_rules 
set_attr dft_min_number_of_scan_chains 1 /designs/counter
define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -create_ports 

connect_scan_chains -auto_create_chains
syn_opt -incr

write_dft_atpg -library /home/vlsi6/pdk/scl_pdk/stdlib/fs120/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib
write_hdl > counter_netlist_dft.v
write_sdc > counter_sdc_dft.sdc
write_sdf -nonegchecks -edges edge_check -timescale ns -recrem split > delays_dft.sdf
write_scandef > counter_scanDEF.scandef

