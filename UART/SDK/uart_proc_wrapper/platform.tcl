# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\hexad\Documents\Artix-7\UART\SDK\uart_proc_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\hexad\Documents\Artix-7\UART\SDK\uart_proc_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {uart_proc_wrapper}\
-hw {C:\Users\hexad\Documents\Artix-7\UART\uart_proc_wrapper.xsa}\
-out {C:/Users/hexad/Documents/Artix-7/UART/SDK}

platform write
domain create -name {standalone_microblaze_mcs_0_microblaze_I} -display-name {standalone_microblaze_mcs_0_microblaze_I} -os {standalone} -proc {microblaze_mcs_0_microblaze_I} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {uart_proc_wrapper}
platform generate -quick
platform generate
platform generate -domains 
