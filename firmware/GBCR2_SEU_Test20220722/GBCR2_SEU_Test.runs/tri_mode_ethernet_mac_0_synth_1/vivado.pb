
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:092

00:00:092

1414.9302
0.0272
30112
5173Z17-722h px� 
m
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
tri_mode_ethernet_mac_0Z19-6924h px� 
�
Command: %s
53*	vivadotcl2m
ksynth_design -top tri_mode_ethernet_mac_0 -part xc7k325tffg900-2 -incremental_mode off -mode out_of_contextZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7k325tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7k325tZ17-349h px� 
E
Loading part %s157*device2
xc7k325tffg900-2Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7k325tffg900-2Z21-9227h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
O
#Helper process launched with PID %s4824*oasys2
926881Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2189.504 ; gain = 410.746 ; free physical = 2797 ; free virtual = 4979
h px� 
�
synthesizing module '%s'%s4497*oasys2
tri_mode_ethernet_mac_02
 2�
~/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.v2
638@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
tri_mode_ethernet_mac_0_block2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_block.v2
1088@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2*
(tri_mode_ethernet_mac_0_block_sync_block2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/common/tri_mode_ethernet_mac_0_block_sync_block.v2
628@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
FDRE2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
410148@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDRE2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
410148@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
(tri_mode_ethernet_mac_0_block_sync_block2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/common/tri_mode_ethernet_mac_0_block_sync_block.v2
628@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
"tri_mode_ethernet_mac_0_clk_en_gen2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clk_en_gen.v2
658@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
"tri_mode_ethernet_mac_0_clk_en_gen2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clk_en_gen.v2
658@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2'
%tri_mode_ethernet_mac_0_rgmii_v2_0_if2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/physical/tri_mode_ethernet_mac_0_rgmii_v2_0_if.v2
708@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
OBUF2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
964588@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OBUF2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
964588@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUF2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
736438@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUF2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
736438@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ODDR2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1001028@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ODDR2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1001028@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

IDELAYE22
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
757528@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

IDELAYE22
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
757528@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
IDDR2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
756178@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IDDR2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
756178@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
IOBUF2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
782098@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IOBUF2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
782098@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFIO2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
22248@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFIO2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
22248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFR2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
22908@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFR2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
22908@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
%tri_mode_ethernet_mac_0_rgmii_v2_0_if2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/physical/tri_mode_ethernet_mac_0_rgmii_v2_0_if.v2
708@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys20
.tri_mode_ethernet_mac_0_axi4_lite_ipif_wrapper2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_axi4_lite_ipif_wrapper.v2
758@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2,
*tri_mode_ethernet_mac_0_axi4_lite_ipif_top2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_axi4_lite_ipif_top.vhd2
1078@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axi_lite_ipif2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
slave_attachment2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
address_decoder2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
address_decoder2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-256h px� 
�
default block is never used226*oasys2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
25508@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
slave_attachment2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_lite_ipif2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
*tri_mode_ethernet_mac_0_axi4_lite_ipif_top2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_axi4_lite_ipif_top.vhd2
1078@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
.tri_mode_ethernet_mac_0_axi4_lite_ipif_wrapper2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_axi4_lite_ipif_wrapper.v2
758@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT42
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT42
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT4__parameterized02
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT4__parameterized02
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT4__parameterized12
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT4__parameterized12
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT4__parameterized22
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT4__parameterized22
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT4__parameterized32
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT4__parameterized32
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
820018@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

RAM64X1D2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1295518@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

RAM64X1D2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1295518@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT32
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
819598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT32
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
819598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT3__parameterized02
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
819598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT3__parameterized02
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
819598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT3__parameterized12
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
819598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT3__parameterized12
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
819598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT3__parameterized22
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
819598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT3__parameterized22
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
819598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
SRL16E2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1372628@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SRL16E2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1372628@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tri_mode_ethernet_mac_0_block2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_block.v2
1088@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tri_mode_ethernet_mac_02
 2
02
12�
~/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.v2
638@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rx_filter_enable[0]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rx_avb_enable[2]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rx_avb_enable[1]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rx_avb_enable[0]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[16]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[15]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[14]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[13]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[12]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[11]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[10]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[9]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[8]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[7]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[6]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[1]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[0]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[31]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[30]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[29]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[28]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[27]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[26]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[25]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[24]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[23]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[22]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[21]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[20]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[19]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[18]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[17]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[16]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[15]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[14]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[13]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[12]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[11]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[10]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[9]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[8]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[7]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[6]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[5]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[4]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[3]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[2]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[1]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[0]2+
)tri_mode_ethernet_mac_v9_0_32_addr_filterZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[11]20
.tri_mode_ethernet_mac_v9_0_32_addr_filter_wrapZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[10]20
.tri_mode_ethernet_mac_v9_0_32_addr_filter_wrapZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[9]20
.tri_mode_ethernet_mac_v9_0_32_addr_filter_wrapZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_addr[8]20
.tri_mode_ethernet_mac_v9_0_32_addr_filter_wrapZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENABLE_HALF_DUPLEX2
PARAM_CHECKZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DEST_ADD_FIELD2
PARAM_CHECKZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
SOURCE_ADD_FIELD2
PARAM_CHECKZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
LENGTH_FIELD2
PARAM_CHECKZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
IFG2
PARAM_CHECKZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
SPEED_IS_10_1002
PARAM_CHECKZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
FIELD_COUNTER[5]2
DECODE_FRAMEZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
FIELD_COUNTER[4]2
DECODE_FRAMEZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
FIELD_COUNTER[3]2
DECODE_FRAMEZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
FIELD_COUNTER[2]2
DECODE_FRAMEZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RESET_GMII_MII2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
INBAND_TS_ENABLE2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CORE_HAS_SGMII2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
RTC_CLK2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[47]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[46]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[45]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[44]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[43]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[42]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[41]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[40]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[39]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[38]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[37]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[36]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[35]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[34]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[33]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[32]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[31]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[30]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[29]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[28]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[27]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[26]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[25]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[24]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[23]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[22]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[21]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[20]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[19]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[18]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[17]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[16]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SYSTEMTIMER_S_FIELD[15]2"
 tri_mode_ethernet_mac_v9_0_32_rxZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2341.441 ; gain = 562.684 ; free physical = 2151 ; free virtual = 4335
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2350.348 ; gain = 571.590 ; free physical = 2149 ; free virtual = 4333
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2350.348 ; gain = 571.590 ; free physical = 2149 ; free virtual = 4333
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.062
00:00:00.062

2353.3162
0.0002
20052
4190Z17-722h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
166Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_ooc.xdc2
inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_ooc.xdc2
inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_board.xdc2
inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_board.xdc2
inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2
inst	8Z20-848h px� 
�
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2
set_multicycle_path2
-hold2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2
928@Z20-1567h px� 
�
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2
set_multicycle_path2
-hold2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2
948@Z20-1567h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2
inst	8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2+
).Xil/tri_mode_ethernet_mac_0_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2�
~/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/tri_mode_ethernet_mac_0_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
~/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/tri_mode_ethernet_mac_0_synth_1/dont_touch.xdc8Z20-178h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
inst	8Z20-848h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2
inst2
preSynthElab_12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
298@Z12-3272h px�
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2
create_clock2
inst_rgmii_rx_clk2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
298@Z18-483h px�
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2
inst2
preSynthElab_12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
308@Z12-3272h px�
�
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2
set_false_path2
-hold2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
438@Z20-1567h px� 
�
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2
set_false_path2
-hold2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
448@Z20-1567h px� 
�
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2
set_multicycle_path2
-hold2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
478@Z20-1567h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2
inst2
preSynthElab_12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
538@Z12-3272h px�
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2
inst2
preSynthElab_12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
548@Z12-3272h px�
�
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2
set_false_path2
-hold2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
588@Z20-1567h px� 
�
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2
set_false_path2
-hold2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
598@Z20-1567h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2
inst2
preSynthElab_12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
718@Z12-3272h px�
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2
inst2
preSynthElab_12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
728@Z12-3272h px�
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
inst	8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2+
).Xil/tri_mode_ethernet_mac_0_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2505.1052
0.0002
18022
3988Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 9 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 1 instance 
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 8 instances
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.062
00:00:00.062

