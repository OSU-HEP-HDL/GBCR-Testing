
=
Command: %s
53*	vivadotcl2

opt_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7k325tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7k325tZ17-349h px� 
]
%Your %s license expires in %s day(s)
86*common2
Implementation2
29Z17-86h px� 
�
!Parsing TCL File [%s] from IP %s
328*project2u
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/gtwizard_0/tcl/v7ht.tcl2x
v/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/sources_1/ip/gtwizard_0/gtwizard_0.xciZ1-541h px� 
�
Sourcing Tcl File [%s]
1447*designutils2w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/gtwizard_0/tcl/v7ht.tcl8Z20-1688h px� 
�
 Finished Sourcing Tcl File [%s]
1445*designutils2w
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/gtwizard_0/tcl/v7ht.tcl8Z20-1686h px� 
\
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_designZ4-22h px� 
@

Starting %s Task
103*constraints2
DRCZ18-103h px� 
>
Running DRC with %s threads
24*drc2
6Z23-27h px� 
C
DRC finished with %s
272*project2

0 ErrorsZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2752.703 ; gain = 16.008 ; free physical = 5547 ; free virtual = 7260h px� 
U

Starting %s Task
103*constraints2
Cache Timing InformationZ18-103h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2
create_clock2[
Ygig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst_rgmii_rx_clk2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
298@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
V
%s*common2=
;Ending Cache Timing Information Task | Checksum: 17a34b73e
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2752.703 ; gain = 0.000 ; free physical = 5510 ; free virtual = 7238h px� 
O

Starting %s Task
103*constraints2
Logic OptimizationZ18-103h px� 
K

Phase %s%s
101*constraints2
1 2
InitializationZ18-101h px� 
_

Phase %s%s
101*constraints2
1.1 2"
 Core Generation And Design SetupZ18-101h px� 
d

Phase %s%s
101*constraints2
1.1.1 2%
#Generate And Synthesize Debug CoresZ18-101h px� 
Y
)Generating Script for core instance : %s 214*	chipscope2	
dbg_hubZ16-329h px� 
g
Generating IP %s for %s.
1712*coregen2
xilinx.com:ip:xsdbm:3.02

dbg_hub_CVZ19-3806h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2*
(Done building netlist checker database: 2
00:00:00.022
00:00:00.012

3069.3202
0.0002
50372
6847Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.032
00:00:00.032

3069.3202
0.0002
50412
6852Z17-722h px� 
a
%s*common2H
FPhase 1.1.1 Generate And Synthesize Debug Cores | Checksum: 12a3fc045
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:30 ; elapsed = 00:01:48 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5041 ; free virtual = 6852h px� 
\
%s*common2C
APhase 1.1 Core Generation And Design Setup | Checksum: 12a3fc045
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:30 ; elapsed = 00:01:48 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5041 ; free virtual = 6852h px� 
a

Phase %s%s
101*constraints2
1.2 2$
"Setup Constraints And Sort NetlistZ18-101h px� 
^
%s*common2E
CPhase 1.2 Setup Constraints And Sort Netlist | Checksum: 12a3fc045
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:30 ; elapsed = 00:01:48 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5039 ; free virtual = 6850h px� 
H
%s*common2/
-Phase 1 Initialization | Checksum: 12a3fc045
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:30 ; elapsed = 00:01:48 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5039 ; free virtual = 6850h px� 
d

Phase %s%s
101*constraints2
2 2)
'Timer Update And Timing Data CollectionZ18-101h px� 
K

Phase %s%s
101*constraints2
2.1 2
Timer UpdateZ18-101h px� 
H
%s*common2/
-Phase 2.1 Timer Update | Checksum: 12a3fc045
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:32 ; elapsed = 00:01:49 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5029 ; free virtual = 6846h px� 
U

Phase %s%s
101*constraints2
2.2 2
Timing Data CollectionZ18-101h px� 
R
%s*common29
7Phase 2.2 Timing Data Collection | Checksum: 12a3fc045
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:32 ; elapsed = 00:01:49 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5031 ; free virtual = 6848h px� 
a
%s*common2H
FPhase 2 Timer Update And Timing Data Collection | Checksum: 12a3fc045
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:32 ; elapsed = 00:01:49 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5031 ; free virtual = 6848h px� 
E

Phase %s%s
101*constraints2
3 2

