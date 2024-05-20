/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Mar 16 12:05:51 2024
/////////////////////////////////////////////////////////////


module pit_wb_bus_0_16_0 ( wb_dat_o, wb_ack_o, wb_clk_i, wb_rst_i, arst_i, 
        wb_adr_i, wb_dat_i, wb_we_i, wb_stb_i, wb_cyc_i, wb_sel_i, write_regs, 
        async_rst_b, sync_reset, irq_source, read_regs );
  output [15:0] wb_dat_o;
  input [2:0] wb_adr_i;
  input [15:0] wb_dat_i;
  input [1:0] wb_sel_i;
  output [3:0] write_regs;
  input [47:0] read_regs;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, irq_source;
  output wb_ack_o, async_rst_b, sync_reset;
  wire   N26, n12, n13, n14, n1, n2, n3, n8, n9, n10, n11, n15, n16, n17, n18;

  DFFARX1 bus_wait_state_reg ( .D(N26), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n18), 
        .QN(n2) );
  DFFX1 addr_latch_reg_2_ ( .D(n14), .CLK(wb_clk_i), .Q(n17), .QN(n3) );
  DFFX1 addr_latch_reg_1_ ( .D(n13), .CLK(wb_clk_i), .Q(n16), .QN(n1) );
  DFFX1 addr_latch_reg_0_ ( .D(n12), .CLK(wb_clk_i), .Q(n15) );
  DELLN1X2 U3 ( .INP(arst_i), .Z(async_rst_b) );
  NBUFFX2 U4 ( .INP(write_regs[1]), .Z(write_regs[0]) );
  NBUFFX2 U5 ( .INP(write_regs[3]), .Z(write_regs[2]) );
  NBUFFX2 U6 ( .INP(wb_rst_i), .Z(sync_reset) );
  AND3X1 U7 ( .IN1(wb_we_i), .IN2(n8), .IN3(wb_ack_o), .Q(write_regs[3]) );
  AND3X1 U8 ( .IN1(n9), .IN2(wb_ack_o), .IN3(wb_we_i), .Q(write_regs[1]) );
  AO222X1 U9 ( .IN1(read_regs[9]), .IN2(n9), .IN3(read_regs[25]), .IN4(n8), 
        .IN5(read_regs[41]), .IN6(n10), .Q(wb_dat_o[9]) );
  AO222X1 U10 ( .IN1(read_regs[8]), .IN2(n9), .IN3(read_regs[24]), .IN4(n8), 
        .IN5(read_regs[40]), .IN6(n10), .Q(wb_dat_o[8]) );
  AO222X1 U11 ( .IN1(read_regs[7]), .IN2(n9), .IN3(read_regs[23]), .IN4(n8), 
        .IN5(read_regs[39]), .IN6(n10), .Q(wb_dat_o[7]) );
  AO222X1 U12 ( .IN1(read_regs[6]), .IN2(n9), .IN3(read_regs[22]), .IN4(n8), 
        .IN5(read_regs[38]), .IN6(n10), .Q(wb_dat_o[6]) );
  AO222X1 U13 ( .IN1(read_regs[5]), .IN2(n9), .IN3(read_regs[21]), .IN4(n8), 
        .IN5(read_regs[37]), .IN6(n10), .Q(wb_dat_o[5]) );
  AO222X1 U14 ( .IN1(read_regs[4]), .IN2(n9), .IN3(read_regs[20]), .IN4(n8), 
        .IN5(read_regs[36]), .IN6(n10), .Q(wb_dat_o[4]) );
  AO222X1 U15 ( .IN1(read_regs[3]), .IN2(n9), .IN3(read_regs[19]), .IN4(n8), 
        .IN5(read_regs[35]), .IN6(n10), .Q(wb_dat_o[3]) );
  AO222X1 U16 ( .IN1(read_regs[2]), .IN2(n9), .IN3(read_regs[18]), .IN4(n8), 
        .IN5(read_regs[34]), .IN6(n10), .Q(wb_dat_o[2]) );
  AO222X1 U17 ( .IN1(read_regs[1]), .IN2(n9), .IN3(read_regs[17]), .IN4(n8), 
        .IN5(read_regs[33]), .IN6(n10), .Q(wb_dat_o[1]) );
  AO222X1 U18 ( .IN1(read_regs[15]), .IN2(n9), .IN3(read_regs[31]), .IN4(n8), 
        .IN5(read_regs[47]), .IN6(n10), .Q(wb_dat_o[15]) );
  AO222X1 U19 ( .IN1(read_regs[14]), .IN2(n9), .IN3(read_regs[30]), .IN4(n8), 
        .IN5(read_regs[46]), .IN6(n10), .Q(wb_dat_o[14]) );
  AO222X1 U20 ( .IN1(read_regs[13]), .IN2(n9), .IN3(read_regs[29]), .IN4(n8), 
        .IN5(read_regs[45]), .IN6(n10), .Q(wb_dat_o[13]) );
  AO222X1 U21 ( .IN1(read_regs[12]), .IN2(n9), .IN3(read_regs[28]), .IN4(n8), 
        .IN5(read_regs[44]), .IN6(n10), .Q(wb_dat_o[12]) );
  AO222X1 U22 ( .IN1(read_regs[11]), .IN2(n9), .IN3(read_regs[27]), .IN4(n8), 
        .IN5(read_regs[43]), .IN6(n10), .Q(wb_dat_o[11]) );
  AO222X1 U23 ( .IN1(read_regs[10]), .IN2(n9), .IN3(read_regs[26]), .IN4(n8), 
        .IN5(read_regs[42]), .IN6(n10), .Q(wb_dat_o[10]) );
  AO222X1 U24 ( .IN1(read_regs[0]), .IN2(n9), .IN3(read_regs[16]), .IN4(n8), 
        .IN5(read_regs[32]), .IN6(n10), .Q(wb_dat_o[0]) );
  NOR3X0 U25 ( .IN1(n17), .IN2(n15), .IN3(n1), .QN(n10) );
  AND3X1 U26 ( .IN1(n3), .IN2(n1), .IN3(n15), .Q(n8) );
  NOR3X0 U27 ( .IN1(n16), .IN2(n15), .IN3(n17), .QN(n9) );
  NOR2X0 U28 ( .IN1(n2), .IN2(n11), .QN(wb_ack_o) );
  MUX21X1 U29 ( .IN1(wb_adr_i[2]), .IN2(n17), .S(n11), .Q(n14) );
  MUX21X1 U30 ( .IN1(wb_adr_i[1]), .IN2(n16), .S(n11), .Q(n13) );
  MUX21X1 U31 ( .IN1(wb_adr_i[0]), .IN2(n15), .S(n11), .Q(n12) );
  NOR3X0 U32 ( .IN1(n11), .IN2(wb_rst_i), .IN3(n18), .QN(N26) );
  NAND2X0 U33 ( .IN1(wb_stb_i), .IN2(wb_cyc_i), .QN(n11) );
