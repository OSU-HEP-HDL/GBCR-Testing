
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:082

00:00:092

1357.8242
65.8402
2402
8499Z17-722h px� 
j
Command: %s
53*	vivadotcl29
7synth_design -top GBCR2_SEU_Test -part xc7k325tffg900-2Z4-113h px� 
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
X
%Your %s license expires in %s day(s)
86*common2
	Synthesis2
29Z17-86h px� 
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
P
#Helper process launched with PID %s4824*oasys2	
2567572Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2204.055 ; gain = 412.715 ; free physical = 206 ; free virtual = 7362
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
	clk_25MHz2
wire2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
778@Z8-11241h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
control_clk2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
1358@Z8-6901h px� 
�
synthesizing module '%s'%s4497*oasys2
GBCR2_SEU_Test2
 2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
228@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
global_clock_reset2Z
V/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_clock_reset.vhd2
528@Z8-638h px� 
I
%s
*synth21
/	Parameter DIFF_TERM bound to: 0 - type: bool 
h p
x
� 
L
%s
*synth24
2	Parameter IBUF_LOW_PWR bound to: 0 - type: bool 
h p
x
� 
R
%s
*synth2:
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
IBUFDS_inst2
IBUFDS2Z
V/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_clock_reset.vhd2
858@Z8-113h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
	BUFG_inst2
BUFG2Z
V/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_clock_reset.vhd2
968@Z8-113h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

clockwiz2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/clockwiz_stub.v2
62
clockwiz_inst2

clockwiz2Z
V/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_clock_reset.vhd2
1038@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2

clockwiz2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/clockwiz_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

clockwiz2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/clockwiz_stub.v2
68@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
GlobalResetter2U
S/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_resetter.vhd2
212
globalresetter_inst2
GlobalResetter2Z
V/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_clock_reset.vhd2
1188@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
GlobalResetter2W
S/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_resetter.vhd2
378@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
GlobalResetter2
02
12W
S/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_resetter.vhd2
378@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
global_clock_reset2
02
12Z
V/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_clock_reset.vhd2
528@Z8-256h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUFDS_GTE22
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
737978@Z8-6157h px� 
N
%s
*synth26
4	Parameter CLKCM_CFG bound to: TRUE - type: string 
h p
x
� 
P
%s
*synth28
6	Parameter CLKRCV_TRST bound to: TRUE - type: string 
h p
x
� 
C
%s
*synth2+
)	Parameter CLKSWING_CFG bound to: 2'b11 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFDS_GTE22
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
737978@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
ODIV22
12
IBUFDS_GTE22r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
968@Z8-689h px� 
�
5ignoring illegal expression in output port connection2900*oasys2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
968@Z8-2900h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
19518@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
19518@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2	
gig_eth2]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
1908@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2/
-tri_mode_ethernet_mac_0_example_design_resets2f
d/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_resets.vhd2
572
example_resets2/
-tri_mode_ethernet_mac_0_example_design_resets2]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
6918@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2/
-tri_mode_ethernet_mac_0_example_design_resets2h
d/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_resets.vhd2
848@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672

