proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.cache/wt [current_project]
  set_property parent.project_path C:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.xpr [current_project]
  set_property ip_repo_paths C:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/CNN_SoC [current_project]
  set_property ip_output_repo C:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.runs/synth_1/cnn_top.dcp
  add_files -quiet c:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.srcs/sources_1/ip/c_addsub_0/c_addsub_0.dcp
  set_property netlist_only true [get_files c:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.srcs/sources_1/ip/c_addsub_0/c_addsub_0.dcp]
  add_files -quiet c:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.srcs/sources_1/ip/mult_gen_0/mult_gen_0.dcp
  set_property netlist_only true [get_files c:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.srcs/sources_1/ip/mult_gen_0/mult_gen_0.dcp]
  add_files -quiet C:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.srcs/sources_1/ip/mult_gen_1_1/mult_gen_1.dcp
  set_property netlist_only true [get_files C:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.srcs/sources_1/ip/mult_gen_1_1/mult_gen_1.dcp]
  read_xdc -mode out_of_context -ref mult_gen_1 -cells U0 c:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.srcs/sources_1/ip/mult_gen_1_1/mult_gen_1_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.srcs/sources_1/ip/mult_gen_1_1/mult_gen_1_ooc.xdc]
  read_xdc C:/Users/Darius/Desktop/ECE2140/ece2140/ece2140_cnn_theta/hardware/cnn_parallel/cnn_parallel.srcs/constrs_1/new/clock1.xdc
  link_design -top cnn_top -part xc7k70tfbv676-1
  write_hwdef -file cnn_top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force cnn_top_opt.dcp
  catch { report_drc -file cnn_top_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force cnn_top_placed.dcp
  catch { report_io -file cnn_top_io_placed.rpt }
  catch { report_utilization -file cnn_top_utilization_placed.rpt -pb cnn_top_utilization_placed.pb }
  catch { report_control_sets -verbose -file cnn_top_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force cnn_top_routed.dcp
  catch { report_drc -file cnn_top_drc_routed.rpt -pb cnn_top_drc_routed.pb -rpx cnn_top_drc_routed.rpx }
  catch { report_methodology -file cnn_top_methodology_drc_routed.rpt -rpx cnn_top_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file cnn_top_timing_summary_routed.rpt -rpx cnn_top_timing_summary_routed.rpx }
  catch { report_power -file cnn_top_power_routed.rpt -pb cnn_top_power_summary_routed.pb -rpx cnn_top_power_routed.rpx }
  catch { report_route_status -file cnn_top_route_status.rpt -pb cnn_top_route_status.pb }
  catch { report_clock_utilization -file cnn_top_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force cnn_top_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

