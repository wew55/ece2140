# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Darius/FC/FC.cache/wt [current_project]
set_property parent.project_path C:/Users/Darius/FC/FC.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/Darius/FC/FC.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet c:/Users/Darius/FC/FC.srcs/sources_1/ip/div_gen_0/div_gen_0.dcp
set_property used_in_implementation false [get_files c:/Users/Darius/FC/FC.srcs/sources_1/ip/div_gen_0/div_gen_0.dcp]
add_files -quiet c:/Users/Darius/FC/FC.srcs/sources_1/ip/c_addsub_0/c_addsub_0.dcp
set_property used_in_implementation false [get_files c:/Users/Darius/FC/FC.srcs/sources_1/ip/c_addsub_0/c_addsub_0.dcp]
read_vhdl -library xil_defaultlib {
  C:/Users/Darius/FC/txt_util.vhd
  C:/Users/Darius/FC/bram.vhd
  C:/Users/Darius/FC/fullyconnected.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top fullyconnected -part xc7k70tfbv676-1


write_checkpoint -force -noxdef fullyconnected.dcp

catch { report_utilization -file fullyconnected_utilization_synth.rpt -pb fullyconnected_utilization_synth.pb }