dcm_sync2$
"tri_mode_ethernet_mac_0_sync_block2h
d/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_resets.vhd2
1318@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
"tri_mode_ethernet_mac_0_sync_block2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
848@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
data_sync_reg02
FDRE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
1138@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
data_sync_reg12
FDRE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
1268@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
data_sync_reg22
FDRE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
1388@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
data_sync_reg32
FDRE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
1508@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
data_sync_reg42
FDRE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
1628@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
"tri_mode_ethernet_mac_0_sync_block2
02
12
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
848@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
672
glbl_reset_gen2$
"tri_mode_ethernet_mac_0_reset_sync2h
d/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_resets.vhd2
1458@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
878@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
reset_sync02
FDPE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
1098@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
reset_sync12
FDPE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
1218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
reset_sync22
FDPE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
1338@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
reset_sync32
FDPE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
1458@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
reset_sync42
FDPE2
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
1578@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2
02
12
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
878@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
672
axi_lite_reset_gen2$
"tri_mode_ethernet_mac_0_reset_sync2h
d/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_resets.vhd2
1598@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
672
gtx_reset_gen2$
"tri_mode_ethernet_mac_0_reset_sync2h
d/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_resets.vhd2
1878@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
672
chk_reset_gen2$
"tri_mode_ethernet_mac_0_reset_sync2h
d/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_resets.vhd2
2218@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2/
-tri_mode_ethernet_mac_0_example_design_resets2
02
12h
d/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_resets.vhd2
848@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
#tri_mode_ethernet_mac_0_axi_lite_sm2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/axi_lite_sm/tri_mode_ethernet_mac_0_axi_lite_sm.vhd2
692
axi_lite_controller2%
#tri_mode_ethernet_mac_0_axi_lite_sm2]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
7248@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2%
#tri_mode_ethernet_mac_0_axi_lite_sm2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/axi_lite_sm/tri_mode_ethernet_mac_0_axi_lite_sm.vhd2
1058@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672
update_speed_sync_inst2$
"tri_mode_ethernet_mac_0_sync_block2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/axi_lite_sm/tri_mode_ethernet_mac_0_axi_lite_sm.vhd2
2788@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
#tri_mode_ethernet_mac_0_axi_lite_sm2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/axi_lite_sm/tri_mode_ethernet_mac_0_axi_lite_sm.vhd2
1058@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_fifo_block2j
h/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_fifo_block.vhd2
932
trimac_fifo_block2$
"tri_mode_ethernet_mac_0_fifo_block2]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
7608@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
"tri_mode_ethernet_mac_0_fifo_block2l
h/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_fifo_block.vhd2
1998@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
tri_mode_ethernet_mac_0_support2{
y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support.vhd2
682
trimac_sup_block2!
tri_mode_ethernet_mac_0_support2l
h/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_fifo_block.vhd2
4088@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
tri_mode_ethernet_mac_0_support2}
y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support.vhd2
1688@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
(tri_mode_ethernet_mac_0_support_clocking2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_clocking.vhd2
692*
(tri_mode_ethernet_mac_support_clocking_i2*
(tri_mode_ethernet_mac_0_support_clocking2}
y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support.vhd2
3118@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2*
(tri_mode_ethernet_mac_0_support_clocking2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_clocking.vhd2
828@Z8-638h px� 
S
%s
*synth2;
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
h p
x
� 
X
%s
*synth2@
>	Parameter CLKFBOUT_MULT_F bound to: 5.000000 - type: double 
h p
x
� 
W
%s
*synth2?
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKIN1_PERIOD bound to: 8.000000 - type: double 
h p
x
� 
Y
%s
*synth2A
?	Parameter CLKOUT0_DIVIDE_F bound to: 5.000000 - type: double 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT1_DIVIDE bound to: 5 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
W
%s
*synth2?
=	Parameter CLKOUT1_PHASE bound to: 90.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT2_DIVIDE bound to: 5 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
h p
x
� 
R
%s
*synth2:
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
h p
x
� 
P
%s
*synth28
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter REF_JITTER1 bound to: 0.010000 - type: double 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
mmcm_adv_inst2

MMCME2_ADV2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_clocking.vhd2
1198@Z8-113h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
clkout1_buf2
BUFGCE2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_clocking.vhd2
1848@Z8-113h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
clkout2_buf2
BUFGCE2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_clocking.vhd2
1908@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2*
(tri_mode_ethernet_mac_0_support_clocking2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_clocking.vhd2
828@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
&tri_mode_ethernet_mac_0_support_resets2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_resets.vhd2
632(
&tri_mode_ethernet_mac_support_resets_i2(
&tri_mode_ethernet_mac_0_support_resets2}
y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support.vhd2
3218@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2(
&tri_mode_ethernet_mac_0_support_resets2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_resets.vhd2
778@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
672
idelayctrl_reset_gen2$
"tri_mode_ethernet_mac_0_reset_sync2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_resets.vhd2
1288@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672
	lock_sync2$
"tri_mode_ethernet_mac_0_sync_block2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_resets.vhd2
1798@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
672
gtx_mmcm_reset_gen2$
"tri_mode_ethernet_mac_0_reset_sync2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_resets.vhd2
1988@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
&tri_mode_ethernet_mac_0_support_resets2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support_resets.vhd2
778@Z8-256h px� 
R
%s
*synth2:
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2+
)tri_mode_ethernet_mac_idelayctrl_common_i2

IDELAYCTRL2}
y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support.vhd2
3368@Z8-113h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
tri_mode_ethernet_mac_02�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/tri_mode_ethernet_mac_0_stub.v2
62
tri_mode_ethernet_mac_i2
tri_mode_ethernet_mac_02}
y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support.vhd2
3508@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
tri_mode_ethernet_mac_02
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/tri_mode_ethernet_mac_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tri_mode_ethernet_mac_02
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/tri_mode_ethernet_mac_0_stub.v2
68@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
tri_mode_ethernet_mac_0_support2
02
12}
y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/support/tri_mode_ethernet_mac_0_support.vhd2
1688@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
672
rx_mac_reset_gen2$
"tri_mode_ethernet_mac_0_reset_sync2l
h/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_fifo_block.vhd2
5058@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_reset_sync2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_reset_sync.vhd2
672
tx_mac_reset_gen2$
"tri_mode_ethernet_mac_0_reset_sync2l
h/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_fifo_block.vhd2
5138@Z8-3491h px� 
P
%s
*synth28
6	Parameter FULL_DUPLEX_ONLY bound to: 1 - type: bool 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2-
+tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo.vhd2
752
user_side_FIFO2-
+tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo2l
h/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_fifo_block.vhd2
5278@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2-
+tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo.vhd2
1178@Z8-638h px� 
P
%s
*synth28
6	Parameter FULL_DUPLEX_ONLY bound to: 1 - type: bool 
h p
x
� 
P
%s
*synth28
6	Parameter FULL_DUPLEX_ONLY bound to: 1 - type: bool 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
&tri_mode_ethernet_mac_0_tx_client_fifo2
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
1022
	tx_fifo_i2(
&tri_mode_ethernet_mac_0_tx_client_fifo2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo.vhd2
1818@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2(
&tri_mode_ethernet_mac_0_tx_client_fifo2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
1358@Z8-638h px� 
P
%s
*synth28
6	Parameter FULL_DUPLEX_ONLY bound to: 1 - type: bool 
h p
x
� 
�
default block is never used226*oasys2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
3658@Z8-226h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672
resync_rd_tran_frame_tog2$
"tri_mode_ethernet_mac_0_sync_block2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
9828@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672
resync_wr_frame_in_fifo2$
"tri_mode_ethernet_mac_0_sync_block2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
11638@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672
resync_wr_frames_in_fifo2$
"tri_mode_ethernet_mac_0_sync_block2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
11718@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672
resync_fif_valid_tog2$
"tri_mode_ethernet_mac_0_sync_block2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
11808@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672
resync_rd_txfer_tog2$
"tri_mode_ethernet_mac_0_sync_block2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
15548@Z8-3491h px� 
M
%s
*synth25
3	Parameter DATA_WIDTH bound to: 9 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter ADDR_WIDTH bound to: 12 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
 tri_mode_ethernet_mac_0_bram_tdp2y
w/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_bram_tdp.vhd2
682
tx_ramgen_i2"
 tri_mode_ethernet_mac_0_bram_tdp2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
17078@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2"
 tri_mode_ethernet_mac_0_bram_tdp2{
w/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_bram_tdp.vhd2
908@Z8-638h px� 
M
%s
*synth25
3	Parameter DATA_WIDTH bound to: 9 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter ADDR_WIDTH bound to: 12 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
 tri_mode_ethernet_mac_0_bram_tdp2
02
12{
w/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_bram_tdp.vhd2
908@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
&tri_mode_ethernet_mac_0_tx_client_fifo2
02
12�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd2
1358@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
&tri_mode_ethernet_mac_0_rx_client_fifo2
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd2
1162
	rx_fifo_i2(
&tri_mode_ethernet_mac_0_rx_client_fifo2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo.vhd2
2128@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2(
&tri_mode_ethernet_mac_0_rx_client_fifo2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd2
1428@Z8-638h px� 
�
default block is never used226*oasys2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd2
3078@Z8-226h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672
resync_wr_store_frame_tog2$
"tri_mode_ethernet_mac_0_sync_block2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd2
4868@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
"tri_mode_ethernet_mac_0_sync_block2}
{/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/common/tri_mode_ethernet_mac_0_sync_block.vhd2
672
sync_rd_addr_tog2$
"tri_mode_ethernet_mac_0_sync_block2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd2
8018@Z8-3491h px� 
M
%s
*synth25
3	Parameter DATA_WIDTH bound to: 9 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter ADDR_WIDTH bound to: 12 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
 tri_mode_ethernet_mac_0_bram_tdp2y
w/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_bram_tdp.vhd2
682
rx_ramgen_i2"
 tri_mode_ethernet_mac_0_bram_tdp2�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd2
9018@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
&tri_mode_ethernet_mac_0_rx_client_fifo2
02
12�
}/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd2
1428@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2-
+tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/fifo/tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo.vhd2
1178@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
"tri_mode_ethernet_mac_0_fifo_block2
02
12l
h/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth_mac_fifo_block.vhd2
1998@Z8-256h px� 
R
%s
*synth2:
8	Parameter CLK_FREQUENCY bound to: 125 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter TX_IDLE_TIMEOUT bound to: 50 - type: integer 
h p
x
� 
@
%s
*synth2(
&	Parameter SIMULATION bound to: 1'b0 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
COM54022`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
382
tcp_server_inst2	
COM54022]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
8998@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1608@Z8-638h px� 
R
%s
*synth2:
8	Parameter CLK_FREQUENCY bound to: 125 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter TX_IDLE_TIMEOUT bound to: 50 - type: integer 
h p
x
� 
@
%s
*synth2(
&	Parameter SIMULATION bound to: 1'b0 
h p
x
� 
R
%s
*synth2:
8	Parameter CLK_FREQUENCY bound to: 125 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	TIMER_4US2b
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/timer_4us.vhd2
242
Inst_TIMER_4US2
	TIMER_4US2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
7848@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	TIMER_4US2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/timer_4us.vhd2
428@Z8-638h px� 
R
%s
*synth2:
8	Parameter CLK_FREQUENCY bound to: 125 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	TIMER_4US2
02
12d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/timer_4us.vhd2
428@Z8-256h px� 
�
-Port '%s' is missing in component declaration4102*oasys2
rx_tcp_byte_count2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1768@Z8-5640h px� 
B
%s
*synth2*
(	Parameter IPv6_ENABLED bound to: 1'b0 
h p
x
� 
@
%s
*synth2(
&	Parameter SIMULATION bound to: 1'b0 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PACKET_PARSING2g
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
462
Inst_PACKET_PARSING2
PACKET_PARSING2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
8008@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
PACKET_PARSING2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
1858@Z8-638h px� 
B
%s
*synth2*
(	Parameter IPv6_ENABLED bound to: 1'b0 
h p
x
� 
@
%s
*synth2(
&	Parameter SIMULATION bound to: 1'b0 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
PACKET_PARSING2
02
12i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
1858@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ARP2\
Z/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/arp.vhd2
232

Inst_ARP2
ARP2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
8548@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ARP2^
Z/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/arp.vhd2
928@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ARP2
02
12^
Z/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/arp.vhd2
928@Z8-256h px� 
B
%s
*synth2*
(	Parameter IPv6_ENABLED bound to: 1'b0 
h p
x
� 
S
%s
*synth2;
9	Parameter MAX_PING_SIZE bound to: 16'b0000001000000000 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PING2]
[/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/ping.vhd2
332
	Inst_PING2
PING2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
8788@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
PING2_
[/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/ping.vhd2
1158@Z8-638h px� 
B
%s
*synth2*
(	Parameter IPv6_ENABLED bound to: 1'b0 
h p
x
� 
S
%s
*synth2;
9	Parameter MAX_PING_SIZE bound to: 16'b0000001000000000 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
RAMB16_S9_S9_inst2
RAMB16_S9_S92_
[/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/ping.vhd2
3028@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
PING2
02
12_
[/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/ping.vhd2
1158@Z8-256h px� 
M
%s
*synth25
3	Parameter PORT_NO bound to: 16'b0000010000000101 
h p
x
� 
R
%s
*synth2:
8	Parameter CLK_FREQUENCY bound to: 125 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

UDP2SERIAL2c
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/udp2serial.vhd2
262
Inst_UDP2SERIAL2

UDP2SERIAL2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
9618@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

UDP2SERIAL2e
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/udp2serial.vhd2
748@Z8-638h px� 
M
%s
*synth25
3	Parameter PORT_NO bound to: 16'b0000010000000101 
h p
x
� 
R
%s
*synth2:
8	Parameter CLK_FREQUENCY bound to: 125 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

UDP2SERIAL2
02
12e
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/udp2serial.vhd2
748@Z8-256h px� 
I
%s
*synth21
/	Parameter MSS bound to: 16'b0000010110110100 
h p
x
� 
B
%s
*synth2*
(	Parameter IPv6_ENABLED bound to: 1'b0 
h p
x
� 
@
%s
*synth2(
&	Parameter SIMULATION bound to: 1'b0 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

TCP_SERVER2c
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_server.vhd2
512
TCP_SERVER_0012

TCP_SERVER2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
10648@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

TCP_SERVER2e
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_server.vhd2
2238@Z8-638h px� 
I
%s
*synth21
/	Parameter MSS bound to: 16'b0000010110110100 
h p
x
� 
B
%s
*synth2*
(	Parameter IPv6_ENABLED bound to: 1'b0 
h p
x
� 
@
%s
*synth2(
&	Parameter SIMULATION bound to: 1'b0 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

TCP_SERVER2
02
12e
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_server.vhd2
2238@Z8-256h px� 
I
%s
*synth21
/	Parameter MSS bound to: 16'b0000010110110100 
h p
x
� 
B
%s
*synth2*
(	Parameter IPv6_ENABLED bound to: 1'b0 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TCP_TX2_
]/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_tx.vhd2
172
Inst_TCP_TX2
TCP_TX2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
11318@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
TCP_TX2a
]/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_tx.vhd2
1088@Z8-638h px� 
I
%s
*synth21
/	Parameter MSS bound to: 16'b0000010110110100 
h p
x
� 
B
%s
*synth2*
(	Parameter IPv6_ENABLED bound to: 1'b0 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TCP_TX2
02
12a
]/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_tx.vhd2
1088@Z8-256h px� 
H
%s
*synth20
.	Parameter NBUFS bound to: 8 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TCP_RXBUFNDEMUX22i
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
332
Inst_TCP_RXBUFNDEMUX22
TCP_RXBUFNDEMUX22b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
11688@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
TCP_RXBUFNDEMUX22k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
878@Z8-638h px� 
H
%s
*synth20
.	Parameter NBUFS bound to: 8 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
2298@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
BRAM_DP2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
588@Z8-638h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
%s
*synth2�
�	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2�
�	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
H
%s
*synth20
.	Parameter INIT_A bound to: 12'b000000000000 
h p
x
� 
H
%s
*synth20
.	Parameter INIT_B bound to: 12'b000000000000 
h p
x
� 
W
%s
*synth2?
=	Parameter SIM_COLLISION_CHECK bound to: ALL - type: string 
h p
x
� 
I
%s
*synth21
/	Parameter SRVAL_A bound to: 12'b000000000000 
h p
x
� 
I
%s
*synth21
/	Parameter SRVAL_B bound to: 12'b000000000000 
h p
x
� 
X
%s
*synth2@
>	Parameter WRITE_MODE_A bound to: WRITE_FIRST - type: string 
h p
x
� 
X
%s
*synth2@
>	Parameter WRITE_MODE_B bound to: WRITE_FIRST - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
RAMB16_S9_S9_inst2
RAMB16_S9_S92b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
5408@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
BRAM_DP2
02
12b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
588@Z8-256h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
2298@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
2298@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
2298@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
2298@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
2298@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
2298@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
2298@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TCP_RXBUFNDEMUX22
02
12k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
878@Z8-256h px� 
H
%s
*synth20
.	Parameter NBUFS bound to: 8 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter TX_IDLE_TIMEOUT bound to: 50 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter MSS bound to: 16'b0000010110110100 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	TCP_TXBUF2b
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
512
Inst_TCP_TXBUF2
	TCP_TXBUF2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
11908@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	TCP_TXBUF2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
1318@Z8-638h px� 
H
%s
*synth20
.	Parameter NBUFS bound to: 8 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter TX_IDLE_TIMEOUT bound to: 50 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter MSS bound to: 16'b0000010110110100 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
2978@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
2978@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
2978@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
2978@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
2978@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
2978@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
2978@Z8-3491h px� 
N
%s
*synth26
4	Parameter DATA_WIDTHA bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHA bound to: 11 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DATA_WIDTHB bound to: 9 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ADDR_WIDTHB bound to: 11 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
BRAM_DP2`
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/bram_dp.vhd2
342
RAMB16_S9_S9_0012	
BRAM_DP2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
2978@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	TCP_TXBUF2
02
12d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
1318@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
COM54022
02
12b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1608@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	fifo8to322�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo8to32_stub.v2
62
rx_fifo_inst2
	fifo8to322]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
10288@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
	fifo8to322
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo8to32_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	fifo8to322
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo8to32_stub.v2
68@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	fifo32to82�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo32to8_stub.v2
62
tx_fifo_inst2
	fifo32to82]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
10468@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
	fifo32to82
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo32to8_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	fifo32to82
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo32to8_stub.v2
68@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
gig_eth2
02
12]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
1908@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
control_interface2Y
U/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/control_interface.vhd2
868@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

fifo36x5122�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo36x512_stub.v2
62
	data_fifo2

fifo36x5122Y
U/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/control_interface.vhd2
1698@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2

fifo36x5122
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo36x512_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

fifo36x5122
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo36x512_stub.v2
68@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
control_interface2
02
12Y
U/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/control_interface.vhd2
868@Z8-256h px� 
�
synthesizing module '%s'%s4497*oasys2
gtwizard_0_exdes2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
678@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
gtwizard_0_support2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_support.v2
678@Z8-6157h px� 
`
%s
*synth2H
F	Parameter EXAMPLE_SIM_GTRESET_SPEEDUP bound to: TRUE - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter STABLE_CLOCK_PERIOD bound to: 10 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
gtwizard_0_GT_USRCLK_SOURCE2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_gt_usrclk_source.v2
688@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUFDS_GTE2__parameterized02
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
737978@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFDS_GTE2__parameterized02
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
737978@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gtwizard_0_GT_USRCLK_SOURCE2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_gt_usrclk_source.v2
688@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
gtwizard_0_common2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_common.v2
698@Z8-6157h px� 
`
%s
*synth2H
F	Parameter WRAPPER_SIM_GTRESET_SPEEDUP bound to: TRUE - type: string 
h p
x
� 
J
%s
*synth22
0	Parameter SIM_QPLLREFCLK_SEL bound to: 3'b001 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
GTXE2_COMMON2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
522238@Z8-6157h px� 
~
%s
*synth2f
d	Parameter BIAS_CFG bound to: 64'b0000000000000000000001000000000000000000000000000001000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter COMMON_CFG bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter QPLL_CFG bound to: 27'b000011010000000000111000001 
h p
x
� 
H
%s
*synth20
.	Parameter QPLL_CLKOUT_CFG bound to: 4'b0000 
h p
x
� 
P
%s
*synth28
6	Parameter QPLL_COARSE_FREQ_OVRD bound to: 6'b010000 
h p
x
� 
N
%s
*synth26
4	Parameter QPLL_COARSE_FREQ_OVRD_EN bound to: 1'b0 
h p
x
� 
G
%s
*synth2/
-	Parameter QPLL_CP bound to: 10'b0000011111 
h p
x
� 
H
%s
*synth20
.	Parameter QPLL_CP_MONITOR_EN bound to: 1'b0 
h p
x
� 
G
%s
*synth2/
-	Parameter QPLL_DMONITOR_SEL bound to: 1'b0 
h p
x
� 
J
%s
*synth22
0	Parameter QPLL_FBDIV bound to: 10'b0000100000 
h p
x
� 
K
%s
*synth23
1	Parameter QPLL_FBDIV_MONITOR_EN bound to: 1'b0 
h p
x
� 
F
%s
*synth2.
,	Parameter QPLL_FBDIV_RATIO bound to: 1'b1 
h p
x
� 
[
%s
*synth2C
A	Parameter QPLL_INIT_CFG bound to: 24'b000000000000000000000110 
h p
x
� 
S
%s
*synth2;
9	Parameter QPLL_LOCK_CFG bound to: 16'b0010000111101000 
h p
x
� 
A
%s
*synth2)
'	Parameter QPLL_LPF bound to: 4'b1111 
h p
x
� 
R
%s
*synth2:
8	Parameter QPLL_REFCLK_DIV bound to: 1 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter SIM_QPLLREFCLK_SEL bound to: 3'b001 
h p
x
� 
V
%s
*synth2>
<	Parameter SIM_RESET_SPEEDUP bound to: TRUE - type: string 
h p
x
� 
O
%s
*synth27
5	Parameter SIM_VERSION bound to: 4.0 - type: string 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
GTXE2_COMMON2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
522238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gtwizard_0_common2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_common.v2
698@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
gtwizard_0_common_reset2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_common_reset.v2
748@Z8-6157h px� 
W
%s
*synth2?
=	Parameter STABLE_CLOCK_PERIOD bound to: 10 - type: integer 
h p
x
� 
�
default block is never used226*oasys2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_common_reset.v2
1218@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gtwizard_0_common_reset2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_common_reset.v2
748@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

gtwizard_02
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/gtwizard_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

gtwizard_02
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/gtwizard_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gtwizard_0_support2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/support/gtwizard_0_support.v2
678@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gtwizard_0_exdes2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
678@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
TRACK_DATA_OUT2
12
gtwizard_0_exdes2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
2878@Z8-689h px� 
�
5ignoring illegal expression in output port connection2900*oasys2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
2878@Z8-2900h px� 
�
synthesizing module '%s'%s4497*oasys2
Data_Source2
 2Q
M/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Source.v2
248@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
PRBS31Gen32b2
 2R
N/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/PRBS31Gen32b.v2
228@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PRBS31Gen32b2
 2
02
12R
N/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/PRBS31Gen32b.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

DataX0Y32
 2N
J/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/DataX0Y3.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

DataX0Y32
 2
02
12N
J/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/DataX0Y3.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Data_Source2
 2
02
12Q
M/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Source.v2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Data_Checker2
 2R
N/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Checker.v2
248@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
PRBS31_Seed_Checker2
 2w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/PRBS31_Seed_Checker.v2
238@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/PRBS31_Seed_Checker.v2
888@Z8-155h px� 
�
synthesizing module '%s'%s4497*oasys2

CRC32gen2
 2l
h/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/CRC32gen.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

CRC32_8gen2
 2n
j/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/CRC32_8gen.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

CRC32_8gen2
 2
02
12n
j/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/CRC32_8gen.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

CRC32gen2
 2
02
12l
h/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/CRC32gen.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PRBS31_Seed_Checker2
 2
02
12w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/PRBS31_Seed_Checker.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
dataPrbs7Check2
 2T
P/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/dataPrbs7Check.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
SearchSamplePoint2
 2u
q/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/SearchSamplePoint.v2
238@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2u
q/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/SearchSamplePoint.v2
468@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SearchSamplePoint2
 2
02
12u
q/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/SearchSamplePoint.v2
238@Z8-6155h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	Bit_Error2T
P/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/dataPrbs7Check.v2
2148@Z8-6090h px� 
�
-case statement is not full and has no default155*oasys2T
P/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/dataPrbs7Check.v2
1308@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dataPrbs7Check2
 2
02
12T
P/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/dataPrbs7Check.v2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
prbs7DataERROR2
642
dataPrbs7Check2R
N/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Checker.v2
1018@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
cnt2
162
dataPrbs7Check2R
N/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Checker.v2
1058@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
Data_generator_160M2
 2Y
U/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_generator_160M.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
PRBS7Gen32b2
 2o
k/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/PRBS7Gen32b.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PRBS7Gen32b2
 2
02
12o
k/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/PRBS7Gen32b.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
SER32b2
 2L
H/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/SER32b.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SER32b2
 2
02
12L
H/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/SER32b.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

DESER32b2
 2N
J/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/DESER32b.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

DESER32b2
 2
02
12N
J/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/DESER32b.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Tx_PRBS7_Data_Checker2
 2y
u/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/Tx_PRBS7_Data_Checker.v2
238@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2y
u/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/Tx_PRBS7_Data_Checker.v2
818@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Tx_PRBS7_Data_Checker2
 2
02
12y
u/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/Tx_PRBS7_Data_Checker.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Data_generator_160M2
 2
02
12Y
U/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_generator_160M.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Data_Aggregator2
 2U
Q/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Aggregator.v2
218@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
fifo_128to128_depth1k2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo_128to128_depth1k_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fifo_128to128_depth1k2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo_128to128_depth1k_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
fifo_128to32_depth16k2
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo_128to32_depth16k_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fifo_128to32_depth16k2
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/fifo_128to32_depth16k_stub.v2
68@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162
rd_data_count2
172
fifo_128to32_depth16k2U
Q/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Aggregator.v2
1838@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Data_Aggregator2
 2
02
12U
Q/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Aggregator.v2
218@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Data_Checker2
 2
02
12R
N/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/Data_Checker.v2
248@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2
i2c_wr_bytes2X
T/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/i2c/i2c_wr_bytes.vhd2
518@Z8-638h px� 
\
%s
*synth2D
B	Parameter INPUT_CLK_FREQENCY bound to: 60000000 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter BUS_CLK_FREQUENCY bound to: 60000 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

i2c_master2T
R/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/i2c/i2c_master.vhd2
272
i2c_master_inst2

i2c_master2X
T/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/i2c/i2c_wr_bytes.vhd2
928@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

i2c_master2V
R/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/i2c/i2c_master.vhd2
508@Z8-638h px� 
\
%s
*synth2D
B	Parameter INPUT_CLK_FREQENCY bound to: 60000000 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter BUS_CLK_FREQUENCY bound to: 60000 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

i2c_master2
02
12V
R/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/i2c/i2c_master.vhd2
508@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
i2c_wr_bytes2
02
12X
T/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/i2c/i2c_wr_bytes.vhd2
518@Z8-256h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322

RD_DATA12
82
i2c_wr_bytes2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
6348@Z8-689h px� 
�
5ignoring illegal expression in output port connection2900*oasys2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
6348@Z8-2900h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
BUSY2
12
i2c_wr_bytes2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
6358@Z8-689h px� 
�
5ignoring illegal expression in output port connection2900*oasys2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
6358@Z8-2900h px� 
�
synthesizing module '%s'%s4497*oasys2
vio_02
 2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/vio_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vio_02
 2
02
12�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/.Xil/Vivado-2564322-OSUTeststand2/realtime/vio_0_stub.v2
68@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1282
	probe_in22
642
vio_02r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
6828@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUFDS2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
736588@Z8-6157h px� 
O
%s
*synth27
5	Parameter DIFF_TERM bound to: FALSE - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
h p
x
� 
R
%s
*synth2:
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFDS2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
736588@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OBUFDS2
 2=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
964728@Z8-6157h px� 
Q
%s
*synth29
7	Parameter IOSTANDARD bound to: LVDS18 - type: string 
h p
x
� 
I
%s
*synth21
/	Parameter SLEW bound to: SLOW - type: string 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OBUFDS2
 2
02
12=
9/tools/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
964728@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
GBCR2_SEU_Test2
 2
02
12r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
228@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
MAC_RX_EOF_D_reg2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
2918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
MAC_RX_EOF_D2_reg2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
4018@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
IP_PAYLOAD_LENGTH_RDY_reg2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
6718@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
CS12
PACKET_PARSING2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
1768@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
CS1_CLK2
PACKET_PARSING2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
1778@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
CS22
PACKET_PARSING2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
1788@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
CS2_CLK2
PACKET_PARSING2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/packet_parsing.vhd2
1798@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
MAC_RX_EOF_D_reg2_
[/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/ping.vhd2
1648@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
RX_TCP_STREAM_NO_D_reg2e
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_server.vhd2
3798@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
IP_RX_DATA_PREVIOUS_reg2e
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_server.vhd2
6308@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
TX_TCP_STREAM_NO_reg2e
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_server.vhd2
5258@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys27
5RX_VALID_ACK_GENx[0].DUPLICATE_RX_TCP_ACK_CNTR_reg[0]2e
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_server.vhd2
11938@Z8-6014h px� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2
TCP_CONGESTION_WINDOW_regZ8-4767h px� 
C
%s
*synth2+
)Reason is one or more of the following :
h p
x
� 
2
%s
*synth2
	1: Only 1 word in RAM 
h p
x
� 
S
%s
*synth2;
9RAM "TCP_CONGESTION_WINDOW_reg" dissolved into registers
h p
x
� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
TP2
TCP_TX2a
]/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_tx.vhd2
1038@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
RX_STREAM_NO_D_reg2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
1518@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
RX_SOF_D_reg2k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
1648@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

RX_APP_SOF2
TCP_RXBUFNDEMUX22k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
778@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
TP2
TCP_RXBUFNDEMUX22k
g/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd2
828@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
RPTR_GENx[0].RPTR_D_reg[0]2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
3438@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
TX_STREAM_SEL_local_reg2d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
5598@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
RT_MUX_STATE_reg2b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
13578@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
UDP_RX_DATA2	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1128@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
UDP_RX_DATA_VALID2	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1138@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

UDP_RX_SOF2	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1148@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

UDP_RX_EOF2	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1158@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

UDP_TX_CTS2	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1288@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
CS12	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1518@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
CS1_CLK2	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1528@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
CS22	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1538@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
CS2_CLK2	
COM54022b
^/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/com5402.vhd2
1548@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	pause_req2	
gig_eth2]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
6008@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	pause_val2	
gig_eth2]
Y/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/KC705/gig_eth.vhd2
6018@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gt0_track_data_i2
gtwizard_0_exdes2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
7868@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gt1_track_data_i2
gtwizard_0_exdes2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
8028@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gt2_track_data_i2
gtwizard_0_exdes2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
8188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gt3_track_data_i2
gtwizard_0_exdes2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
8348@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gt4_track_data_i2
gtwizard_0_exdes2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
8508@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gt5_track_data_i2
gtwizard_0_exdes2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
8668@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gt6_track_data_i2
gtwizard_0_exdes2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
8828@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gt7_track_data_i2
gtwizard_0_exdes2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v2
8988@Z8-3848h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
Error_bit_Count_reg_reg2
PRBS31_Seed_Checker2w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/PRBS31_Seed_Checker.v2
3258@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
Error_bit_Count_reg_reg2
dataPrbs7Check2T
P/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/dataPrbs7Check.v2
2488@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
Error_bit_Count_reg_reg2
Tx_PRBS7_Data_Checker2y
u/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/Tx_PRBS7_Data_Checker.v2
3258@Z8-7137h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
control_interface_inst2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
2098@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2

vio_0_inst2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
6788@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
i2c_wr_bytes_inst2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
6228@Z8-6071h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
LED8Bit2
GBCR2_SEU_Test2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
308@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gig_eth_tx_tdata2
GBCR2_SEU_Test2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
1148@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gig_eth_tx_tvalid2
GBCR2_SEU_Test2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
1158@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gig_eth_rx_tready2
GBCR2_SEU_Test2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
1198@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

WR_DATA12
GBCR2_SEU_Test2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
6088@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

RD_DATA12
GBCR2_SEU_Test2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
6108@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[127]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[126]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[125]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[124]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[123]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[122]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[121]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[120]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[119]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[118]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[117]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[116]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[115]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[114]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[113]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[112]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[111]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[110]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[109]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[108]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[107]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[106]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[105]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[104]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[103]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[102]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[101]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[100]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[99]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[98]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[97]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[96]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[95]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[94]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[93]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[92]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[91]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[90]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[89]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[88]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[87]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[86]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[85]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[84]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[83]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[82]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[81]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[80]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[79]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[78]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[77]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[76]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[75]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[74]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[73]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[72]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[71]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[70]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[69]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[68]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[67]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[66]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[65]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TX_Data_trig[64]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[125]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[124]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[123]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[122]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[121]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[120]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[119]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[118]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[117]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[116]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[115]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[114]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[113]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[112]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[111]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[110]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[109]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[108]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[107]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[106]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[105]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[104]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[103]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[102]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[101]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[100]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[99]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[98]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[97]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[96]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[95]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[94]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[93]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[92]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[91]2
Data_AggregatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
RX_ShortErrorCount[90]2
Data_AggregatorZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2368.023 ; gain = 576.684 ; free physical = 189 ; free virtual = 7154
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 2385.836 ; gain = 594.496 ; free physical = 195 ; free virtual = 7160
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 2385.836 ; gain = 594.496 ; free physical = 195 ; free virtual = 7160
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
00:00:00.482
00:00:00.482

2385.8362
0.0002
2382
7199Z17-722h px� 
�
�The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2f
dgig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_support_clocking_i/clkout1_buf2
BUFGCE2

ULTRASCALE2	
7SERIES2

Z29-345h px� 
�
�The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2f
dgig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_support_clocking_i/clkout2_buf2
BUFGCE2

ULTRASCALE2	
7SERIES2

Z29-345h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
23Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
jCould not create '%s' constraint because %s. '%s' is ignored by %s but preserved for implementation tool.
526*constraints2

IOSTANDARD2Z
Xinvalid IOSTANDARD value 'LVDS18' specified. The default IOSTANDARD will be used instead2

IOSTANDARD2
Vivado2r
n/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/new/GBCR2_SEU_Test.v2
7148@Z18-548h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo32to8/fifo32to8/fifo32to8_in_context.xdc2
gig_eth_inst/tx_fifo_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo32to8/fifo32to8/fifo32to8_in_context.xdc2
gig_eth_inst/tx_fifo_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2z
v/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo36x512/fifo36x512/fifo36x512_in_context.xdc2$
 control_interface_inst/data_fifo	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2z
v/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo36x512/fifo36x512/fifo36x512_in_context.xdc2$
 control_interface_inst/data_fifo	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo8to32/fifo8to32/fifo8to32_in_context.xdc2
gig_eth_inst/rx_fifo_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo8to32/fifo8to32/fifo8to32_in_context.xdc2
gig_eth_inst/rx_fifo_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[0].fifo_128to128_depth1k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[0].fifo_128to128_depth1k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[1].fifo_128to128_depth1k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[1].fifo_128to128_depth1k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[2].fifo_128to128_depth1k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[2].fifo_128to128_depth1k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[3].fifo_128to128_depth1k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[3].fifo_128to128_depth1k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[4].fifo_128to128_depth1k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[4].fifo_128to128_depth1k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[5].fifo_128to128_depth1k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[5].fifo_128to128_depth1k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[6].fifo_128to128_depth1k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[6].fifo_128to128_depth1k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[7].fifo_128to128_depth1k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[7].fifo_128to128_depth1k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[8].fifo_128to128_depth1k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to128_depth1k/fifo_128to128_depth1k/fifo_128to128_depth1k_in_context.xdc2P
LData_Checker_Inst/data_aggregator_inst/genblk2[8].fifo_128to128_depth1k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to32_depth16k/fifo_128to32_depth16k/fifo_128to32_depth16k_in_context.xdc2E
AData_Checker_Inst/data_aggregator_inst/fifo_128to32_depth16k_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/fifo_128to32_depth16k/fifo_128to32_depth16k/fifo_128to32_depth16k_in_context.xdc2E
AData_Checker_Inst/data_aggregator_inst/fifo_128to32_depth16k_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/gtwizard_0/gtwizard_0/gtwizard_0_in_context.xdc2@
<gtwizard_0_exdes_inst/gtwizard_0_support_i/gtwizard_0_init_i	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/gtwizard_0/gtwizard_0/gtwizard_0_in_context.xdc2@
<gtwizard_0_exdes_inst/gtwizard_0_support_i/gtwizard_0_init_i	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/tri_mode_ethernet_mac_0/tri_mode_ethernet_mac_0_in_context.xdc2K
Ggig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/tri_mode_ethernet_mac_0/tri_mode_ethernet_mac_0_in_context.xdc2K
Ggig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
|/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/vio_0/vio_0_in_context.xdc2

vio_0_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
|/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/vio_0/vio_0_in_context.xdc2

vio_0_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2t
p/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/clockwiz/clockwiz/clockwiz_in_context.xdc2)
%global_clock_reset_inst/clockwiz_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2t
p/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/clockwiz/clockwiz/clockwiz_in_context.xdc2)
%global_clock_reset_inst/clockwiz_inst	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc8Z20-179h px� 
�
Deriving generated clocks
2*timing2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2
128@Z38-2h px�
�
E%s is not a supported property on input port(s). Setting is ignored.
2747*	planAhead2
SLEW2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2
368@Z12-4702h px�
�
No cells matched '%s'.
180*	planAhead2
*2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2
948@Z12-180h px�
�
No cells matched '%s'.
180*	planAhead2
*2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2
958@Z12-180h px�
�
E%s is not a supported property on input port(s). Setting is ignored.
2747*	planAhead2
SLEW2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2
1728@Z12-4702h px�
�
E%s is not a supported property on input port(s). Setting is ignored.
2747*	planAhead2
SLEW2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2
1778@Z12-4702h px�
�
E%s is not a supported property on input port(s). Setting is ignored.
2747*	planAhead2
SLEW2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2
1828@Z12-4702h px�
�
E%s is not a supported property on input port(s). Setting is ignored.
2747*	planAhead2
SLEW2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2
1878@Z12-4702h px�
�
Finished Parsing XDC File [%s]
178*designutils2i
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2g
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2"
 .Xil/GBCR2_SEU_Test_propImpl.xdcZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2g
e/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc2"
 .Xil/GBCR2_SEU_Test_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.012

2542.6252
0.0002
1802
7157Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 20 instances were transformed.
  BUFGCE => BUFGCTRL: 2 instances
  OBUFDS => OBUFDS: 1 instance 
  RAMB16_S9_S9 => RAMB18E1: 17 instances
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.142
00:00:00.142

2542.6252
0.0002
1792
7157Z17-722h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002C
AData_Checker_Inst/data_aggregator_inst/fifo_128to32_depth16k_inst2
wr_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002N
LData_Checker_Inst/data_aggregator_inst/genblk2[0].fifo_128to128_depth1k_inst2
rd_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002N
LData_Checker_Inst/data_aggregator_inst/genblk2[1].fifo_128to128_depth1k_inst2
rd_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002N
LData_Checker_Inst/data_aggregator_inst/genblk2[2].fifo_128to128_depth1k_inst2
rd_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002N
LData_Checker_Inst/data_aggregator_inst/genblk2[3].fifo_128to128_depth1k_inst2
rd_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002N
LData_Checker_Inst/data_aggregator_inst/genblk2[4].fifo_128to128_depth1k_inst2
rd_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002N
LData_Checker_Inst/data_aggregator_inst/genblk2[5].fifo_128to128_depth1k_inst2
rd_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002N
LData_Checker_Inst/data_aggregator_inst/genblk2[6].fifo_128to128_depth1k_inst2
rd_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002N
LData_Checker_Inst/data_aggregator_inst/genblk2[7].fifo_128to128_depth1k_inst2
rd_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002N
LData_Checker_Inst/data_aggregator_inst/genblk2[8].fifo_128to128_depth1k_inst2
rd_clk2
5.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002"
 control_interface_inst/data_fifo2
rd_clk2
8.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002
gig_eth_inst/rx_fifo_inst2
wr_clk2
8.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002
gig_eth_inst/tx_fifo_inst2
rd_clk2
8.000Z38-316h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:24 . Memory (MB): peak = 2542.625 ; gain = 751.285 ; free physical = 174 ; free virtual = 7152
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:24 . Memory (MB): peak = 2542.625 ; gain = 751.285 ; free physical = 174 ; free virtual = 7152
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 2542.625 ; gain = 751.285 ; free physical = 168 ; free virtual = 7147
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
u
3inferred FSM for state register '%s' in module '%s'802*oasys2
rstState_reg2
GlobalResetterZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
axi_state_reg2%
#tri_mode_ethernet_mac_0_axi_lite_smZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
mdio_access_sm_reg2%
#tri_mode_ethernet_mac_0_axi_lite_smZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
idelay_reset_cnt_reg2(
&tri_mode_ethernet_mac_0_support_resetsZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
wr_state_reg2(
&tri_mode_ethernet_mac_0_tx_client_fifoZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
rd_state_reg2(
&tri_mode_ethernet_mac_0_tx_client_fifoZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
rd_state_reg2(
&tri_mode_ethernet_mac_0_rx_client_fifoZ8-802h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
EBUFFER_reg2
1282
1202e
a/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/udp2serial.vhd2
2408@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2(
&FREEZE_TX_SEQ_NO_x[0].TX_SEQ_NO_reg[0]2
172
142d
`/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/gig_eth/tcp_server/tcp_txbuf.vhd2
3508@Z8-3936h px� 
x
3inferred FSM for state register '%s' in module '%s'802*oasys2
cmdState_reg2
control_interfaceZ8-802h px� 
w
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
PRBS31_Seed_CheckerZ8-802h px� 
u
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
SearchSamplePointZ8-802h px� 
r
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
dataPrbs7CheckZ8-802h px� 
y
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
Tx_PRBS7_Data_CheckerZ8-802h px� 
n
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2

i2c_masterZ8-802h px� 
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
_                      r0 |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                      r1 |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                      r2 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_                      r3 |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_                      r4 |                              100 |                              100
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              101 |                              111
h p
x
� 

%s
*synth2
*
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
rstState_reg2

sequential2
GlobalResetterZ8-3354h px� 
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
_                    idle |                             0010 |                               00
h p
x
� 
y
%s
*synth2a
_                set_data |                             1000 |                               01
h p
x
� 
y
%s
*synth2a
_                    init |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                    poll |                             0001 |                               11
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
mdio_access_sm_reg2	
one-hot2%
#tri_mode_ethernet_mac_0_axi_lite_smZ8-3354h px� 
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
_                 startup |                            00000 |                            00000
h p
x
� 
y
%s
*synth2a
_            change_speed |                            00001 |                            00001
h p
x
� 
y
%s
*synth2a
_                 mdio_rd |                            00010 |                            00010
h p
x
� 
y
%s
*synth2a
_         mdio_poll_check |                            00011 |                            00011
h p
x
� 
y
%s
*synth2a
_                 mdio_1g |                            00100 |                            00100
h p
x
� 
y
%s
*synth2a
_             mdio_10_100 |                            00101 |                            00101
h p
x
� 
y
%s
*synth2a
_           mdio_rgmii_rd |                            00110 |                            00110
h p
x
� 
y
%s
*synth2a
_      mdio_rgmii_rd_poll |                            00111 |                            00111
h p
x
� 
y
%s
*synth2a
_              mdio_rgmii |                            01000 |                            01000
h p
x
� 
y
%s
*synth2a
_           mdio_delay_rd |                            01001 |                            01001
h p
x
� 
y
%s
*synth2a
_      mdio_delay_rd_poll |                            01010 |                            01010
h p
x
� 
y
%s
*synth2a
_              mdio_delay |                            01011 |                            01011
h p
x
� 
y
%s
*synth2a
_            mdio_restart |                            01100 |                            01100
h p
x
� 
y
%s
*synth2a
_           mdio_loopback |                            01101 |                            01101
h p
x
� 
y
%s
*synth2a
_              mdio_stats |                            01110 |                            01110
h p
x
� 
y
%s
*synth2a
_   mdio_stats_poll_check |                            01111 |                            01111
h p
x
� 
y
%s
*synth2a
_            reset_mac_rx |                            10000 |                            10000
h p
x
� 
y
%s
*synth2a
_            reset_mac_tx |                            10001 |                            10001
h p
x
� 
y
%s
*synth2a
_               cnfg_mdio |                            10010 |                            10010
h p
x
� 
y
%s
*synth2a
_               cnfg_flow |                            10011 |                            10011
h p
x
� 
y
%s
*synth2a
_            cnfg_lo_addr |                            10100 |                            10101
h p
x
� 
y
%s
*synth2a
_            cnfg_hi_addr |                            10101 |                            10110
h p
x
� 
y
%s
*synth2a
_             cnfg_filter |                            10110 |                            10100
h p
x
� 
y
%s
*synth2a
_             check_speed |                            10111 |                            10111
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
axi_state_reg2

sequential2%
#tri_mode_ethernet_mac_0_axi_lite_smZ8-3354h px� 
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
_                 iSTATE7 |                  000000000000001 |                             0000
h p
x
� 
y
%s
*synth2a
_                 iSTATE6 |                  000000000000010 |                             0001
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                  000000000000100 |                             0010
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                  000000000001000 |                             0011
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                  000000000010000 |                             0100
h p
x
� 
y
%s
*synth2a
_                iSTATE13 |                  000000000100000 |                             0101
h p
x
� 
y
%s
*synth2a
_                iSTATE11 |                  000000001000000 |                             0110
h p
x
� 
y
%s
*synth2a
_                 iSTATE9 |                  000000010000000 |                             0111
h p
x
� 
y
%s
*synth2a
_                iSTATE10 |                  000000100000000 |                             1000
h p
x
� 
y
%s
*synth2a
_                 iSTATE8 |                  000001000000000 |                             1001
h p
x
� 
y
%s
*synth2a
_                 iSTATE5 |                  000010000000000 |                             1010
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                  000100000000000 |                             1011
h p
x
� 
y
%s
*synth2a
_                 iSTATE4 |                  001000000000000 |                             1100
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                  010000000000000 |                             1101
h p
x
� 
y
%s
*synth2a
_                iSTATE12 |                  100000000000000 |                             1110
h p
x
� 

%s
*synth2
*
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
idelay_reset_cnt_reg2	
one-hot2(
&tri_mode_ethernet_mac_0_support_resetsZ8-3354h px� 
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
_                  idle_s |                             0000 |                             0000
h p
x
� 
y
%s
*synth2a
_                queue1_s |                             0001 |                             0001
h p
x
� 
y
%s
*synth2a
_                queue2_s |                             0010 |                             0010
h p
x
� 
y
%s
*synth2a
_                queue3_s |                             0011 |                             0011
h p
x
� 
y
%s
*synth2a
_           start_data1_s |                             0100 |                             0100
h p
x
� 
y
%s
*synth2a
_         data_preload1_s |                             0101 |                             0101
h p
x
� 
y
%s
*synth2a
_                 frame_s |                             0110 |                             1000
h p
x
� 
y
%s
*synth2a
_             handshake_s |                             0111 |                             1001
h p
x
� 
y
%s
*synth2a
_                finish_s |                             1000 |                             1010
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
rd_state_reg2

sequential2(
&tri_mode_ethernet_mac_0_tx_client_fifoZ8-3354h px� 
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
_                  wait_s |                               01 |                               00
h p
x
� 
y
%s
*synth2a
_                  data_s |                               11 |                               01
h p
x
� 
y
%s
*synth2a
_                ovflow_s |                               00 |                               11
h p
x
� 
y
%s
*synth2a
_                   eof_s |                               10 |                               10
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
wr_state_reg2

sequential2(
&tri_mode_ethernet_mac_0_tx_client_fifoZ8-3354h px� 
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
_                  wait_s |                         00000001 |                              000
h p
x
� 
y
%s
*synth2a
_                queue1_s |                         00000010 |                              001
h p
x
� 
y
%s
*synth2a
_                queue2_s |                         00000100 |                              010
h p
x
� 
y
%s
*synth2a
_                queue3_s |                         00001000 |                              011
h p
x
� 
y
%s
*synth2a
_             queue_sof_s |                         00010000 |                              100
h p
x
� 
y
%s
*synth2a
_                  data_s |                         00100000 |                              110
h p
x
� 
y
%s
*synth2a
_                   eof_s |                         01000000 |                              111
h p
x
� 
y
%s
*synth2a
_                   sof_s |                         10000000 |                              101
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
rd_state_reg2	
one-hot2(
&tri_mode_ethernet_mac_0_rx_client_fifoZ8-3354h px� 
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
_                    idle |                             0001 |                              001
h p
x
� 
y
%s
*synth2a
_                   check |                             0010 |                              010
h p
x
� 
y
%s
*synth2a
_                    ifs2 |                             0100 |                              101
h p
x
� 
y
%s
*synth2a
_                    sync |                             1000 |                              100
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
one-hot2
PRBS31_Seed_CheckerZ8-3354h px� 
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
_                   check |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                    idle |                               01 |                               01
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
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
	state_reg2
SearchSamplePointZ8-3898h px� 
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
_                    idle |                           000001 |                           000001
h p
x
� 
y
%s
*synth2a
_                   check |                           000010 |                           000010
h p
x
� 
y
%s
*synth2a
_                    ifs2 |                           010000 |                           010000
h p
x
� 
y
%s
*synth2a
_                    sync |                           000100 |                           000100
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
w
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
	state_reg2
dataPrbs7CheckZ8-3898h px� 
�
!inferring latch for variable '%s'327*oasys2	
DataOut2N
J/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/DESER32b.v2
398@Z8-327h px� 
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
_                    idle |                             0001 |                              001
h p
x
� 
y
%s
*synth2a
_                   check |                             0010 |                              010
h p
x
� 
y
%s
*synth2a
_                    ifs2 |                             0100 |                              101
h p
x
� 
y
%s
*synth2a
_                    sync |                             1000 |                              100
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
one-hot2
Tx_PRBS7_Data_CheckerZ8-3354h px� 
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
_                 stready |                             0000 |                             0000
h p
x
� 
y
%s
*synth2a
_                 ststart |                             0001 |                             0001
h p
x
� 
y
%s
*synth2a
_               stcommand |                             0010 |                             0010
h p
x
� 
y
%s
*synth2a
_              stslv_ack1 |                             0011 |                             0011
h p
x
� 
y
%s
*synth2a
_                    stwr |                             0100 |                             0100
h p
x
� 
y
%s
*synth2a
_              stslv_ack2 |                             0101 |                             0110
h p
x
� 
y
%s
*synth2a
_                    strd |                             0110 |                             0101
h p
x
� 
y
%s
*synth2a
_              stmstr_ack |                             0111 |                             0111
h p
x
� 
y
%s
*synth2a
_                strdwait |                             1000 |                             1000
h p
x
� 
y
%s
*synth2a
_                  ststop |                             1001 |                             1001
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

sequential2

i2c_masterZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:33 ; elapsed = 00:00:32 . Memory (MB): peak = 2542.625 ; gain = 751.285 ; free physical = 248 ; free virtual = 7141
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
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	  33 Input   64 Bit       Adders := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input   64 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input   64 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input   24 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input   17 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 19    
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit       Adders := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input   14 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   14 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input   12 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 20    
h p
x
� 
F
%s
*synth2.
,	   3 Input   11 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 16    
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 8     
h p
x
� 
H
%s
*synth20
.	   2 Input     28 Bit         XORs := 14    
h p
x
� 
H
%s
*synth20
.	   2 Input      9 Bit         XORs := 8     
h p
x
� 
H
%s
*synth20
.	   2 Input      6 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input      5 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input      4 Bit         XORs := 10    
h p
x
� 
H
%s
*synth20
.	   3 Input      4 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   3 Input      3 Bit         XORs := 7     
h p
x
� 
H
%s
*synth20
.	   2 Input      3 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input      2 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   3 Input      2 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 4577  
h p
x
� 
H
%s
*synth20
.	   3 Input      1 Bit         XORs := 2019  
h p
x
� 
H
%s
*synth20
.	   4 Input      1 Bit         XORs := 756   
h p
x
� 
H
%s
*synth20
.	   5 Input      1 Bit         XORs := 1512  
h p
x
� 
H
%s
*synth20
.	   6 Input      1 Bit         XORs := 2016  
h p
x
� 
H
%s
*synth20
.	   7 Input      1 Bit         XORs := 756   
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	              512 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	              256 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	              128 Bit    Registers := 7     
h p
x
� 
H
%s
*synth20
.	              127 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	              120 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               64 Bit    Registers := 19    
h p
x
� 
H
%s
*synth20
.	               48 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	               37 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 70    
h p
x
� 
H
%s
*synth20
.	               24 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               21 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               17 Bit    Registers := 9     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 46    
h p
x
� 
H
%s
*synth20
.	               14 Bit    Registers := 8     
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 13    
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 19    
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 45    
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 30    
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 9     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 15    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 247   
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
X
%s
*synth2@
>	              36K Bit	(4096 X 9 bit)          RAMs := 2     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input  512 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   8 Input  512 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input  256 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input  128 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input  127 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   64 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	   2 Input   48 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input   40 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   37 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 17    
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 35    
h p
x
� 
F
%s
*synth2.
,	   9 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input   32 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  24 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   24 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	  24 Input   17 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   4 Input   17 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 16    
h p
x
� 
F
%s
*synth2.
,	   4 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   8 Input   16 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	  15 Input   15 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input   14 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   14 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   4 Input   14 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   7 Input   14 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   4 Input   12 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit        Muxes := 19    
h p
x
� 
F
%s
*synth2.
,	   6 Input   11 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   5 Input    9 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 29    
h p
x
� 
F
%s
*synth2.
,	   7 Input    8 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  24 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	  24 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 86    
h p
x
� 
F
%s
*synth2.
,	   5 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  10 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	   9 Input    4 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	  11 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   7 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    3 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   4 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    3 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit        Muxes := 13    
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 47    
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  24 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 281   
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 78    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 27    
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   9 Input    1 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   7 Input    1 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	  10 Input    1 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	  24 Input    1 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	  15 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  12 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  11 Input    1 Bit        Muxes := 1     
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
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
=loop_rx_ch[6].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[251]2
FD2?
=loop_rx_ch[6].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[254]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
=loop_rx_ch[6].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[252]2
FD2?
=loop_rx_ch[6].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[253]Z8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12C
A\loop_rx_ch[6].PRBS31_Seed_Checker_Rxinst0 /\dataOutReg_reg[253] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02C
A\loop_rx_ch[6].PRBS31_Seed_Checker_Rxinst0 /\dataOutReg_reg[254] Z8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
=loop_rx_ch[5].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[251]2
FD2?
=loop_rx_ch[5].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[253]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
=loop_rx_ch[5].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[252]2
FD2?
=loop_rx_ch[5].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[254]Z8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12C
A\loop_rx_ch[5].PRBS31_Seed_Checker_Rxinst0 /\dataOutReg_reg[253] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02C
A\loop_rx_ch[5].PRBS31_Seed_Checker_Rxinst0 /\dataOutReg_reg[254] Z8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
=loop_rx_ch[2].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[251]2
FD2?
=loop_rx_ch[2].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[253]Z8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12C
A\loop_rx_ch[2].PRBS31_Seed_Checker_Rxinst0 /\dataOutReg_reg[252] Z8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
=loop_rx_ch[2].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[253]2
FD2?
=loop_rx_ch[2].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[254]Z8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02C
A\loop_rx_ch[2].PRBS31_Seed_Checker_Rxinst0 /\dataOutReg_reg[254] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12C
A\loop_rx_ch[1].PRBS31_Seed_Checker_Rxinst0 /\dataOutReg_reg[251] Z8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
=loop_rx_ch[1].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[252]2
FD2?
=loop_rx_ch[1].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[253]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
=loop_rx_ch[1].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[253]2
FD2?
=loop_rx_ch[1].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[254]Z8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02C
A\loop_rx_ch[1].PRBS31_Seed_Checker_Rxinst0 /\dataOutReg_reg[254] Z8-3333h px� 
e
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2	
p_0_outZ8-5546h px� 
e
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2	
p_0_outZ8-5546h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d_r_reg[7][1]2
FD2-
+dataPrbs7Check_inst/search[7].d_r_reg[7][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[7].d16_reg[7][13]2
FD2.
,dataPrbs7Check_inst/search[7].d16_reg[7][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d16_reg[7][9]2
FD2.
,dataPrbs7Check_inst/search[7].d16_reg[7][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d16_reg[7][5]2
FD2-
+dataPrbs7Check_inst/search[7].d16_reg[7][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d16_reg[7][1]2
FD2-
+dataPrbs7Check_inst/search[7].d16_reg[7][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d_r_reg[7][2]2
FD2-
+dataPrbs7Check_inst/search[7].d_r_reg[7][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[7].d16_reg[7][14]2
FD2.
,dataPrbs7Check_inst/search[7].d16_reg[7][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[7].d16_reg[7][10]2
FD2.
,dataPrbs7Check_inst/search[7].d16_reg[7][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d16_reg[7][6]2
FD2-
+dataPrbs7Check_inst/search[7].d16_reg[7][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d16_reg[7][2]2
FD2-
+dataPrbs7Check_inst/search[7].d16_reg[7][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d_r_reg[7][3]2
FD2-
+dataPrbs7Check_inst/search[7].d_r_reg[7][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[7].d16_reg[7][15]2
FD2.
,dataPrbs7Check_inst/search[7].d16_reg[7][12]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[7].d16_reg[7][11]2
FD2-
+dataPrbs7Check_inst/search[7].d16_reg[7][8]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d16_reg[7][7]2
FD2-
+dataPrbs7Check_inst/search[7].d16_reg[7][4]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[7].d16_reg[7][3]2
FD2-
+dataPrbs7Check_inst/search[7].d16_reg[7][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d_r_reg[6][1]2
FD2-
+dataPrbs7Check_inst/search[6].d_r_reg[6][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[6].d16_reg[6][13]2
FD2.
,dataPrbs7Check_inst/search[6].d16_reg[6][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d16_reg[6][9]2
FD2.
,dataPrbs7Check_inst/search[6].d16_reg[6][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d16_reg[6][5]2
FD2-
+dataPrbs7Check_inst/search[6].d16_reg[6][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d16_reg[6][1]2
FD2-
+dataPrbs7Check_inst/search[6].d16_reg[6][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d_r_reg[6][2]2
FD2-
+dataPrbs7Check_inst/search[6].d_r_reg[6][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[6].d16_reg[6][14]2
FD2.
,dataPrbs7Check_inst/search[6].d16_reg[6][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[6].d16_reg[6][10]2
FD2.
,dataPrbs7Check_inst/search[6].d16_reg[6][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d16_reg[6][6]2
FD2-
+dataPrbs7Check_inst/search[6].d16_reg[6][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d16_reg[6][2]2
FD2-
+dataPrbs7Check_inst/search[6].d16_reg[6][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d_r_reg[6][3]2
FD2-
+dataPrbs7Check_inst/search[6].d_r_reg[6][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[6].d16_reg[6][15]2
FD2.
,dataPrbs7Check_inst/search[6].d16_reg[6][12]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[6].d16_reg[6][11]2
FD2-
+dataPrbs7Check_inst/search[6].d16_reg[6][8]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d16_reg[6][7]2
FD2-
+dataPrbs7Check_inst/search[6].d16_reg[6][4]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[6].d16_reg[6][3]2
FD2-
+dataPrbs7Check_inst/search[6].d16_reg[6][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d_r_reg[5][1]2
FD2-
+dataPrbs7Check_inst/search[5].d_r_reg[5][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[5].d16_reg[5][13]2
FD2.
,dataPrbs7Check_inst/search[5].d16_reg[5][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d16_reg[5][9]2
FD2.
,dataPrbs7Check_inst/search[5].d16_reg[5][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d16_reg[5][5]2
FD2-
+dataPrbs7Check_inst/search[5].d16_reg[5][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d16_reg[5][1]2
FD2-
+dataPrbs7Check_inst/search[5].d16_reg[5][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d_r_reg[5][2]2
FD2-
+dataPrbs7Check_inst/search[5].d_r_reg[5][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[5].d16_reg[5][14]2
FD2.
,dataPrbs7Check_inst/search[5].d16_reg[5][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[5].d16_reg[5][10]2
FD2.
,dataPrbs7Check_inst/search[5].d16_reg[5][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d16_reg[5][6]2
FD2-
+dataPrbs7Check_inst/search[5].d16_reg[5][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d16_reg[5][2]2
FD2-
+dataPrbs7Check_inst/search[5].d16_reg[5][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d_r_reg[5][3]2
FD2-
+dataPrbs7Check_inst/search[5].d_r_reg[5][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[5].d16_reg[5][15]2
FD2.
,dataPrbs7Check_inst/search[5].d16_reg[5][12]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[5].d16_reg[5][11]2
FD2-
+dataPrbs7Check_inst/search[5].d16_reg[5][8]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d16_reg[5][7]2
FD2-
+dataPrbs7Check_inst/search[5].d16_reg[5][4]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[5].d16_reg[5][3]2
FD2-
+dataPrbs7Check_inst/search[5].d16_reg[5][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d_r_reg[4][1]2
FD2-
+dataPrbs7Check_inst/search[4].d_r_reg[4][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[4].d16_reg[4][13]2
FD2.
,dataPrbs7Check_inst/search[4].d16_reg[4][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d16_reg[4][9]2
FD2.
,dataPrbs7Check_inst/search[4].d16_reg[4][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d16_reg[4][5]2
FD2-
+dataPrbs7Check_inst/search[4].d16_reg[4][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d16_reg[4][1]2
FD2-
+dataPrbs7Check_inst/search[4].d16_reg[4][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d_r_reg[4][2]2
FD2-
+dataPrbs7Check_inst/search[4].d_r_reg[4][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[4].d16_reg[4][14]2
FD2.
,dataPrbs7Check_inst/search[4].d16_reg[4][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[4].d16_reg[4][10]2
FD2.
,dataPrbs7Check_inst/search[4].d16_reg[4][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d16_reg[4][6]2
FD2-
+dataPrbs7Check_inst/search[4].d16_reg[4][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d16_reg[4][2]2
FD2-
+dataPrbs7Check_inst/search[4].d16_reg[4][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d_r_reg[4][3]2
FD2-
+dataPrbs7Check_inst/search[4].d_r_reg[4][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[4].d16_reg[4][15]2
FD2.
,dataPrbs7Check_inst/search[4].d16_reg[4][12]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[4].d16_reg[4][11]2
FD2-
+dataPrbs7Check_inst/search[4].d16_reg[4][8]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d16_reg[4][7]2
FD2-
+dataPrbs7Check_inst/search[4].d16_reg[4][4]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[4].d16_reg[4][3]2
FD2-
+dataPrbs7Check_inst/search[4].d16_reg[4][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d_r_reg[1][1]2
FD2-
+dataPrbs7Check_inst/search[1].d_r_reg[1][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[1].d16_reg[1][13]2
FD2.
,dataPrbs7Check_inst/search[1].d16_reg[1][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d16_reg[1][9]2
FD2.
,dataPrbs7Check_inst/search[1].d16_reg[1][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d16_reg[1][5]2
FD2-
+dataPrbs7Check_inst/search[1].d16_reg[1][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d16_reg[1][1]2
FD2-
+dataPrbs7Check_inst/search[1].d16_reg[1][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d_r_reg[1][2]2
FD2-
+dataPrbs7Check_inst/search[1].d_r_reg[1][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[1].d16_reg[1][14]2
FD2.
,dataPrbs7Check_inst/search[1].d16_reg[1][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[1].d16_reg[1][10]2
FD2.
,dataPrbs7Check_inst/search[1].d16_reg[1][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d16_reg[1][6]2
FD2-
+dataPrbs7Check_inst/search[1].d16_reg[1][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d16_reg[1][2]2
FD2-
+dataPrbs7Check_inst/search[1].d16_reg[1][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d_r_reg[1][3]2
FD2-
+dataPrbs7Check_inst/search[1].d_r_reg[1][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[1].d16_reg[1][15]2
FD2.
,dataPrbs7Check_inst/search[1].d16_reg[1][12]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[1].d16_reg[1][11]2
FD2-
+dataPrbs7Check_inst/search[1].d16_reg[1][8]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d16_reg[1][7]2
FD2-
+dataPrbs7Check_inst/search[1].d16_reg[1][4]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[1].d16_reg[1][3]2
FD2-
+dataPrbs7Check_inst/search[1].d16_reg[1][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d_r_reg[2][1]2
FD2-
+dataPrbs7Check_inst/search[2].d_r_reg[2][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[2].d16_reg[2][13]2
FD2.
,dataPrbs7Check_inst/search[2].d16_reg[2][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d16_reg[2][9]2
FD2.
,dataPrbs7Check_inst/search[2].d16_reg[2][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d16_reg[2][5]2
FD2-
+dataPrbs7Check_inst/search[2].d16_reg[2][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d16_reg[2][1]2
FD2-
+dataPrbs7Check_inst/search[2].d16_reg[2][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d_r_reg[2][2]2
FD2-
+dataPrbs7Check_inst/search[2].d_r_reg[2][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[2].d16_reg[2][14]2
FD2.
,dataPrbs7Check_inst/search[2].d16_reg[2][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[2].d16_reg[2][10]2
FD2.
,dataPrbs7Check_inst/search[2].d16_reg[2][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d16_reg[2][6]2
FD2-
+dataPrbs7Check_inst/search[2].d16_reg[2][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d16_reg[2][2]2
FD2-
+dataPrbs7Check_inst/search[2].d16_reg[2][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d_r_reg[2][3]2
FD2-
+dataPrbs7Check_inst/search[2].d_r_reg[2][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[2].d16_reg[2][15]2
FD2.
,dataPrbs7Check_inst/search[2].d16_reg[2][12]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[2].d16_reg[2][11]2
FD2-
+dataPrbs7Check_inst/search[2].d16_reg[2][8]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d16_reg[2][7]2
FD2-
+dataPrbs7Check_inst/search[2].d16_reg[2][4]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[2].d16_reg[2][3]2
FD2-
+dataPrbs7Check_inst/search[2].d16_reg[2][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
+dataPrbs7Check_inst/search[3].d_r_reg[3][1]2
FD2-
+dataPrbs7Check_inst/search[3].d_r_reg[3][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
,dataPrbs7Check_inst/search[3].d16_reg[3][13]2
FD2.
,dataPrbs7Check_inst/search[3].d16_reg[3][15]Z8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-38862
100Z17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-38862
100Z17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02$
"\dataPrbs7Check_inst/state_reg[3] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02A
?\loop_rx_ch[0].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[254] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12+
)\dataPrbs7Check_inst/dataOutReg_reg[252] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02+
)\dataPrbs7Check_inst/dataOutReg_reg[254] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12A
?\loop_rx_ch[4].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[253] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02A
?\loop_rx_ch[4].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[254] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12F
D\Data_generator_160M/Tx_PRBS7_Data_Checker_inst/dataOutReg_reg[254] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02F
D\Data_generator_160M/Tx_PRBS7_Data_Checker_inst/dataOutReg_reg[251] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12A
?\loop_rx_ch[7].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[253] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02A
?\loop_rx_ch[7].PRBS31_Seed_Checker_Rxinst0/dataOutReg_reg[254] Z8-3333h px� 
f
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

cmdStateZ8-5546h px� 
f
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

cmdStateZ8-5546h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02,
*control_interface_inst/\bMemNotReg_reg[2] Z8-3333h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2	
p_0_out2
42
5Z8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_in2
42
5Z8-5544h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02d
b\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.TCP_SERVER_001 /\TX_FLAGS_GENx[0].TX_FLAGS_reg[0][7] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12W
U\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.Inst_TCP_TX /\TX_SOURCE_PORT_NO_reg[10] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02W
U\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.Inst_TCP_TX /\TX_SOURCE_PORT_NO_reg[15] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02]
[\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.TCP_SERVER_001 /\TX_ACK_WINDOW_LENGTH_reg[15] Z8-3333h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-38862
100Z17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12&
$\gig_eth_inst/tcp_ipv4_addr_reg[31] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12Y
W\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.Inst_TCP_TX /\TX_TCP_HEADER_LENGTH_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02Y
W\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.Inst_TCP_TX /\TX_TCP_HEADER_LENGTH_reg[3] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02V
T\gig_eth_inst/tcp_server_inst /Inst_PACKET_PARSING/\RX_SOURCE_IP_ADDR_local_reg[32] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02K
I\gig_eth_inst/tcp_server_inst /Inst_PACKET_PARSING/\RX_TYPE_local_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02f
d\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.TCP_SERVER_001 /\TXRX_DELAY_x[0].TXRX_DELAY_reg[0][17] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\gig_eth_inst/tcp_server_inst /\TX_MUX_STATE_reg[3] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[0] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
121
/\gig_eth_inst/axi_lite_controller/speed_reg[1] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12W
U\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.Inst_TCP_TX /\TX_SOURCE_MAC_ADDR_reg[6] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02M
K\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.Inst_TCP_TX /\TX_FLAGS_reg[7] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02f
d\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.TCP_SERVER_001 /\INFO_X[0].TX_DEST_IP_ADDR_reg[0][127] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[0] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\gig_eth_inst/axi_lite_controller/load_data_reg Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
025
3\gig_eth_inst/axi_lite_controller/capture_data_reg Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
025
3\gig_eth_inst/axi_lite_controller/write_access_reg Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
024
2\gig_eth_inst/axi_lite_controller/read_access_reg Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02W
U\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.Inst_TCP_TX /\TX_SOURCE_IP_ADDR_reg[13] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02W
U\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.Inst_TCP_TX /\TX_SOURCE_IP_ADDR_reg[22] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\gig_eth_inst/axi_lite_controller/addr_reg[0] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02W
U\gig_eth_inst/tcp_server_inst /\TCP_SERVER_X.Inst_TCP_TX /\TX_SOURCE_IP_ADDR_reg[28] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\gig_eth_inst/axi_lite_controller/addr_reg[1] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_araddr_reg[0] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_awaddr_reg[0] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_awaddr_reg[1] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\gig_eth_inst/axi_lite_controller/addr_reg[5] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\gig_eth_inst/axi_lite_controller/addr_reg[6] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_araddr_reg[5] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_awaddr_reg[5] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\gig_eth_inst/axi_lite_controller/addr_reg[7] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_awaddr_reg[6] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_araddr_reg[7] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_awaddr_reg[7] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
021
/\gig_eth_inst/axi_lite_controller/addr_reg[11] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
029
7\gig_eth_inst/axi_lite_controller/s_axi_araddr_reg[11] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
029
7\gig_eth_inst/axi_lite_controller/s_axi_awaddr_reg[11] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/axi_wr_data_reg[18] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/axi_wr_data_reg[19] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/axi_wr_data_reg[20] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/axi_wr_data_reg[21] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
029
7\gig_eth_inst/axi_lite_controller/mdio_wr_data_reg[21] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/axi_wr_data_reg[22] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
029
7\gig_eth_inst/axi_lite_controller/mdio_wr_data_reg[22] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/axi_wr_data_reg[23] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_wdata_reg[21] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
029
7\gig_eth_inst/axi_lite_controller/mdio_wr_data_reg[23] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/axi_wr_data_reg[24] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_wdata_reg[22] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\gig_eth_inst/axi_lite_controller/serial_command_shift_reg[2] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/axi_wr_data_reg[25] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6\gig_eth_inst/axi_lite_controller/s_axi_wdata_reg[23] Z8-3333h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-33332
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:55 ; elapsed = 00:01:45 . Memory (MB): peak = 2546.547 ; gain = 755.207 ; free physical = 284 ; free virtual = 1924
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
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
R
%s*synth2:
8
Block RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2�
�+---------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|Module Name          | RTL Object                                                                  | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h px� 
�
%s*synth2�
�+---------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|GBCR2_SEU_Test__GCB1 | gig_eth_inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/mem_reg | 4 K x 9(NO_CHANGE)     | W |   | 4 K x 9(WRITE_FIRST)   |   | R | Port A and B     | 0      | 1      | 
h px� 
�
%s*synth2�
�|GBCR2_SEU_Test__GCB1 | gig_eth_inst/trimac_fifo_block/user_side_FIFO/rx_fifo_i/rx_ramgen_i/mem_reg | 4 K x 9(NO_CHANGE)     | W |   | 4 K x 9(WRITE_FIRST)   |   | R | Port A and B     | 0      | 1      | 
h px� 
�
%s*synth2�
�+---------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
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
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:08 ; elapsed = 00:01:58 . Memory (MB): peak = 2546.547 ; gain = 755.207 ; free physical = 256 ; free virtual = 1870
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
�Finished Timing Optimization : Time (s): cpu = 00:01:22 ; elapsed = 00:02:13 . Memory (MB): peak = 2546.547 ; gain = 755.207 ; free physical = 154 ; free virtual = 1713
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
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
!
Block RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2�
�+---------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|Module Name          | RTL Object                                                                  | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h p
x
� 
�
%s
*synth2�
�+---------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|GBCR2_SEU_Test__GCB1 | gig_eth_inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/mem_reg | 4 K x 9(NO_CHANGE)     | W |   | 4 K x 9(WRITE_FIRST)   |   | R | Port A and B     | 0      | 1      | 
h p
x
� 
�
%s
*synth2�
�|GBCR2_SEU_Test__GCB1 | gig_eth_inst/trimac_fifo_block/user_side_FIFO/rx_fifo_i/rx_ramgen_i/mem_reg | 4 K x 9(NO_CHANGE)     | W |   | 4 K x 9(WRITE_FIRST)   |   | R | Port A and B     | 0      | 1      | 
h p
x
� 
�
%s
*synth2�
�+---------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
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
�Finished Technology Mapping : Time (s): cpu = 00:01:30 ; elapsed = 00:02:34 . Memory (MB): peak = 2554.551 ; gain = 763.211 ; free physical = 168 ; free virtual = 418
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
�
'tying undriven pin %s:%s to constant 0
3295*oasys21
/gtwizard_0_exdes_inst/soft_reset_vio_i_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys24
2gtwizard_0_exdes_inst/gt_txfsmresetdone_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys25
3gtwizard_0_exdes_inst/gt_txfsmresetdone_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys25
3gtwizard_0_exdes_inst/gt0_rxfsmresetdone_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt0_rxfsmresetdone_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt0_rxresetdone_vio_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt0_rxresetdone_vio_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt0_rxresetdone_vio_r3_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys25
3gtwizard_0_exdes_inst/gt1_rxfsmresetdone_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt1_rxfsmresetdone_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt1_rxresetdone_vio_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt1_rxresetdone_vio_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt1_rxresetdone_vio_r3_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys25
3gtwizard_0_exdes_inst/gt2_rxfsmresetdone_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt2_rxfsmresetdone_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt2_rxresetdone_vio_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt2_rxresetdone_vio_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt2_rxresetdone_vio_r3_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys25
3gtwizard_0_exdes_inst/gt3_rxfsmresetdone_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt3_rxfsmresetdone_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt3_rxresetdone_vio_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt3_rxresetdone_vio_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt3_rxresetdone_vio_r3_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys25
3gtwizard_0_exdes_inst/gt4_rxfsmresetdone_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt4_rxfsmresetdone_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt4_rxresetdone_vio_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt4_rxresetdone_vio_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt4_rxresetdone_vio_r3_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys25
3gtwizard_0_exdes_inst/gt5_rxfsmresetdone_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt5_rxfsmresetdone_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt5_rxresetdone_vio_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt5_rxresetdone_vio_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt5_rxresetdone_vio_r3_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys25
3gtwizard_0_exdes_inst/gt6_rxfsmresetdone_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt6_rxfsmresetdone_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt6_rxresetdone_vio_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt6_rxresetdone_vio_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt6_rxresetdone_vio_r3_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys25
3gtwizard_0_exdes_inst/gt7_rxfsmresetdone_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt7_rxfsmresetdone_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys26
4gtwizard_0_exdes_inst/gt7_rxresetdone_vio_r_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt7_rxresetdone_vio_r2_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys27
5gtwizard_0_exdes_inst/gt7_rxresetdone_vio_r3_inferred2
in0Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys22
0gtwizard_0_exdes_inst/rxresetdone_vio_i_inferred2
in0Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[175]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[174]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[173]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[172]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[171]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[170]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[169]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[168]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[167]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[166]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[165]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[164]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[163]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[162]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[161]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[160]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[159]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[158]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[157]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[156]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[155]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[154]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[153]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[152]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[151]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[150]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[149]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[148]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[147]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[146]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[145]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[144]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[143]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[142]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[141]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[140]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[139]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[138]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[137]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[136]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[135]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[134]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[133]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[132]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[131]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[130]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[129]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[128]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[127]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[126]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[125]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[124]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[123]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[122]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[121]Z8-3295h px� 
l
'tying undriven pin %s:%s to constant 0
3295*oasys2
status_reg_inferred2

in0[120]Z8-3295h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-32952
100Z17-14h px� 
�
!Found another clock driver %s:%s
3964*oasys2%
#\global_clock_reset_inst/BUFG_inst 2
O2Z
V/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/src/global_clock_reset.vhd2
968@Z8-5410h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:01:38 ; elapsed = 00:02:44 . Memory (MB): peak = 2554.551 ; gain = 763.211 ; free physical = 163 ; free virtual = 399
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:38 ; elapsed = 00:02:44 . Memory (MB): peak = 2554.551 ; gain = 763.211 ; free physical = 163 ; free virtual = 398
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:41 ; elapsed = 00:02:48 . Memory (MB): peak = 2554.551 ; gain = 763.211 ; free physical = 166 ; free virtual = 393
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:41 ; elapsed = 00:02:48 . Memory (MB): peak = 2554.551 ; gain = 763.211 ; free physical = 166 ; free virtual = 396
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:43 ; elapsed = 00:02:50 . Memory (MB): peak = 2554.551 ; gain = 763.211 ; free physical = 172 ; free virtual = 391
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:43 ; elapsed = 00:02:50 . Memory (MB): peak = 2554.551 ; gain = 763.211 ; free physical = 164 ; free virtual = 387
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
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

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+---------------+-----------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name    | RTL Name                                                                    | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+---------------+-----------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|GBCR2_SEU_Test | gig_eth_inst/axi_lite_controller/count_shift_reg[20]                        | 21     | 1     | NO           | NO                 | YES               | 0      | 1       | 
h p
x
� 
�
%s
*synth2�
�|GBCR2_SEU_Test | gig_eth_inst/trimac_fifo_block/user_side_FIFO/rx_fifo_i/wr_data_bram_reg[7] | 3      | 8     | NO           | NO                 | YES               | 8      | 0       | 
h p
x
� 
�
%s
*synth2�
�|GBCR2_SEU_Test | Data_Source_Inst/DataX0Y3_inst/prbs71_reg[102]                              | 7      | 1     | YES          | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|GBCR2_SEU_Test | Data_Source_Inst/DataX0Y3_inst/prbs71_reg[99]                               | 4      | 4     | YES          | NO                 | YES               | 4      | 0       | 
h p
x
� 
�
%s
*synth2�
�|GBCR2_SEU_Test | Data_Source_Inst/DataX0Y3_inst/prbs71_reg[72]                               | 5      | 2     | YES          | NO                 | YES               | 2      | 0       | 
h p
x
� 
�
%s
*synth2�
�|GBCR2_SEU_Test | Data_Source_Inst/DataX0Y3_inst/prbs71_reg[3]                                | 6      | 1     | YES          | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+---------------+-----------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
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
G
%s
*synth2/
-+------+------------------------+----------+
h p
x
� 
G
%s
*synth2/
-|      |BlackBox name           |Instances |
h p
x
� 
G
%s
*synth2/
-+------+------------------------+----------+
h p
x
� 
G
%s
*synth2/
-|1     |fifo36x512              |         1|
h p
x
� 
G
%s
*synth2/
-|2     |vio_0                   |         1|
h p
x
� 
G
%s
*synth2/
-|3     |fifo_128to128_depth1k   |         9|
h p
x
� 
G
%s
*synth2/
-|4     |fifo_128to32_depth16k   |         1|
h p
x
� 
G
%s
*synth2/
-|5     |fifo8to32               |         1|
h p
x
� 
G
%s
*synth2/
-|6     |fifo32to8               |         1|
h p
x
� 
G
%s
*synth2/
-|7     |tri_mode_ethernet_mac_0 |         1|
h p
x
� 
G
%s
*synth2/
-|8     |clockwiz                |         1|
h p
x
� 
G
%s
*synth2/
-|9     |gtwizard_0              |         1|
h p
x
� 
G
%s
*synth2/
-+------+------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
A
%s*synth2)
'+------+----------------------+------+
h px� 
A
%s*synth2)
'|      |Cell                  |Count |
h px� 
A
%s*synth2)
'+------+----------------------+------+
h px� 
A
%s*synth2)
'|1     |clockwiz              |     1|
h px� 
A
%s*synth2)
'|2     |fifo32to8             |     1|
h px� 
A
%s*synth2)
'|3     |fifo36x512            |     1|
h px� 
A
%s*synth2)
'|4     |fifo8to32             |     1|
h px� 
A
%s*synth2)
'|5     |fifo_128to128_depth1k |     9|
h px� 
A
%s*synth2)
'|14    |fifo_128to32_depth16k |     1|
h px� 
A
%s*synth2)
'|15    |gtwizard              |     1|
h px� 
A
%s*synth2)
'|16    |tri_mode_ethernet_mac |     1|
h px� 
A
%s*synth2)
'|17    |vio                   |     1|
h px� 
A
%s*synth2)
'|18    |BUFG                  |     9|
h px� 
A
%s*synth2)
'|19    |BUFGCE                |     2|
h px� 
A
%s*synth2)
'|20    |CARRY4                |  1344|
h px� 
A
%s*synth2)
'|21    |GTXE2_COMMON          |     2|
h px� 
A
%s*synth2)
'|22    |IBUFDS_GTE2           |     2|
h px� 
A
%s*synth2)
'|23    |IDELAYCTRL            |     1|
h px� 
A
%s*synth2)
'|24    |LUT1                  |   605|
h px� 
A
%s*synth2)
'|25    |LUT2                  |  3666|
h px� 
A
%s*synth2)
'|26    |LUT3                  |  2132|
h px� 
A
%s*synth2)
'|27    |LUT4                  |  2124|
h px� 
A
%s*synth2)
'|28    |LUT5                  |  2963|
h px� 
A
%s*synth2)
'|29    |LUT6                  |  5213|
h px� 
A
%s*synth2)
'|30    |MMCME2_ADV            |     1|
h px� 
A
%s*synth2)
'|31    |MUXF7                 |    21|
h px� 
A
%s*synth2)
'|32    |RAMB16_S9_S9          |    17|
h px� 
A
%s*synth2)
'|33    |RAMB36E1              |     2|
h px� 
A
%s*synth2)
'|34    |SRL16E                |    16|
h px� 
A
%s*synth2)
'|35    |SRLC32E               |     1|
h px� 
A
%s*synth2)
'|36    |FDCE                  |  1951|
h px� 
A
%s*synth2)
'|37    |FDPE                  |    70|
h px� 
A
%s*synth2)
'|38    |FDRE                  |  7657|
h px� 
A
%s*synth2)
'|39    |FDSE                  |   542|
h px� 
A
%s*synth2)
'|40    |LD                    |    32|
h px� 
A
%s*synth2)
'|41    |IBUF                  |    25|
h px� 
A
%s*synth2)
'|42    |IBUFDS                |     2|
h px� 
A
%s*synth2)
'|43    |IOBUF                 |     1|
h px� 
A
%s*synth2)
'|44    |OBUF                  |    18|
h px� 
A
%s*synth2)
'|45    |OBUFDS                |     1|
h px� 
A
%s*synth2)
'|46    |OBUFT                 |     8|
h px� 
A
%s*synth2)
'+------+----------------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:43 ; elapsed = 00:02:50 . Memory (MB): peak = 2554.551 ; gain = 763.211 ; free physical = 178 ; free virtual = 391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 0 critical warnings and 434 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:01:38 ; elapsed = 00:02:48 . Memory (MB): peak = 2554.551 ; gain = 606.422 ; free physical = 7058 ; free virtual = 7414
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:47 ; elapsed = 00:02:56 . Memory (MB): peak = 2554.551 ; gain = 763.211 ; free physical = 7042 ; free virtual = 7413
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.212
00:00:00.212

2554.5512
0.0002
69372
7393Z17-722h px� 
�
�The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2f
dgig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_support_clocking_i/clkout1_buf2
BUFGCE2

ULTRASCALE2	
7SERIES2

Z29-345h px� 
�
�The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2f
dgig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_support_clocking_i/clkout2_buf2
BUFGCE2

ULTRASCALE2	
7SERIES2

Z29-345h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
1423Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
jCould not create '%s' constraint because %s. '%s' is ignored by %s but preserved for implementation tool.
526*constraints2

IOSTANDARD2Z
Xinvalid IOSTANDARD value 'LVDS18' specified. The default IOSTANDARD will be used instead2

IOSTANDARD2
VivadoZ18-548h px� 
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
00:00:00.012

2582.6452
0.0002
68152
7393Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 53 instances were transformed.
  BUFGCE => BUFGCTRL: 2 instances
  IOBUF => IOBUF (IBUF, OBUFT): 1 instance 
  LD => LDCE: 32 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 1 instance 
  RAMB16_S9_S9 => RAMB18E1: 17 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

fd597cb3Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4802
2952
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

00:01:592

00:03:102

2582.6452

1191.9452
68012
7392Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2>
<(MB): overall = 8386.564; main = 1769.446; forked = 6994.839Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2@
>(MB): overall = 14211.852; main = 2582.648; forked = 11661.219Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.112
00:00:00.042

2606.6562
0.0002
67932
7392Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2l
j/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/synth_1/GBCR2_SEU_Test.dcpZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
write_checkpoint: 2

00:00:052

00:00:052

2606.6562
24.0122
65502
7349Z17-722h px� 
�
Executing command : %s
56330*	planAhead2g
ereport_utilization -file GBCR2_SEU_Test_utilization_synth.rpt -pb GBCR2_SEU_Test_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Jun 27 13:56:23 2024Z17-206h px� 


End Record