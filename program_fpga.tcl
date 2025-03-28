if { $argc != 1 } {
    puts "The program_fpga.tcl script requires one and only one argument: the location of the bitfile."
    puts "For example: vivado -mode batch -source ./program_fpga.tcl -tclargs bitfile.bit."
    puts "Please try again."
    exit 1
} else {
    set bitfile [lindex $argv 0]
    puts "Bit file set to $bitfile"
}

# Connect to the Digilent Cable on localhost:3121
open_hw_manager
connect_hw_server -url localhost:3121 -allow_non_jtag
close_hw_target

proc program_fpga {bitfile} {
    foreach hw_device [get_hw_devices] {
        puts "Found hardware device: $hw_device"
        set_property PROGRAM.FILE $bitfile $hw_device
        set_property PROBES.FILE {} $hw_device
        set_property FULL_PROBES.FILE {} $hw_device

        # Program the device and check the result
        if {[catch {program_hw_devices $hw_device} result]} {
            puts "\033\[31mProgramming failed! Error: $result \033\[0m"
        } else {
            puts "\033\[32m Programming successful! \033\[0m"
            
        }
        
    }
}

foreach hw_target [get_hw_targets] {
    puts "Opening hardware target: $hw_target"
    current_hw_target $hw_target
    set_property PARAM.FREQUENCY 15000000 $hw_target
    open_hw_target $hw_target
    puts "Current hardware target set to: [get_property NAME $hw_target]"
    program_fpga $bitfile
    close_hw_target $hw_target
}