endmodule


module pit_regs_0_16_0_16 ( mod_value, pit_pre_scl, pit_slave, pit_flg_clr, 
        pit_ien, cnt_sync_o, pit_irq_o, bus_clk, async_rst_b, sync_reset, 
        pit_flag, write_bus, write_regs, cnt_flag_o );
  output [15:0] mod_value;
  output [3:0] pit_pre_scl;
  input [15:0] write_bus;
  input [3:0] write_regs;
  input bus_clk, async_rst_b, sync_reset, pit_flag, cnt_flag_o;
  output pit_slave, pit_flg_clr, pit_ien, cnt_sync_o, pit_irq_o;
  wire   N90, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25;

  DFFARX1 mod_value_reg_15_ ( .D(n51), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[15]) );
  DFFARX1 mod_value_reg_14_ ( .D(n50), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[14]) );
  DFFARX1 mod_value_reg_13_ ( .D(n49), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[13]) );
  DFFARX1 mod_value_reg_12_ ( .D(n48), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[12]) );
  DFFARX1 mod_value_reg_11_ ( .D(n47), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[11]) );
  DFFARX1 mod_value_reg_10_ ( .D(n46), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[10]) );
  DFFARX1 mod_value_reg_9_ ( .D(n45), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[9]) );
  DFFARX1 mod_value_reg_8_ ( .D(n44), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[8]) );
  DFFARX1 mod_value_reg_7_ ( .D(n43), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[7]) );
  DFFARX1 mod_value_reg_6_ ( .D(n42), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[6]) );
  DFFARX1 mod_value_reg_5_ ( .D(n41), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[5]) );
  DFFARX1 mod_value_reg_4_ ( .D(n40), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[4]) );
  DFFARX1 mod_value_reg_3_ ( .D(n39), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[3]) );
  DFFARX1 mod_value_reg_2_ ( .D(n38), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[2]) );
  DFFARX1 mod_value_reg_1_ ( .D(n37), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[1]) );
  DFFARX1 mod_value_reg_0_ ( .D(n36), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        mod_value[0]) );
  DFFARX1 pit_slave_reg ( .D(n35), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        pit_slave) );
  DFFARX1 pit_pre_reg_3_ ( .D(n34), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        pit_pre_scl[3]) );
  DFFARX1 pit_pre_reg_2_ ( .D(n33), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        pit_pre_scl[2]) );
  DFFARX1 pit_pre_reg_1_ ( .D(n32), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        pit_pre_scl[1]) );
  DFFARX1 pit_pre_reg_0_ ( .D(n31), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        pit_pre_scl[0]) );
  DFFARX1 cnt_sync_o_reg ( .D(n30), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_sync_o) );
  DFFARX1 pit_ien_reg ( .D(n29), .CLK(bus_clk), .RSTB(async_rst_b), .Q(pit_ien) );
  DFFARX1 pit_flg_clr_reg ( .D(n28), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        pit_flg_clr) );
  DFFARX1 pit_irq_o_reg ( .D(N90), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        pit_irq_o) );
  AO222X1 U3 ( .IN1(write_bus[7]), .IN2(n1), .IN3(n2), .IN4(mod_value[15]), 
        .IN5(write_bus[15]), .IN6(n3), .Q(n51) );
  AO222X1 U4 ( .IN1(write_bus[6]), .IN2(n1), .IN3(n2), .IN4(mod_value[14]), 
        .IN5(write_bus[14]), .IN6(n3), .Q(n50) );
  AO222X1 U5 ( .IN1(write_bus[5]), .IN2(n1), .IN3(n2), .IN4(mod_value[13]), 
        .IN5(write_bus[13]), .IN6(n3), .Q(n49) );
  AO222X1 U6 ( .IN1(write_bus[4]), .IN2(n1), .IN3(n2), .IN4(mod_value[12]), 
        .IN5(write_bus[12]), .IN6(n3), .Q(n48) );
  AO222X1 U7 ( .IN1(write_bus[3]), .IN2(n1), .IN3(n2), .IN4(mod_value[11]), 
        .IN5(write_bus[11]), .IN6(n3), .Q(n47) );
  AO222X1 U8 ( .IN1(write_bus[2]), .IN2(n1), .IN3(n2), .IN4(mod_value[10]), 
        .IN5(write_bus[10]), .IN6(n3), .Q(n46) );
  AO222X1 U9 ( .IN1(write_bus[1]), .IN2(n1), .IN3(n2), .IN4(mod_value[9]), 
        .IN5(write_bus[9]), .IN6(n3), .Q(n45) );
  AO222X1 U10 ( .IN1(write_bus[0]), .IN2(n1), .IN3(n2), .IN4(mod_value[8]), 
        .IN5(write_bus[8]), .IN6(n3), .Q(n44) );
  AND4X1 U11 ( .IN1(write_regs[2]), .IN2(write_regs[3]), .IN3(n4), .IN4(n5), 
        .Q(n3) );
  AOI21X1 U12 ( .IN1(n6), .IN2(n7), .IN3(n8), .QN(n2) );
  NAND2X0 U13 ( .IN1(n5), .IN2(n9), .QN(n7) );
  AND2X1 U14 ( .IN1(n8), .IN2(n5), .Q(n1) );
  NOR3X0 U15 ( .IN1(n10), .IN2(write_regs[2]), .IN3(n9), .QN(n8) );
  INVX0 U16 ( .INP(write_regs[3]), .ZN(n9) );
  INVX0 U17 ( .INP(n4), .ZN(n10) );
  AO22X1 U18 ( .IN1(n11), .IN2(mod_value[7]), .IN3(n12), .IN4(write_bus[7]), 
        .Q(n43) );
  AO22X1 U19 ( .IN1(n11), .IN2(mod_value[6]), .IN3(n12), .IN4(write_bus[6]), 
        .Q(n42) );
  AO22X1 U20 ( .IN1(n11), .IN2(mod_value[5]), .IN3(n12), .IN4(write_bus[5]), 
        .Q(n41) );
  AO22X1 U21 ( .IN1(n11), .IN2(mod_value[4]), .IN3(n12), .IN4(write_bus[4]), 
        .Q(n40) );
  AO22X1 U22 ( .IN1(n11), .IN2(mod_value[3]), .IN3(n12), .IN4(write_bus[3]), 
        .Q(n39) );
  AO22X1 U23 ( .IN1(n11), .IN2(mod_value[2]), .IN3(n12), .IN4(write_bus[2]), 
        .Q(n38) );
  AO22X1 U24 ( .IN1(n11), .IN2(mod_value[1]), .IN3(n12), .IN4(write_bus[1]), 
        .Q(n37) );
  AO22X1 U25 ( .IN1(n11), .IN2(mod_value[0]), .IN3(n12), .IN4(write_bus[0]), 
        .Q(n36) );
  NOR2X0 U26 ( .IN1(n11), .IN2(sync_reset), .QN(n12) );
  INVX0 U27 ( .INP(n6), .ZN(n11) );
  AO21X1 U28 ( .IN1(write_regs[2]), .IN2(n4), .IN3(sync_reset), .Q(n6) );
  AO222X1 U29 ( .IN1(n13), .IN2(write_bus[15]), .IN3(n14), .IN4(write_bus[7]), 
        .IN5(pit_slave), .IN6(n15), .Q(n35) );
  AO222X1 U30 ( .IN1(n13), .IN2(write_bus[11]), .IN3(n14), .IN4(write_bus[3]), 
        .IN5(pit_pre_scl[3]), .IN6(n15), .Q(n34) );
  AO222X1 U31 ( .IN1(n13), .IN2(write_bus[10]), .IN3(n14), .IN4(write_bus[2]), 
        .IN5(pit_pre_scl[2]), .IN6(n15), .Q(n33) );
  AO222X1 U32 ( .IN1(n13), .IN2(write_bus[9]), .IN3(n14), .IN4(write_bus[1]), 
        .IN5(pit_pre_scl[1]), .IN6(n15), .Q(n32) );
  AO222X1 U33 ( .IN1(n13), .IN2(write_bus[8]), .IN3(n14), .IN4(write_bus[0]), 
        .IN5(pit_pre_scl[0]), .IN6(n15), .Q(n31) );
  AND3X1 U34 ( .IN1(n16), .IN2(n5), .IN3(n17), .Q(n15) );
  NOR2X0 U35 ( .IN1(n17), .IN2(sync_reset), .QN(n14) );
  NAND3X0 U36 ( .IN1(n18), .IN2(n19), .IN3(write_regs[1]), .QN(n17) );
  INVX0 U37 ( .INP(write_regs[0]), .ZN(n19) );
  NOR2X0 U38 ( .IN1(n16), .IN2(sync_reset), .QN(n13) );
  NAND3X0 U39 ( .IN1(write_regs[1]), .IN2(n18), .IN3(write_regs[0]), .QN(n16)
         );
  MUX21X1 U40 ( .IN1(n20), .IN2(cnt_sync_o), .S(n21), .Q(n30) );
  AND2X1 U41 ( .IN1(n5), .IN2(write_bus[0]), .Q(n20) );
  MUX21X1 U42 ( .IN1(n22), .IN2(pit_ien), .S(n21), .Q(n29) );
  AND2X1 U43 ( .IN1(n5), .IN2(write_bus[1]), .Q(n22) );
  NAND2X0 U44 ( .IN1(n23), .IN2(n24), .QN(n28) );
  NAND4X0 U45 ( .IN1(write_regs[0]), .IN2(n18), .IN3(write_bus[2]), .IN4(n5), 
        .QN(n24) );
  NAND3X0 U46 ( .IN1(n21), .IN2(n25), .IN3(pit_flg_clr), .QN(n23) );
  XOR2X1 U47 ( .IN1(n18), .IN2(n4), .Q(n25) );
  NOR2X0 U48 ( .IN1(write_regs[0]), .IN2(write_regs[1]), .QN(n4) );
  AOI21X1 U49 ( .IN1(write_regs[0]), .IN2(n18), .IN3(sync_reset), .QN(n21) );
  NOR2X0 U50 ( .IN1(write_regs[2]), .IN2(write_regs[3]), .QN(n18) );
  AND3X1 U51 ( .IN1(pit_ien), .IN2(n5), .IN3(cnt_flag_o), .Q(N90) );
  INVX0 U52 ( .INP(sync_reset), .ZN(n5) );
