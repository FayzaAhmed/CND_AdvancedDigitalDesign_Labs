################################################################################
#
# Design name:  routing
#
# Created by icc2 write_sdc on Sat May  4 11:31:26 2024
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: default
# Corner: default
# Scenario: default

# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/cons.tcl, \
#   line 2; \
#   /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 81
create_clock -name wb_clk_i -period 5 -waveform {0 2.5} [get_ports {wb_clk_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 83
create_clock -name V_Clk -period 5 -waveform {0 2.5}
set_propagated_clock [get_clocks {wb_clk_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 100
group_path -name COMB -from [get_ports {wb_clk_i wb_rst_i arst_i wb_adr_i[2] \
    wb_adr_i[1] wb_adr_i[0] wb_dat_i[15] wb_dat_i[14] wb_dat_i[13] wb_dat_i[12] \
    wb_dat_i[11] wb_dat_i[10] wb_dat_i[9] wb_dat_i[8] wb_dat_i[7] wb_dat_i[6] \
    wb_dat_i[5] wb_dat_i[4] wb_dat_i[3] wb_dat_i[2] wb_dat_i[1] wb_dat_i[0] \
    wb_we_i wb_stb_i wb_cyc_i wb_sel_i[1] wb_sel_i[0] ext_sync_i}] -to \
    [get_ports {wb_dat_o[15] wb_dat_o[14] wb_dat_o[13] wb_dat_o[12] \
    wb_dat_o[11] wb_dat_o[10] wb_dat_o[9] wb_dat_o[8] wb_dat_o[7] wb_dat_o[6] \
    wb_dat_o[5] wb_dat_o[4] wb_dat_o[3] wb_dat_o[2] wb_dat_o[1] wb_dat_o[0] \
    wb_ack_o pit_o pit_irq_o cnt_flag_o cnt_sync_o}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 110
group_path -name INPUTS -from [get_ports {wb_rst_i arst_i wb_adr_i[2] \
    wb_adr_i[1] wb_adr_i[0] wb_dat_i[15] wb_dat_i[14] wb_dat_i[13] wb_dat_i[12] \
    wb_dat_i[11] wb_dat_i[10] wb_dat_i[9] wb_dat_i[8] wb_dat_i[7] wb_dat_i[6] \
    wb_dat_i[5] wb_dat_i[4] wb_dat_i[3] wb_dat_i[2] wb_dat_i[1] wb_dat_i[0] \
    wb_we_i wb_stb_i wb_cyc_i wb_sel_i[1] wb_sel_i[0] ext_sync_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 118
group_path -name OUTPUTS -to [get_ports {wb_dat_o[15] wb_dat_o[14] wb_dat_o[13] \
    wb_dat_o[12] wb_dat_o[11] wb_dat_o[10] wb_dat_o[9] wb_dat_o[8] wb_dat_o[7] \
    wb_dat_o[6] wb_dat_o[5] wb_dat_o[4] wb_dat_o[3] wb_dat_o[2] wb_dat_o[1] \
    wb_dat_o[0] wb_ack_o pit_o pit_irq_o cnt_flag_o cnt_sync_o}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 128
set_false_path -hold -from [get_ports {wb_rst_i arst_i wb_adr_i[2] wb_adr_i[1] \
    wb_adr_i[0] wb_dat_i[15] wb_dat_i[14] wb_dat_i[13] wb_dat_i[12] \
    wb_dat_i[11] wb_dat_i[10] wb_dat_i[9] wb_dat_i[8] wb_dat_i[7] wb_dat_i[6] \
    wb_dat_i[5] wb_dat_i[4] wb_dat_i[3] wb_dat_i[2] wb_dat_i[1] wb_dat_i[0] \
    wb_we_i wb_stb_i wb_cyc_i wb_sel_i[1] wb_sel_i[0] ext_sync_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 136
set_false_path -hold -to [get_ports {wb_dat_o[15] wb_dat_o[14] wb_dat_o[13] \
    wb_dat_o[12] wb_dat_o[11] wb_dat_o[10] wb_dat_o[9] wb_dat_o[8] wb_dat_o[7] \
    wb_dat_o[6] wb_dat_o[5] wb_dat_o[4] wb_dat_o[3] wb_dat_o[2] wb_dat_o[1] \
    wb_dat_o[0] wb_ack_o pit_o pit_irq_o cnt_flag_o cnt_sync_o}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[15]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[14]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[13]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[12]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[11]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[10]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[9]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[8]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[7]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[6]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[5]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[4]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[3]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[2]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[1]}]
set_load -pin_load 10.8251 [get_ports {wb_dat_o[0]}]
set_load -pin_load 10.8251 [get_ports {wb_ack_o}]
set_load -pin_load 10.8251 [get_ports {pit_o}]
set_load -pin_load 10.8251 [get_ports {pit_irq_o}]
set_load -pin_load 10.8251 [get_ports {cnt_flag_o}]
set_load -pin_load 10.8251 [get_ports {cnt_sync_o}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 0.0782803 [get_clocks {wb_clk_i}]
# -origin useful_skew
set_clock_latency -max 0.0770892 [get_clocks {wb_clk_i}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {wb_clk_i}]
set_clock_uncertainty 0.35 [get_clocks {wb_clk_i}]
set_driving_cell -lib_cell NBUFFX4 [get_ports {wb_clk_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 11
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports {wb_rst_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 12
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports {arst_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 14
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_adr_i[2]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 16
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_adr_i[1]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 18
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_adr_i[0]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 20
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[15]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 22
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[14]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 24
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[13]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 26
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[12]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 28
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[11]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 30
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[10]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 32
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[9]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 34
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[8]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 36
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[7]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 38
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[6]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 40
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[5]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 42
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[4]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 44
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[3]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 46
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[2]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 48
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[1]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 50
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_dat_i[0]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 51
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports {wb_we_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 52
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports {wb_stb_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 53
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports {wb_cyc_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 55
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_sel_i[1]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 57
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {wb_sel_i[0]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 58
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports \
    {ext_sync_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 164
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports \
    {wb_dat_o[15]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 165
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports \
    {wb_dat_o[14]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 166
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports \
    {wb_dat_o[13]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 167
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports \
    {wb_dat_o[12]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 168
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports \
    {wb_dat_o[11]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 169
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports \
    {wb_dat_o[10]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 170
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[9]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 171
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[8]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 172
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[7]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 173
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[6]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 174
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[5]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 175
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[4]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 176
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[3]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 177
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[2]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 178
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[1]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 179
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_o[0]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 180
set_output_delay -clock [get_clocks {V_Clk}] -max 1.14 [get_ports {wb_ack_o}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 137
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_rst_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 138
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {arst_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 139
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_adr_i[2]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 140
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_adr_i[1]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 141
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_adr_i[0]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 142
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[15]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 143
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[14]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 144
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[13]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 145
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[12]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 146
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[11]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 147
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[10]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 148
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[9]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 149
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[8]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 150
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[7]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 151
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[6]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 152
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[5]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 153
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[4]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 154
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[3]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 155
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[2]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 156
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[1]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 157
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_dat_i[0]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 158
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_we_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 159
set_input_delay -clock [get_clocks {V_Clk}] -max 0.71 [get_ports {wb_stb_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 160
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_cyc_i}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 161
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_sel_i[1]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 162
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {wb_sel_i[0]}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 181
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {pit_o}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 182
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {pit_irq_o}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 183
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {cnt_flag_o}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 184
set_output_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {cnt_sync_o}]
# /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.sdc, \
#   line 163
set_input_delay -clock [get_clocks {wb_clk_i}] -max 2 [get_ports {ext_sync_i}]
