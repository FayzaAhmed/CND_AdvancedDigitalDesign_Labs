# Prime Time Setup
# Change the directories acc. to your project loaction

set Design_name pit_top

set search_path /home/vlsi/Desktop/DONOT_DELETE_IT/Standardcell/SAED90nm_EDK_10072017/SAED_EDK90nm

set target_library $search_path/Digital_Standard_cell_Library/synopsys/models/saed90nm_max_lth.db

set link_path "* $target_library"

set Netlist_files  ../output/pit_top_for_pt_v.v

set SPEF_files     ../output/pit_top.out.spef.spef_scenario

set constrains_file ../output/pit_top.out.sdc