endmodule


module pit_prescale_15_1_0_DW01_inc_0_DW01_inc_2 ( A, SUM );
  input [14:0] A;
  output [14:0] SUM;

  wire   [14:2] carry;

  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  XOR2X1 U1 ( .IN1(carry[14]), .IN2(A[14]), .Q(SUM[14]) );
  INVX0 U2 ( .INP(A[0]), .ZN(SUM[0]) );
endmodule


module pit_prescale_15_1_0 ( prescale_out, counter_sync, async_rst_b, 
        sync_reset, bus_clk, cnt_sync_o, ext_sync_i, pit_slave, divisor );
  input [3:0] divisor;
  input async_rst_b, sync_reset, bus_clk, cnt_sync_o, ext_sync_i, pit_slave;
  output prescale_out, counter_sync;
  wire   N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65,
         N66, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n520, n530, n540, n550,
         n560, n570, n580, n590, n600;

  DFFASX1 cnt_n_reg_0_ ( .D(N52), .CLK(bus_clk), .SETB(async_rst_b), .QN(n600)
         );
  DFFARX1 cnt_n_reg_1_ ( .D(N53), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n540)
         );
  DFFARX1 cnt_n_reg_2_ ( .D(N54), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n530)
         );
  DFFARX1 cnt_n_reg_3_ ( .D(N55), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n520)
         );
  DFFARX1 cnt_n_reg_4_ ( .D(N56), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n51)
         );
  DFFARX1 cnt_n_reg_5_ ( .D(N57), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n50)
         );
  DFFARX1 cnt_n_reg_6_ ( .D(N58), .CLK(bus_clk), .RSTB(async_rst_b), .Q(n3), 
        .QN(n49) );
  DFFARX1 cnt_n_reg_7_ ( .D(N59), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n48)
         );
  DFFARX1 cnt_n_reg_8_ ( .D(N60), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n47)
         );
  DFFARX1 cnt_n_reg_9_ ( .D(N61), .CLK(bus_clk), .RSTB(async_rst_b), .Q(n1), 
        .QN(n46) );
  DFFARX1 cnt_n_reg_10_ ( .D(N62), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n590) );
  DFFARX1 cnt_n_reg_11_ ( .D(N63), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n580) );
  DFFARX1 cnt_n_reg_12_ ( .D(N64), .CLK(bus_clk), .RSTB(async_rst_b), .Q(n2), 
        .QN(n570) );
  DFFARX1 cnt_n_reg_13_ ( .D(N65), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n560) );
  DFFARX1 cnt_n_reg_14_ ( .D(N66), .CLK(bus_clk), .RSTB(async_rst_b), .QN(n550) );
  pit_prescale_15_1_0_DW01_inc_0_DW01_inc_2 add_122_aco ( .A({N96, N95, N94, 
        N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82}), .SUM({
        N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, 
        N52}) );
  NAND2X0 U3 ( .IN1(n4), .IN2(n5), .QN(prescale_out) );
  NAND3X0 U4 ( .IN1(ext_sync_i), .IN2(n6), .IN3(pit_slave), .QN(n5) );
  NOR2X0 U5 ( .IN1(n550), .IN2(n7), .QN(N96) );
  NOR2X0 U6 ( .IN1(n560), .IN2(n7), .QN(N95) );
  NOR2X0 U7 ( .IN1(n570), .IN2(n7), .QN(N94) );
  NOR2X0 U8 ( .IN1(n580), .IN2(n7), .QN(N93) );
  NOR2X0 U9 ( .IN1(n590), .IN2(n7), .QN(N92) );
  NOR2X0 U10 ( .IN1(n46), .IN2(n7), .QN(N91) );
  NOR2X0 U11 ( .IN1(n47), .IN2(n7), .QN(N90) );
  NOR2X0 U12 ( .IN1(n48), .IN2(n7), .QN(N89) );
  NOR2X0 U13 ( .IN1(n49), .IN2(n7), .QN(N88) );
  NOR2X0 U14 ( .IN1(n50), .IN2(n7), .QN(N87) );
  NOR2X0 U15 ( .IN1(n51), .IN2(n7), .QN(N86) );
  NOR2X0 U16 ( .IN1(n520), .IN2(n7), .QN(N85) );
  NOR2X0 U17 ( .IN1(n530), .IN2(n7), .QN(N84) );
  NOR2X0 U18 ( .IN1(n540), .IN2(n7), .QN(N83) );
  NOR2X0 U19 ( .IN1(n600), .IN2(n7), .QN(N82) );
  NAND2X0 U20 ( .IN1(counter_sync), .IN2(n4), .QN(n7) );
  NAND4X0 U21 ( .IN1(n8), .IN2(n9), .IN3(n10), .IN4(n11), .QN(n4) );
  NOR4X0 U22 ( .IN1(n12), .IN2(n13), .IN3(n14), .IN4(n15), .QN(n11) );
  XOR2X1 U23 ( .IN1(n16), .IN2(n520), .Q(n15) );
  MUX21X1 U24 ( .IN1(n17), .IN2(n18), .S(divisor[0]), .Q(n16) );
  NAND2X0 U25 ( .IN1(divisor[1]), .IN2(n19), .QN(n18) );
  NAND2X0 U26 ( .IN1(divisor[2]), .IN2(n20), .QN(n17) );
  XOR2X1 U27 ( .IN1(n21), .IN2(n530), .Q(n14) );
  MUX21X1 U28 ( .IN1(n22), .IN2(n23), .S(divisor[1]), .Q(n21) );
  NAND2X0 U29 ( .IN1(n19), .IN2(n24), .QN(n23) );
  NAND2X0 U30 ( .IN1(n25), .IN2(n26), .QN(n13) );
  XNOR2X1 U31 ( .IN1(n540), .IN2(n27), .Q(n26) );
  NAND3X0 U32 ( .IN1(n28), .IN2(n20), .IN3(n29), .QN(n27) );
  XOR2X1 U33 ( .IN1(divisor[2]), .IN2(divisor[0]), .Q(n29) );
  XOR2X1 U34 ( .IN1(n48), .IN2(n30), .Q(n25) );
  XNOR2X1 U35 ( .IN1(n6), .IN2(n600), .Q(n12) );
  AND3X1 U36 ( .IN1(n24), .IN2(n28), .IN3(n19), .Q(n6) );
  NOR2X0 U37 ( .IN1(divisor[2]), .IN2(divisor[3]), .QN(n19) );
  NOR3X0 U38 ( .IN1(n31), .IN2(n2), .IN3(n32), .QN(n10) );
  MUX21X1 U39 ( .IN1(n33), .IN2(n34), .S(n35), .Q(n32) );
  OR3X1 U40 ( .IN1(n560), .IN2(n51), .IN3(n590), .Q(n34) );
  NAND3X0 U41 ( .IN1(n560), .IN2(n36), .IN3(n51), .QN(n33) );
  OR2X1 U42 ( .IN1(n30), .IN2(n47), .Q(n36) );
  MUX21X1 U43 ( .IN1(n3), .IN2(n37), .S(n38), .Q(n31) );
  OR2X1 U44 ( .IN1(n49), .IN2(n50), .Q(n37) );
  MUX21X1 U45 ( .IN1(n39), .IN2(n40), .S(divisor[3]), .Q(n9) );
  NOR4X0 U46 ( .IN1(n41), .IN2(n550), .IN3(n46), .IN4(n50), .QN(n40) );
  OR2X1 U47 ( .IN1(n590), .IN2(n580), .Q(n41) );
  OA221X1 U48 ( .IN1(n50), .IN2(n38), .IN3(n590), .IN4(n35), .IN5(n42), .Q(n39) );
  AND2X1 U49 ( .IN1(n580), .IN2(n550), .Q(n42) );
  OAI21X1 U50 ( .IN1(n22), .IN2(divisor[1]), .IN3(n43), .QN(n38) );
  MUX21X1 U51 ( .IN1(n1), .IN2(n44), .S(n47), .Q(n8) );
  NOR3X0 U52 ( .IN1(n45), .IN2(n30), .IN3(n35), .QN(n44) );
  NOR2X0 U53 ( .IN1(n22), .IN2(n28), .QN(n35) );
  INVX0 U54 ( .INP(divisor[1]), .ZN(n28) );
  NAND3X0 U55 ( .IN1(divisor[2]), .IN2(n20), .IN3(divisor[0]), .QN(n22) );
  INVX0 U56 ( .INP(n43), .ZN(n30) );
  NAND4X0 U57 ( .IN1(divisor[1]), .IN2(divisor[2]), .IN3(n24), .IN4(n20), .QN(
        n43) );
  INVX0 U58 ( .INP(divisor[3]), .ZN(n20) );
  INVX0 U59 ( .INP(divisor[0]), .ZN(n24) );
  NOR2X0 U60 ( .IN1(n46), .IN2(divisor[3]), .QN(n45) );
  MUX21X1 U61 ( .IN1(cnt_sync_o), .IN2(ext_sync_i), .S(pit_slave), .Q(
        counter_sync) );
endmodule


module pit_count_COUNT_SIZE16_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  XOR2X1 U1 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
  INVX0 U2 ( .INP(A[0]), .ZN(SUM[0]) );
endmodule


module pit_count_COUNT_SIZE16 ( cnt_n, cnt_flag_o, pit_o, async_rst_b, 
        sync_reset, bus_clk, counter_sync, prescale_out, pit_flg_clr, 
        mod_value );
  output [15:0] cnt_n;
  input [15:0] mod_value;
  input async_rst_b, sync_reset, bus_clk, counter_sync, prescale_out,
         pit_flg_clr;
  output cnt_flag_o, pit_o;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22,
         N23, N24, N50, n180, n190, n200, n210, n220, n230, n240, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n6, n7,
         n8, n90, n100, n110, n120, n130, n140, n150, n160, n170, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n500,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67;

  DFFASX1 cnt_n_reg_0_ ( .D(n34), .CLK(bus_clk), .SETB(async_rst_b), .Q(
        cnt_n[0]), .QN(n65) );
  DFFARX1 cnt_n_reg_15_ ( .D(n33), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[15]), .QN(n67) );
  DFFARX1 cnt_n_reg_1_ ( .D(n190), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[1]), .QN(n64) );
  DFFARX1 cnt_n_reg_2_ ( .D(n200), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[2]), .QN(n66) );
  DFFARX1 cnt_n_reg_3_ ( .D(n210), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[3]), .QN(n60) );
  DFFARX1 cnt_n_reg_4_ ( .D(n220), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[4]), .QN(n61) );
  DFFARX1 cnt_n_reg_5_ ( .D(n230), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[5]), .QN(n62) );
  DFFARX1 cnt_n_reg_6_ ( .D(n240), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[6]), .QN(n63) );
  DFFARX1 cnt_n_reg_7_ ( .D(n25), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[7]), .QN(n56) );
  DFFARX1 cnt_n_reg_8_ ( .D(n26), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[8]), .QN(n57) );
  DFFARX1 cnt_n_reg_9_ ( .D(n27), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[9]), .QN(n58) );
  DFFARX1 cnt_n_reg_10_ ( .D(n28), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[10]), .QN(n59) );
  DFFARX1 cnt_n_reg_11_ ( .D(n29), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[11]), .QN(n52) );
  DFFARX1 cnt_n_reg_12_ ( .D(n30), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[12]), .QN(n53) );
  DFFARX1 cnt_n_reg_13_ ( .D(n31), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[13]), .QN(n54) );
  DFFARX1 cnt_n_reg_14_ ( .D(n32), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_n[14]), .QN(n55) );
  DFFARX1 cnt_flag_o_reg ( .D(n180), .CLK(bus_clk), .RSTB(async_rst_b), .Q(
        cnt_flag_o) );
  DFFARX1 pit_o_reg ( .D(N50), .CLK(bus_clk), .RSTB(async_rst_b), .Q(pit_o) );
  pit_count_COUNT_SIZE16_DW01_inc_0_DW01_inc_1 add_76 ( .A(cnt_n), .SUM({N24, 
        N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, 
        N9}) );
  AO221X1 U3 ( .IN1(n1), .IN2(cnt_n[0]), .IN3(N9), .IN4(n2), .IN5(n3), .Q(n34)
         );
  AO22X1 U4 ( .IN1(N24), .IN2(n2), .IN3(n1), .IN4(cnt_n[15]), .Q(n33) );
  AO22X1 U5 ( .IN1(N23), .IN2(n2), .IN3(n1), .IN4(cnt_n[14]), .Q(n32) );
  AO22X1 U6 ( .IN1(N22), .IN2(n2), .IN3(n1), .IN4(cnt_n[13]), .Q(n31) );
  AO22X1 U7 ( .IN1(N21), .IN2(n2), .IN3(n1), .IN4(cnt_n[12]), .Q(n30) );
  AO22X1 U8 ( .IN1(N20), .IN2(n2), .IN3(n1), .IN4(cnt_n[11]), .Q(n29) );
  AO22X1 U9 ( .IN1(N19), .IN2(n2), .IN3(n1), .IN4(cnt_n[10]), .Q(n28) );
  AO22X1 U10 ( .IN1(N18), .IN2(n2), .IN3(n1), .IN4(cnt_n[9]), .Q(n27) );
  AO22X1 U11 ( .IN1(N17), .IN2(n2), .IN3(n1), .IN4(cnt_n[8]), .Q(n26) );
  AO22X1 U12 ( .IN1(N16), .IN2(n2), .IN3(n1), .IN4(cnt_n[7]), .Q(n25) );
  AO22X1 U13 ( .IN1(N15), .IN2(n2), .IN3(n1), .IN4(cnt_n[6]), .Q(n240) );
  AO22X1 U14 ( .IN1(N14), .IN2(n2), .IN3(n1), .IN4(cnt_n[5]), .Q(n230) );
  AO22X1 U15 ( .IN1(N13), .IN2(n2), .IN3(n1), .IN4(cnt_n[4]), .Q(n220) );
  AO22X1 U16 ( .IN1(N12), .IN2(n2), .IN3(n1), .IN4(cnt_n[3]), .Q(n210) );
  AO22X1 U17 ( .IN1(N11), .IN2(n2), .IN3(n1), .IN4(cnt_n[2]), .Q(n200) );
  AO22X1 U18 ( .IN1(N10), .IN2(n2), .IN3(n1), .IN4(cnt_n[1]), .Q(n190) );
  NOR2X0 U19 ( .IN1(n3), .IN2(n2), .QN(n1) );
  INVX0 U20 ( .INP(n4), .ZN(n3) );
  AND2X1 U21 ( .IN1(n4), .IN2(prescale_out), .Q(n2) );
  NOR3X0 U22 ( .IN1(n5), .IN2(n6), .IN3(n7), .QN(n4) );
  NOR3X0 U23 ( .IN1(n7), .IN2(pit_flg_clr), .IN3(n8), .QN(n180) );
  NOR2X0 U24 ( .IN1(n6), .IN2(cnt_flag_o), .QN(n8) );
  NOR3X0 U25 ( .IN1(n90), .IN2(sync_reset), .IN3(n7), .QN(N50) );
  INVX0 U26 ( .INP(counter_sync), .ZN(n7) );
  INVX0 U27 ( .INP(n6), .ZN(n90) );
  OA21X1 U28 ( .IN1(n100), .IN2(n5), .IN3(prescale_out), .Q(n6) );
  NOR4X0 U29 ( .IN1(n110), .IN2(n120), .IN3(n130), .IN4(n140), .QN(n5) );
  OR4X1 U30 ( .IN1(mod_value[2]), .IN2(mod_value[3]), .IN3(mod_value[4]), 
        .IN4(mod_value[5]), .Q(n140) );
  OR4X1 U31 ( .IN1(mod_value[6]), .IN2(mod_value[7]), .IN3(mod_value[8]), 
        .IN4(mod_value[9]), .Q(n130) );
  OR3X1 U32 ( .IN1(mod_value[11]), .IN2(mod_value[12]), .IN3(mod_value[10]), 
        .Q(n120) );
  OR4X1 U33 ( .IN1(mod_value[13]), .IN2(mod_value[14]), .IN3(mod_value[15]), 
        .IN4(mod_value[1]), .Q(n110) );
  NOR4X0 U34 ( .IN1(n150), .IN2(n160), .IN3(n170), .IN4(n35), .QN(n100) );
  NAND4X0 U35 ( .IN1(n36), .IN2(n37), .IN3(n38), .IN4(n39), .QN(n35) );
  XOR2X1 U36 ( .IN1(n52), .IN2(mod_value[11]), .Q(n39) );
  XOR2X1 U37 ( .IN1(n53), .IN2(mod_value[12]), .Q(n38) );
  XOR2X1 U38 ( .IN1(n54), .IN2(mod_value[13]), .Q(n37) );
  XOR2X1 U39 ( .IN1(n55), .IN2(mod_value[14]), .Q(n36) );
  NAND4X0 U40 ( .IN1(n40), .IN2(n41), .IN3(n42), .IN4(n43), .QN(n170) );
  XOR2X1 U41 ( .IN1(n59), .IN2(mod_value[10]), .Q(n43) );
  XOR2X1 U42 ( .IN1(n56), .IN2(mod_value[7]), .Q(n42) );
  XOR2X1 U43 ( .IN1(n57), .IN2(mod_value[8]), .Q(n41) );
  XOR2X1 U44 ( .IN1(n58), .IN2(mod_value[9]), .Q(n40) );
  NAND4X0 U45 ( .IN1(n44), .IN2(n45), .IN3(n46), .IN4(n47), .QN(n160) );
  XOR2X1 U46 ( .IN1(n60), .IN2(mod_value[3]), .Q(n47) );
  XOR2X1 U47 ( .IN1(n61), .IN2(mod_value[4]), .Q(n46) );
  XOR2X1 U48 ( .IN1(n62), .IN2(mod_value[5]), .Q(n45) );
  XOR2X1 U49 ( .IN1(n63), .IN2(mod_value[6]), .Q(n44) );
  NAND4X0 U50 ( .IN1(n48), .IN2(n49), .IN3(n500), .IN4(n51), .QN(n150) );
  XOR2X1 U51 ( .IN1(n65), .IN2(mod_value[0]), .Q(n51) );
  XOR2X1 U52 ( .IN1(n67), .IN2(mod_value[15]), .Q(n500) );
  XOR2X1 U53 ( .IN1(n64), .IN2(mod_value[1]), .Q(n49) );
  XOR2X1 U54 ( .IN1(n66), .IN2(mod_value[2]), .Q(n48) );
endmodule


module pit_top ( wb_dat_o, wb_ack_o, wb_clk_i, wb_rst_i, arst_i, wb_adr_i, 
        wb_dat_i, wb_we_i, wb_stb_i, wb_cyc_i, wb_sel_i, pit_o, pit_irq_o, 
        cnt_flag_o, cnt_sync_o, ext_sync_i );
  output [15:0] wb_dat_o;
  input [2:0] wb_adr_i;
  input [15:0] wb_dat_i;
  input [1:0] wb_sel_i;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, ext_sync_i;
  output wb_ack_o, pit_o, pit_irq_o, cnt_flag_o, cnt_sync_o;
  wire   sync_reset, async_rst_b, pit_slave, pit_ien, pit_flg_clr,
         prescale_out, counter_sync;
  wire   [3:0] write_regs;
  wire   [15:0] cnt_n;
  wire   [15:0] mod_value;
  wire   [3:0] pit_pre_scl;

  pit_wb_bus_0_16_0 wishbone ( .wb_dat_o(wb_dat_o), .wb_ack_o(wb_ack_o), 
        .wb_clk_i(wb_clk_i), .wb_rst_i(wb_rst_i), .arst_i(arst_i), .wb_adr_i(
        wb_adr_i), .wb_dat_i(wb_dat_i), .wb_we_i(wb_we_i), .wb_stb_i(wb_stb_i), 
        .wb_cyc_i(wb_cyc_i), .wb_sel_i(wb_sel_i), .write_regs(write_regs), 
        .async_rst_b(async_rst_b), .sync_reset(sync_reset), .irq_source(
        cnt_flag_o), .read_regs({cnt_n, mod_value, pit_slave, 1'b1, 1'b0, 1'b0, 
        pit_pre_scl, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, cnt_flag_o, pit_ien, 
        cnt_sync_o}) );
  pit_regs_0_16_0_16 regs ( .mod_value(mod_value), .pit_pre_scl(pit_pre_scl), 
        .pit_slave(pit_slave), .pit_flg_clr(pit_flg_clr), .pit_ien(pit_ien), 
        .cnt_sync_o(cnt_sync_o), .pit_irq_o(pit_irq_o), .bus_clk(wb_clk_i), 
        .async_rst_b(async_rst_b), .sync_reset(sync_reset), .pit_flag(1'b0), 
        .write_bus(wb_dat_i), .write_regs(write_regs), .cnt_flag_o(cnt_flag_o)
         );
  pit_prescale_15_1_0 prescale ( .prescale_out(prescale_out), .counter_sync(
        counter_sync), .async_rst_b(async_rst_b), .sync_reset(sync_reset), 
        .bus_clk(wb_clk_i), .cnt_sync_o(cnt_sync_o), .ext_sync_i(ext_sync_i), 
        .pit_slave(pit_slave), .divisor(pit_pre_scl) );
  pit_count_COUNT_SIZE16 counter ( .cnt_n(cnt_n), .cnt_flag_o(cnt_flag_o), 
        .pit_o(pit_o), .async_rst_b(async_rst_b), .sync_reset(sync_reset), 
        .bus_clk(wb_clk_i), .counter_sync(counter_sync), .prescale_out(
        prescale_out), .pit_flg_clr(pit_flg_clr), .mod_value(mod_value) );
endmodule

