###################################################################

# Created by write_sdc on Sat Mar 23 15:47:52 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_wire_load_mode enclosed
set_wire_load_model -name 8000 -library saed90nm_max_lth
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports wb_rst_i]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports arst_i]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_adr_i[2]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_adr_i[1]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_adr_i[0]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[15]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[14]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[13]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[12]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[11]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[10]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[9]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[8]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[7]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[6]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[5]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[4]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[3]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[2]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[1]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_dat_i[0]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports wb_we_i]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports wb_stb_i]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports wb_cyc_i]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_sel_i[1]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports            \
{wb_sel_i[0]}]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports ext_sync_i]
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
set_load -pin_load 10.8251 [get_ports wb_ack_o]
set_load -pin_load 10.8251 [get_ports pit_o]
set_load -pin_load 10.8251 [get_ports pit_irq_o]
set_load -pin_load 10.8251 [get_ports cnt_flag_o]
set_load -pin_load 10.8251 [get_ports cnt_sync_o]
create_clock [get_ports wb_clk_i]  -period 5  -waveform {0 2.5}
set_clock_latency 0.2  [get_clocks wb_clk_i]
set_clock_uncertainty 0.35  [get_clocks wb_clk_i]
create_clock -name V_Clk  -period 5  -waveform {0 2.5}
group_path -name COMB  -from [list [get_ports wb_clk_i] [get_ports wb_rst_i] [get_ports arst_i]      \
[get_ports {wb_adr_i[2]}] [get_ports {wb_adr_i[1]}] [get_ports {wb_adr_i[0]}]  \
[get_ports {wb_dat_i[15]}] [get_ports {wb_dat_i[14]}] [get_ports               \
{wb_dat_i[13]}] [get_ports {wb_dat_i[12]}] [get_ports {wb_dat_i[11]}]          \
[get_ports {wb_dat_i[10]}] [get_ports {wb_dat_i[9]}] [get_ports {wb_dat_i[8]}] \
[get_ports {wb_dat_i[7]}] [get_ports {wb_dat_i[6]}] [get_ports {wb_dat_i[5]}]  \
[get_ports {wb_dat_i[4]}] [get_ports {wb_dat_i[3]}] [get_ports {wb_dat_i[2]}]  \
[get_ports {wb_dat_i[1]}] [get_ports {wb_dat_i[0]}] [get_ports wb_we_i]        \
[get_ports wb_stb_i] [get_ports wb_cyc_i] [get_ports {wb_sel_i[1]}] [get_ports \
{wb_sel_i[0]}] [get_ports ext_sync_i]]  -to [list [get_ports {wb_dat_o[15]}] [get_ports {wb_dat_o[14]}] [get_ports    \
{wb_dat_o[13]}] [get_ports {wb_dat_o[12]}] [get_ports {wb_dat_o[11]}]          \
[get_ports {wb_dat_o[10]}] [get_ports {wb_dat_o[9]}] [get_ports {wb_dat_o[8]}] \
[get_ports {wb_dat_o[7]}] [get_ports {wb_dat_o[6]}] [get_ports {wb_dat_o[5]}]  \
[get_ports {wb_dat_o[4]}] [get_ports {wb_dat_o[3]}] [get_ports {wb_dat_o[2]}]  \
[get_ports {wb_dat_o[1]}] [get_ports {wb_dat_o[0]}] [get_ports wb_ack_o]       \
[get_ports pit_o] [get_ports pit_irq_o] [get_ports cnt_flag_o] [get_ports      \
cnt_sync_o]]
group_path -name INPUTS  -from [list [get_ports wb_rst_i] [get_ports arst_i] [get_ports {wb_adr_i[2]}] \
[get_ports {wb_adr_i[1]}] [get_ports {wb_adr_i[0]}] [get_ports {wb_dat_i[15]}] \
[get_ports {wb_dat_i[14]}] [get_ports {wb_dat_i[13]}] [get_ports               \
{wb_dat_i[12]}] [get_ports {wb_dat_i[11]}] [get_ports {wb_dat_i[10]}]          \
[get_ports {wb_dat_i[9]}] [get_ports {wb_dat_i[8]}] [get_ports {wb_dat_i[7]}]  \
[get_ports {wb_dat_i[6]}] [get_ports {wb_dat_i[5]}] [get_ports {wb_dat_i[4]}]  \
[get_ports {wb_dat_i[3]}] [get_ports {wb_dat_i[2]}] [get_ports {wb_dat_i[1]}]  \
[get_ports {wb_dat_i[0]}] [get_ports wb_we_i] [get_ports wb_stb_i] [get_ports  \
wb_cyc_i] [get_ports {wb_sel_i[1]}] [get_ports {wb_sel_i[0]}] [get_ports       \
ext_sync_i]]
group_path -name OUTPUTS  -to [list [get_ports {wb_dat_o[15]}] [get_ports {wb_dat_o[14]}] [get_ports    \
{wb_dat_o[13]}] [get_ports {wb_dat_o[12]}] [get_ports {wb_dat_o[11]}]          \
[get_ports {wb_dat_o[10]}] [get_ports {wb_dat_o[9]}] [get_ports {wb_dat_o[8]}] \
[get_ports {wb_dat_o[7]}] [get_ports {wb_dat_o[6]}] [get_ports {wb_dat_o[5]}]  \
[get_ports {wb_dat_o[4]}] [get_ports {wb_dat_o[3]}] [get_ports {wb_dat_o[2]}]  \
[get_ports {wb_dat_o[1]}] [get_ports {wb_dat_o[0]}] [get_ports wb_ack_o]       \
[get_ports pit_o] [get_ports pit_irq_o] [get_ports cnt_flag_o] [get_ports      \
cnt_sync_o]]
set_false_path -hold   -from [list [get_ports wb_rst_i] [get_ports arst_i] [get_ports {wb_adr_i[2]}] \
[get_ports {wb_adr_i[1]}] [get_ports {wb_adr_i[0]}] [get_ports {wb_dat_i[15]}] \
[get_ports {wb_dat_i[14]}] [get_ports {wb_dat_i[13]}] [get_ports               \
{wb_dat_i[12]}] [get_ports {wb_dat_i[11]}] [get_ports {wb_dat_i[10]}]          \
[get_ports {wb_dat_i[9]}] [get_ports {wb_dat_i[8]}] [get_ports {wb_dat_i[7]}]  \
[get_ports {wb_dat_i[6]}] [get_ports {wb_dat_i[5]}] [get_ports {wb_dat_i[4]}]  \
[get_ports {wb_dat_i[3]}] [get_ports {wb_dat_i[2]}] [get_ports {wb_dat_i[1]}]  \
[get_ports {wb_dat_i[0]}] [get_ports wb_we_i] [get_ports wb_stb_i] [get_ports  \
wb_cyc_i] [get_ports {wb_sel_i[1]}] [get_ports {wb_sel_i[0]}] [get_ports       \
ext_sync_i]]
set_false_path -hold   -to [list [get_ports {wb_dat_o[15]}] [get_ports {wb_dat_o[14]}] [get_ports    \
{wb_dat_o[13]}] [get_ports {wb_dat_o[12]}] [get_ports {wb_dat_o[11]}]          \
[get_ports {wb_dat_o[10]}] [get_ports {wb_dat_o[9]}] [get_ports {wb_dat_o[8]}] \
[get_ports {wb_dat_o[7]}] [get_ports {wb_dat_o[6]}] [get_ports {wb_dat_o[5]}]  \
[get_ports {wb_dat_o[4]}] [get_ports {wb_dat_o[3]}] [get_ports {wb_dat_o[2]}]  \
[get_ports {wb_dat_o[1]}] [get_ports {wb_dat_o[0]}] [get_ports wb_ack_o]       \
[get_ports pit_o] [get_ports pit_irq_o] [get_ports cnt_flag_o] [get_ports      \
cnt_sync_o]]
set_input_delay -clock wb_clk_i  -max 2  [get_ports wb_rst_i]
set_input_delay -clock wb_clk_i  -max 2  [get_ports arst_i]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_adr_i[2]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_adr_i[1]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_adr_i[0]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[15]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[14]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[13]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[12]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[11]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[10]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[9]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[8]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[7]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[6]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[5]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[4]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[3]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[2]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[1]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_i[0]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports wb_we_i]
set_input_delay -clock V_Clk  -max 0.71  [get_ports wb_stb_i]
set_input_delay -clock wb_clk_i  -max 2  [get_ports wb_cyc_i]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_sel_i[1]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports {wb_sel_i[0]}]
set_input_delay -clock wb_clk_i  -max 2  [get_ports ext_sync_i]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[15]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[14]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[13]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[12]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[11]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[10]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[9]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[8]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[7]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[6]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[5]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[4]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[3]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[2]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[1]}]
set_output_delay -clock wb_clk_i  -max 2  [get_ports {wb_dat_o[0]}]
set_output_delay -clock V_Clk  -max 1.14  [get_ports wb_ack_o]
set_output_delay -clock wb_clk_i  -max 2  [get_ports pit_o]
set_output_delay -clock wb_clk_i  -max 2  [get_ports pit_irq_o]
set_output_delay -clock wb_clk_i  -max 2  [get_ports cnt_flag_o]
set_output_delay -clock wb_clk_i  -max 2  [get_ports cnt_sync_o]