2505.1052
0.0002
18022
3988Z17-722h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 1768 ; free virtual = 3955
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7k325tffg900-2
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 1768 ; free virtual = 3955
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 1768 ; free virtual = 3955
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
t
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
slave_attachmentZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
tx_state_reg2+
)tri_mode_ethernet_mac_v9_0_32_tx_axi_intfZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
rx_state_reg2+
)tri_mode_ethernet_mac_v9_0_32_rx_axi_intfZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
state_count_reg2'
%tri_mode_ethernet_mac_v9_0_32_tx_cntlZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
pause_state_reg2+
)tri_mode_ethernet_mac_v9_0_32_pfc_tx_cntlZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
legacy_state_reg2+
)tri_mode_ethernet_mac_v9_0_32_pfc_tx_cntlZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                             1000 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
slave_attachmentZ8-3354h px� 
�
QFound Keep on FSM register '%s' in module '%s', re-encoding will not be performed4499*oasys2
tx_state_reg2+
)tri_mode_ethernet_mac_v9_0_32_tx_axi_intfZ8-6159h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_                    IDLE |                             0000 |                             0000
h p
x
� 
y
%s
*synth2a
_                   LOAD1 |                             0001 |                             0001
h p
x
� 
y
%s
*synth2a
_                   LOAD2 |                             0010 |                             0010
h p
x
� 
y
%s
*synth2a
_                    WAIT |                             0011 |                             0011
h p
x
� 
y
%s
*synth2a
_                END_LOAD |                             0100 |                             0100
h p
x
� 
y
%s
*synth2a
_              CLEAR_PIPE |                             0101 |                             0101
h p
x
� 
y
%s
*synth2a
_                 RELOAD1 |                             0110 |                             0110
h p
x
� 
y
%s
*synth2a
_                 RELOAD2 |                             0111 |                             0111
h p
x
� 
y
%s
*synth2a
_                    SEND |                             1000 |                             1000
h p
x
� 
y
%s
*synth2a
_                   BURST |                             1001 |                             1001
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                               01 |                               00
h p
x
� 
y
%s
*synth2a
_                     PKT |                               11 |                               01
h p
x
� 
y
%s
*synth2a
_                    WAIT |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                    DONE |                               00 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
rx_state_reg2