RetargetZ18-101h px� 
�
XTotal Chains To Be Transformed Were: %s AND Number of Transformed insts Created are: %s
832*opt2
02
0Z31-1834h px� 
d
9Pulled %s inverters resulting in an inversion of %s pins
779*opt2
92
51Z31-1566h px� 
R
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
62
19Z31-138h px� 
9
Retargeted %s cell(s).
49*opt2
0Z31-49h px� 
B
%s*common2)
'Phase 3 Retarget | Checksum: 21d036977
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:33 ; elapsed = 00:01:50 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5020 ; free virtual = 6837h px� 
4
Retarget | Checksum: 21d036977
*commonh px� 
f
.Phase %s created %s cells and removed %s cells267*opt2

Retarget2
292
762Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2

Retarget2
898Z31-1021h px� 
Q

Phase %s%s
101*constraints2
4 2
Constant propagationZ18-101h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
N
%s*common25
3Phase 4 Constant propagation | Checksum: 22259712a
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:33 ; elapsed = 00:01:50 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5027 ; free virtual = 6838h px� 
@
+Constant propagation | Checksum: 22259712a
*commonh px� 
q
.Phase %s created %s cells and removed %s cells267*opt2
Constant propagation2
242
96Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Constant propagation2
883Z31-1021h px� 
B

Phase %s%s
101*constraints2
5 2
SweepZ18-101h px� 
?
%s*common2&
$Phase 5 Sweep | Checksum: 1f1f19249
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:34 ; elapsed = 00:01:51 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5024 ; free virtual = 6841h px� 
1
Sweep | Checksum: 1f1f19249
*commonh px� 
b
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2
02
450Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2
2894Z31-1021h px� 
N

Phase %s%s
101*constraints2
6 2
BUFG optimizationZ18-101h px� 
V
2Optimized connectivity to %s cascaded buffer cells194*opt2
1Z31-274h px� 
K
%s*common22
0Phase 6 BUFG optimization | Checksum: 231bb0eb5
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:35 ; elapsed = 00:01:51 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5020 ; free virtual = 6837h px� 
=
(BUFG optimization | Checksum: 231bb0eb5
*commonh px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2
BUFG optimization2
02
02
1Z31-662h px� 
X

Phase %s%s
101*constraints2
7 2
Shift Register OptimizationZ18-101h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02
02
02
0Z31-1064h px� 
U
%s*common2<
:Phase 7 Shift Register Optimization | Checksum: 231bb0eb5
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:35 ; elapsed = 00:01:51 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5020 ; free virtual = 6837h px� 
G
2Shift Register Optimization | Checksum: 231bb0eb5
*commonh px� 
v
.Phase %s created %s cells and removed %s cells267*opt2
Shift Register Optimization2
02
0Z31-389h px� 
T

Phase %s%s
101*constraints2
8 2
Post Processing NetlistZ18-101h px� 
Q
%s*common28
6Phase 8 Post Processing Netlist | Checksum: 1f22728ad
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:35 ; elapsed = 00:01:52 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5020 ; free virtual = 6837h px� 
C
.Post Processing Netlist | Checksum: 1f22728ad
*commonh px� 
r
.Phase %s created %s cells and removed %s cells267*opt2
Post Processing Netlist2
02
0Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Post Processing Netlist2
898Z31-1021h px� 
I

Phase %s%s
101*constraints2
9 2
FinalizationZ18-101h px� 
j

Phase %s%s
101*constraints2
9.1 2-
+Finalizing Design Cores and Updating ShapesZ18-101h px� 
g
%s*common2N
LPhase 9.1 Finalizing Design Cores and Updating Shapes | Checksum: 1b2efa550
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:36 ; elapsed = 00:01:52 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5006 ; free virtual = 6823h px� 
]

Phase %s%s
101*constraints2
9.2 2 
Verifying Netlist ConnectivityZ18-101h px� 
O

Starting %s Task
103*constraints2
Connectivity CheckZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.07 . Memory (MB): peak = 3069.320 ; gain = 0.000 ; free physical = 5008 ; free virtual = 6825h px� 
Z
%s*common2A
?Phase 9.2 Verifying Netlist Connectivity | Checksum: 1b2efa550
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:36 ; elapsed = 00:01:53 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5008 ; free virtual = 6825h px� 
F
%s*common2-
+Phase 9 Finalization | Checksum: 1b2efa550
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:36 ; elapsed = 00:01:53 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5008 ; free virtual = 6825h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |              29  |             762  |                                            898  |
|  Constant propagation         |              24  |              96  |                                            883  |
|  Sweep                        |               0  |             450  |                                           2894  |
|  BUFG optimization            |               0  |               1  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                            898  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
P
%s*common27
5Ending Logic Optimization Task | Checksum: 1b2efa550
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:36 ; elapsed = 00:01:53 . Memory (MB): peak = 3069.320 ; gain = 23.812 ; free physical = 5008 ; free virtual = 6825h px� 
O

Starting %s Task
103*constraints2
Power OptimizationZ18-103h px� 
a
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.00Z34-132h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2
create_clock2[
Ygig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst_rgmii_rx_clk2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
298@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px� 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px� 


*pwropth px� 
S

Starting %s Task
103*constraints2
PowerOpt Patch EnablesZ18-103h px� 
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
1092
210Z34-162h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2
create_clock2[
Ygig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst_rgmii_rx_clk2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
298@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
S
+Structural ODC has moved %s WE to EN ports
155*pwropt2
90Z34-201h px� 
w
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
252
1062
420Z34-65h px� 
T
%s*common2;
9Ending PowerOpt Patch Enables Task | Checksum: 19ebf2b82
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 3639.801 ; gain = 0.000 ; free physical = 4471 ; free virtual = 6304h px� 
P
%s*common27
5Ending Power Optimization Task | Checksum: 19ebf2b82
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:29 ; elapsed = 00:00:21 . Memory (MB): peak = 3639.801 ; gain = 570.480 ; free physical = 4471 ; free virtual = 6304h px� 
J

Starting %s Task
103*constraints2
Final CleanupZ18-103h px� 
O

Starting %s Task
103*constraints2
Logic OptimizationZ18-103h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2
create_clock2[
Ygig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst_rgmii_rx_clk2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
298@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
O
%s*common26
4Ending Logic Optimization Task | Checksum: d4560260
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 3639.801 ; gain = 0.000 ; free physical = 4485 ; free virtual = 6312h px� 
J
%s*common21
/Ending Final Cleanup Task | Checksum: d4560260
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 3639.801 ; gain = 0.000 ; free physical = 4485 ; free virtual = 6312h px� 
P

Starting %s Task
103*constraints2
Netlist ObfuscationZ18-103h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002
00:00:00.012

3639.8012
0.0002
44852
6312Z17-722h px� 
P
%s*common27
5Ending Netlist Obfuscation Task | Checksum: d4560260
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 3639.801 ; gain = 0.000 ; free physical = 4485 ; free virtual = 6312h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
722
82
02
0Z4-41h px� 
J
%s completed successfully
29*	vivadotcl2

opt_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
opt_design: 2

00:02:282

00:02:322

3639.8012	
903.1052
44772
6310Z17-722h px� 
�
Executing command : %s
56330*	planAhead2q
oreport_drc -file GBCR2_SEU_Test_drc_opted.rpt -pb GBCR2_SEU_Test_drc_opted.pb -rpx GBCR2_SEU_Test_drc_opted.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2q
oreport_drc -file GBCR2_SEU_Test_drc_opted.rpt -pb GBCR2_SEU_Test_drc_opted.pb -rpx GBCR2_SEU_Test_drc_opted.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
6Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
s/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/impl_1/GBCR2_SEU_Test_drc_opted.rpts/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/impl_1/GBCR2_SEU_Test_drc_opted.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2
create_clock2[
Ygig_eth_inst/trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst_rgmii_rx_clk2�
�/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/tri_mode_ethernet_mac_0/synth/tri_mode_ethernet_mac_0_clocks.xdc2
298@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2
00:00:00.092
00:00:00.022

3688.5702
0.0002
44782
6313Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

3688.5702
0.0002
44782
6313Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.292
00:00:00.062

3688.5702
0.0002
44732
6311Z17-722h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote RouteStorage: 2
00:00:00.282
00:00:00.072

3688.5702
0.0002
44712
6311Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2

00:00:002

00:00:002

3688.5702
0.0002
44712
6311Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.012

00:00:002

3688.5702
0.0002
44712
6311Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2
00:00:00.392
00:00:00.092

3688.5702
0.0002
44712
6311Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2o
m/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.runs/impl_1/GBCR2_SEU_Test_opt.dcpZ17-1381h px� 


End Record