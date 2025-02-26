#connect_hw_server -url localhost:3121
#close_hw_target -verbose -quiet
#open_hw_manager
#current_hw_device [get_hw_devices xc7k325t_0]
#open_hw_target
#refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xc7k325t_0] 0]
#set_property PROBES.FILE {} [get_hw_devices xc7k325t_0]
#set_property FULL_PROBES.FILE {} [get_hw_devices xc7k325t_0]
#set_property PROGRAM.FILE {/home/hep/GBCR-Testing/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.bit} [get_hw_devices xc7k325t_0]
#program_hw_devices [get_hw_devices xc7k325t_0]
#refresh_hw_device [lindex [get_hw_devices xc7k325t_0] 0]




# Connect to the Digilent Cable on localhost:3121
open_hw_manager
connect_hw_server -url localhost:3121 -allow_non_jtag
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210203B32A91A]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Digilent/210203B32A91A]
open_hw_target

# Program and Refresh the XC7K325T Device

current_hw_device [get_hw_devices xc7k325t_0]

refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]

set_property PROBES.FILE {} [get_hw_devices xc7k325t_0]
set_property FULL_PROBES.FILE {} [get_hw_devices xc7k325t_0]
set_property PROGRAM.FILE {/home/hep/GBCR-Testing/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.bit} [get_hw_devices xc7k325t_0]
program_hw_devices [get_hw_devices xc7k325t_0]
refresh_hw_device [lindex [get_hw_devices xc7k325t_0] 0]