sequential2+
)tri_mode_ethernet_mac_v9_0_32_rx_axi_intfZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_                    IDLE |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_        TRANSMIT_REQUEST |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_            TRANSMITTING |                              100 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
state_count_reg2'
%tri_mode_ethernet_mac_v9_0_32_tx_cntlZ8-3898h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                             0001 |                              000
h p
x
� 
y
%s
*synth2a
_                     REQ |                             1000 |                              001
h p
x
� 
y
%s
*synth2a
_                    WAIT |                             0100 |                              010
h p
x
� 
y
%s
*synth2a
_                   COUNT |                             0010 |                              011
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
legacy_state_reg2	
one-hot2+
)tri_mode_ethernet_mac_v9_0_32_pfc_tx_cntlZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  P_IDLE |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                   P_REQ |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_                  P_WAIT |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                  P_HOLD |                               11 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
pause_state_reg2

sequential2+
)tri_mode_ethernet_mac_v9_0_32_pfc_tx_cntlZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 1665 ; free virtual = 3855
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
s
%s
*synth2[
YPart Resources:
DSPs: 840 (col length:140)
BRAMs: 890 (col length: RAMB18 140 RAMB36 70)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_rx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_rx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_rx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_rx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_rx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_tx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_tx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_tx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_tx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[0].sync_tx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_rx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_rx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_rx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_rx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_rx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_tx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_tx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_tx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_tx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[1].sync_tx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_rx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_rx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_rx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_rx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_rx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_tx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_tx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_tx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_tx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[2].sync_tx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_rx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_rx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_rx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_rx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_rx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_tx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_tx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_tx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_tx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[3].sync_tx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_rx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_rx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_rx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_rx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_rx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_tx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_tx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_tx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_tx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[4].sync_tx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_rx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_rx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_rx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_rx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_rx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_tx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_tx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_tx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_tx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[5].sync_tx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_rx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_rx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_rx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_rx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_rx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_tx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_tx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_tx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_tx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[6].sync_tx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_rx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_rx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_rx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_rx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_rx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_tx_pen/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_tx_pen/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_tx_pen/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_tx_pen/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
+flow/ppe_sync[7].sync_tx_pen/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_duplex/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_duplex/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_duplex/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_duplex/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_duplex/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_duplex/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_duplex/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_duplex/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_duplex/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_duplex/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_pfc_en/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_pfc_en/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_pfc_en/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_pfc_en/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_rx_pfc_en/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_pfc_en/data_sync_reg02
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_pfc_en/data_sync_reg12
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_pfc_en/data_sync_reg22
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_pfc_en/data_sync_reg32
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"flow/sync_tx_pfc_en/data_sync_reg42
tri_mode_ethernet_mac_v9_0_32Z8-3332h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-33322
100Z17-14h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 748 ; free virtual = 2943
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
$%s for constraint at line %s of %s.
3321*oasys2"
 set_false_path : Empty from list2
712�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2
718@Z8-3321h px� 
�
$%s for constraint at line %s of %s.
3321*oasys2"
 set_false_path : Empty from list2
722�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2
728@Z8-3321h px� 
�
$%s for constraint at line %s of %s.
3321*oasys2"
 set_false_path : Empty from list2
842�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2
848@Z8-3321h px� 
�
$%s for constraint at line %s of %s.
3321*oasys2'
%set_multicycle_path : Empty from list2
912�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2
918@Z8-3321h px� 
�
$%s for constraint at line %s of %s.
3321*oasys2'
%set_multicycle_path : Empty from list2
932�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0.xdc2
938@Z8-3321h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 450 ; free virtual = 2646
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 451 ; free virtual = 2647
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:39 ; elapsed = 00:00:41 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 452 ; free virtual = 2646
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 445 ; free virtual = 2681
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 444 ; free virtual = 2680
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 440 ; free virtual = 2682
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 440 ; free virtual = 2682
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 436 ; free virtual = 2680
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 436 ; free virtual = 2680
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFIO    |     1|
h px� 
4
%s*synth2
|2     |BUFR     |     1|
h px� 
4
%s*synth2
|3     |CARRY4   |    16|
h px� 
4
%s*synth2
|4     |IDDR     |     5|
h px� 
4
%s*synth2
|5     |IDELAYE2 |     5|
h px� 
4
%s*synth2
|6     |LUT1     |   617|
h px� 
4
%s*synth2
|7     |LUT2     |   205|
h px� 
4
%s*synth2
|8     |LUT3     |   186|
h px� 
4
%s*synth2
|9     |LUT4     |   174|
h px� 
4
%s*synth2
|10    |LUT5     |   213|
h px� 
4
%s*synth2
|11    |LUT6     |   426|
h px� 
4
%s*synth2
|12    |MUXCY    |    70|
h px� 
4
%s*synth2
|13    |MUXF7    |    12|
h px� 
4
%s*synth2
|14    |MUXF8    |     2|
h px� 
4
%s*synth2
|15    |ODDR     |     6|
h px� 
4
%s*synth2
|16    |RAM64X1D |     8|
h px� 
4
%s*synth2
|17    |SRL16E   |    14|
h px� 
4
%s*synth2
|18    |XORCY    |    70|
h px� 
4
%s*synth2
|19    |FDCE     |   108|
h px� 
4
%s*synth2
|20    |FDPE     |    20|
h px� 
4
%s*synth2
|21    |FDRE     |  1542|
h px� 
4
%s*synth2
|22    |FDSE     |   112|
h px� 
4
%s*synth2
|23    |IBUF     |     6|
h px� 
4
%s*synth2
|24    |IOBUF    |     1|
h px� 
4
%s*synth2
|25    |OBUF     |     7|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 2505.105 ; gain = 726.348 ; free physical = 436 ; free virtual = 2680
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
c
%s
*synth2K
ISynthesis finished with 0 errors, 0 critical warnings and 1160 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:41 ; elapsed = 00:00:42 . Memory (MB): peak = 2505.105 ; gain = 571.590 ; free physical = 427 ; free virtual = 2674
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 2505.113 ; gain = 726.348 ; free physical = 427 ; free virtual = 2674
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
@Duplicate attribute '%s' found for instance '%s' of module '%s'.22*synth2
INIT2
update_pause_ad_int_reg2
FDREZ37-28h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.032
00:00:00.032

2505.1132
0.0002
7162
2971Z17-722h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
196Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2521.1132
0.0002
6682
2966Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 29 instances were transformed.
  (MUXCY,XORCY) => CARRY4: 20 instances
  IOBUF => IOBUF (IBUF, OBUFT): 1 instance 
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 8 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

220a6215Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1032
2142
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:562

00:00:552

2521.1132

1090.1522
9622
3259Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1879.335; main = 1559.179; forked = 355.241Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3538.582; main = 2521.117; forked = 1033.473Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.012

00:00:002

2545.1252
0.0002
9672
3265Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/tri_mode_ethernet_mac_0_synth_1/tri_mode_ethernet_mac_0.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
tri_mode_ethernet_mac_02
6082e7504ef76aa3Z2-1648h px� 
?
Renamed %s cell refs.
330*coretcl2
62Z2-1174h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.012

00:00:002

2545.1252
0.0002
9872
3261Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/tri_mode_ethernet_mac_0_synth_1/tri_mode_ethernet_mac_0.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2y
wreport_utilization -file tri_mode_ethernet_mac_0_utilization_synth.rpt -pb tri_mode_ethernet_mac_0_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Jun 26 18:37:37 2024Z17-206h px� 


End Record