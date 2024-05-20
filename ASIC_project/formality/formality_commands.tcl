fm_shell (setup)> start _gui &

FmGui2> fm_shell (setup)> set_svf -append { /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/default.svf /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_count.v /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_prescale.v /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_regs.v /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_top.v /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_wb_bus.v } 

fm_shell (setup)> set_svf -append { /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/default.svf } 

fm_shell (setup)> read_verilog -container r -libname WORK -05 { /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_count.v /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_prescale.v /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_regs.v /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_top.v /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/RTL/pit_wb_bus.v } 

fm_shell (setup)> set_top r:/WORK/pit_top 

fm_shell (setup)> read_verilog -container i -libname WORK -05 { /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/syn/output/pit_top.v } 

fm_shell (setup)> read_db { /home/vlsi/Desktop/dont_deleteee_sec16_solyman/digital_labs/ASIC_project/StandardCell/SAED90nm_EDK_10072017/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/
saed90nm_max_lth.db } 

fm_shell (setup)> set_top i:/WORK/pit_top 

fm_shell (setup)> verify 
