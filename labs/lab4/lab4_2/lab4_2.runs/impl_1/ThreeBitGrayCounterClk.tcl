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
set rc [catch {
  create_msg_db init_design.pb
  debug::add_scope template.lib 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir D:/Users/TEMP.PCLABS.001/Desktop/lab4_2/lab4_2.cache/wt [current_project]
  set_property parent.project_path D:/Users/TEMP.PCLABS.001/Desktop/lab4_2/lab4_2.xpr [current_project]
  set_property ip_repo_paths d:/Users/TEMP.PCLABS.001/Desktop/lab4_2/lab4_2.cache/ip [current_project]
  set_property ip_output_repo d:/Users/TEMP.PCLABS.001/Desktop/lab4_2/lab4_2.cache/ip [current_project]
  add_files -quiet D:/Users/TEMP.PCLABS.001/Desktop/lab4_2/lab4_2.runs/synth_1/ThreeBitGrayCounterClk.dcp
  read_xdc D:/Users/TEMP.PCLABS.001/Desktop/lab4_2/Basys3.xdc
  link_design -top ThreeBitGrayCounterClk -part xc7a35tcpg236-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force ThreeBitGrayCounterClk_opt.dcp
  catch {report_drc -file ThreeBitGrayCounterClk_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file ThreeBitGrayCounterClk.hwdef}
  place_design 
  write_checkpoint -force ThreeBitGrayCounterClk_placed.dcp
  catch { report_io -file ThreeBitGrayCounterClk_io_placed.rpt }
  catch { report_utilization -file ThreeBitGrayCounterClk_utilization_placed.rpt -pb ThreeBitGrayCounterClk_utilization_placed.pb }
  catch { report_control_sets -verbose -file ThreeBitGrayCounterClk_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force ThreeBitGrayCounterClk_routed.dcp
  catch { report_drc -file ThreeBitGrayCounterClk_drc_routed.rpt -pb ThreeBitGrayCounterClk_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file ThreeBitGrayCounterClk_timing_summary_routed.rpt -rpx ThreeBitGrayCounterClk_timing_summary_routed.rpx }
  catch { report_power -file ThreeBitGrayCounterClk_power_routed.rpt -pb ThreeBitGrayCounterClk_power_summary_routed.pb }
  catch { report_route_status -file ThreeBitGrayCounterClk_route_status.rpt -pb ThreeBitGrayCounterClk_route_status.pb }
  catch { report_clock_utilization -file ThreeBitGrayCounterClk_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force ThreeBitGrayCounterClk.bit 
  catch { write_sysdef -hwdef ThreeBitGrayCounterClk.hwdef -bitfile ThreeBitGrayCounterClk.bit -meminfo ThreeBitGrayCounterClk.mmi -ltxfile debug_nets.ltx -file ThreeBitGrayCounterClk.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

