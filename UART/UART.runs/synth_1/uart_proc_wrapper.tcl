# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/hexad/Documents/Artix-7/UART/UART.runs/synth_1/uart_proc_wrapper.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param chipscope.maxJobs 4
set_param xicom.use_bs_reader 1
set_msg_config  -id {[BD 41-1306]}  -suppress 
set_msg_config  -id {[BD 41-1271]}  -suppress 
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a35ticsg324-1L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/hexad/Documents/Artix-7/UART/UART.cache/wt [current_project]
set_property parent.project_path C:/Users/hexad/Documents/Artix-7/UART/UART.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/hexad/Documents/Artix-7/UART/UART.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
add_files C:/Users/hexad/Documents/Artix-7/UART/SDK/uart_processor/Debug/uart_processor.elf
set_property SCOPED_TO_REF uart_proc [get_files -all C:/Users/hexad/Documents/Artix-7/UART/SDK/uart_processor/Debug/uart_processor.elf]
set_property SCOPED_TO_CELLS microblaze_mcs_0/inst/microblaze_I [get_files -all C:/Users/hexad/Documents/Artix-7/UART/SDK/uart_processor/Debug/uart_processor.elf]
read_verilog -library xil_defaultlib c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/hdl/uart_proc_wrapper.v
add_files C:/Users/hexad/Documents/Artix-7/UART/UART.srcs/sources_1/bd/uart_proc/uart_proc.bd
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/bd_0/ip/ip_0/bd_0c38_microblaze_I_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/bd_0/ip/ip_0/bd_0c38_microblaze_I_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/bd_0/ip/ip_1/bd_0c38_rst_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/bd_0/ip/ip_1/bd_0c38_rst_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/bd_0/ip/ip_3/bd_0c38_dlmb_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/bd_0/ip/ip_6/bd_0c38_lmb_bram_I_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/bd_0/ip/ip_7/bd_0c38_iomodule_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/bd_0/bd_0c38_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/uart_proc_microblaze_mcs_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/uart_proc_microblaze_mcs_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/uart_proc_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/bd_0/ip/ip_0/data/mb_bootloop_le.elf]
set_property used_in_implementation false [get_files -all c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/mb_bootloop_le.elf]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/hexad/Documents/Artix-7/UART/Arty_A7_Master.xdc
set_property used_in_implementation false [get_files C:/Users/hexad/Documents/Artix-7/UART/Arty_A7_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental C:/Users/hexad/Documents/Artix-7/UART/UART.srcs/utils_1/imports/synth_1/uart_proc_wrapper.dcp
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top uart_proc_wrapper -part xc7a35ticsg324-1L
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef uart_proc_wrapper.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file uart_proc_wrapper_utilization_synth.rpt -pb uart_proc_wrapper_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }