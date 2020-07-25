vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_7
vlib modelsim_lib/msim/processing_system7_vip_v1_0_9
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/axi_apb_bridge_v3_0_16
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_21
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_20
vlib modelsim_lib/msim/axi_crossbar_v2_1_22
vlib modelsim_lib/msim/lib_fifo_v1_0_14
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/lib_bmg_v1_0_13
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_23
vlib modelsim_lib/msim/axi_vdma_v6_3_9
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/v_tc_v6_1_13
vlib modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vlib modelsim_lib/msim/v_axi4s_vid_out_v4_0_10
vlib modelsim_lib/msim/v_tc_v6_2_0
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_21

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 modelsim_lib/msim/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 modelsim_lib/msim/processing_system7_vip_v1_0_9
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap axi_apb_bridge_v3_0_16 modelsim_lib/msim/axi_apb_bridge_v3_0_16
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 modelsim_lib/msim/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 modelsim_lib/msim/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 modelsim_lib/msim/axi_crossbar_v2_1_22
vmap lib_fifo_v1_0_14 modelsim_lib/msim/lib_fifo_v1_0_14
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 modelsim_lib/msim/lib_bmg_v1_0_13
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_23 modelsim_lib/msim/axi_datamover_v5_1_23
vmap axi_vdma_v6_3_9 modelsim_lib/msim/axi_vdma_v6_3_9
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_13 modelsim_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 modelsim_lib/msim/v_axi4s_vid_out_v4_0_10
vmap v_tc_v6_2_0 modelsim_lib/msim/v_tc_v6_2_0
vmap axi_protocol_converter_v2_1_21 modelsim_lib/msim/axi_protocol_converter_v2_1_21

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/Expansion/opt/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7 -64 -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_9 -64 -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/ip/system_RGBTest_0_0/sim/system_RGBTest_0_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_apb_bridge_v3_0_16 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7b85/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_apb_bridge_0_1/sim/system_axi_apb_bridge_0_1.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_proc_sys_reset_0_0/sim/system_proc_sys_reset_0_0.vhd" \

vlog -work xlconstant_v1_1_7 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconstant_0_0/sim/system_xlconstant_0_0.v" \
"../../../bd/system/ip/system_xlconstant_1_0/sim/system_xlconstant_1_0.v" \
"../../../bd/system/ip/system_xlconstant_0_1/sim/system_xlconstant_0_1.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_20 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work lib_fifo_v1_0_14 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_23 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/af86/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_9 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_9 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_13 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_v_axi4s_vid_out_0_0/sim/system_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_0 -64 -93 \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/111e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_v_tc_0_0/sim/system_v_tc_0_0.vhd" \
"../../../bd/system/ip/system_proc_sys_reset_0_1/sim/system_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_const_HIGH_1_0/sim/system_const_HIGH_1_0.v" \
"../../../bd/system/ipshared/1757/VideoBreakout.v" \
"../../../bd/system/ip/system_VideoBreakout_0_0/sim/system_VideoBreakout_0_0.v" \
"../../../bd/system/ipshared/646e/Breakout.v" \
"../../../bd/system/ip/system_APBSlave_Breakout_1_0/sim/system_APBSlave_Breakout_1_0.v" \
"../../../bd/system/ip/system_xlconstant_0_2/sim/system_xlconstant_0_2.v" \
"../../../bd/system/ip/system_VideoController_0_0/sim/system_VideoController_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_apb_bridge_0_3/sim/system_axi_apb_bridge_0_3.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_APBSlave_Breakout_2_0/sim/system_APBSlave_Breakout_2_0.v" \
"../../../bd/system/ip/system_AudioOutController_0_0/sim/system_AudioOutController_0_0.v" \
"../../../bd/system/ip/system_Synth_0_0/sim/system_Synth_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work axi_protocol_converter_v2_1_21 -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../VivadoKeytar.srcs/sources_1/bd/system/ipshared/7af1/hdl" "+incdir+/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

