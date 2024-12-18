# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/GBCR2_SEU_Test.tcl"
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

OPTRACE "synth_1" START { ROLLUP_AUTO }
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.cache/wt [current_project]
set_property parent.project_path /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:kc705:part0:1.6 [current_project]
set_property ip_output_repo d:/xilinxtrain/GBCR2_SEU_20211220_7RX/GBCR2_SEU_Test.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog -library xil_defaultlib {
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/CRC32_8gen.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/CRC32gen.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/DESER32b.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/DataX0Y3.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Aggregator.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Checker.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Source.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_generator_160M.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/PRBS31Gen32b.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/PRBS31_Seed_Checker.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/PRBS7Gen32b.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/SER32b.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/SearchSamplePoint.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/Tx_PRBS7_Data_Checker.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/dataPrbs7Check.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_common.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_common_reset.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_gt_usrclk_source.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_support.v
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v
}
read_vhdl -library xil_defaultlib {
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/arp.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/arp_cache2.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402pkg.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/control_interface.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_fifo_block.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_resets.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_clock_reset.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_resetter.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/i2c/i2c_master.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/i2c/i2c_wr_bytes.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/ping.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_server.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_tx.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/timer_4us.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/axi_lite_sm/tri_mode_ethernet_mac_0_axi_lite_sm.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_bram_tdp.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_clocking.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_resets.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/udp2serial.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/udp_rx.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/udp_tx.vhd
  /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/whois2.vhd
}
read_ip -quiet /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo32to8/fifo32to8.xci
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo32to8/fifo32to8.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo32to8/fifo32to8_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo32to8/fifo32to8_ooc.xdc]

read_ip -quiet /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo36x512/fifo36x512.xci
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo36x512/fifo36x512.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo36x512/fifo36x512_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo36x512/fifo36x512_ooc.xdc]

read_ip -quiet /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo8to32/fifo8to32.xci
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo8to32/fifo8to32.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo8to32/fifo8to32_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo8to32/fifo8to32_ooc.xdc]

read_ip -quiet /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k.xci
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k_ooc.xdc]

read_ip -quiet /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/ip/fifo_128to32_depth16k/fifo_128to32_depth16k.xci
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to32_depth16k/fifo_128to32_depth16k.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to32_depth16k/fifo_128to32_depth16k_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to32_depth16k/fifo_128to32_depth16k_ooc.xdc]

read_ip -quiet /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/ip/gtwizard_0/gtwizard_0.xci
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/gtwizard_0/gtwizard_0.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/gtwizard_0/gtwizard_0_ooc.xdc]

read_ip -quiet /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/tri_mode_ethernet_mac_0.xci
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc]

read_ip -quiet /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/ip/vio_0/vio_0.xci
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/vio_0.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/vio_0_ooc.xdc]

read_ip -quiet /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/clockwiz/clockwiz.xci
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/clockwiz/clockwiz_board.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/clockwiz/clockwiz.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/clockwiz/clockwiz_late.xdc]
set_property used_in_implementation false [get_files -all /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/clockwiz/clockwiz_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc
set_property used_in_implementation false [get_files /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top GBCR2_SEU_Test -part xc7k325tffg900-2
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef GBCR2_SEU_Test.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
generate_parallel_reports -reports { "report_utilization -file GBCR2_SEU_Test_utilization_synth.rpt -pb GBCR2_SEU_Test_utilization_synth.pb"  } 
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
