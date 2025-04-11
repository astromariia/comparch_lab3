// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Apr 11 16:34:06 2025
// Host        : CEAT-ENDV350-02L running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/02-comp-arch-f/Desktop/ecen4243S25/lab3/lab3/lab2.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input doneM;
  input [31:0]readDataM;
  output [31:0]writeDataM;
  output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  wire [31:0]addressM;
  wire clk;
  wire doneM;
  wire [31:0]readDataM;
  wire reset;
  wire [31:0]writeDataM;

  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_top inst
       (.AXIStart(AXIStart),
        .DRW(DRW),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM));
endmodule

(* ORIG_REF_NAME = "MemControl" *) 
module design_1_top_0_0_MemControl
   (Done,
    MStrobe,
    MemWrite,
    Trigger,
    clk,
    reset,
    DRW,
    AXIstart);
  output Done;
  input MStrobe;
  input MemWrite;
  input Trigger;
  input clk;
  input reset;
  output DRW;
  output AXIstart;

  wire AXIstart;
  wire DRW;
  wire Done;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire MStrobe;
  wire MemWrite;
  wire Trigger;
  wire clk;
  wire [0:0]nextstate;
  wire reset;
  wire [2:0]state;

  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'h01)) 
    Done_INST_0
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(Done));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(nextstate),
        .I1(reset),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010105D585858)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[1]),
        .I1(Trigger),
        .I2(state[2]),
        .I3(MemWrite),
        .I4(MStrobe),
        .I5(state[0]),
        .O(nextstate));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT5 #(
    .INIT(32'h00001A12)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(Trigger),
        .I4(reset),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(MStrobe),
        .I3(MemWrite),
        .I4(state[1]),
        .I5(reset),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder
   (\q_reg[62] ,
    PCTargetEmux,
    Q,
    S,
    \q_reg[7] ,
    \q_reg[11] ,
    \q_reg[15] ,
    \q_reg[19] ,
    \q_reg[23] ,
    \q_reg[27] ,
    \q_reg[31] );
  output [27:0]\q_reg[62] ;
  output [3:0]PCTargetEmux;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]\q_reg[7] ;
  input [3:0]\q_reg[11] ;
  input [3:0]\q_reg[15] ;
  input [3:0]\q_reg[19] ;
  input [3:0]\q_reg[23] ;
  input [3:0]\q_reg[27] ;
  input [3:0]\q_reg[31] ;

  wire [3:0]PCTargetEmux;
  wire [30:0]Q;
  wire [3:0]S;
  wire [3:0]\q_reg[11] ;
  wire [3:0]\q_reg[15] ;
  wire [3:0]\q_reg[19] ;
  wire [3:0]\q_reg[23] ;
  wire [3:0]\q_reg[27] ;
  wire [3:0]\q_reg[31] ;
  wire [27:0]\q_reg[62] ;
  wire [3:0]\q_reg[7] ;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_1;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:3]NLW_y_carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({\q_reg[62] [0],PCTargetEmux[2:0]}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\q_reg[62] [4:1]),
        .S(\q_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\q_reg[62] [8:5]),
        .S(\q_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(\q_reg[62] [12:9]),
        .S(\q_reg[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(\q_reg[62] [16:13]),
        .S(\q_reg[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(\q_reg[62] [20:17]),
        .S(\q_reg[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(\q_reg[62] [24:21]),
        .S(\q_reg[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3],y_carry__6_n_1,y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O({\q_reg[62] [27],PCTargetEmux[3],\q_reg[62] [26:25]}),
        .S(\q_reg[31] ));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder_0
   (\q_reg[31] ,
    O,
    D,
    Q,
    PCSrcE);
  output [27:0]\q_reg[31] ;
  output [0:0]O;
  output [28:0]D;
  input [29:0]Q;
  input PCSrcE;

  wire [28:0]D;
  wire [0:0]O;
  wire PCSrcE;
  wire [29:0]Q;
  wire [27:0]\q_reg[31] ;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:0]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_y_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[10]_i_1__2 
       (.I0(\q_reg[31] [7]),
        .I1(PCSrcE),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[11]_i_1__2 
       (.I0(\q_reg[31] [8]),
        .I1(PCSrcE),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[12]_i_1__2 
       (.I0(\q_reg[31] [9]),
        .I1(PCSrcE),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[13]_i_1__2 
       (.I0(\q_reg[31] [10]),
        .I1(PCSrcE),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[14]_i_1__2 
       (.I0(\q_reg[31] [11]),
        .I1(PCSrcE),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[15]_i_1__2 
       (.I0(\q_reg[31] [12]),
        .I1(PCSrcE),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[16]_i_1__1 
       (.I0(\q_reg[31] [13]),
        .I1(PCSrcE),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[17]_i_1__2 
       (.I0(\q_reg[31] [14]),
        .I1(PCSrcE),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[18]_i_1__1 
       (.I0(\q_reg[31] [15]),
        .I1(PCSrcE),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[19]_i_1__1 
       (.I0(\q_reg[31] [16]),
        .I1(PCSrcE),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[20]_i_1__1 
       (.I0(\q_reg[31] [17]),
        .I1(PCSrcE),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[21]_i_1__1 
       (.I0(\q_reg[31] [18]),
        .I1(PCSrcE),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[22]_i_1__1 
       (.I0(\q_reg[31] [19]),
        .I1(PCSrcE),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[23]_i_1__1 
       (.I0(\q_reg[31] [20]),
        .I1(PCSrcE),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[24]_i_1__1 
       (.I0(\q_reg[31] [21]),
        .I1(PCSrcE),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[25]_i_1__1 
       (.I0(\q_reg[31] [22]),
        .I1(PCSrcE),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[26]_i_1__1 
       (.I0(\q_reg[31] [23]),
        .I1(PCSrcE),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[27]_i_1__1 
       (.I0(\q_reg[31] [24]),
        .I1(PCSrcE),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[28]_i_1__1 
       (.I0(\q_reg[31] [25]),
        .I1(PCSrcE),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[29]_i_1__1 
       (.I0(\q_reg[31] [26]),
        .I1(PCSrcE),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[30]_i_1__1 
       (.I0(O),
        .I1(PCSrcE),
        .O(D[27]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[31]_i_1__1 
       (.I0(\q_reg[31] [27]),
        .I1(PCSrcE),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[3]_i_1__2 
       (.I0(\q_reg[31] [0]),
        .I1(PCSrcE),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[4]_i_1__2 
       (.I0(\q_reg[31] [1]),
        .I1(PCSrcE),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[5]_i_1__2 
       (.I0(\q_reg[31] [2]),
        .I1(PCSrcE),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_i_1__2 
       (.I0(\q_reg[31] [3]),
        .I1(PCSrcE),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_1__2 
       (.I0(\q_reg[31] [4]),
        .I1(PCSrcE),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[8]_i_1__2 
       (.I0(\q_reg[31] [5]),
        .I1(PCSrcE),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[9]_i_1__2 
       (.I0(\q_reg[31] [6]),
        .I1(PCSrcE),
        .O(D[6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(\q_reg[31] [3:0]),
        .S(Q[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(\q_reg[31] [7:4]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(\q_reg[31] [11:8]),
        .S(Q[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(\q_reg[31] [15:12]),
        .S(Q[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(\q_reg[31] [19:16]),
        .S(Q[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(\q_reg[31] [23:20]),
        .S(Q[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O({O,\q_reg[31] [26:24]}),
        .S(Q[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO(NLW_y_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3:1],\q_reg[31] [27]}),
        .S({1'b0,1'b0,1'b0,Q[29]}));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module design_1_top_0_0_alu
   (CO,
    DI,
    S,
    result2_carry__1_0,
    result2_carry__1_1,
    result2_carry__2_0,
    result2_carry__2_1,
    \q_reg[69] ,
    \q_reg[69]_0 );
  output [0:0]CO;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]result2_carry__1_0;
  input [3:0]result2_carry__1_1;
  input [3:0]result2_carry__2_0;
  input [3:0]result2_carry__2_1;
  input [3:0]\q_reg[69] ;
  input [3:0]\q_reg[69]_0 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire [3:0]\q_reg[69] ;
  wire [3:0]\q_reg[69]_0 ;
  wire result2_carry__0_n_0;
  wire result2_carry__0_n_1;
  wire result2_carry__0_n_2;
  wire result2_carry__0_n_3;
  wire [3:0]result2_carry__1_0;
  wire [3:0]result2_carry__1_1;
  wire result2_carry__1_n_0;
  wire result2_carry__1_n_1;
  wire result2_carry__1_n_2;
  wire result2_carry__1_n_3;
  wire [3:0]result2_carry__2_0;
  wire [3:0]result2_carry__2_1;
  wire result2_carry__2_n_1;
  wire result2_carry__2_n_2;
  wire result2_carry__2_n_3;
  wire result2_carry_n_0;
  wire result2_carry_n_1;
  wire result2_carry_n_2;
  wire result2_carry_n_3;
  wire [3:0]NLW_result2_carry_O_UNCONNECTED;
  wire [3:0]NLW_result2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_result2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_result2_carry__2_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 result2_carry
       (.CI(1'b0),
        .CO({result2_carry_n_0,result2_carry_n_1,result2_carry_n_2,result2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_result2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 result2_carry__0
       (.CI(result2_carry_n_0),
        .CO({result2_carry__0_n_0,result2_carry__0_n_1,result2_carry__0_n_2,result2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(result2_carry__1_0),
        .O(NLW_result2_carry__0_O_UNCONNECTED[3:0]),
        .S(result2_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 result2_carry__1
       (.CI(result2_carry__0_n_0),
        .CO({result2_carry__1_n_0,result2_carry__1_n_1,result2_carry__1_n_2,result2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(result2_carry__2_0),
        .O(NLW_result2_carry__1_O_UNCONNECTED[3:0]),
        .S(result2_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 result2_carry__2
       (.CI(result2_carry__1_n_0),
        .CO({CO,result2_carry__2_n_1,result2_carry__2_n_2,result2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\q_reg[69] ),
        .O(NLW_result2_carry__2_O_UNCONNECTED[3:0]),
        .S(\q_reg[69]_0 ));
endmodule

(* ORIG_REF_NAME = "controller" *) 
module design_1_top_0_0_controller
   (D,
    \q_reg[9] ,
    Q,
    PCSrcE,
    \q_reg[2] ,
    \q_reg[9]_0 ,
    \q_reg[10] ,
    \q_reg[9]_1 ,
    \q_reg[8] ,
    \q_reg[8]_0 ,
    \q_reg[8]_1 ,
    ResultW,
    \q_reg[5] ,
    \q_reg[11] ,
    \q_reg[9]_2 ,
    WriteDataM,
    \q_reg[7] ,
    \q_reg[2]_0 ,
    \q_reg[1] ,
    \q_reg[8]_2 ,
    PCPlus4F,
    PCTargetEmux,
    \q_reg[2]_1 ,
    InstrF,
    \q[31]_i_4 ,
    \q_reg[92] ,
    \q_reg[92]_0 ,
    \q_reg[92]_1 ,
    \q_reg[93] ,
    \q_reg[93]_0 ,
    \q_reg[93]_1 ,
    \q_reg[94] ,
    \q_reg[94]_0 ,
    \q_reg[94]_1 ,
    \q_reg[95] ,
    \q_reg[95]_0 ,
    \q_reg[95]_1 ,
    \q_reg[96] ,
    \q_reg[96]_0 ,
    \q_reg[96]_1 ,
    \q_reg[97] ,
    \q_reg[97]_0 ,
    \q_reg[97]_1 ,
    \q_reg[98] ,
    \q_reg[98]_0 ,
    \q_reg[98]_1 ,
    O,
    \q_reg[100] ,
    \q_reg[76] ,
    \q_reg[76]_0 ,
    \q_reg[76]_1 ,
    \q_reg[90] ,
    \q_reg[90]_0 ,
    \q_reg[90]_1 ,
    \q_reg[91] ,
    \q_reg[91]_0 ,
    \q_reg[91]_1 ,
    \q_reg[89] ,
    \q_reg[89]_0 ,
    \q_reg[89]_1 ,
    \q_reg[88] ,
    \q_reg[88]_0 ,
    \q_reg[88]_1 ,
    \q_reg[84] ,
    \q_reg[84]_0 ,
    \q_reg[84]_1 ,
    \q_reg[85] ,
    \q_reg[85]_0 ,
    \q_reg[85]_1 ,
    \q_reg[87] ,
    \q_reg[87]_0 ,
    \q_reg[87]_1 ,
    \q_reg[86] ,
    \q_reg[86]_0 ,
    \q_reg[86]_1 ,
    \q_reg[80] ,
    \q_reg[80]_0 ,
    \q_reg[80]_1 ,
    \q_reg[81] ,
    \q_reg[81]_0 ,
    \q_reg[81]_1 ,
    \q_reg[82] ,
    \q_reg[82]_0 ,
    \q_reg[82]_1 ,
    \q_reg[83] ,
    \q_reg[83]_0 ,
    \q_reg[83]_1 ,
    \q_reg[78] ,
    \q_reg[78]_0 ,
    \q_reg[78]_1 ,
    \q_reg[79] ,
    \q_reg[79]_0 ,
    \q_reg[79]_1 ,
    \q_reg[77] ,
    \q_reg[77]_0 ,
    \q_reg[77]_1 ,
    \q_reg[72] ,
    \q_reg[72]_0 ,
    \q_reg[72]_1 ,
    \q_reg[75] ,
    \q_reg[75]_0 ,
    \q_reg[75]_1 ,
    \q_reg[75]_2 ,
    \q_reg[74] ,
    \q_reg[74]_0 ,
    \q_reg[74]_1 ,
    \q_reg[73] ,
    \q_reg[73]_0 ,
    \q_reg[73]_1 ,
    \q_reg[73]_2 ,
    \q_reg[74]_2 ,
    \q_reg[72]_2 ,
    SrcBE,
    \q_reg[80]_2 ,
    \q_reg[78]_2 ,
    \q_reg[82]_2 ,
    \q_reg[84]_2 ,
    \q_reg[77]_2 ,
    \q_reg[81]_2 ,
    \q_reg[79]_2 ,
    \q_reg[76]_2 ,
    \q_reg[83]_2 ,
    \q_reg[89]_2 ,
    \q_reg[90]_2 ,
    \q_reg[91]_2 ,
    \q_reg[92]_2 ,
    \q_reg[87]_2 ,
    \q_reg[88]_2 ,
    \q_reg[85]_2 ,
    \q_reg[86]_2 ,
    \q_reg[93]_2 ,
    \q_reg[94]_2 ,
    \q_reg[95]_2 ,
    \q_reg[96]_2 ,
    \q_reg[97]_2 ,
    \q_reg[98]_2 ,
    \q_reg[68] ,
    SrcAE,
    \q_reg[100]_0 ,
    \q_reg[100]_1 ,
    rf_reg_r1_0_31_24_29_i_3,
    data0,
    \writeDataM[16] ,
    \writeDataM[8] ,
    ReadDataM,
    \writeDataM[9] ,
    \writeDataM[10] ,
    \writeDataM[11] ,
    \writeDataM[12] ,
    \writeDataM[13] ,
    \writeDataM[14] ,
    \writeDataM[15] ,
    \writeDataM[31] ,
    \writeDataM[30] ,
    \writeDataM[29] ,
    \writeDataM[28] ,
    \writeDataM[27] ,
    \writeDataM[26] ,
    \writeDataM[25] ,
    \writeDataM[24] ,
    \writeDataM[23] ,
    \writeDataM[22] ,
    \writeDataM[21] ,
    \writeDataM[20] ,
    \writeDataM[19] ,
    \writeDataM[18] ,
    \writeDataM[17] ,
    \writeDataM[16]_0 ,
    \q_reg[17] ,
    clk,
    reset);
  output [27:0]D;
  output [27:0]\q_reg[9] ;
  output [8:0]Q;
  output PCSrcE;
  output [31:0]\q_reg[2] ;
  output \q_reg[9]_0 ;
  output \q_reg[10] ;
  output \q_reg[9]_1 ;
  output \q_reg[8] ;
  output \q_reg[8]_0 ;
  output \q_reg[8]_1 ;
  output [15:0]ResultW;
  output [5:0]\q_reg[5] ;
  output \q_reg[11] ;
  output \q_reg[9]_2 ;
  output [23:0]WriteDataM;
  output [5:0]\q_reg[7] ;
  output \q_reg[2]_0 ;
  output \q_reg[1] ;
  output \q_reg[8]_2 ;
  input [27:0]PCPlus4F;
  input [27:0]PCTargetEmux;
  input [0:0]\q_reg[2]_1 ;
  input [30:0]InstrF;
  input [3:0]\q[31]_i_4 ;
  input \q_reg[92] ;
  input \q_reg[92]_0 ;
  input \q_reg[92]_1 ;
  input \q_reg[93] ;
  input \q_reg[93]_0 ;
  input \q_reg[93]_1 ;
  input \q_reg[94] ;
  input \q_reg[94]_0 ;
  input \q_reg[94]_1 ;
  input \q_reg[95] ;
  input \q_reg[95]_0 ;
  input \q_reg[95]_1 ;
  input \q_reg[96] ;
  input \q_reg[96]_0 ;
  input \q_reg[96]_1 ;
  input \q_reg[97] ;
  input \q_reg[97]_0 ;
  input \q_reg[97]_1 ;
  input \q_reg[98] ;
  input \q_reg[98]_0 ;
  input \q_reg[98]_1 ;
  input [0:0]O;
  input \q_reg[100] ;
  input \q_reg[76] ;
  input \q_reg[76]_0 ;
  input \q_reg[76]_1 ;
  input \q_reg[90] ;
  input \q_reg[90]_0 ;
  input \q_reg[90]_1 ;
  input \q_reg[91] ;
  input \q_reg[91]_0 ;
  input \q_reg[91]_1 ;
  input \q_reg[89] ;
  input \q_reg[89]_0 ;
  input \q_reg[89]_1 ;
  input \q_reg[88] ;
  input \q_reg[88]_0 ;
  input \q_reg[88]_1 ;
  input \q_reg[84] ;
  input \q_reg[84]_0 ;
  input \q_reg[84]_1 ;
  input \q_reg[85] ;
  input \q_reg[85]_0 ;
  input \q_reg[85]_1 ;
  input \q_reg[87] ;
  input \q_reg[87]_0 ;
  input \q_reg[87]_1 ;
  input \q_reg[86] ;
  input \q_reg[86]_0 ;
  input \q_reg[86]_1 ;
  input \q_reg[80] ;
  input \q_reg[80]_0 ;
  input \q_reg[80]_1 ;
  input \q_reg[81] ;
  input \q_reg[81]_0 ;
  input \q_reg[81]_1 ;
  input \q_reg[82] ;
  input \q_reg[82]_0 ;
  input \q_reg[82]_1 ;
  input \q_reg[83] ;
  input \q_reg[83]_0 ;
  input \q_reg[83]_1 ;
  input \q_reg[78] ;
  input \q_reg[78]_0 ;
  input \q_reg[78]_1 ;
  input \q_reg[79] ;
  input \q_reg[79]_0 ;
  input \q_reg[79]_1 ;
  input \q_reg[77] ;
  input \q_reg[77]_0 ;
  input \q_reg[77]_1 ;
  input \q_reg[72] ;
  input \q_reg[72]_0 ;
  input \q_reg[72]_1 ;
  input \q_reg[75] ;
  input \q_reg[75]_0 ;
  input \q_reg[75]_1 ;
  input \q_reg[75]_2 ;
  input \q_reg[74] ;
  input \q_reg[74]_0 ;
  input \q_reg[74]_1 ;
  input \q_reg[73] ;
  input \q_reg[73]_0 ;
  input \q_reg[73]_1 ;
  input \q_reg[73]_2 ;
  input \q_reg[74]_2 ;
  input \q_reg[72]_2 ;
  input [1:0]SrcBE;
  input \q_reg[80]_2 ;
  input \q_reg[78]_2 ;
  input \q_reg[82]_2 ;
  input \q_reg[84]_2 ;
  input \q_reg[77]_2 ;
  input \q_reg[81]_2 ;
  input \q_reg[79]_2 ;
  input \q_reg[76]_2 ;
  input \q_reg[83]_2 ;
  input \q_reg[89]_2 ;
  input \q_reg[90]_2 ;
  input \q_reg[91]_2 ;
  input \q_reg[92]_2 ;
  input \q_reg[87]_2 ;
  input \q_reg[88]_2 ;
  input \q_reg[85]_2 ;
  input \q_reg[86]_2 ;
  input \q_reg[93]_2 ;
  input \q_reg[94]_2 ;
  input \q_reg[95]_2 ;
  input \q_reg[96]_2 ;
  input \q_reg[97]_2 ;
  input \q_reg[98]_2 ;
  input [47:0]\q_reg[68] ;
  input [0:0]SrcAE;
  input \q_reg[100]_0 ;
  input [0:0]\q_reg[100]_1 ;
  input rf_reg_r1_0_31_24_29_i_3;
  input [0:0]data0;
  input [24:0]\writeDataM[16] ;
  input \writeDataM[8] ;
  input [23:0]ReadDataM;
  input \writeDataM[9] ;
  input \writeDataM[10] ;
  input \writeDataM[11] ;
  input \writeDataM[12] ;
  input \writeDataM[13] ;
  input \writeDataM[14] ;
  input \writeDataM[15] ;
  input \writeDataM[31] ;
  input \writeDataM[30] ;
  input \writeDataM[29] ;
  input \writeDataM[28] ;
  input \writeDataM[27] ;
  input \writeDataM[26] ;
  input \writeDataM[25] ;
  input \writeDataM[24] ;
  input \writeDataM[23] ;
  input \writeDataM[22] ;
  input \writeDataM[21] ;
  input \writeDataM[20] ;
  input \writeDataM[19] ;
  input \writeDataM[18] ;
  input \writeDataM[17] ;
  input \writeDataM[16]_0 ;
  input [16:0]\q_reg[17] ;
  input clk;
  input reset;

  wire [27:0]D;
  wire [30:0]InstrF;
  wire JumpE;
  wire [0:0]O;
  wire [27:0]PCPlus4F;
  wire PCSrcE;
  wire [27:0]PCTargetEmux;
  wire [8:0]Q;
  wire [23:0]ReadDataM;
  wire [15:0]ResultW;
  wire [0:0]SrcAE;
  wire [1:0]SrcBE;
  wire [23:0]WriteDataM;
  wire clk;
  wire controlregE_n_56;
  wire controlregE_n_58;
  wire controlregE_n_67;
  wire controlregE_n_68;
  wire controlregE_n_69;
  wire controlregE_n_71;
  wire controlregM_n_25;
  wire controlregM_n_26;
  wire [0:0]data0;
  wire [3:0]\q[31]_i_4 ;
  wire \q_reg[100] ;
  wire \q_reg[100]_0 ;
  wire [0:0]\q_reg[100]_1 ;
  wire \q_reg[10] ;
  wire \q_reg[11] ;
  wire [16:0]\q_reg[17] ;
  wire \q_reg[1] ;
  wire [31:0]\q_reg[2] ;
  wire \q_reg[2]_0 ;
  wire [0:0]\q_reg[2]_1 ;
  wire [5:0]\q_reg[5] ;
  wire [47:0]\q_reg[68] ;
  wire \q_reg[72] ;
  wire \q_reg[72]_0 ;
  wire \q_reg[72]_1 ;
  wire \q_reg[72]_2 ;
  wire \q_reg[73] ;
  wire \q_reg[73]_0 ;
  wire \q_reg[73]_1 ;
  wire \q_reg[73]_2 ;
  wire \q_reg[74] ;
  wire \q_reg[74]_0 ;
  wire \q_reg[74]_1 ;
  wire \q_reg[74]_2 ;
  wire \q_reg[75] ;
  wire \q_reg[75]_0 ;
  wire \q_reg[75]_1 ;
  wire \q_reg[75]_2 ;
  wire \q_reg[76] ;
  wire \q_reg[76]_0 ;
  wire \q_reg[76]_1 ;
  wire \q_reg[76]_2 ;
  wire \q_reg[77] ;
  wire \q_reg[77]_0 ;
  wire \q_reg[77]_1 ;
  wire \q_reg[77]_2 ;
  wire \q_reg[78] ;
  wire \q_reg[78]_0 ;
  wire \q_reg[78]_1 ;
  wire \q_reg[78]_2 ;
  wire \q_reg[79] ;
  wire \q_reg[79]_0 ;
  wire \q_reg[79]_1 ;
  wire \q_reg[79]_2 ;
  wire [5:0]\q_reg[7] ;
  wire \q_reg[80] ;
  wire \q_reg[80]_0 ;
  wire \q_reg[80]_1 ;
  wire \q_reg[80]_2 ;
  wire \q_reg[81] ;
  wire \q_reg[81]_0 ;
  wire \q_reg[81]_1 ;
  wire \q_reg[81]_2 ;
  wire \q_reg[82] ;
  wire \q_reg[82]_0 ;
  wire \q_reg[82]_1 ;
  wire \q_reg[82]_2 ;
  wire \q_reg[83] ;
  wire \q_reg[83]_0 ;
  wire \q_reg[83]_1 ;
  wire \q_reg[83]_2 ;
  wire \q_reg[84] ;
  wire \q_reg[84]_0 ;
  wire \q_reg[84]_1 ;
  wire \q_reg[84]_2 ;
  wire \q_reg[85] ;
  wire \q_reg[85]_0 ;
  wire \q_reg[85]_1 ;
  wire \q_reg[85]_2 ;
  wire \q_reg[86] ;
  wire \q_reg[86]_0 ;
  wire \q_reg[86]_1 ;
  wire \q_reg[86]_2 ;
  wire \q_reg[87] ;
  wire \q_reg[87]_0 ;
  wire \q_reg[87]_1 ;
  wire \q_reg[87]_2 ;
  wire \q_reg[88] ;
  wire \q_reg[88]_0 ;
  wire \q_reg[88]_1 ;
  wire \q_reg[88]_2 ;
  wire \q_reg[89] ;
  wire \q_reg[89]_0 ;
  wire \q_reg[89]_1 ;
  wire \q_reg[89]_2 ;
  wire \q_reg[8] ;
  wire \q_reg[8]_0 ;
  wire \q_reg[8]_1 ;
  wire \q_reg[8]_2 ;
  wire \q_reg[90] ;
  wire \q_reg[90]_0 ;
  wire \q_reg[90]_1 ;
  wire \q_reg[90]_2 ;
  wire \q_reg[91] ;
  wire \q_reg[91]_0 ;
  wire \q_reg[91]_1 ;
  wire \q_reg[91]_2 ;
  wire \q_reg[92] ;
  wire \q_reg[92]_0 ;
  wire \q_reg[92]_1 ;
  wire \q_reg[92]_2 ;
  wire \q_reg[93] ;
  wire \q_reg[93]_0 ;
  wire \q_reg[93]_1 ;
  wire \q_reg[93]_2 ;
  wire \q_reg[94] ;
  wire \q_reg[94]_0 ;
  wire \q_reg[94]_1 ;
  wire \q_reg[94]_2 ;
  wire \q_reg[95] ;
  wire \q_reg[95]_0 ;
  wire \q_reg[95]_1 ;
  wire \q_reg[95]_2 ;
  wire \q_reg[96] ;
  wire \q_reg[96]_0 ;
  wire \q_reg[96]_1 ;
  wire \q_reg[96]_2 ;
  wire \q_reg[97] ;
  wire \q_reg[97]_0 ;
  wire \q_reg[97]_1 ;
  wire \q_reg[97]_2 ;
  wire \q_reg[98] ;
  wire \q_reg[98]_0 ;
  wire \q_reg[98]_1 ;
  wire \q_reg[98]_2 ;
  wire [27:0]\q_reg[9] ;
  wire \q_reg[9]_0 ;
  wire \q_reg[9]_1 ;
  wire \q_reg[9]_2 ;
  wire reset;
  wire rf_reg_r1_0_31_24_29_i_3;
  wire \writeDataM[10] ;
  wire \writeDataM[11] ;
  wire \writeDataM[12] ;
  wire \writeDataM[13] ;
  wire \writeDataM[14] ;
  wire \writeDataM[15] ;
  wire [24:0]\writeDataM[16] ;
  wire \writeDataM[16]_0 ;
  wire \writeDataM[17] ;
  wire \writeDataM[18] ;
  wire \writeDataM[19] ;
  wire \writeDataM[20] ;
  wire \writeDataM[21] ;
  wire \writeDataM[22] ;
  wire \writeDataM[23] ;
  wire \writeDataM[24] ;
  wire \writeDataM[25] ;
  wire \writeDataM[26] ;
  wire \writeDataM[27] ;
  wire \writeDataM[28] ;
  wire \writeDataM[29] ;
  wire \writeDataM[30] ;
  wire \writeDataM[31] ;
  wire \writeDataM[8] ;
  wire \writeDataM[9] ;

  design_1_top_0_0_floprc controlregE
       (.D(D),
        .InstrF(InstrF),
        .O(O),
        .PCPlus4F(PCPlus4F),
        .PCTargetEmux(PCTargetEmux),
        .Q({controlregE_n_56,Q[8],controlregE_n_58,JumpE,Q[7:1],controlregE_n_67,controlregE_n_68,controlregE_n_69,Q[0],controlregE_n_71}),
        .SrcAE(SrcAE),
        .SrcBE(SrcBE),
        .clk(clk),
        .\q[31]_i_4_0 (\q[31]_i_4 ),
        .\q_reg[100] (\q_reg[100] ),
        .\q_reg[100]_0 (\q_reg[100]_0 ),
        .\q_reg[100]_1 (\q_reg[100]_1 ),
        .\q_reg[10]_0 (\q_reg[10] ),
        .\q_reg[11]_0 (\q_reg[11] ),
        .\q_reg[13]_0 (PCSrcE),
        .\q_reg[17]_0 (\q_reg[17] ),
        .\q_reg[2]_0 (\q_reg[2] ),
        .\q_reg[2]_1 (\q_reg[2]_1 ),
        .\q_reg[72] (\q_reg[72] ),
        .\q_reg[72]_0 (\q_reg[72]_0 ),
        .\q_reg[72]_1 (\q_reg[72]_1 ),
        .\q_reg[72]_2 (\q_reg[72]_2 ),
        .\q_reg[73] (\q_reg[73] ),
        .\q_reg[73]_0 (\q_reg[73]_0 ),
        .\q_reg[73]_1 (\q_reg[73]_1 ),
        .\q_reg[73]_2 (\q_reg[73]_2 ),
        .\q_reg[74] (\q_reg[74] ),
        .\q_reg[74]_0 (\q_reg[74]_0 ),
        .\q_reg[74]_1 (\q_reg[74]_1 ),
        .\q_reg[74]_2 (\q_reg[74]_2 ),
        .\q_reg[75] (\q_reg[75] ),
        .\q_reg[75]_0 (\q_reg[75]_0 ),
        .\q_reg[75]_1 (\q_reg[75]_1 ),
        .\q_reg[75]_2 (\q_reg[75]_2 ),
        .\q_reg[76] (\q_reg[76] ),
        .\q_reg[76]_0 (\q_reg[76]_0 ),
        .\q_reg[76]_1 (\q_reg[76]_1 ),
        .\q_reg[76]_2 (\q_reg[76]_2 ),
        .\q_reg[77] (\q_reg[77] ),
        .\q_reg[77]_0 (\q_reg[77]_0 ),
        .\q_reg[77]_1 (\q_reg[77]_1 ),
        .\q_reg[77]_2 (\q_reg[77]_2 ),
        .\q_reg[78] (\q_reg[78] ),
        .\q_reg[78]_0 (\q_reg[78]_0 ),
        .\q_reg[78]_1 (\q_reg[78]_1 ),
        .\q_reg[78]_2 (\q_reg[78]_2 ),
        .\q_reg[79] (\q_reg[79] ),
        .\q_reg[79]_0 (\q_reg[79]_0 ),
        .\q_reg[79]_1 (\q_reg[79]_1 ),
        .\q_reg[79]_2 (\q_reg[79]_2 ),
        .\q_reg[80] (\q_reg[80] ),
        .\q_reg[80]_0 (\q_reg[80]_0 ),
        .\q_reg[80]_1 (\q_reg[80]_1 ),
        .\q_reg[80]_2 (\q_reg[80]_2 ),
        .\q_reg[81] (\q_reg[81] ),
        .\q_reg[81]_0 (\q_reg[81]_0 ),
        .\q_reg[81]_1 (\q_reg[81]_1 ),
        .\q_reg[81]_2 (\q_reg[81]_2 ),
        .\q_reg[82] (\q_reg[82] ),
        .\q_reg[82]_0 (\q_reg[82]_0 ),
        .\q_reg[82]_1 (\q_reg[82]_1 ),
        .\q_reg[82]_2 (\q_reg[82]_2 ),
        .\q_reg[83] (\q_reg[83] ),
        .\q_reg[83]_0 (\q_reg[83]_0 ),
        .\q_reg[83]_1 (\q_reg[83]_1 ),
        .\q_reg[83]_2 (\q_reg[83]_2 ),
        .\q_reg[84] (\q_reg[84] ),
        .\q_reg[84]_0 (\q_reg[84]_0 ),
        .\q_reg[84]_1 (\q_reg[84]_1 ),
        .\q_reg[84]_2 (\q_reg[84]_2 ),
        .\q_reg[85] (\q_reg[85] ),
        .\q_reg[85]_0 (\q_reg[85]_0 ),
        .\q_reg[85]_1 (\q_reg[85]_1 ),
        .\q_reg[85]_2 (\q_reg[85]_2 ),
        .\q_reg[86] (\q_reg[86] ),
        .\q_reg[86]_0 (\q_reg[86]_0 ),
        .\q_reg[86]_1 (\q_reg[86]_1 ),
        .\q_reg[86]_2 (\q_reg[86]_2 ),
        .\q_reg[87] (\q_reg[87] ),
        .\q_reg[87]_0 (\q_reg[87]_0 ),
        .\q_reg[87]_1 (\q_reg[87]_1 ),
        .\q_reg[87]_2 (\q_reg[87]_2 ),
        .\q_reg[88] (\q_reg[88] ),
        .\q_reg[88]_0 (\q_reg[88]_0 ),
        .\q_reg[88]_1 (\q_reg[88]_1 ),
        .\q_reg[88]_2 (\q_reg[88]_2 ),
        .\q_reg[89] (\q_reg[89] ),
        .\q_reg[89]_0 (\q_reg[89]_0 ),
        .\q_reg[89]_1 (\q_reg[89]_1 ),
        .\q_reg[89]_2 (\q_reg[89]_2 ),
        .\q_reg[8]_0 (\q_reg[8] ),
        .\q_reg[8]_1 (\q_reg[8]_0 ),
        .\q_reg[8]_2 (\q_reg[8]_1 ),
        .\q_reg[8]_3 (\q_reg[8]_2 ),
        .\q_reg[90] (\q_reg[90] ),
        .\q_reg[90]_0 (\q_reg[90]_0 ),
        .\q_reg[90]_1 (\q_reg[90]_1 ),
        .\q_reg[90]_2 (\q_reg[90]_2 ),
        .\q_reg[91] (\q_reg[91] ),
        .\q_reg[91]_0 (\q_reg[91]_0 ),
        .\q_reg[91]_1 (\q_reg[91]_1 ),
        .\q_reg[91]_2 (\q_reg[91]_2 ),
        .\q_reg[92] (\q_reg[92] ),
        .\q_reg[92]_0 (\q_reg[92]_0 ),
        .\q_reg[92]_1 (\q_reg[92]_1 ),
        .\q_reg[92]_2 (\q_reg[92]_2 ),
        .\q_reg[93] (\q_reg[93] ),
        .\q_reg[93]_0 (\q_reg[93]_0 ),
        .\q_reg[93]_1 (\q_reg[93]_1 ),
        .\q_reg[93]_2 (\q_reg[93]_2 ),
        .\q_reg[94] (\q_reg[94] ),
        .\q_reg[94]_0 (\q_reg[94]_0 ),
        .\q_reg[94]_1 (\q_reg[94]_1 ),
        .\q_reg[94]_2 (\q_reg[94]_2 ),
        .\q_reg[95] (\q_reg[95] ),
        .\q_reg[95]_0 (\q_reg[95]_0 ),
        .\q_reg[95]_1 (\q_reg[95]_1 ),
        .\q_reg[95]_2 (\q_reg[95]_2 ),
        .\q_reg[96] (\q_reg[96] ),
        .\q_reg[96]_0 (\q_reg[96]_0 ),
        .\q_reg[96]_1 (\q_reg[96]_1 ),
        .\q_reg[96]_2 (\q_reg[96]_2 ),
        .\q_reg[97] (\q_reg[97] ),
        .\q_reg[97]_0 (\q_reg[97]_0 ),
        .\q_reg[97]_1 (\q_reg[97]_1 ),
        .\q_reg[97]_2 (\q_reg[97]_2 ),
        .\q_reg[98] (\q_reg[98] ),
        .\q_reg[98]_0 (\q_reg[98]_0 ),
        .\q_reg[98]_1 (\q_reg[98]_1 ),
        .\q_reg[98]_2 (\q_reg[98]_2 ),
        .\q_reg[9]_0 (\q_reg[9] ),
        .\q_reg[9]_1 (\q_reg[9]_0 ),
        .\q_reg[9]_2 (\q_reg[9]_1 ),
        .\q_reg[9]_3 (\q_reg[9]_2 ),
        .reset(reset));
  design_1_top_0_0_flopr controlregM
       (.D({controlregE_n_56,JumpE,Q[8],controlregE_n_58,controlregE_n_67,controlregE_n_68,controlregE_n_69,controlregE_n_71}),
        .Q({\q_reg[7] [5],controlregM_n_25,controlregM_n_26,\q_reg[7] [4:0]}),
        .ReadDataM(ReadDataM),
        .WriteDataM(WriteDataM),
        .clk(clk),
        .\q_reg[1]_0 (\q_reg[1] ),
        .\q_reg[2]_0 (\q_reg[2]_0 ),
        .reset(reset),
        .\writeDataM[10] (\writeDataM[10] ),
        .\writeDataM[11] (\writeDataM[11] ),
        .\writeDataM[12] (\writeDataM[12] ),
        .\writeDataM[13] (\writeDataM[13] ),
        .\writeDataM[14] (\writeDataM[14] ),
        .\writeDataM[15] (\writeDataM[15] ),
        .\writeDataM[16] (\writeDataM[16] ),
        .\writeDataM[16]_0 (\writeDataM[16]_0 ),
        .\writeDataM[17] (\writeDataM[17] ),
        .\writeDataM[18] (\writeDataM[18] ),
        .\writeDataM[19] (\writeDataM[19] ),
        .\writeDataM[20] (\writeDataM[20] ),
        .\writeDataM[21] (\writeDataM[21] ),
        .\writeDataM[22] (\writeDataM[22] ),
        .\writeDataM[23] (\writeDataM[23] ),
        .\writeDataM[24] (\writeDataM[24] ),
        .\writeDataM[25] (\writeDataM[25] ),
        .\writeDataM[26] (\writeDataM[26] ),
        .\writeDataM[27] (\writeDataM[27] ),
        .\writeDataM[28] (\writeDataM[28] ),
        .\writeDataM[29] (\writeDataM[29] ),
        .\writeDataM[30] (\writeDataM[30] ),
        .\writeDataM[31] (\writeDataM[31] ),
        .\writeDataM[8] (\writeDataM[8] ),
        .\writeDataM[9] (\writeDataM[9] ));
  design_1_top_0_0_flopr__parameterized0 controlregW
       (.D({\q_reg[7] [5],controlregM_n_25,controlregM_n_26,\q_reg[7] [3:1]}),
        .Q(\q_reg[5] ),
        .ResultW(ResultW),
        .clk(clk),
        .data0(data0),
        .\q_reg[68] (\q_reg[68] ),
        .reset(reset),
        .rf_reg_r1_0_31_24_29_i_3_0(rf_reg_r1_0_31_24_29_i_3));
endmodule

(* ORIG_REF_NAME = "datapath" *) 
module design_1_top_0_0_datapath
   (\q_reg[31] ,
    Q,
    \q_reg[62] ,
    \q_reg[65] ,
    \q_reg[9] ,
    \q_reg[8] ,
    \q_reg[63] ,
    \q_reg[8]_0 ,
    \q_reg[8]_1 ,
    \q_reg[8]_2 ,
    \q_reg[8]_3 ,
    \q_reg[8]_4 ,
    \q_reg[8]_5 ,
    \q_reg[33] ,
    \q_reg[110] ,
    \q_reg[8]_6 ,
    \q_reg[8]_7 ,
    \q_reg[33]_0 ,
    \q_reg[8]_8 ,
    \q_reg[8]_9 ,
    \q_reg[8]_10 ,
    \q_reg[8]_11 ,
    \q_reg[8]_12 ,
    \q_reg[8]_13 ,
    \q_reg[8]_14 ,
    \q_reg[8]_15 ,
    \q_reg[8]_16 ,
    \q_reg[8]_17 ,
    \q_reg[8]_18 ,
    \q_reg[8]_19 ,
    \q_reg[8]_20 ,
    \q_reg[8]_21 ,
    \q_reg[8]_22 ,
    \q_reg[8]_23 ,
    \q_reg[8]_24 ,
    \q_reg[8]_25 ,
    \q_reg[8]_26 ,
    \q_reg[34] ,
    \q_reg[8]_27 ,
    \q_reg[8]_28 ,
    \q_reg[8]_29 ,
    \q_reg[100] ,
    \q_reg[8]_30 ,
    \q_reg[34]_0 ,
    \q_reg[8]_31 ,
    \q_reg[34]_1 ,
    \q_reg[8]_32 ,
    \q_reg[33]_1 ,
    \q_reg[8]_33 ,
    \q_reg[33]_2 ,
    \q_reg[8]_34 ,
    \q_reg[33]_3 ,
    \q_reg[8]_35 ,
    \q_reg[33]_4 ,
    \q_reg[8]_36 ,
    \q_reg[33]_5 ,
    \q_reg[8]_37 ,
    \q_reg[33]_6 ,
    \q_reg[8]_38 ,
    \q_reg[33]_7 ,
    \q_reg[8]_39 ,
    \q_reg[33]_8 ,
    \q_reg[8]_40 ,
    \q_reg[33]_9 ,
    \q_reg[8]_41 ,
    \q_reg[33]_10 ,
    \q_reg[8]_42 ,
    \q_reg[33]_11 ,
    \q_reg[8]_43 ,
    \q_reg[33]_12 ,
    \q_reg[8]_44 ,
    \q_reg[33]_13 ,
    \q_reg[8]_45 ,
    \q_reg[33]_14 ,
    \q_reg[8]_46 ,
    \q_reg[33]_15 ,
    \q_reg[8]_47 ,
    \q_reg[33]_16 ,
    \q_reg[8]_48 ,
    \q_reg[33]_17 ,
    \q_reg[8]_49 ,
    \q_reg[33]_18 ,
    \q_reg[8]_50 ,
    \q_reg[33]_19 ,
    \q_reg[8]_51 ,
    \q_reg[33]_20 ,
    \q_reg[8]_52 ,
    \q_reg[33]_21 ,
    \q_reg[8]_53 ,
    \q_reg[33]_22 ,
    \q_reg[68] ,
    \q_reg[100]_0 ,
    \q_reg[63]_0 ,
    \q_reg[68]_0 ,
    WriteDataM,
    \q_reg[37] ,
    \q_reg[38] ,
    \q_reg[39] ,
    \q_reg[40] ,
    \q_reg[41] ,
    \q_reg[42] ,
    \q_reg[43] ,
    \q_reg[44] ,
    \q_reg[1] ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \q_reg[45] ,
    \q_reg[46] ,
    \q_reg[47] ,
    \q_reg[48] ,
    \q_reg[49] ,
    \q_reg[50] ,
    \q_reg[51] ,
    \q_reg[52] ,
    \q_reg[109] ,
    O,
    \q_reg[9]_0 ,
    \q_reg[9]_1 ,
    \q_reg[9]_2 ,
    \q_reg[9]_3 ,
    \q_reg[9]_4 ,
    \q_reg[9]_5 ,
    \q_reg[9]_6 ,
    \q_reg[9]_7 ,
    \q_reg[9]_8 ,
    \q_reg[9]_9 ,
    \q_reg[9]_10 ,
    \q_reg[9]_11 ,
    \q_reg[9]_12 ,
    \q_reg[9]_13 ,
    \q_reg[9]_14 ,
    \q_reg[9]_15 ,
    \q_reg[9]_16 ,
    \q_reg[9]_17 ,
    \q_reg[9]_18 ,
    \q_reg[9]_19 ,
    \q_reg[9]_20 ,
    \q_reg[9]_21 ,
    \q_reg[9]_22 ,
    \q_reg[9]_23 ,
    \q_reg[9]_24 ,
    \q_reg[9]_25 ,
    \q_reg[9]_26 ,
    \q_reg[68]_1 ,
    \q_reg[142] ,
    PCSrcE,
    PCready,
    \q_reg[142]_0 ,
    D,
    \q_reg[95] ,
    \q_reg[71] ,
    \q_reg[70] ,
    \q_reg[71]_0 ,
    \q_reg[70]_0 ,
    \q_reg[99] ,
    \q_reg[99]_0 ,
    \q_reg[71]_1 ,
    \q[100]_i_15 ,
    ReadDataM,
    \writeDataM[31] ,
    \writeDataM[31]_0 ,
    \q[69]_i_3 ,
    \q_reg[69] ,
    clk,
    reset,
    \q_reg[100]_1 );
  output [27:0]\q_reg[31] ;
  output [31:0]Q;
  output [27:0]\q_reg[62] ;
  output [16:0]\q_reg[65] ;
  output [3:0]\q_reg[9] ;
  output \q_reg[8] ;
  output [1:0]\q_reg[63] ;
  output \q_reg[8]_0 ;
  output \q_reg[8]_1 ;
  output \q_reg[8]_2 ;
  output \q_reg[8]_3 ;
  output \q_reg[8]_4 ;
  output \q_reg[8]_5 ;
  output \q_reg[33] ;
  output [0:0]\q_reg[110] ;
  output \q_reg[8]_6 ;
  output \q_reg[8]_7 ;
  output \q_reg[33]_0 ;
  output \q_reg[8]_8 ;
  output \q_reg[8]_9 ;
  output \q_reg[8]_10 ;
  output \q_reg[8]_11 ;
  output \q_reg[8]_12 ;
  output \q_reg[8]_13 ;
  output \q_reg[8]_14 ;
  output \q_reg[8]_15 ;
  output \q_reg[8]_16 ;
  output \q_reg[8]_17 ;
  output \q_reg[8]_18 ;
  output \q_reg[8]_19 ;
  output \q_reg[8]_20 ;
  output \q_reg[8]_21 ;
  output \q_reg[8]_22 ;
  output \q_reg[8]_23 ;
  output \q_reg[8]_24 ;
  output \q_reg[8]_25 ;
  output \q_reg[8]_26 ;
  output \q_reg[34] ;
  output \q_reg[8]_27 ;
  output \q_reg[8]_28 ;
  output \q_reg[8]_29 ;
  output [55:0]\q_reg[100] ;
  output \q_reg[8]_30 ;
  output \q_reg[34]_0 ;
  output \q_reg[8]_31 ;
  output \q_reg[34]_1 ;
  output \q_reg[8]_32 ;
  output \q_reg[33]_1 ;
  output \q_reg[8]_33 ;
  output \q_reg[33]_2 ;
  output \q_reg[8]_34 ;
  output \q_reg[33]_3 ;
  output \q_reg[8]_35 ;
  output \q_reg[33]_4 ;
  output \q_reg[8]_36 ;
  output \q_reg[33]_5 ;
  output \q_reg[8]_37 ;
  output \q_reg[33]_6 ;
  output \q_reg[8]_38 ;
  output \q_reg[33]_7 ;
  output \q_reg[8]_39 ;
  output \q_reg[33]_8 ;
  output \q_reg[8]_40 ;
  output \q_reg[33]_9 ;
  output \q_reg[8]_41 ;
  output \q_reg[33]_10 ;
  output \q_reg[8]_42 ;
  output \q_reg[33]_11 ;
  output \q_reg[8]_43 ;
  output \q_reg[33]_12 ;
  output \q_reg[8]_44 ;
  output \q_reg[33]_13 ;
  output \q_reg[8]_45 ;
  output \q_reg[33]_14 ;
  output \q_reg[8]_46 ;
  output \q_reg[33]_15 ;
  output \q_reg[8]_47 ;
  output \q_reg[33]_16 ;
  output \q_reg[8]_48 ;
  output \q_reg[33]_17 ;
  output \q_reg[8]_49 ;
  output \q_reg[33]_18 ;
  output \q_reg[8]_50 ;
  output \q_reg[33]_19 ;
  output \q_reg[8]_51 ;
  output \q_reg[33]_20 ;
  output \q_reg[8]_52 ;
  output \q_reg[33]_21 ;
  output \q_reg[8]_53 ;
  output \q_reg[33]_22 ;
  output [0:0]\q_reg[68] ;
  output [47:0]\q_reg[100]_0 ;
  output \q_reg[63]_0 ;
  output \q_reg[68]_0 ;
  output [7:0]WriteDataM;
  output \q_reg[37] ;
  output \q_reg[38] ;
  output \q_reg[39] ;
  output \q_reg[40] ;
  output \q_reg[41] ;
  output \q_reg[42] ;
  output \q_reg[43] ;
  output \q_reg[44] ;
  output \q_reg[1] ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  output \q_reg[45] ;
  output \q_reg[46] ;
  output \q_reg[47] ;
  output \q_reg[48] ;
  output \q_reg[49] ;
  output \q_reg[50] ;
  output \q_reg[51] ;
  output \q_reg[52] ;
  output [0:0]\q_reg[109] ;
  output [0:0]O;
  output \q_reg[9]_0 ;
  output \q_reg[9]_1 ;
  output \q_reg[9]_2 ;
  output \q_reg[9]_3 ;
  output \q_reg[9]_4 ;
  output \q_reg[9]_5 ;
  output \q_reg[9]_6 ;
  output \q_reg[9]_7 ;
  output \q_reg[9]_8 ;
  output \q_reg[9]_9 ;
  output \q_reg[9]_10 ;
  output \q_reg[9]_11 ;
  output \q_reg[9]_12 ;
  output \q_reg[9]_13 ;
  output \q_reg[9]_14 ;
  output \q_reg[9]_15 ;
  output \q_reg[9]_16 ;
  output \q_reg[9]_17 ;
  output \q_reg[9]_18 ;
  output \q_reg[9]_19 ;
  output \q_reg[9]_20 ;
  output \q_reg[9]_21 ;
  output \q_reg[9]_22 ;
  output \q_reg[9]_23 ;
  output \q_reg[9]_24 ;
  output \q_reg[9]_25 ;
  output \q_reg[9]_26 ;
  input [15:0]\q_reg[68]_1 ;
  input [5:0]\q_reg[142] ;
  input PCSrcE;
  input PCready;
  input [8:0]\q_reg[142]_0 ;
  input [27:0]D;
  input [31:0]\q_reg[95] ;
  input \q_reg[71] ;
  input \q_reg[70] ;
  input \q_reg[71]_0 ;
  input \q_reg[70]_0 ;
  input \q_reg[99] ;
  input \q_reg[99]_0 ;
  input \q_reg[71]_1 ;
  input [3:0]\q[100]_i_15 ;
  input [31:0]ReadDataM;
  input \writeDataM[31] ;
  input \writeDataM[31]_0 ;
  input \q[69]_i_3 ;
  input \q_reg[69] ;
  input clk;
  input reset;
  input [27:0]\q_reg[100]_1 ;

  wire [27:0]D;
  wire [30:0]ImmExtE;
  wire [0:0]O;
  wire [1:0]PCE;
  wire [30:30]PCNextF;
  wire [30:30]PCPlus4F;
  wire PCSrcE;
  wire [30:0]PCTargetEmux;
  wire PCready;
  wire [31:0]Q;
  wire [4:0]RdE;
  wire [4:0]RdM;
  wire [4:0]RdW;
  wire [31:0]ReadDataM;
  wire [15:0]ResultW;
  wire [4:0]Rs1D;
  wire [4:0]Rs2D;
  wire [3:2]Rs2E;
  wire StallD;
  wire [31:0]WriteDataE;
  wire [7:0]WriteDataM;
  wire clk;
  wire data6;
  wire [63:3]p_0_in;
  wire [110:2]p_0_in_0;
  wire [3:0]\q[100]_i_15 ;
  wire \q[69]_i_3 ;
  wire [55:0]\q_reg[100] ;
  wire [47:0]\q_reg[100]_0 ;
  wire [27:0]\q_reg[100]_1 ;
  wire [0:0]\q_reg[109] ;
  wire [0:0]\q_reg[110] ;
  wire [5:0]\q_reg[142] ;
  wire [8:0]\q_reg[142]_0 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire [27:0]\q_reg[31] ;
  wire \q_reg[33] ;
  wire \q_reg[33]_0 ;
  wire \q_reg[33]_1 ;
  wire \q_reg[33]_10 ;
  wire \q_reg[33]_11 ;
  wire \q_reg[33]_12 ;
  wire \q_reg[33]_13 ;
  wire \q_reg[33]_14 ;
  wire \q_reg[33]_15 ;
  wire \q_reg[33]_16 ;
  wire \q_reg[33]_17 ;
  wire \q_reg[33]_18 ;
  wire \q_reg[33]_19 ;
  wire \q_reg[33]_2 ;
  wire \q_reg[33]_20 ;
  wire \q_reg[33]_21 ;
  wire \q_reg[33]_22 ;
  wire \q_reg[33]_3 ;
  wire \q_reg[33]_4 ;
  wire \q_reg[33]_5 ;
  wire \q_reg[33]_6 ;
  wire \q_reg[33]_7 ;
  wire \q_reg[33]_8 ;
  wire \q_reg[33]_9 ;
  wire \q_reg[34] ;
  wire \q_reg[34]_0 ;
  wire \q_reg[34]_1 ;
  wire \q_reg[37] ;
  wire \q_reg[38] ;
  wire \q_reg[39] ;
  wire \q_reg[40] ;
  wire \q_reg[41] ;
  wire \q_reg[42] ;
  wire \q_reg[43] ;
  wire \q_reg[44] ;
  wire \q_reg[45] ;
  wire \q_reg[46] ;
  wire \q_reg[47] ;
  wire \q_reg[48] ;
  wire \q_reg[49] ;
  wire \q_reg[50] ;
  wire \q_reg[51] ;
  wire \q_reg[52] ;
  wire [27:0]\q_reg[62] ;
  wire [1:0]\q_reg[63] ;
  wire \q_reg[63]_0 ;
  wire [16:0]\q_reg[65] ;
  wire [0:0]\q_reg[68] ;
  wire \q_reg[68]_0 ;
  wire [15:0]\q_reg[68]_1 ;
  wire \q_reg[69] ;
  wire \q_reg[70] ;
  wire \q_reg[70]_0 ;
  wire \q_reg[71] ;
  wire \q_reg[71]_0 ;
  wire \q_reg[71]_1 ;
  wire \q_reg[8] ;
  wire \q_reg[8]_0 ;
  wire \q_reg[8]_1 ;
  wire \q_reg[8]_10 ;
  wire \q_reg[8]_11 ;
  wire \q_reg[8]_12 ;
  wire \q_reg[8]_13 ;
  wire \q_reg[8]_14 ;
  wire \q_reg[8]_15 ;
  wire \q_reg[8]_16 ;
  wire \q_reg[8]_17 ;
  wire \q_reg[8]_18 ;
  wire \q_reg[8]_19 ;
  wire \q_reg[8]_2 ;
  wire \q_reg[8]_20 ;
  wire \q_reg[8]_21 ;
  wire \q_reg[8]_22 ;
  wire \q_reg[8]_23 ;
  wire \q_reg[8]_24 ;
  wire \q_reg[8]_25 ;
  wire \q_reg[8]_26 ;
  wire \q_reg[8]_27 ;
  wire \q_reg[8]_28 ;
  wire \q_reg[8]_29 ;
  wire \q_reg[8]_3 ;
  wire \q_reg[8]_30 ;
  wire \q_reg[8]_31 ;
  wire \q_reg[8]_32 ;
  wire \q_reg[8]_33 ;
  wire \q_reg[8]_34 ;
  wire \q_reg[8]_35 ;
  wire \q_reg[8]_36 ;
  wire \q_reg[8]_37 ;
  wire \q_reg[8]_38 ;
  wire \q_reg[8]_39 ;
  wire \q_reg[8]_4 ;
  wire \q_reg[8]_40 ;
  wire \q_reg[8]_41 ;
  wire \q_reg[8]_42 ;
  wire \q_reg[8]_43 ;
  wire \q_reg[8]_44 ;
  wire \q_reg[8]_45 ;
  wire \q_reg[8]_46 ;
  wire \q_reg[8]_47 ;
  wire \q_reg[8]_48 ;
  wire \q_reg[8]_49 ;
  wire \q_reg[8]_5 ;
  wire \q_reg[8]_50 ;
  wire \q_reg[8]_51 ;
  wire \q_reg[8]_52 ;
  wire \q_reg[8]_53 ;
  wire \q_reg[8]_6 ;
  wire \q_reg[8]_7 ;
  wire \q_reg[8]_8 ;
  wire \q_reg[8]_9 ;
  wire [31:0]\q_reg[95] ;
  wire \q_reg[99] ;
  wire \q_reg[99]_0 ;
  wire [3:0]\q_reg[9] ;
  wire \q_reg[9]_0 ;
  wire \q_reg[9]_1 ;
  wire \q_reg[9]_10 ;
  wire \q_reg[9]_11 ;
  wire \q_reg[9]_12 ;
  wire \q_reg[9]_13 ;
  wire \q_reg[9]_14 ;
  wire \q_reg[9]_15 ;
  wire \q_reg[9]_16 ;
  wire \q_reg[9]_17 ;
  wire \q_reg[9]_18 ;
  wire \q_reg[9]_19 ;
  wire \q_reg[9]_2 ;
  wire \q_reg[9]_20 ;
  wire \q_reg[9]_21 ;
  wire \q_reg[9]_22 ;
  wire \q_reg[9]_23 ;
  wire \q_reg[9]_24 ;
  wire \q_reg[9]_25 ;
  wire \q_reg[9]_26 ;
  wire \q_reg[9]_3 ;
  wire \q_reg[9]_4 ;
  wire \q_reg[9]_5 ;
  wire \q_reg[9]_6 ;
  wire \q_reg[9]_7 ;
  wire \q_reg[9]_8 ;
  wire \q_reg[9]_9 ;
  wire [31:0]rd10;
  wire rd11__3;
  wire [31:0]rd20;
  wire rd21__3;
  wire regD_n_136;
  wire regD_n_137;
  wire regE_n_0;
  wire regE_n_1;
  wire regE_n_124;
  wire regE_n_125;
  wire regE_n_126;
  wire regE_n_127;
  wire regE_n_2;
  wire regE_n_202;
  wire regE_n_203;
  wire regE_n_204;
  wire regE_n_205;
  wire regE_n_206;
  wire regE_n_207;
  wire regE_n_208;
  wire regE_n_209;
  wire regE_n_210;
  wire regE_n_211;
  wire regE_n_212;
  wire regE_n_213;
  wire regE_n_218;
  wire regE_n_219;
  wire regE_n_220;
  wire regE_n_221;
  wire regE_n_222;
  wire regE_n_223;
  wire regE_n_224;
  wire regE_n_225;
  wire regE_n_226;
  wire regE_n_227;
  wire regE_n_228;
  wire regE_n_229;
  wire regE_n_230;
  wire regE_n_231;
  wire regE_n_232;
  wire regE_n_233;
  wire regE_n_234;
  wire regE_n_235;
  wire regE_n_236;
  wire regE_n_237;
  wire regE_n_238;
  wire regE_n_239;
  wire regE_n_240;
  wire regE_n_241;
  wire regE_n_242;
  wire regE_n_243;
  wire regE_n_244;
  wire regE_n_245;
  wire regE_n_248;
  wire regE_n_249;
  wire regE_n_250;
  wire regE_n_251;
  wire regE_n_258;
  wire regE_n_259;
  wire regE_n_260;
  wire regE_n_261;
  wire regE_n_274;
  wire regE_n_275;
  wire regE_n_276;
  wire regE_n_277;
  wire regE_n_279;
  wire regE_n_280;
  wire regE_n_281;
  wire regE_n_282;
  wire regE_n_3;
  wire regE_n_44;
  wire regE_n_45;
  wire regE_n_46;
  wire regE_n_47;
  wire regE_n_48;
  wire regE_n_49;
  wire regE_n_50;
  wire regE_n_51;
  wire regE_n_52;
  wire regE_n_53;
  wire regE_n_54;
  wire regE_n_55;
  wire regE_n_56;
  wire regE_n_57;
  wire regE_n_58;
  wire regE_n_59;
  wire regE_n_60;
  wire regE_n_61;
  wire regE_n_62;
  wire regE_n_63;
  wire regE_n_64;
  wire regE_n_65;
  wire regE_n_66;
  wire regE_n_67;
  wire regE_n_68;
  wire regE_n_69;
  wire regE_n_70;
  wire regE_n_71;
  wire regE_n_72;
  wire regE_n_73;
  wire regE_n_74;
  wire regE_n_76;
  wire regM_n_0;
  wire regM_n_62;
  wire regM_n_63;
  wire regM_n_64;
  wire regM_n_65;
  wire regM_n_66;
  wire regM_n_67;
  wire regM_n_68;
  wire regM_n_69;
  wire regM_n_70;
  wire regM_n_71;
  wire regM_n_72;
  wire regM_n_73;
  wire regM_n_74;
  wire regM_n_75;
  wire regM_n_76;
  wire regM_n_77;
  wire regM_n_78;
  wire regM_n_79;
  wire regM_n_80;
  wire regM_n_81;
  wire regM_n_82;
  wire regM_n_83;
  wire regM_n_84;
  wire regM_n_85;
  wire regM_n_86;
  wire regM_n_87;
  wire regM_n_88;
  wire regM_n_89;
  wire regM_n_90;
  wire regM_n_91;
  wire regM_n_92;
  wire regM_n_93;
  wire regW_n_70;
  wire reset;
  wire \writeDataM[31] ;
  wire \writeDataM[31]_0 ;

  design_1_top_0_0_alu alu
       (.CO(data6),
        .DI({regE_n_124,regE_n_125,regE_n_126,regE_n_127}),
        .S({regE_n_248,regE_n_249,regE_n_250,regE_n_251}),
        .\q_reg[69] ({regE_n_206,regE_n_207,regE_n_208,regE_n_209}),
        .\q_reg[69]_0 ({regE_n_274,regE_n_275,regE_n_276,regE_n_277}),
        .result2_carry__1_0({regE_n_202,regE_n_203,regE_n_204,regE_n_205}),
        .result2_carry__1_1({regE_n_258,regE_n_259,regE_n_260,regE_n_261}),
        .result2_carry__2_0({regE_n_210,regE_n_211,regE_n_212,regE_n_213}),
        .result2_carry__2_1({regE_n_279,regE_n_280,regE_n_281,regE_n_282}));
  design_1_top_0_0_adder branchadd
       (.PCTargetEmux({PCTargetEmux[30],PCTargetEmux[2:0]}),
        .Q(ImmExtE),
        .S({regE_n_218,regE_n_219,regE_n_220,regE_n_221}),
        .\q_reg[11] ({regE_n_226,regE_n_227,regE_n_228,regE_n_229}),
        .\q_reg[15] ({regE_n_230,regE_n_231,regE_n_232,regE_n_233}),
        .\q_reg[19] ({regE_n_234,regE_n_235,regE_n_236,regE_n_237}),
        .\q_reg[23] ({regE_n_238,regE_n_239,regE_n_240,regE_n_241}),
        .\q_reg[27] ({regE_n_242,regE_n_243,regE_n_244,regE_n_245}),
        .\q_reg[31] ({regE_n_0,regE_n_1,regE_n_2,regE_n_3}),
        .\q_reg[62] (\q_reg[62] ),
        .\q_reg[7] ({regE_n_222,regE_n_223,regE_n_224,regE_n_225}));
  design_1_top_0_0_adder_0 pcadd
       (.D(p_0_in[31:3]),
        .O(PCPlus4F),
        .PCSrcE(PCSrcE),
        .Q(Q[31:2]),
        .\q_reg[31] (\q_reg[31] ));
  design_1_top_0_0_flopenr pcreg
       (.D({D[27],PCNextF,D[26:0]}),
        .E(regE_n_76),
        .PCSrcE(PCSrcE),
        .PCTargetEmux(PCTargetEmux[2:0]),
        .Q(Q),
        .clk(clk),
        .\q_reg[1]_0 (\q_reg[142]_0 [0]),
        .\q_reg[2]_0 (\q_reg[9] [2:0]),
        .\q_reg[31]_0 (p_0_in[63:32]),
        .reset(reset));
  design_1_top_0_0_flopenrc regD
       (.D(p_0_in_0),
        .E(regE_n_74),
        .PCSrcE(PCSrcE),
        .Q({Rs2D,Rs1D}),
        .StallD(StallD),
        .clk(clk),
        .\q[174]_i_2 (RdE[1:0]),
        .\q_reg[65]_0 (\q_reg[65] ),
        .\q_reg[79]_0 (regD_n_136),
        .\q_reg[84]_0 (regD_n_137),
        .\q_reg[95]_0 ({\q_reg[95] [31:1],p_0_in,\q_reg[95] [0]}),
        .rd11__3(rd11__3),
        .rd21__3(rd21__3),
        .reset(reset));
  design_1_top_0_0_floprc__parameterized0 regE
       (.CO(data6),
        .D(p_0_in_0),
        .DI({regE_n_124,regE_n_125,regE_n_126,regE_n_127}),
        .E(regE_n_74),
        .\FSM_sequential_state_reg[0] (regE_n_76),
        .O(PCPlus4F),
        .PCSrcE(PCSrcE),
        .PCTargetEmux(PCTargetEmux[30]),
        .PCready(PCready),
        .Q({PCE,Rs2E,RdE,ImmExtE,regE_n_44,regE_n_45,regE_n_46,regE_n_47,regE_n_48,regE_n_49,regE_n_50,regE_n_51,regE_n_52,regE_n_53,regE_n_54,regE_n_55,regE_n_56,regE_n_57,regE_n_58,regE_n_59,regE_n_60,regE_n_61,regE_n_62,regE_n_63,regE_n_64,regE_n_65,regE_n_66,regE_n_67,regE_n_68,regE_n_69,regE_n_70,regE_n_71,regE_n_72,regE_n_73}),
        .ResultW(ResultW),
        .S({regE_n_218,regE_n_219,regE_n_220,regE_n_221}),
        .StallD(StallD),
        .clk(clk),
        .\q[100]_i_15_0 (regM_n_0),
        .\q[100]_i_15_1 (\q[100]_i_15 [3]),
        .\q[100]_i_15_2 (regW_n_70),
        .\q[31]_i_3_0 ({Rs2D[4:2],Rs1D[4:2]}),
        .\q[69]_i_3_0 (\q[69]_i_3 ),
        .\q_reg[101]_0 ({regE_n_279,regE_n_280,regE_n_281,regE_n_282}),
        .\q_reg[109]_0 (\q_reg[109] ),
        .\q_reg[109]_1 ({regE_n_274,regE_n_275,regE_n_276,regE_n_277}),
        .\q_reg[110]_0 (\q_reg[110] ),
        .\q_reg[142]_0 (\q_reg[142]_0 ),
        .\q_reg[1] (PCNextF),
        .\q_reg[31]_i_22_0 (O),
        .\q_reg[32]_0 (\q_reg[63] [0]),
        .\q_reg[33]_0 (\q_reg[33] ),
        .\q_reg[33]_1 (\q_reg[33]_0 ),
        .\q_reg[33]_10 (\q_reg[33]_9 ),
        .\q_reg[33]_11 (\q_reg[33]_10 ),
        .\q_reg[33]_12 (\q_reg[33]_11 ),
        .\q_reg[33]_13 (\q_reg[33]_12 ),
        .\q_reg[33]_14 (\q_reg[33]_13 ),
        .\q_reg[33]_15 (\q_reg[33]_14 ),
        .\q_reg[33]_16 (\q_reg[33]_15 ),
        .\q_reg[33]_17 (\q_reg[33]_16 ),
        .\q_reg[33]_18 (\q_reg[33]_17 ),
        .\q_reg[33]_19 (\q_reg[33]_18 ),
        .\q_reg[33]_2 (\q_reg[33]_1 ),
        .\q_reg[33]_20 (\q_reg[33]_19 ),
        .\q_reg[33]_21 (\q_reg[33]_20 ),
        .\q_reg[33]_22 (\q_reg[33]_21 ),
        .\q_reg[33]_23 (\q_reg[33]_22 ),
        .\q_reg[33]_3 (\q_reg[33]_2 ),
        .\q_reg[33]_4 (\q_reg[33]_3 ),
        .\q_reg[33]_5 (\q_reg[33]_4 ),
        .\q_reg[33]_6 (\q_reg[33]_5 ),
        .\q_reg[33]_7 (\q_reg[33]_6 ),
        .\q_reg[33]_8 (\q_reg[33]_7 ),
        .\q_reg[33]_9 (\q_reg[33]_8 ),
        .\q_reg[34]_0 (\q_reg[34] ),
        .\q_reg[34]_1 (\q_reg[34]_0 ),
        .\q_reg[34]_2 (\q_reg[34]_1 ),
        .\q_reg[39]_0 ({regE_n_222,regE_n_223,regE_n_224,regE_n_225}),
        .\q_reg[43]_0 ({regE_n_226,regE_n_227,regE_n_228,regE_n_229}),
        .\q_reg[46]_0 ({regE_n_202,regE_n_203,regE_n_204,regE_n_205}),
        .\q_reg[47]_0 ({regE_n_230,regE_n_231,regE_n_232,regE_n_233}),
        .\q_reg[51]_0 ({regE_n_234,regE_n_235,regE_n_236,regE_n_237}),
        .\q_reg[54]_0 ({regE_n_210,regE_n_211,regE_n_212,regE_n_213}),
        .\q_reg[55]_0 ({regE_n_238,regE_n_239,regE_n_240,regE_n_241}),
        .\q_reg[57]_0 (\q_reg[142] [5]),
        .\q_reg[59]_0 ({regE_n_242,regE_n_243,regE_n_244,regE_n_245}),
        .\q_reg[63]_0 ({regE_n_0,regE_n_1,regE_n_2,regE_n_3}),
        .\q_reg[63]_1 ({regE_n_206,regE_n_207,regE_n_208,regE_n_209}),
        .\q_reg[63]_2 (\q_reg[63]_0 ),
        .\q_reg[63]_3 (\q_reg[63] [1]),
        .\q_reg[68]_0 ({\q_reg[100] [55:24],RdM}),
        .\q_reg[68]_1 (\q_reg[68]_1 ),
        .\q_reg[69]_0 (\q_reg[69] ),
        .\q_reg[70]_0 (\q_reg[70] ),
        .\q_reg[70]_1 (\q_reg[70]_0 ),
        .\q_reg[71]_0 (\q_reg[71] ),
        .\q_reg[71]_1 (\q_reg[71]_0 ),
        .\q_reg[71]_2 (\q_reg[71]_1 ),
        .\q_reg[85]_0 ({regE_n_248,regE_n_249,regE_n_250,regE_n_251}),
        .\q_reg[8]_0 (\q_reg[8] ),
        .\q_reg[8]_1 (\q_reg[8]_0 ),
        .\q_reg[8]_10 (\q_reg[8]_9 ),
        .\q_reg[8]_11 (\q_reg[8]_10 ),
        .\q_reg[8]_12 (\q_reg[8]_11 ),
        .\q_reg[8]_13 (\q_reg[8]_12 ),
        .\q_reg[8]_14 (\q_reg[8]_13 ),
        .\q_reg[8]_15 (\q_reg[8]_14 ),
        .\q_reg[8]_16 (\q_reg[8]_15 ),
        .\q_reg[8]_17 (\q_reg[8]_16 ),
        .\q_reg[8]_18 (\q_reg[8]_17 ),
        .\q_reg[8]_19 (\q_reg[8]_18 ),
        .\q_reg[8]_2 (\q_reg[8]_1 ),
        .\q_reg[8]_20 (\q_reg[8]_19 ),
        .\q_reg[8]_21 (\q_reg[8]_20 ),
        .\q_reg[8]_22 (\q_reg[8]_21 ),
        .\q_reg[8]_23 (\q_reg[8]_22 ),
        .\q_reg[8]_24 (\q_reg[8]_23 ),
        .\q_reg[8]_25 (\q_reg[8]_24 ),
        .\q_reg[8]_26 (\q_reg[8]_25 ),
        .\q_reg[8]_27 (\q_reg[8]_26 ),
        .\q_reg[8]_28 (\q_reg[8]_27 ),
        .\q_reg[8]_29 (\q_reg[8]_28 ),
        .\q_reg[8]_3 (\q_reg[8]_2 ),
        .\q_reg[8]_30 (\q_reg[8]_29 ),
        .\q_reg[8]_31 (\q_reg[8]_30 ),
        .\q_reg[8]_32 (\q_reg[8]_31 ),
        .\q_reg[8]_33 (\q_reg[8]_32 ),
        .\q_reg[8]_34 (\q_reg[8]_33 ),
        .\q_reg[8]_35 (\q_reg[8]_34 ),
        .\q_reg[8]_36 (\q_reg[8]_35 ),
        .\q_reg[8]_37 (\q_reg[8]_36 ),
        .\q_reg[8]_38 (\q_reg[8]_37 ),
        .\q_reg[8]_39 (\q_reg[8]_38 ),
        .\q_reg[8]_4 (\q_reg[8]_3 ),
        .\q_reg[8]_40 (\q_reg[8]_39 ),
        .\q_reg[8]_41 (\q_reg[8]_40 ),
        .\q_reg[8]_42 (\q_reg[8]_41 ),
        .\q_reg[8]_43 (\q_reg[8]_42 ),
        .\q_reg[8]_44 (\q_reg[8]_43 ),
        .\q_reg[8]_45 (\q_reg[8]_44 ),
        .\q_reg[8]_46 (\q_reg[8]_45 ),
        .\q_reg[8]_47 (\q_reg[8]_46 ),
        .\q_reg[8]_48 (\q_reg[8]_47 ),
        .\q_reg[8]_49 (\q_reg[8]_48 ),
        .\q_reg[8]_5 (\q_reg[8]_4 ),
        .\q_reg[8]_50 (\q_reg[8]_49 ),
        .\q_reg[8]_51 (\q_reg[8]_50 ),
        .\q_reg[8]_52 (\q_reg[8]_51 ),
        .\q_reg[8]_53 (\q_reg[8]_52 ),
        .\q_reg[8]_54 (\q_reg[8]_53 ),
        .\q_reg[8]_6 (\q_reg[8]_5 ),
        .\q_reg[8]_7 (\q_reg[8]_6 ),
        .\q_reg[8]_8 (\q_reg[8]_7 ),
        .\q_reg[8]_9 (\q_reg[8]_8 ),
        .\q_reg[94]_0 ({regE_n_258,regE_n_259,regE_n_260,regE_n_261}),
        .\q_reg[95]_0 (regD_n_136),
        .\q_reg[95]_1 (regD_n_137),
        .\q_reg[99]_0 (\q_reg[99] ),
        .\q_reg[99]_1 (\q_reg[99]_0 ),
        .\q_reg[9]_0 ({\q_reg[9] ,WriteDataE}),
        .\q_reg[9]_1 (\q_reg[9]_0 ),
        .\q_reg[9]_10 (\q_reg[9]_9 ),
        .\q_reg[9]_11 (\q_reg[9]_10 ),
        .\q_reg[9]_12 (\q_reg[9]_11 ),
        .\q_reg[9]_13 (\q_reg[9]_12 ),
        .\q_reg[9]_14 (\q_reg[9]_13 ),
        .\q_reg[9]_15 (\q_reg[9]_14 ),
        .\q_reg[9]_16 (\q_reg[9]_15 ),
        .\q_reg[9]_17 (\q_reg[9]_16 ),
        .\q_reg[9]_18 (\q_reg[9]_17 ),
        .\q_reg[9]_19 (\q_reg[9]_18 ),
        .\q_reg[9]_2 (\q_reg[9]_1 ),
        .\q_reg[9]_20 (\q_reg[9]_19 ),
        .\q_reg[9]_21 (\q_reg[9]_20 ),
        .\q_reg[9]_22 (\q_reg[9]_21 ),
        .\q_reg[9]_23 (\q_reg[9]_22 ),
        .\q_reg[9]_24 (\q_reg[9]_23 ),
        .\q_reg[9]_25 (\q_reg[9]_24 ),
        .\q_reg[9]_26 (\q_reg[9]_25 ),
        .\q_reg[9]_27 (\q_reg[9]_26 ),
        .\q_reg[9]_3 (\q_reg[9]_2 ),
        .\q_reg[9]_4 (\q_reg[9]_3 ),
        .\q_reg[9]_5 (\q_reg[9]_4 ),
        .\q_reg[9]_6 (\q_reg[9]_5 ),
        .\q_reg[9]_7 (\q_reg[9]_6 ),
        .\q_reg[9]_8 (\q_reg[9]_7 ),
        .\q_reg[9]_9 (\q_reg[9]_8 ),
        .rd10(rd10),
        .rd11__3(rd11__3),
        .rd20(rd20),
        .rd21__3(rd21__3),
        .reset(reset),
        .result2_carry_i_40_0(RdW));
  design_1_top_0_0_flopr__parameterized1 regM
       (.D({\q_reg[100]_1 [27],\q_reg[9] [3],\q_reg[100]_1 [26:0],\q_reg[9] [2:0],WriteDataE}),
        .Q({\q_reg[100] ,RdM,regM_n_62,regM_n_63,regM_n_64,regM_n_65,regM_n_66,regM_n_67,regM_n_68,regM_n_69,regM_n_70,regM_n_71,regM_n_72,regM_n_73,regM_n_74,regM_n_75,regM_n_76,regM_n_77,regM_n_78,regM_n_79,regM_n_80,regM_n_81,regM_n_82,regM_n_83,regM_n_84,regM_n_85,regM_n_86,regM_n_87,regM_n_88,regM_n_89,regM_n_90,regM_n_91,regM_n_92,regM_n_93}),
        .ReadDataM(ReadDataM),
        .WriteDataM(WriteDataM),
        .clk(clk),
        .\q_reg[1]_0 (\q_reg[1] ),
        .\q_reg[1]_1 (\q_reg[1]_0 ),
        .\q_reg[1]_2 (\q_reg[1]_1 ),
        .\q_reg[1]_3 (\q_reg[1]_2 ),
        .\q_reg[1]_4 (\q_reg[1]_3 ),
        .\q_reg[1]_5 (\q_reg[1]_4 ),
        .\q_reg[1]_6 (\q_reg[1]_5 ),
        .\q_reg[1]_7 (\q_reg[1]_6 ),
        .\q_reg[1]_8 ({PCE,Rs2E,RdE,regE_n_44,regE_n_45,regE_n_46,regE_n_47,regE_n_48,regE_n_49,regE_n_50,regE_n_51,regE_n_52,regE_n_53,regE_n_54,regE_n_55,regE_n_56,regE_n_57,regE_n_58,regE_n_59,regE_n_60,regE_n_61,regE_n_62,regE_n_63,regE_n_64,regE_n_65,regE_n_66,regE_n_67,regE_n_68,regE_n_69,regE_n_70,regE_n_71,regE_n_72,regE_n_73}),
        .\q_reg[34]_0 (regM_n_0),
        .\q_reg[37]_0 (\q_reg[37] ),
        .\q_reg[38]_0 (\q_reg[38] ),
        .\q_reg[39]_0 (\q_reg[39] ),
        .\q_reg[40]_0 (\q_reg[40] ),
        .\q_reg[41]_0 (\q_reg[41] ),
        .\q_reg[42]_0 (\q_reg[42] ),
        .\q_reg[43]_0 (\q_reg[43] ),
        .\q_reg[44]_0 (\q_reg[44] ),
        .\q_reg[45]_0 (\q_reg[45] ),
        .\q_reg[46]_0 (\q_reg[46] ),
        .\q_reg[47]_0 (\q_reg[47] ),
        .\q_reg[48]_0 (\q_reg[48] ),
        .\q_reg[49]_0 (\q_reg[49] ),
        .\q_reg[50]_0 (\q_reg[50] ),
        .\q_reg[51]_0 (\q_reg[51] ),
        .\q_reg[52]_0 (\q_reg[52] ),
        .reset(reset),
        .\writeDataM[31] (\writeDataM[31] ),
        .\writeDataM[31]_0 (\writeDataM[31]_0 ),
        .\writeDataM[7] (\q[100]_i_15 [2:0]));
  design_1_top_0_0_flopr__parameterized1_1 regW
       (.D({\q_reg[100] [55:24],ReadDataM,RdM,regM_n_62,regM_n_63,regM_n_64,regM_n_65,regM_n_66,regM_n_67,regM_n_68,regM_n_69,regM_n_70,regM_n_71,regM_n_72,regM_n_73,regM_n_74,regM_n_75,regM_n_76,regM_n_77,regM_n_78,regM_n_79,regM_n_80,regM_n_81,regM_n_82,regM_n_83,regM_n_84,regM_n_85,regM_n_86,regM_n_87,regM_n_88,regM_n_89,regM_n_90,regM_n_91,regM_n_92,regM_n_93}),
        .Q({\q_reg[100]_0 [47:16],RdW,\q_reg[100]_0 [15:0]}),
        .clk(clk),
        .\q_reg[34]_0 (regW_n_70),
        .\q_reg[52]_0 (\q_reg[142] [4:0]),
        .\q_reg[68]_0 (\q_reg[68] ),
        .\q_reg[68]_1 (\q_reg[68]_0 ),
        .reset(reset),
        .result2_carry_i_43(Rs2E),
        .wd3(ResultW));
  design_1_top_0_0_regfile rf
       (.Q(RdW),
        .clk(clk),
        .\q_reg[136] ({Rs2D,Rs1D}),
        .\q_reg[142] (\q_reg[68]_1 ),
        .\q_reg[142]_0 (\q_reg[142] [5]),
        .rd10(rd10),
        .rd20(rd20),
        .wd3(ResultW));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module design_1_top_0_0_flopenr
   (Q,
    \q_reg[31]_0 ,
    D,
    PCTargetEmux,
    \q_reg[2]_0 ,
    \q_reg[1]_0 ,
    PCSrcE,
    E,
    clk,
    reset);
  output [31:0]Q;
  output [31:0]\q_reg[31]_0 ;
  input [28:0]D;
  input [2:0]PCTargetEmux;
  input [2:0]\q_reg[2]_0 ;
  input [0:0]\q_reg[1]_0 ;
  input PCSrcE;
  input [0:0]E;
  input clk;
  input reset;

  wire [28:0]D;
  wire [0:0]E;
  wire [2:0]PCNextF;
  wire PCSrcE;
  wire [2:0]PCTargetEmux;
  wire [31:0]Q;
  wire clk;
  wire [0:0]\q_reg[1]_0 ;
  wire [2:0]\q_reg[2]_0 ;
  wire [31:0]\q_reg[31]_0 ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[0]_i_1__0 
       (.I0(Q[0]),
        .I1(PCTargetEmux[0]),
        .I2(\q_reg[2]_0 [0]),
        .I3(\q_reg[1]_0 ),
        .I4(PCSrcE),
        .O(PCNextF[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[1]_i_1__0 
       (.I0(Q[1]),
        .I1(PCTargetEmux[1]),
        .I2(\q_reg[2]_0 [1]),
        .I3(\q_reg[1]_0 ),
        .I4(PCSrcE),
        .O(PCNextF[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hF0CC5555)) 
    \q[2]_i_1__1 
       (.I0(Q[2]),
        .I1(PCTargetEmux[2]),
        .I2(\q_reg[2]_0 [2]),
        .I3(\q_reg[1]_0 ),
        .I4(PCSrcE),
        .O(PCNextF[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[32]_i_1__0 
       (.I0(Q[0]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[33]_i_1__0 
       (.I0(Q[1]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[34]_i_1__0 
       (.I0(Q[2]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[35]_i_1__0 
       (.I0(Q[3]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[36]_i_1__0 
       (.I0(Q[4]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[37]_i_1__0 
       (.I0(Q[5]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[38]_i_1__0 
       (.I0(Q[6]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[39]_i_1__0 
       (.I0(Q[7]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[40]_i_1__0 
       (.I0(Q[8]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[41]_i_1__0 
       (.I0(Q[9]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[42]_i_1__0 
       (.I0(Q[10]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[43]_i_1__0 
       (.I0(Q[11]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[44]_i_1__0 
       (.I0(Q[12]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[45]_i_1__0 
       (.I0(Q[13]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[46]_i_1__0 
       (.I0(Q[14]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[47]_i_1__0 
       (.I0(Q[15]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[48]_i_1__0 
       (.I0(Q[16]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[49]_i_1__0 
       (.I0(Q[17]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[50]_i_1__0 
       (.I0(Q[18]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[51]_i_1__0 
       (.I0(Q[19]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[52]_i_1__0 
       (.I0(Q[20]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[53]_i_1__0 
       (.I0(Q[21]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[54]_i_1__0 
       (.I0(Q[22]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[55]_i_1__0 
       (.I0(Q[23]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[56]_i_1__0 
       (.I0(Q[24]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[57]_i_1__0 
       (.I0(Q[25]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[58]_i_1__0 
       (.I0(Q[26]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[59]_i_1__0 
       (.I0(Q[27]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[60]_i_1__0 
       (.I0(Q[28]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[61]_i_1__0 
       (.I0(Q[29]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[62]_i_1__0 
       (.I0(Q[30]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [30]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[63]_i_1__0 
       (.I0(Q[31]),
        .I1(PCSrcE),
        .O(\q_reg[31]_0 [31]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(PCNextF[0]),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[12]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[12]),
        .Q(Q[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[13]),
        .Q(Q[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[14]),
        .Q(Q[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[15]),
        .Q(Q[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(PCNextF[1]),
        .Q(Q[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(PCNextF[2]),
        .Q(Q[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[28]),
        .Q(Q[31]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[8]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "flopenrc" *) 
module design_1_top_0_0_flopenrc
   (\q_reg[65]_0 ,
    D,
    Q,
    \q_reg[79]_0 ,
    \q_reg[84]_0 ,
    rd11__3,
    rd21__3,
    PCSrcE,
    StallD,
    \q[174]_i_2 ,
    E,
    \q_reg[95]_0 ,
    clk,
    reset);
  output [16:0]\q_reg[65]_0 ;
  output [108:0]D;
  output [9:0]Q;
  output \q_reg[79]_0 ;
  output \q_reg[84]_0 ;
  output rd11__3;
  output rd21__3;
  input PCSrcE;
  input StallD;
  input [1:0]\q[174]_i_2 ;
  input [0:0]E;
  input [92:0]\q_reg[95]_0 ;
  input clk;
  input reset;

  wire [108:0]D;
  wire [0:0]E;
  wire [2:0]ImmSrcD;
  wire [31:0]PCD;
  wire PCSrcE;
  wire [9:0]Q;
  wire [4:0]RdD;
  wire StallD;
  wire [1:1]\c/ALUOpD ;
  wire clk;
  wire [2:0]funct3D;
  wire funct7b5D;
  wire [6:1]opD;
  wire \q[10]_i_2_n_0 ;
  wire \q[11]_i_2_n_0 ;
  wire \q[11]_i_4_n_0 ;
  wire [1:0]\q[174]_i_2 ;
  wire \q[32]_i_2_n_0 ;
  wire \q[36]_i_2_n_0 ;
  wire \q[43]_i_2_n_0 ;
  wire \q[51]_i_2_n_0 ;
  wire \q[5]_i_2_n_0 ;
  wire \q[8]_i_2_n_0 ;
  wire \q[9]_i_2_n_0 ;
  wire [16:0]\q_reg[65]_0 ;
  wire \q_reg[79]_0 ;
  wire \q_reg[84]_0 ;
  wire [92:0]\q_reg[95]_0 ;
  wire \q_reg_n_0_[10] ;
  wire \q_reg_n_0_[11] ;
  wire \q_reg_n_0_[12] ;
  wire \q_reg_n_0_[13] ;
  wire \q_reg_n_0_[14] ;
  wire \q_reg_n_0_[15] ;
  wire \q_reg_n_0_[16] ;
  wire \q_reg_n_0_[17] ;
  wire \q_reg_n_0_[18] ;
  wire \q_reg_n_0_[19] ;
  wire \q_reg_n_0_[20] ;
  wire \q_reg_n_0_[21] ;
  wire \q_reg_n_0_[22] ;
  wire \q_reg_n_0_[23] ;
  wire \q_reg_n_0_[24] ;
  wire \q_reg_n_0_[25] ;
  wire \q_reg_n_0_[26] ;
  wire \q_reg_n_0_[27] ;
  wire \q_reg_n_0_[28] ;
  wire \q_reg_n_0_[29] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[30] ;
  wire \q_reg_n_0_[31] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;
  wire \q_reg_n_0_[5] ;
  wire \q_reg_n_0_[6] ;
  wire \q_reg_n_0_[7] ;
  wire \q_reg_n_0_[89] ;
  wire \q_reg_n_0_[8] ;
  wire \q_reg_n_0_[90] ;
  wire \q_reg_n_0_[91] ;
  wire \q_reg_n_0_[92] ;
  wire \q_reg_n_0_[93] ;
  wire \q_reg_n_0_[95] ;
  wire \q_reg_n_0_[9] ;
  wire rd11__3;
  wire rd21__3;
  wire reset;

  LUT5 #(
    .INIT(32'h00010000)) 
    \q[0]_i_1 
       (.I0(opD[6]),
        .I1(opD[4]),
        .I2(StallD),
        .I3(PCSrcE),
        .I4(opD[1]),
        .O(\q_reg[65]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[100]_i_1 
       (.I0(PCD[21]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[98]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[101]_i_1 
       (.I0(PCD[22]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[99]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[102]_i_1 
       (.I0(PCD[23]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[100]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[103]_i_1 
       (.I0(PCD[24]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[101]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[104]_i_1 
       (.I0(PCD[25]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[102]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[105]_i_1 
       (.I0(PCD[26]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[103]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[106]_i_1 
       (.I0(PCD[27]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[104]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[107]_i_1 
       (.I0(PCD[28]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[105]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[108]_i_1 
       (.I0(PCD[29]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[106]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[109]_i_1 
       (.I0(PCD[30]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[107]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[10]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[4]),
        .I3(opD[2]),
        .I4(\q[10]_i_2_n_0 ),
        .O(\q_reg[65]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[10]_i_1__0 
       (.I0(\q_reg_n_0_[10] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h073C)) 
    \q[10]_i_2 
       (.I0(funct7b5D),
        .I1(funct3D[0]),
        .I2(funct3D[1]),
        .I3(funct3D[2]),
        .O(\q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[110]_i_1 
       (.I0(PCD[31]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[108]));
  LUT6 #(
    .INIT(64'h000000F000000080)) 
    \q[11]_i_1 
       (.I0(\q[11]_i_2_n_0 ),
        .I1(funct3D[0]),
        .I2(\c/ALUOpD ),
        .I3(PCSrcE),
        .I4(StallD),
        .I5(\q[11]_i_4_n_0 ),
        .O(\q_reg[65]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[11]_i_1__0 
       (.I0(\q_reg_n_0_[11] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[11]_i_2 
       (.I0(funct3D[1]),
        .I1(funct3D[2]),
        .O(\q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[11]_i_3 
       (.I0(opD[4]),
        .I1(opD[2]),
        .O(\c/ALUOpD ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \q[11]_i_4 
       (.I0(funct3D[1]),
        .I1(funct3D[0]),
        .I2(funct3D[2]),
        .I3(funct7b5D),
        .O(\q[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \q[12]_i_1 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(PCSrcE),
        .I3(StallD),
        .O(\q_reg[65]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[12]_i_1__0 
       (.I0(\q_reg_n_0_[12] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[13]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .O(\q_reg[65]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[13]_i_1__0 
       (.I0(\q_reg_n_0_[13] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[142]_i_2 
       (.I0(Q[9]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(rd21__3));
  LUT5 #(
    .INIT(32'h00000004)) 
    \q[14]_i_1 
       (.I0(opD[4]),
        .I1(opD[5]),
        .I2(opD[6]),
        .I3(PCSrcE),
        .I4(StallD),
        .O(\q_reg[65]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[14]_i_1__0 
       (.I0(\q_reg_n_0_[14] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \q[15]_i_1 
       (.I0(opD[5]),
        .I1(opD[4]),
        .I2(StallD),
        .I3(PCSrcE),
        .I4(opD[1]),
        .O(\q_reg[65]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[15]_i_1__0 
       (.I0(\q_reg_n_0_[15] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[16]_i_1 
       (.I0(\q_reg_n_0_[16] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[174]_i_3 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(rd11__3));
  LUT6 #(
    .INIT(64'h1010101010100010)) 
    \q[17]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[1]),
        .I3(opD[5]),
        .I4(opD[4]),
        .I5(opD[2]),
        .O(\q_reg[65]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[17]_i_1__0 
       (.I0(\q_reg_n_0_[17] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[18]_i_1 
       (.I0(\q_reg_n_0_[18] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[19]_i_1 
       (.I0(\q_reg_n_0_[19] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \q[1]_i_1 
       (.I0(opD[3]),
        .I1(opD[6]),
        .I2(StallD),
        .I3(PCSrcE),
        .I4(opD[2]),
        .O(\q_reg[65]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[20]_i_1 
       (.I0(\q_reg_n_0_[20] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[21]_i_1 
       (.I0(\q_reg_n_0_[21] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[22]_i_1 
       (.I0(\q_reg_n_0_[22] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[23]_i_1 
       (.I0(\q_reg_n_0_[23] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[24]_i_1 
       (.I0(\q_reg_n_0_[24] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[25]_i_1 
       (.I0(\q_reg_n_0_[25] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[26]_i_1 
       (.I0(\q_reg_n_0_[26] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[27]_i_1 
       (.I0(\q_reg_n_0_[27] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[28]_i_1 
       (.I0(\q_reg_n_0_[28] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[29]_i_1 
       (.I0(\q_reg_n_0_[29] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[2]_i_1 
       (.I0(funct3D[0]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(\q_reg[65]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[2]_i_1__0 
       (.I0(\q_reg_n_0_[2] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[30]_i_1 
       (.I0(\q_reg_n_0_[30] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[31]_i_1 
       (.I0(\q_reg_n_0_[31] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[29]));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_6 
       (.I0(Q[0]),
        .I1(\q[174]_i_2 [0]),
        .I2(Q[1]),
        .I3(\q[174]_i_2 [1]),
        .O(\q_reg[79]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_8 
       (.I0(Q[5]),
        .I1(\q[174]_i_2 [0]),
        .I2(Q[6]),
        .I3(\q[174]_i_2 [1]),
        .O(\q_reg[84]_0 ));
  LUT6 #(
    .INIT(64'h000400000000000C)) 
    \q[32]_i_1 
       (.I0(opD[3]),
        .I1(\q[32]_i_2_n_0 ),
        .I2(StallD),
        .I3(PCSrcE),
        .I4(opD[2]),
        .I5(opD[6]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \q[32]_i_2 
       (.I0(RdD[0]),
        .I1(opD[3]),
        .I2(opD[4]),
        .I3(opD[5]),
        .I4(opD[6]),
        .I5(Q[5]),
        .O(\q[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \q[33]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(ImmSrcD[2]),
        .I3(RdD[1]),
        .I4(\q[36]_i_2_n_0 ),
        .I5(Q[6]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \q[34]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(ImmSrcD[2]),
        .I3(RdD[2]),
        .I4(\q[36]_i_2_n_0 ),
        .I5(Q[7]),
        .O(D[32]));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \q[35]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(ImmSrcD[2]),
        .I3(RdD[3]),
        .I4(\q[36]_i_2_n_0 ),
        .I5(Q[8]),
        .O(D[33]));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \q[36]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(ImmSrcD[2]),
        .I3(RdD[4]),
        .I4(\q[36]_i_2_n_0 ),
        .I5(Q[9]),
        .O(D[34]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hEEEEBB8B)) 
    \q[36]_i_2 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[5]),
        .I3(opD[4]),
        .I4(opD[3]),
        .O(\q[36]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[37]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[89] ),
        .O(D[35]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[38]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[90] ),
        .O(D[36]));
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[39]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[91] ),
        .O(D[37]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[3]_i_1 
       (.I0(funct3D[1]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(\q_reg[65]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[3]_i_1__0 
       (.I0(\q_reg_n_0_[3] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[40]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[92] ),
        .O(D[38]));
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[41]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[93] ),
        .O(D[39]));
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[42]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(funct7b5D),
        .O(D[40]));
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[43]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q[43]_i_2_n_0 ),
        .O(D[41]));
  LUT5 #(
    .INIT(32'hFACA0ACA)) 
    \q[43]_i_2 
       (.I0(\q_reg_n_0_[95] ),
        .I1(RdD[0]),
        .I2(ImmSrcD[1]),
        .I3(ImmSrcD[0]),
        .I4(Q[5]),
        .O(\q[43]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[43]_i_3 
       (.I0(opD[3]),
        .I1(opD[2]),
        .I2(opD[6]),
        .O(ImmSrcD[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \q[43]_i_4 
       (.I0(opD[3]),
        .I1(opD[4]),
        .I2(opD[5]),
        .I3(opD[6]),
        .O(ImmSrcD[0]));
  LUT6 #(
    .INIT(64'h000000000000AACA)) 
    \q[44]_i_1 
       (.I0(funct3D[0]),
        .I1(\q_reg_n_0_[95] ),
        .I2(\q[51]_i_2_n_0 ),
        .I3(ImmSrcD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[42]));
  LUT6 #(
    .INIT(64'h000000000000AACA)) 
    \q[45]_i_1 
       (.I0(funct3D[1]),
        .I1(\q_reg_n_0_[95] ),
        .I2(\q[51]_i_2_n_0 ),
        .I3(ImmSrcD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[43]));
  LUT6 #(
    .INIT(64'h000000000000AACA)) 
    \q[46]_i_1 
       (.I0(funct3D[2]),
        .I1(\q_reg_n_0_[95] ),
        .I2(\q[51]_i_2_n_0 ),
        .I3(ImmSrcD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[44]));
  LUT6 #(
    .INIT(64'h000000000000AACA)) 
    \q[47]_i_1 
       (.I0(Q[0]),
        .I1(\q_reg_n_0_[95] ),
        .I2(\q[51]_i_2_n_0 ),
        .I3(ImmSrcD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[45]));
  LUT6 #(
    .INIT(64'h000000000000AACA)) 
    \q[48]_i_1 
       (.I0(Q[1]),
        .I1(\q_reg_n_0_[95] ),
        .I2(\q[51]_i_2_n_0 ),
        .I3(ImmSrcD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[46]));
  LUT6 #(
    .INIT(64'h000000000000AACA)) 
    \q[49]_i_1 
       (.I0(Q[2]),
        .I1(\q_reg_n_0_[95] ),
        .I2(\q[51]_i_2_n_0 ),
        .I3(ImmSrcD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[47]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[4]_i_1 
       (.I0(funct3D[2]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(\q_reg[65]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[4]_i_1__0 
       (.I0(\q_reg_n_0_[4] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h000000000000AACA)) 
    \q[50]_i_1 
       (.I0(Q[3]),
        .I1(\q_reg_n_0_[95] ),
        .I2(\q[51]_i_2_n_0 ),
        .I3(ImmSrcD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[48]));
  LUT6 #(
    .INIT(64'h000000000000AACA)) 
    \q[51]_i_1 
       (.I0(Q[4]),
        .I1(\q_reg_n_0_[95] ),
        .I2(\q[51]_i_2_n_0 ),
        .I3(ImmSrcD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[49]));
  LUT3 #(
    .INIT(8'h1F)) 
    \q[51]_i_2 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .O(\q[51]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[51]_i_3 
       (.I0(opD[2]),
        .I1(opD[6]),
        .O(ImmSrcD[2]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[52]_i_1 
       (.I0(Q[5]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[50]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[53]_i_1 
       (.I0(Q[6]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[51]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[54]_i_1 
       (.I0(Q[7]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[52]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[55]_i_1 
       (.I0(Q[8]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[53]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[56]_i_1 
       (.I0(Q[9]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[54]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[57]_i_1 
       (.I0(\q_reg_n_0_[89] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[55]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[58]_i_1 
       (.I0(\q_reg_n_0_[90] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[56]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[59]_i_1 
       (.I0(\q_reg_n_0_[91] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[57]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \q[5]_i_1 
       (.I0(\q[5]_i_2_n_0 ),
        .I1(StallD),
        .I2(PCSrcE),
        .I3(opD[1]),
        .O(\q_reg[65]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[5]_i_1__0 
       (.I0(\q_reg_n_0_[5] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h0000FF15)) 
    \q[5]_i_2 
       (.I0(opD[6]),
        .I1(opD[4]),
        .I2(opD[5]),
        .I3(opD[2]),
        .I4(opD[3]),
        .O(\q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[60]_i_1 
       (.I0(\q_reg_n_0_[92] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[58]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[61]_i_1 
       (.I0(\q_reg_n_0_[93] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[59]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[62]_i_1 
       (.I0(funct7b5D),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(StallD),
        .O(D[60]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[63]_i_1 
       (.I0(\q_reg_n_0_[95] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[61]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[64]_i_1 
       (.I0(RdD[0]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[62]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[65]_i_1 
       (.I0(RdD[1]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[63]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[66]_i_1 
       (.I0(RdD[2]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[64]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[67]_i_1 
       (.I0(RdD[3]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[65]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[68]_i_1 
       (.I0(RdD[4]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[66]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[69]_i_1 
       (.I0(Q[5]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[67]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \q[6]_i_1 
       (.I0(opD[6]),
        .I1(opD[5]),
        .I2(StallD),
        .I3(PCSrcE),
        .I4(opD[2]),
        .O(\q_reg[65]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[6]_i_1__0 
       (.I0(\q_reg_n_0_[6] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[70]_i_1 
       (.I0(Q[6]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[68]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[71]_i_1 
       (.I0(Q[7]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[69]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[72]_i_1 
       (.I0(Q[8]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[70]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[73]_i_1 
       (.I0(Q[9]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[71]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[74]_i_1 
       (.I0(Q[0]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[72]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[75]_i_1 
       (.I0(Q[1]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[73]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[76]_i_1 
       (.I0(Q[2]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[74]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[77]_i_1 
       (.I0(Q[3]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[75]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[78]_i_1 
       (.I0(Q[4]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[76]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[79]_i_1 
       (.I0(PCD[0]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[77]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \q[7]_i_1 
       (.I0(StallD),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .O(\q_reg[65]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[7]_i_1__0 
       (.I0(\q_reg_n_0_[7] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[80]_i_1 
       (.I0(PCD[1]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[78]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[81]_i_1 
       (.I0(PCD[2]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[79]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[82]_i_1 
       (.I0(PCD[3]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[80]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[83]_i_1 
       (.I0(PCD[4]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[81]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[84]_i_1 
       (.I0(PCD[5]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[82]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[85]_i_1 
       (.I0(PCD[6]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[83]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[86]_i_1 
       (.I0(PCD[7]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[84]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[87]_i_1 
       (.I0(PCD[8]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[85]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[88]_i_1 
       (.I0(PCD[9]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[86]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[89]_i_1 
       (.I0(PCD[10]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[87]));
  LUT6 #(
    .INIT(64'h0000020200000300)) 
    \q[8]_i_1 
       (.I0(\q[8]_i_2_n_0 ),
        .I1(StallD),
        .I2(PCSrcE),
        .I3(opD[6]),
        .I4(opD[2]),
        .I5(opD[4]),
        .O(\q_reg[65]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[8]_i_1__0 
       (.I0(\q_reg_n_0_[8] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h03F0F0F8)) 
    \q[8]_i_2 
       (.I0(opD[5]),
        .I1(funct7b5D),
        .I2(funct3D[1]),
        .I3(funct3D[2]),
        .I4(funct3D[0]),
        .O(\q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[90]_i_1 
       (.I0(PCD[11]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[88]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[91]_i_1 
       (.I0(PCD[12]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[89]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[92]_i_1 
       (.I0(PCD[13]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[90]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[93]_i_1 
       (.I0(PCD[14]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[91]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[94]_i_1 
       (.I0(PCD[15]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[92]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[95]_i_1 
       (.I0(PCD[16]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[93]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[96]_i_1 
       (.I0(PCD[17]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[94]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[97]_i_1 
       (.I0(PCD[18]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[95]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[98]_i_1 
       (.I0(PCD[19]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[96]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[99]_i_1 
       (.I0(PCD[20]),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[97]));
  LUT6 #(
    .INIT(64'h000000F000000080)) 
    \q[9]_i_1 
       (.I0(funct3D[1]),
        .I1(funct3D[2]),
        .I2(\c/ALUOpD ),
        .I3(PCSrcE),
        .I4(StallD),
        .I5(\q[9]_i_2_n_0 ),
        .O(\q_reg[65]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[9]_i_1__0 
       (.I0(\q_reg_n_0_[9] ),
        .I1(PCSrcE),
        .I2(StallD),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \q[9]_i_2 
       (.I0(funct3D[1]),
        .I1(funct3D[0]),
        .I2(funct3D[2]),
        .I3(funct7b5D),
        .O(\q[9]_i_2_n_0 ));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [8]),
        .Q(\q_reg_n_0_[10] ));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [9]),
        .Q(\q_reg_n_0_[11] ));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [10]),
        .Q(\q_reg_n_0_[12] ));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [11]),
        .Q(\q_reg_n_0_[13] ));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [12]),
        .Q(\q_reg_n_0_[14] ));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [13]),
        .Q(\q_reg_n_0_[15] ));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [14]),
        .Q(\q_reg_n_0_[16] ));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [15]),
        .Q(\q_reg_n_0_[17] ));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [16]),
        .Q(\q_reg_n_0_[18] ));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [17]),
        .Q(\q_reg_n_0_[19] ));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [18]),
        .Q(\q_reg_n_0_[20] ));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [19]),
        .Q(\q_reg_n_0_[21] ));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [20]),
        .Q(\q_reg_n_0_[22] ));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [21]),
        .Q(\q_reg_n_0_[23] ));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [22]),
        .Q(\q_reg_n_0_[24] ));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [23]),
        .Q(\q_reg_n_0_[25] ));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [24]),
        .Q(\q_reg_n_0_[26] ));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [25]),
        .Q(\q_reg_n_0_[27] ));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [26]),
        .Q(\q_reg_n_0_[28] ));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [27]),
        .Q(\q_reg_n_0_[29] ));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [0]),
        .Q(\q_reg_n_0_[2] ));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [28]),
        .Q(\q_reg_n_0_[30] ));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [29]),
        .Q(\q_reg_n_0_[31] ));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [30]),
        .Q(PCD[0]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [31]),
        .Q(PCD[1]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [32]),
        .Q(PCD[2]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [33]),
        .Q(PCD[3]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [34]),
        .Q(PCD[4]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [35]),
        .Q(PCD[5]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [36]),
        .Q(PCD[6]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [37]),
        .Q(PCD[7]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [1]),
        .Q(\q_reg_n_0_[3] ));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [38]),
        .Q(PCD[8]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [39]),
        .Q(PCD[9]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [40]),
        .Q(PCD[10]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [41]),
        .Q(PCD[11]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [42]),
        .Q(PCD[12]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [43]),
        .Q(PCD[13]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [44]),
        .Q(PCD[14]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [45]),
        .Q(PCD[15]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [46]),
        .Q(PCD[16]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [47]),
        .Q(PCD[17]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [2]),
        .Q(\q_reg_n_0_[4] ));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [48]),
        .Q(PCD[18]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [49]),
        .Q(PCD[19]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [50]),
        .Q(PCD[20]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [51]),
        .Q(PCD[21]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [52]),
        .Q(PCD[22]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [53]),
        .Q(PCD[23]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [54]),
        .Q(PCD[24]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [55]),
        .Q(PCD[25]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [56]),
        .Q(PCD[26]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [57]),
        .Q(PCD[27]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [3]),
        .Q(\q_reg_n_0_[5] ));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [58]),
        .Q(PCD[28]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [59]),
        .Q(PCD[29]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [60]),
        .Q(PCD[30]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [61]),
        .Q(PCD[31]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [62]),
        .Q(opD[1]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [63]),
        .Q(opD[2]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [64]),
        .Q(opD[3]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [65]),
        .Q(opD[4]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [66]),
        .Q(opD[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [4]),
        .Q(\q_reg_n_0_[6] ));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [67]),
        .Q(opD[6]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [68]),
        .Q(RdD[0]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [69]),
        .Q(RdD[1]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [70]),
        .Q(RdD[2]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [71]),
        .Q(RdD[3]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [72]),
        .Q(RdD[4]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [73]),
        .Q(funct3D[0]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [74]),
        .Q(funct3D[1]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [75]),
        .Q(funct3D[2]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [76]),
        .Q(Q[0]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [5]),
        .Q(\q_reg_n_0_[7] ));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [77]),
        .Q(Q[1]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [78]),
        .Q(Q[2]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [79]),
        .Q(Q[3]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [80]),
        .Q(Q[4]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [81]),
        .Q(Q[5]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [82]),
        .Q(Q[6]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [83]),
        .Q(Q[7]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [84]),
        .Q(Q[8]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [85]),
        .Q(Q[9]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [86]),
        .Q(\q_reg_n_0_[89] ));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [6]),
        .Q(\q_reg_n_0_[8] ));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [87]),
        .Q(\q_reg_n_0_[90] ));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [88]),
        .Q(\q_reg_n_0_[91] ));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [89]),
        .Q(\q_reg_n_0_[92] ));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [90]),
        .Q(\q_reg_n_0_[93] ));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [91]),
        .Q(funct7b5D));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [92]),
        .Q(\q_reg_n_0_[95] ));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [7]),
        .Q(\q_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module design_1_top_0_0_flopr
   (WriteDataM,
    Q,
    \q_reg[2]_0 ,
    \q_reg[1]_0 ,
    \writeDataM[16] ,
    \writeDataM[8] ,
    ReadDataM,
    \writeDataM[9] ,
    \writeDataM[10] ,
    \writeDataM[11] ,
    \writeDataM[12] ,
    \writeDataM[13] ,
    \writeDataM[14] ,
    \writeDataM[15] ,
    \writeDataM[31] ,
    \writeDataM[30] ,
    \writeDataM[29] ,
    \writeDataM[28] ,
    \writeDataM[27] ,
    \writeDataM[26] ,
    \writeDataM[25] ,
    \writeDataM[24] ,
    \writeDataM[23] ,
    \writeDataM[22] ,
    \writeDataM[21] ,
    \writeDataM[20] ,
    \writeDataM[19] ,
    \writeDataM[18] ,
    \writeDataM[17] ,
    \writeDataM[16]_0 ,
    D,
    clk,
    reset);
  output [23:0]WriteDataM;
  output [7:0]Q;
  output \q_reg[2]_0 ;
  output \q_reg[1]_0 ;
  input [24:0]\writeDataM[16] ;
  input \writeDataM[8] ;
  input [23:0]ReadDataM;
  input \writeDataM[9] ;
  input \writeDataM[10] ;
  input \writeDataM[11] ;
  input \writeDataM[12] ;
  input \writeDataM[13] ;
  input \writeDataM[14] ;
  input \writeDataM[15] ;
  input \writeDataM[31] ;
  input \writeDataM[30] ;
  input \writeDataM[29] ;
  input \writeDataM[28] ;
  input \writeDataM[27] ;
  input \writeDataM[26] ;
  input \writeDataM[25] ;
  input \writeDataM[24] ;
  input \writeDataM[23] ;
  input \writeDataM[22] ;
  input \writeDataM[21] ;
  input \writeDataM[20] ;
  input \writeDataM[19] ;
  input \writeDataM[18] ;
  input \writeDataM[17] ;
  input \writeDataM[16]_0 ;
  input [7:0]D;
  input clk;
  input reset;

  wire [7:0]D;
  wire [7:0]Q;
  wire [23:0]ReadDataM;
  wire [23:0]WriteDataM;
  wire \WriteDataM[15]_INST_0_i_1_n_0 ;
  wire \WriteDataM[31]_INST_0_i_2_n_0 ;
  wire clk;
  wire \q_reg[1]_0 ;
  wire \q_reg[2]_0 ;
  wire reset;
  wire \writeDataM[10] ;
  wire \writeDataM[11] ;
  wire \writeDataM[12] ;
  wire \writeDataM[13] ;
  wire \writeDataM[14] ;
  wire \writeDataM[15] ;
  wire [24:0]\writeDataM[16] ;
  wire \writeDataM[16]_0 ;
  wire \writeDataM[17] ;
  wire \writeDataM[18] ;
  wire \writeDataM[19] ;
  wire \writeDataM[20] ;
  wire \writeDataM[21] ;
  wire \writeDataM[22] ;
  wire \writeDataM[23] ;
  wire \writeDataM[24] ;
  wire \writeDataM[25] ;
  wire \writeDataM[26] ;
  wire \writeDataM[27] ;
  wire \writeDataM[28] ;
  wire \writeDataM[29] ;
  wire \writeDataM[30] ;
  wire \writeDataM[31] ;
  wire \writeDataM[8] ;
  wire \writeDataM[9] ;

  LUT6 #(
    .INIT(64'hF5F5F5E0F5E0F5E0)) 
    \WriteDataM[10]_INST_0 
       (.I0(Q[3]),
        .I1(\WriteDataM[15]_INST_0_i_1_n_0 ),
        .I2(\writeDataM[16] [2]),
        .I3(\writeDataM[10] ),
        .I4(ReadDataM[2]),
        .I5(\q_reg[2]_0 ),
        .O(WriteDataM[2]));
  LUT6 #(
    .INIT(64'hF5F5F5E0F5E0F5E0)) 
    \WriteDataM[11]_INST_0 
       (.I0(Q[3]),
        .I1(\WriteDataM[15]_INST_0_i_1_n_0 ),
        .I2(\writeDataM[16] [3]),
        .I3(\writeDataM[11] ),
        .I4(ReadDataM[3]),
        .I5(\q_reg[2]_0 ),
        .O(WriteDataM[3]));
  LUT6 #(
    .INIT(64'hF5F5F5E0F5E0F5E0)) 
    \WriteDataM[12]_INST_0 
       (.I0(Q[3]),
        .I1(\WriteDataM[15]_INST_0_i_1_n_0 ),
        .I2(\writeDataM[16] [4]),
        .I3(\writeDataM[12] ),
        .I4(ReadDataM[4]),
        .I5(\q_reg[2]_0 ),
        .O(WriteDataM[4]));
  LUT6 #(
    .INIT(64'hF5F5F5E0F5E0F5E0)) 
    \WriteDataM[13]_INST_0 
       (.I0(Q[3]),
        .I1(\WriteDataM[15]_INST_0_i_1_n_0 ),
        .I2(\writeDataM[16] [5]),
        .I3(\writeDataM[13] ),
        .I4(ReadDataM[5]),
        .I5(\q_reg[2]_0 ),
        .O(WriteDataM[5]));
  LUT6 #(
    .INIT(64'hF5F5F5E0F5E0F5E0)) 
    \WriteDataM[14]_INST_0 
       (.I0(Q[3]),
        .I1(\WriteDataM[15]_INST_0_i_1_n_0 ),
        .I2(\writeDataM[16] [6]),
        .I3(\writeDataM[14] ),
        .I4(ReadDataM[6]),
        .I5(\q_reg[2]_0 ),
        .O(WriteDataM[6]));
  LUT6 #(
    .INIT(64'hF5F5F5E0F5E0F5E0)) 
    \WriteDataM[15]_INST_0 
       (.I0(Q[3]),
        .I1(\WriteDataM[15]_INST_0_i_1_n_0 ),
        .I2(\writeDataM[16] [7]),
        .I3(\writeDataM[15] ),
        .I4(ReadDataM[7]),
        .I5(\q_reg[2]_0 ),
        .O(WriteDataM[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \WriteDataM[15]_INST_0_i_1 
       (.I0(\writeDataM[16] [24]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\WriteDataM[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \WriteDataM[15]_INST_0_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\writeDataM[16] [24]),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[16]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[16]_0 ),
        .I3(\writeDataM[16] [8]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[8]),
        .O(WriteDataM[8]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[17]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[17] ),
        .I3(\writeDataM[16] [9]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[9]),
        .O(WriteDataM[9]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[18]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[18] ),
        .I3(\writeDataM[16] [10]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[10]),
        .O(WriteDataM[10]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[19]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[19] ),
        .I3(\writeDataM[16] [11]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[11]),
        .O(WriteDataM[11]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[20]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[20] ),
        .I3(\writeDataM[16] [12]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[12]),
        .O(WriteDataM[12]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[21]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[21] ),
        .I3(\writeDataM[16] [13]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[13]),
        .O(WriteDataM[13]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[22]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[22] ),
        .I3(\writeDataM[16] [14]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[14]),
        .O(WriteDataM[14]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[23]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[23] ),
        .I3(\writeDataM[16] [15]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[15]),
        .O(WriteDataM[15]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[24]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[24] ),
        .I3(\writeDataM[16] [16]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[16]),
        .O(WriteDataM[16]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[25]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[25] ),
        .I3(\writeDataM[16] [17]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[17]),
        .O(WriteDataM[17]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[26]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[26] ),
        .I3(\writeDataM[16] [18]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[18]),
        .O(WriteDataM[18]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[27]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[27] ),
        .I3(\writeDataM[16] [19]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[19]),
        .O(WriteDataM[19]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[28]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[28] ),
        .I3(\writeDataM[16] [20]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[20]),
        .O(WriteDataM[20]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[29]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[29] ),
        .I3(\writeDataM[16] [21]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[21]),
        .O(WriteDataM[21]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[30]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[30] ),
        .I3(\writeDataM[16] [22]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[22]),
        .O(WriteDataM[22]));
  LUT6 #(
    .INIT(64'hFF33FE30FE30FE30)) 
    \WriteDataM[31]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\writeDataM[31] ),
        .I3(\writeDataM[16] [23]),
        .I4(\WriteDataM[31]_INST_0_i_2_n_0 ),
        .I5(ReadDataM[23]),
        .O(WriteDataM[23]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \WriteDataM[31]_INST_0_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\writeDataM[16] [24]),
        .O(\WriteDataM[31]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \WriteDataM[31]_INST_0_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5E0F5E0F5E0)) 
    \WriteDataM[8]_INST_0 
       (.I0(Q[3]),
        .I1(\WriteDataM[15]_INST_0_i_1_n_0 ),
        .I2(\writeDataM[16] [0]),
        .I3(\writeDataM[8] ),
        .I4(ReadDataM[0]),
        .I5(\q_reg[2]_0 ),
        .O(WriteDataM[0]));
  LUT6 #(
    .INIT(64'hF5F5F5E0F5E0F5E0)) 
    \WriteDataM[9]_INST_0 
       (.I0(Q[3]),
        .I1(\WriteDataM[15]_INST_0_i_1_n_0 ),
        .I2(\writeDataM[16] [1]),
        .I3(\writeDataM[9] ),
        .I4(ReadDataM[1]),
        .I5(\q_reg[2]_0 ),
        .O(WriteDataM[1]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module design_1_top_0_0_flopr__parameterized0
   (ResultW,
    Q,
    \q_reg[68] ,
    rf_reg_r1_0_31_24_29_i_3_0,
    data0,
    D,
    clk,
    reset);
  output [15:0]ResultW;
  output [5:0]Q;
  input [47:0]\q_reg[68] ;
  input rf_reg_r1_0_31_24_29_i_3_0;
  input [0:0]data0;
  input [5:0]D;
  input clk;
  input reset;

  wire [5:0]D;
  wire [5:0]Q;
  wire [15:0]ResultW;
  wire clk;
  wire [0:0]data0;
  wire [47:0]\q_reg[68] ;
  wire reset;
  wire rf_reg_r1_0_31_12_17_i_15_n_0;
  wire rf_reg_r1_0_31_12_17_i_16_n_0;
  wire rf_reg_r1_0_31_12_17_i_17_n_0;
  wire rf_reg_r1_0_31_18_23_i_10_n_0;
  wire rf_reg_r1_0_31_18_23_i_11_n_0;
  wire rf_reg_r1_0_31_18_23_i_12_n_0;
  wire rf_reg_r1_0_31_18_23_i_7_n_0;
  wire rf_reg_r1_0_31_18_23_i_8_n_0;
  wire rf_reg_r1_0_31_18_23_i_9_n_0;
  wire rf_reg_r1_0_31_24_29_i_10_n_0;
  wire rf_reg_r1_0_31_24_29_i_11_n_0;
  wire rf_reg_r1_0_31_24_29_i_12_n_0;
  wire rf_reg_r1_0_31_24_29_i_3_0;
  wire rf_reg_r1_0_31_24_29_i_7_n_0;
  wire rf_reg_r1_0_31_24_29_i_8_n_0;
  wire rf_reg_r1_0_31_24_29_i_9_n_0;
  wire rf_reg_r1_0_31_30_31_i_2__0_n_0;
  wire rf_reg_r1_0_31_30_31_i_2_n_0;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[5]));
  LUT6 #(
    .INIT(64'h0400040404000000)) 
    rf_reg_r1_0_31_12_17_i_15
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(rf_reg_r1_0_31_24_29_i_3_0),
        .I4(Q[0]),
        .I5(data0),
        .O(rf_reg_r1_0_31_12_17_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_12_17_i_16
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [17]),
        .O(rf_reg_r1_0_31_12_17_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_12_17_i_17
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [16]),
        .O(rf_reg_r1_0_31_12_17_i_17_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(\q_reg[68] [1]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [33]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_12_17_i_16_n_0),
        .O(ResultW[1]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(\q_reg[68] [0]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [32]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_12_17_i_17_n_0),
        .O(ResultW[0]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(\q_reg[68] [3]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [35]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_18_23_i_7_n_0),
        .O(ResultW[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_18_23_i_10
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [20]),
        .O(rf_reg_r1_0_31_18_23_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_18_23_i_11
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [23]),
        .O(rf_reg_r1_0_31_18_23_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_18_23_i_12
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [22]),
        .O(rf_reg_r1_0_31_18_23_i_12_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(\q_reg[68] [2]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [34]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_18_23_i_8_n_0),
        .O(ResultW[2]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(\q_reg[68] [5]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [37]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_18_23_i_9_n_0),
        .O(ResultW[5]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(\q_reg[68] [4]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [36]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_18_23_i_10_n_0),
        .O(ResultW[4]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(\q_reg[68] [7]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [39]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_18_23_i_11_n_0),
        .O(ResultW[7]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(\q_reg[68] [6]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [38]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_18_23_i_12_n_0),
        .O(ResultW[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_18_23_i_7
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [19]),
        .O(rf_reg_r1_0_31_18_23_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_18_23_i_8
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [18]),
        .O(rf_reg_r1_0_31_18_23_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_18_23_i_9
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [21]),
        .O(rf_reg_r1_0_31_18_23_i_9_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(\q_reg[68] [9]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [41]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_24_29_i_7_n_0),
        .O(ResultW[9]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_24_29_i_10
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [26]),
        .O(rf_reg_r1_0_31_24_29_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_24_29_i_11
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [29]),
        .O(rf_reg_r1_0_31_24_29_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_24_29_i_12
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [28]),
        .O(rf_reg_r1_0_31_24_29_i_12_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(\q_reg[68] [8]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [40]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_24_29_i_8_n_0),
        .O(ResultW[8]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(\q_reg[68] [11]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [43]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_24_29_i_9_n_0),
        .O(ResultW[11]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(\q_reg[68] [10]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [42]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_24_29_i_10_n_0),
        .O(ResultW[10]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(\q_reg[68] [13]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [45]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_24_29_i_11_n_0),
        .O(ResultW[13]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(\q_reg[68] [12]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [44]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_24_29_i_12_n_0),
        .O(ResultW[12]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_24_29_i_7
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [25]),
        .O(rf_reg_r1_0_31_24_29_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_24_29_i_8
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [24]),
        .O(rf_reg_r1_0_31_24_29_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_24_29_i_9
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [27]),
        .O(rf_reg_r1_0_31_24_29_i_9_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(\q_reg[68] [15]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [47]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_30_31_i_2_n_0),
        .O(ResultW[15]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    rf_reg_r1_0_31_30_31_i_1__0
       (.I0(\q_reg[68] [14]),
        .I1(Q[4]),
        .I2(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I3(\q_reg[68] [46]),
        .I4(Q[3]),
        .I5(rf_reg_r1_0_31_30_31_i_2__0_n_0),
        .O(ResultW[14]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [31]),
        .O(rf_reg_r1_0_31_30_31_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_30_31_i_2__0
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\q_reg[68] [30]),
        .O(rf_reg_r1_0_31_30_31_i_2__0_n_0));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module design_1_top_0_0_flopr__parameterized1
   (\q_reg[34]_0 ,
    Q,
    WriteDataM,
    \q_reg[37]_0 ,
    \q_reg[38]_0 ,
    \q_reg[39]_0 ,
    \q_reg[40]_0 ,
    \q_reg[41]_0 ,
    \q_reg[42]_0 ,
    \q_reg[43]_0 ,
    \q_reg[44]_0 ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \q_reg[1]_7 ,
    \q_reg[45]_0 ,
    \q_reg[46]_0 ,
    \q_reg[47]_0 ,
    \q_reg[48]_0 ,
    \q_reg[49]_0 ,
    \q_reg[50]_0 ,
    \q_reg[51]_0 ,
    \q_reg[52]_0 ,
    \q_reg[1]_8 ,
    \writeDataM[7] ,
    ReadDataM,
    \writeDataM[31] ,
    \writeDataM[31]_0 ,
    D,
    clk,
    reset);
  output \q_reg[34]_0 ;
  output [92:0]Q;
  output [7:0]WriteDataM;
  output \q_reg[37]_0 ;
  output \q_reg[38]_0 ;
  output \q_reg[39]_0 ;
  output \q_reg[40]_0 ;
  output \q_reg[41]_0 ;
  output \q_reg[42]_0 ;
  output \q_reg[43]_0 ;
  output \q_reg[44]_0 ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  output \q_reg[1]_7 ;
  output \q_reg[45]_0 ;
  output \q_reg[46]_0 ;
  output \q_reg[47]_0 ;
  output \q_reg[48]_0 ;
  output \q_reg[49]_0 ;
  output \q_reg[50]_0 ;
  output \q_reg[51]_0 ;
  output \q_reg[52]_0 ;
  input [38:0]\q_reg[1]_8 ;
  input [2:0]\writeDataM[7] ;
  input [31:0]ReadDataM;
  input \writeDataM[31] ;
  input \writeDataM[31]_0 ;
  input [63:0]D;
  input clk;
  input reset;

  wire [63:0]D;
  wire [92:0]Q;
  wire [31:0]ReadDataM;
  wire [7:0]WriteDataM;
  wire \WriteDataM[31]_INST_0_i_4_n_0 ;
  wire [7:0]WriteDataM_Original;
  wire clk;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire [38:0]\q_reg[1]_8 ;
  wire \q_reg[34]_0 ;
  wire \q_reg[37]_0 ;
  wire \q_reg[38]_0 ;
  wire \q_reg[39]_0 ;
  wire \q_reg[40]_0 ;
  wire \q_reg[41]_0 ;
  wire \q_reg[42]_0 ;
  wire \q_reg[43]_0 ;
  wire \q_reg[44]_0 ;
  wire \q_reg[45]_0 ;
  wire \q_reg[46]_0 ;
  wire \q_reg[47]_0 ;
  wire \q_reg[48]_0 ;
  wire \q_reg[49]_0 ;
  wire \q_reg[50]_0 ;
  wire \q_reg[51]_0 ;
  wire \q_reg[52]_0 ;
  wire reset;
  wire [7:0]storedMemory;
  wire \writeDataM[31] ;
  wire \writeDataM[31]_0 ;
  wire [2:0]\writeDataM[7] ;

  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteDataM[0]_INST_0 
       (.I0(WriteDataM_Original[0]),
        .I1(\writeDataM[7] [2]),
        .I2(storedMemory[0]),
        .O(WriteDataM[0]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AAAAAAE2)) 
    \WriteDataM[0]_INST_0_i_1 
       (.I0(WriteDataM_Original[0]),
        .I1(Q[61]),
        .I2(ReadDataM[0]),
        .I3(\writeDataM[7] [1]),
        .I4(\writeDataM[7] [0]),
        .I5(Q[62]),
        .O(storedMemory[0]));
  LUT6 #(
    .INIT(64'h000000000000FB08)) 
    \WriteDataM[10]_INST_0_i_1 
       (.I0(WriteDataM_Original[2]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(ReadDataM[10]),
        .I4(\writeDataM[7] [1]),
        .I5(\writeDataM[7] [0]),
        .O(\q_reg[39]_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB08)) 
    \WriteDataM[11]_INST_0_i_1 
       (.I0(WriteDataM_Original[3]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(ReadDataM[11]),
        .I4(\writeDataM[7] [1]),
        .I5(\writeDataM[7] [0]),
        .O(\q_reg[40]_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB08)) 
    \WriteDataM[12]_INST_0_i_1 
       (.I0(WriteDataM_Original[4]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(ReadDataM[12]),
        .I4(\writeDataM[7] [1]),
        .I5(\writeDataM[7] [0]),
        .O(\q_reg[41]_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB08)) 
    \WriteDataM[13]_INST_0_i_1 
       (.I0(WriteDataM_Original[5]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(ReadDataM[13]),
        .I4(\writeDataM[7] [1]),
        .I5(\writeDataM[7] [0]),
        .O(\q_reg[42]_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB08)) 
    \WriteDataM[14]_INST_0_i_1 
       (.I0(WriteDataM_Original[6]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(ReadDataM[14]),
        .I4(\writeDataM[7] [1]),
        .I5(\writeDataM[7] [0]),
        .O(\q_reg[43]_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB08)) 
    \WriteDataM[15]_INST_0_i_2 
       (.I0(WriteDataM_Original[7]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(ReadDataM[15]),
        .I4(\writeDataM[7] [1]),
        .I5(\writeDataM[7] [0]),
        .O(\q_reg[44]_0 ));
  LUT6 #(
    .INIT(64'h3233101010001010)) 
    \WriteDataM[16]_INST_0_i_1 
       (.I0(\writeDataM[7] [0]),
        .I1(\writeDataM[7] [1]),
        .I2(ReadDataM[16]),
        .I3(Q[61]),
        .I4(Q[62]),
        .I5(WriteDataM_Original[0]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h3233101010001010)) 
    \WriteDataM[17]_INST_0_i_1 
       (.I0(\writeDataM[7] [0]),
        .I1(\writeDataM[7] [1]),
        .I2(ReadDataM[17]),
        .I3(Q[61]),
        .I4(Q[62]),
        .I5(WriteDataM_Original[1]),
        .O(\q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h3233101010001010)) 
    \WriteDataM[18]_INST_0_i_1 
       (.I0(\writeDataM[7] [0]),
        .I1(\writeDataM[7] [1]),
        .I2(ReadDataM[18]),
        .I3(Q[61]),
        .I4(Q[62]),
        .I5(WriteDataM_Original[2]),
        .O(\q_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h3233101010001010)) 
    \WriteDataM[19]_INST_0_i_1 
       (.I0(\writeDataM[7] [0]),
        .I1(\writeDataM[7] [1]),
        .I2(ReadDataM[19]),
        .I3(Q[61]),
        .I4(Q[62]),
        .I5(WriteDataM_Original[3]),
        .O(\q_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteDataM[1]_INST_0 
       (.I0(WriteDataM_Original[1]),
        .I1(\writeDataM[7] [2]),
        .I2(storedMemory[1]),
        .O(WriteDataM[1]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AAAAAAE2)) 
    \WriteDataM[1]_INST_0_i_1 
       (.I0(WriteDataM_Original[1]),
        .I1(Q[61]),
        .I2(ReadDataM[1]),
        .I3(\writeDataM[7] [1]),
        .I4(\writeDataM[7] [0]),
        .I5(Q[62]),
        .O(storedMemory[1]));
  LUT6 #(
    .INIT(64'h3233101010001010)) 
    \WriteDataM[20]_INST_0_i_1 
       (.I0(\writeDataM[7] [0]),
        .I1(\writeDataM[7] [1]),
        .I2(ReadDataM[20]),
        .I3(Q[61]),
        .I4(Q[62]),
        .I5(WriteDataM_Original[4]),
        .O(\q_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h3233101010001010)) 
    \WriteDataM[21]_INST_0_i_1 
       (.I0(\writeDataM[7] [0]),
        .I1(\writeDataM[7] [1]),
        .I2(ReadDataM[21]),
        .I3(Q[61]),
        .I4(Q[62]),
        .I5(WriteDataM_Original[5]),
        .O(\q_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h3233101010001010)) 
    \WriteDataM[22]_INST_0_i_1 
       (.I0(\writeDataM[7] [0]),
        .I1(\writeDataM[7] [1]),
        .I2(ReadDataM[22]),
        .I3(Q[61]),
        .I4(Q[62]),
        .I5(WriteDataM_Original[6]),
        .O(\q_reg[1]_6 ));
  LUT6 #(
    .INIT(64'h3233101010001010)) 
    \WriteDataM[23]_INST_0_i_1 
       (.I0(\writeDataM[7] [0]),
        .I1(\writeDataM[7] [1]),
        .I2(ReadDataM[23]),
        .I3(Q[61]),
        .I4(Q[62]),
        .I5(WriteDataM_Original[7]),
        .O(\q_reg[1]_7 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \WriteDataM[24]_INST_0_i_1 
       (.I0(Q[37]),
        .I1(\writeDataM[31] ),
        .I2(\writeDataM[31]_0 ),
        .I3(ReadDataM[24]),
        .I4(\WriteDataM[31]_INST_0_i_4_n_0 ),
        .I5(WriteDataM_Original[0]),
        .O(\q_reg[45]_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \WriteDataM[25]_INST_0_i_1 
       (.I0(Q[38]),
        .I1(\writeDataM[31] ),
        .I2(\writeDataM[31]_0 ),
        .I3(ReadDataM[25]),
        .I4(\WriteDataM[31]_INST_0_i_4_n_0 ),
        .I5(WriteDataM_Original[1]),
        .O(\q_reg[46]_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \WriteDataM[26]_INST_0_i_1 
       (.I0(Q[39]),
        .I1(\writeDataM[31] ),
        .I2(\writeDataM[31]_0 ),
        .I3(ReadDataM[26]),
        .I4(\WriteDataM[31]_INST_0_i_4_n_0 ),
        .I5(WriteDataM_Original[2]),
        .O(\q_reg[47]_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \WriteDataM[27]_INST_0_i_1 
       (.I0(Q[40]),
        .I1(\writeDataM[31] ),
        .I2(\writeDataM[31]_0 ),
        .I3(ReadDataM[27]),
        .I4(\WriteDataM[31]_INST_0_i_4_n_0 ),
        .I5(WriteDataM_Original[3]),
        .O(\q_reg[48]_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \WriteDataM[28]_INST_0_i_1 
       (.I0(Q[41]),
        .I1(\writeDataM[31] ),
        .I2(\writeDataM[31]_0 ),
        .I3(ReadDataM[28]),
        .I4(\WriteDataM[31]_INST_0_i_4_n_0 ),
        .I5(WriteDataM_Original[4]),
        .O(\q_reg[49]_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \WriteDataM[29]_INST_0_i_1 
       (.I0(Q[42]),
        .I1(\writeDataM[31] ),
        .I2(\writeDataM[31]_0 ),
        .I3(ReadDataM[29]),
        .I4(\WriteDataM[31]_INST_0_i_4_n_0 ),
        .I5(WriteDataM_Original[5]),
        .O(\q_reg[50]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteDataM[2]_INST_0 
       (.I0(WriteDataM_Original[2]),
        .I1(\writeDataM[7] [2]),
        .I2(storedMemory[2]),
        .O(WriteDataM[2]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AAAAAAE2)) 
    \WriteDataM[2]_INST_0_i_1 
       (.I0(WriteDataM_Original[2]),
        .I1(Q[61]),
        .I2(ReadDataM[2]),
        .I3(\writeDataM[7] [1]),
        .I4(\writeDataM[7] [0]),
        .I5(Q[62]),
        .O(storedMemory[2]));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \WriteDataM[30]_INST_0_i_1 
       (.I0(Q[43]),
        .I1(\writeDataM[31] ),
        .I2(\writeDataM[31]_0 ),
        .I3(ReadDataM[30]),
        .I4(\WriteDataM[31]_INST_0_i_4_n_0 ),
        .I5(WriteDataM_Original[6]),
        .O(\q_reg[51]_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \WriteDataM[31]_INST_0_i_1 
       (.I0(Q[44]),
        .I1(\writeDataM[31] ),
        .I2(\writeDataM[31]_0 ),
        .I3(ReadDataM[31]),
        .I4(\WriteDataM[31]_INST_0_i_4_n_0 ),
        .I5(WriteDataM_Original[7]),
        .O(\q_reg[52]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \WriteDataM[31]_INST_0_i_4 
       (.I0(Q[61]),
        .I1(Q[62]),
        .O(\WriteDataM[31]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteDataM[3]_INST_0 
       (.I0(WriteDataM_Original[3]),
        .I1(\writeDataM[7] [2]),
        .I2(storedMemory[3]),
        .O(WriteDataM[3]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AAAAAAE2)) 
    \WriteDataM[3]_INST_0_i_1 
       (.I0(WriteDataM_Original[3]),
        .I1(Q[61]),
        .I2(ReadDataM[3]),
        .I3(\writeDataM[7] [1]),
        .I4(\writeDataM[7] [0]),
        .I5(Q[62]),
        .O(storedMemory[3]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteDataM[4]_INST_0 
       (.I0(WriteDataM_Original[4]),
        .I1(\writeDataM[7] [2]),
        .I2(storedMemory[4]),
        .O(WriteDataM[4]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AAAAAAE2)) 
    \WriteDataM[4]_INST_0_i_1 
       (.I0(WriteDataM_Original[4]),
        .I1(Q[61]),
        .I2(ReadDataM[4]),
        .I3(\writeDataM[7] [1]),
        .I4(\writeDataM[7] [0]),
        .I5(Q[62]),
        .O(storedMemory[4]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteDataM[5]_INST_0 
       (.I0(WriteDataM_Original[5]),
        .I1(\writeDataM[7] [2]),
        .I2(storedMemory[5]),
        .O(WriteDataM[5]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AAAAAAE2)) 
    \WriteDataM[5]_INST_0_i_1 
       (.I0(WriteDataM_Original[5]),
        .I1(Q[61]),
        .I2(ReadDataM[5]),
        .I3(\writeDataM[7] [1]),
        .I4(\writeDataM[7] [0]),
        .I5(Q[62]),
        .O(storedMemory[5]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteDataM[6]_INST_0 
       (.I0(WriteDataM_Original[6]),
        .I1(\writeDataM[7] [2]),
        .I2(storedMemory[6]),
        .O(WriteDataM[6]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AAAAAAE2)) 
    \WriteDataM[6]_INST_0_i_1 
       (.I0(WriteDataM_Original[6]),
        .I1(Q[61]),
        .I2(ReadDataM[6]),
        .I3(\writeDataM[7] [1]),
        .I4(\writeDataM[7] [0]),
        .I5(Q[62]),
        .O(storedMemory[6]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteDataM[7]_INST_0 
       (.I0(WriteDataM_Original[7]),
        .I1(\writeDataM[7] [2]),
        .I2(storedMemory[7]),
        .O(WriteDataM[7]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AAAAAAE2)) 
    \WriteDataM[7]_INST_0_i_1 
       (.I0(WriteDataM_Original[7]),
        .I1(Q[61]),
        .I2(ReadDataM[7]),
        .I3(\writeDataM[7] [1]),
        .I4(\writeDataM[7] [0]),
        .I5(Q[62]),
        .O(storedMemory[7]));
  LUT6 #(
    .INIT(64'h000000000000FB08)) 
    \WriteDataM[8]_INST_0_i_1 
       (.I0(WriteDataM_Original[0]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(ReadDataM[8]),
        .I4(\writeDataM[7] [1]),
        .I5(\writeDataM[7] [0]),
        .O(\q_reg[37]_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB08)) 
    \WriteDataM[9]_INST_0_i_1 
       (.I0(WriteDataM_Original[1]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(ReadDataM[9]),
        .I4(\writeDataM[7] [1]),
        .I5(\writeDataM[7] [0]),
        .O(\q_reg[38]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[68]_i_9 
       (.I0(Q[34]),
        .I1(\q_reg[1]_8 [35]),
        .I2(\q_reg[1]_8 [36]),
        .I3(Q[35]),
        .O(\q_reg[34]_0 ));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [37]),
        .Q(Q[0]));
  FDCE \q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[63]),
        .Q(Q[92]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [8]),
        .Q(Q[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [9]),
        .Q(Q[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [10]),
        .Q(Q[12]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [11]),
        .Q(Q[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [12]),
        .Q(Q[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [13]),
        .Q(Q[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [14]),
        .Q(Q[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [15]),
        .Q(Q[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [16]),
        .Q(Q[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [17]),
        .Q(Q[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [38]),
        .Q(Q[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [18]),
        .Q(Q[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [19]),
        .Q(Q[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [20]),
        .Q(Q[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [21]),
        .Q(Q[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [22]),
        .Q(Q[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [23]),
        .Q(Q[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [24]),
        .Q(Q[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [25]),
        .Q(Q[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [26]),
        .Q(Q[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [27]),
        .Q(Q[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [0]),
        .Q(Q[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [28]),
        .Q(Q[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [29]),
        .Q(Q[31]));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [30]),
        .Q(Q[32]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [31]),
        .Q(Q[33]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [32]),
        .Q(Q[34]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [33]),
        .Q(Q[35]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [34]),
        .Q(Q[36]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(WriteDataM_Original[0]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(WriteDataM_Original[1]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(WriteDataM_Original[2]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [1]),
        .Q(Q[3]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[3]),
        .Q(WriteDataM_Original[3]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[4]),
        .Q(WriteDataM_Original[4]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[5]),
        .Q(WriteDataM_Original[5]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[6]),
        .Q(WriteDataM_Original[6]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[7]),
        .Q(WriteDataM_Original[7]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[37]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[38]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[39]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[40]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[12]),
        .Q(Q[41]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [2]),
        .Q(Q[4]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[13]),
        .Q(Q[42]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[14]),
        .Q(Q[43]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[15]),
        .Q(Q[44]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[45]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[46]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[47]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[48]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[49]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[50]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[51]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [3]),
        .Q(Q[5]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[52]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[53]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[54]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[55]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[56]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[28]),
        .Q(Q[57]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[29]),
        .Q(Q[58]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[30]),
        .Q(Q[59]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[31]),
        .Q(Q[60]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[32]),
        .Q(Q[61]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [4]),
        .Q(Q[6]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[33]),
        .Q(Q[62]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[34]),
        .Q(Q[63]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[35]),
        .Q(Q[64]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[36]),
        .Q(Q[65]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[37]),
        .Q(Q[66]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[38]),
        .Q(Q[67]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[39]),
        .Q(Q[68]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[40]),
        .Q(Q[69]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[41]),
        .Q(Q[70]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[42]),
        .Q(Q[71]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [5]),
        .Q(Q[7]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[43]),
        .Q(Q[72]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[44]),
        .Q(Q[73]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[45]),
        .Q(Q[74]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[46]),
        .Q(Q[75]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[47]),
        .Q(Q[76]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[48]),
        .Q(Q[77]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[49]),
        .Q(Q[78]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[50]),
        .Q(Q[79]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[51]),
        .Q(Q[80]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[52]),
        .Q(Q[81]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [6]),
        .Q(Q[8]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[53]),
        .Q(Q[82]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[54]),
        .Q(Q[83]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[55]),
        .Q(Q[84]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[56]),
        .Q(Q[85]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[57]),
        .Q(Q[86]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[58]),
        .Q(Q[87]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[59]),
        .Q(Q[88]));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[60]),
        .Q(Q[89]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[61]),
        .Q(Q[90]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[62]),
        .Q(Q[91]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_8 [7]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module design_1_top_0_0_flopr__parameterized1_1
   (wd3,
    Q,
    \q_reg[68]_0 ,
    \q_reg[34]_0 ,
    \q_reg[68]_1 ,
    \q_reg[52]_0 ,
    result2_carry_i_43,
    D,
    clk,
    reset);
  output [15:0]wd3;
  output [52:0]Q;
  output \q_reg[68]_0 ;
  output \q_reg[34]_0 ;
  output \q_reg[68]_1 ;
  input [4:0]\q_reg[52]_0 ;
  input [1:0]result2_carry_i_43;
  input [100:0]D;
  input clk;
  input reset;

  wire [15:0]ALUResultW;
  wire [100:0]D;
  wire [52:0]Q;
  wire [15:0]ReadDataW;
  wire clk;
  wire [6:0]\loader/data0 ;
  wire \q_reg[34]_0 ;
  wire [4:0]\q_reg[52]_0 ;
  wire \q_reg[68]_0 ;
  wire \q_reg[68]_1 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[10] ;
  wire \q_reg_n_0_[11] ;
  wire \q_reg_n_0_[12] ;
  wire \q_reg_n_0_[13] ;
  wire \q_reg_n_0_[14] ;
  wire \q_reg_n_0_[15] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;
  wire \q_reg_n_0_[5] ;
  wire \q_reg_n_0_[6] ;
  wire \q_reg_n_0_[7] ;
  wire \q_reg_n_0_[8] ;
  wire \q_reg_n_0_[9] ;
  wire reset;
  wire [1:0]result2_carry_i_43;
  wire rf_reg_r1_0_31_0_5_i_10_n_0;
  wire rf_reg_r1_0_31_0_5_i_11_n_0;
  wire rf_reg_r1_0_31_0_5_i_12_n_0;
  wire rf_reg_r1_0_31_0_5_i_13_n_0;
  wire rf_reg_r1_0_31_0_5_i_14_n_0;
  wire rf_reg_r1_0_31_0_5_i_15_n_0;
  wire rf_reg_r1_0_31_0_5_i_16_n_0;
  wire rf_reg_r1_0_31_0_5_i_17_n_0;
  wire rf_reg_r1_0_31_0_5_i_18_n_0;
  wire rf_reg_r1_0_31_0_5_i_19_n_0;
  wire rf_reg_r1_0_31_0_5_i_8_n_0;
  wire rf_reg_r1_0_31_0_5_i_9_n_0;
  wire rf_reg_r1_0_31_12_17_i_10_n_0;
  wire rf_reg_r1_0_31_12_17_i_11_n_0;
  wire rf_reg_r1_0_31_12_17_i_12_n_0;
  wire rf_reg_r1_0_31_12_17_i_13_n_0;
  wire rf_reg_r1_0_31_12_17_i_14_n_0;
  wire rf_reg_r1_0_31_12_17_i_7_n_0;
  wire rf_reg_r1_0_31_12_17_i_8_n_0;
  wire rf_reg_r1_0_31_12_17_i_9_n_0;
  wire rf_reg_r1_0_31_6_11_i_10_n_0;
  wire rf_reg_r1_0_31_6_11_i_11_n_0;
  wire rf_reg_r1_0_31_6_11_i_12_n_0;
  wire rf_reg_r1_0_31_6_11_i_13_n_0;
  wire rf_reg_r1_0_31_6_11_i_14_n_0;
  wire rf_reg_r1_0_31_6_11_i_15_n_0;
  wire rf_reg_r1_0_31_6_11_i_16_n_0;
  wire rf_reg_r1_0_31_6_11_i_17_n_0;
  wire rf_reg_r1_0_31_6_11_i_18_n_0;
  wire rf_reg_r1_0_31_6_11_i_7_n_0;
  wire rf_reg_r1_0_31_6_11_i_8_n_0;
  wire rf_reg_r1_0_31_6_11_i_9_n_0;
  wire [15:0]wd3;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(\q_reg_n_0_[0] ));
  FDCE \q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[100]),
        .Q(Q[52]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[10]),
        .Q(\q_reg_n_0_[10] ));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[11]),
        .Q(\q_reg_n_0_[11] ));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[12]),
        .Q(\q_reg_n_0_[12] ));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[13]),
        .Q(\q_reg_n_0_[13] ));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[14]),
        .Q(\q_reg_n_0_[14] ));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[15]),
        .Q(\q_reg_n_0_[15] ));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[0]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[1]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[2]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[3]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(\q_reg_n_0_[1] ));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[4]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[5]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[6]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[7]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[8]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[9]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[10]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[11]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[28]),
        .Q(Q[12]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[29]),
        .Q(Q[13]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(\q_reg_n_0_[2] ));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[30]),
        .Q(Q[14]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[31]),
        .Q(Q[15]));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[32]),
        .Q(Q[16]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[33]),
        .Q(Q[17]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[34]),
        .Q(Q[18]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[35]),
        .Q(Q[19]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[36]),
        .Q(Q[20]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[37]),
        .Q(ReadDataW[0]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[38]),
        .Q(ReadDataW[1]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[39]),
        .Q(ReadDataW[2]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[3]),
        .Q(\q_reg_n_0_[3] ));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[40]),
        .Q(ReadDataW[3]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[41]),
        .Q(ReadDataW[4]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[42]),
        .Q(ReadDataW[5]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[43]),
        .Q(ReadDataW[6]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[44]),
        .Q(ReadDataW[7]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[45]),
        .Q(ReadDataW[8]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[46]),
        .Q(ReadDataW[9]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[47]),
        .Q(ReadDataW[10]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[48]),
        .Q(ReadDataW[11]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[49]),
        .Q(ReadDataW[12]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[4]),
        .Q(\q_reg_n_0_[4] ));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[50]),
        .Q(ReadDataW[13]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[51]),
        .Q(ReadDataW[14]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[52]),
        .Q(ReadDataW[15]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[53]),
        .Q(Q[21]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[54]),
        .Q(Q[22]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[55]),
        .Q(Q[23]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[56]),
        .Q(Q[24]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[57]),
        .Q(Q[25]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[58]),
        .Q(Q[26]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[59]),
        .Q(Q[27]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[5]),
        .Q(\q_reg_n_0_[5] ));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[60]),
        .Q(Q[28]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[61]),
        .Q(Q[29]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[62]),
        .Q(Q[30]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[63]),
        .Q(Q[31]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[64]),
        .Q(Q[32]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[65]),
        .Q(Q[33]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[66]),
        .Q(Q[34]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[67]),
        .Q(Q[35]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[68]),
        .Q(Q[36]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[69]),
        .Q(ALUResultW[0]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[6]),
        .Q(\q_reg_n_0_[6] ));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[70]),
        .Q(ALUResultW[1]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[71]),
        .Q(ALUResultW[2]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[72]),
        .Q(ALUResultW[3]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[73]),
        .Q(ALUResultW[4]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[74]),
        .Q(ALUResultW[5]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[75]),
        .Q(ALUResultW[6]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[76]),
        .Q(ALUResultW[7]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[77]),
        .Q(ALUResultW[8]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[78]),
        .Q(ALUResultW[9]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[79]),
        .Q(ALUResultW[10]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[7]),
        .Q(\q_reg_n_0_[7] ));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[80]),
        .Q(ALUResultW[11]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[81]),
        .Q(ALUResultW[12]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[82]),
        .Q(ALUResultW[13]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[83]),
        .Q(ALUResultW[14]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[84]),
        .Q(ALUResultW[15]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[85]),
        .Q(Q[37]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[86]),
        .Q(Q[38]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[87]),
        .Q(Q[39]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[88]),
        .Q(Q[40]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[89]),
        .Q(Q[41]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[8]),
        .Q(\q_reg_n_0_[8] ));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[90]),
        .Q(Q[42]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[91]),
        .Q(Q[43]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[92]),
        .Q(Q[44]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[93]),
        .Q(Q[45]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[94]),
        .Q(Q[46]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[95]),
        .Q(Q[47]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[96]),
        .Q(Q[48]));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[97]),
        .Q(Q[49]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[98]),
        .Q(Q[50]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[99]),
        .Q(Q[51]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[9]),
        .Q(\q_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry_i_48
       (.I0(Q[18]),
        .I1(result2_carry_i_43[0]),
        .I2(result2_carry_i_43[1]),
        .I3(Q[19]),
        .O(\q_reg[34]_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_0_5_i_10
       (.I0(ReadDataW[0]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[0]),
        .O(rf_reg_r1_0_31_0_5_i_10_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    rf_reg_r1_0_31_0_5_i_11
       (.I0(\loader/data0 [0]),
        .I1(ReadDataW[0]),
        .I2(Q[21]),
        .I3(\q_reg[52]_0 [0]),
        .I4(ALUResultW[1]),
        .O(rf_reg_r1_0_31_0_5_i_11_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_0_5_i_12
       (.I0(ReadDataW[3]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[3]),
        .O(rf_reg_r1_0_31_0_5_i_12_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    rf_reg_r1_0_31_0_5_i_13
       (.I0(\loader/data0 [3]),
        .I1(ReadDataW[3]),
        .I2(Q[24]),
        .I3(\q_reg[52]_0 [0]),
        .I4(ALUResultW[1]),
        .O(rf_reg_r1_0_31_0_5_i_13_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_0_5_i_14
       (.I0(ReadDataW[2]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[2]),
        .O(rf_reg_r1_0_31_0_5_i_14_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    rf_reg_r1_0_31_0_5_i_15
       (.I0(\loader/data0 [2]),
        .I1(ReadDataW[2]),
        .I2(Q[23]),
        .I3(\q_reg[52]_0 [0]),
        .I4(ALUResultW[1]),
        .O(rf_reg_r1_0_31_0_5_i_15_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_0_5_i_16
       (.I0(ReadDataW[5]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[5]),
        .O(rf_reg_r1_0_31_0_5_i_16_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    rf_reg_r1_0_31_0_5_i_17
       (.I0(\loader/data0 [5]),
        .I1(ReadDataW[5]),
        .I2(Q[26]),
        .I3(\q_reg[52]_0 [0]),
        .I4(ALUResultW[1]),
        .O(rf_reg_r1_0_31_0_5_i_17_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_0_5_i_18
       (.I0(ReadDataW[4]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[4]),
        .O(rf_reg_r1_0_31_0_5_i_18_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    rf_reg_r1_0_31_0_5_i_19
       (.I0(\loader/data0 [4]),
        .I1(ReadDataW[4]),
        .I2(Q[25]),
        .I3(\q_reg[52]_0 [0]),
        .I4(ALUResultW[1]),
        .O(rf_reg_r1_0_31_0_5_i_19_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_0_5_i_8_n_0),
        .I3(rf_reg_r1_0_31_0_5_i_9_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_20
       (.I0(Q[30]),
        .I1(ReadDataW[9]),
        .I2(ALUResultW[0]),
        .I3(Q[22]),
        .I4(ALUResultW[1]),
        .I5(ReadDataW[1]),
        .O(\loader/data0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_21
       (.I0(Q[29]),
        .I1(ReadDataW[8]),
        .I2(ALUResultW[0]),
        .I3(Q[21]),
        .I4(ALUResultW[1]),
        .I5(ReadDataW[0]),
        .O(\loader/data0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_22
       (.I0(Q[32]),
        .I1(ReadDataW[11]),
        .I2(ALUResultW[0]),
        .I3(Q[24]),
        .I4(ALUResultW[1]),
        .I5(ReadDataW[3]),
        .O(\loader/data0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_23
       (.I0(Q[31]),
        .I1(ReadDataW[10]),
        .I2(ALUResultW[0]),
        .I3(Q[23]),
        .I4(ALUResultW[1]),
        .I5(ReadDataW[2]),
        .O(\loader/data0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_24
       (.I0(Q[34]),
        .I1(ReadDataW[13]),
        .I2(ALUResultW[0]),
        .I3(Q[26]),
        .I4(ALUResultW[1]),
        .I5(ReadDataW[5]),
        .O(\loader/data0 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_25
       (.I0(Q[33]),
        .I1(ReadDataW[12]),
        .I2(ALUResultW[0]),
        .I3(Q[25]),
        .I4(ALUResultW[1]),
        .I5(ReadDataW[4]),
        .O(\loader/data0 [4]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_0_5_i_10_n_0),
        .I3(rf_reg_r1_0_31_0_5_i_11_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[0]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(\q_reg_n_0_[3] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_0_5_i_12_n_0),
        .I3(rf_reg_r1_0_31_0_5_i_13_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[3]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_0_5_i_14_n_0),
        .I3(rf_reg_r1_0_31_0_5_i_15_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(\q_reg_n_0_[5] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_0_5_i_16_n_0),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[5]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(\q_reg_n_0_[4] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_0_5_i_18_n_0),
        .I3(rf_reg_r1_0_31_0_5_i_19_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[4]));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(ReadDataW[1]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[1]),
        .O(rf_reg_r1_0_31_0_5_i_8_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    rf_reg_r1_0_31_0_5_i_9
       (.I0(\loader/data0 [1]),
        .I1(ReadDataW[1]),
        .I2(Q[22]),
        .I3(\q_reg[52]_0 [0]),
        .I4(ALUResultW[1]),
        .O(rf_reg_r1_0_31_0_5_i_9_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(\q_reg_n_0_[13] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_12_17_i_7_n_0),
        .I3(rf_reg_r1_0_31_12_17_i_8_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[13]));
  LUT6 #(
    .INIT(64'hBABABA101010BA10)) 
    rf_reg_r1_0_31_12_17_i_10
       (.I0(\q_reg[52]_0 [0]),
        .I1(\q_reg[52]_0 [2]),
        .I2(\q_reg[68]_0 ),
        .I3(ReadDataW[12]),
        .I4(ALUResultW[1]),
        .I5(Q[33]),
        .O(rf_reg_r1_0_31_12_17_i_10_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_12_17_i_11
       (.I0(ReadDataW[15]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[15]),
        .O(rf_reg_r1_0_31_12_17_i_11_n_0));
  LUT6 #(
    .INIT(64'hF000F0AACC00CCAA)) 
    rf_reg_r1_0_31_12_17_i_12
       (.I0(\q_reg[68]_0 ),
        .I1(ReadDataW[15]),
        .I2(Q[36]),
        .I3(\q_reg[52]_0 [0]),
        .I4(\q_reg[52]_0 [2]),
        .I5(ALUResultW[1]),
        .O(rf_reg_r1_0_31_12_17_i_12_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_12_17_i_13
       (.I0(ReadDataW[14]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[14]),
        .O(rf_reg_r1_0_31_12_17_i_13_n_0));
  LUT6 #(
    .INIT(64'hBABABA101010BA10)) 
    rf_reg_r1_0_31_12_17_i_14
       (.I0(\q_reg[52]_0 [0]),
        .I1(\q_reg[52]_0 [2]),
        .I2(\q_reg[68]_0 ),
        .I3(ReadDataW[14]),
        .I4(ALUResultW[1]),
        .I5(Q[35]),
        .O(rf_reg_r1_0_31_12_17_i_14_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_18
       (.I0(Q[36]),
        .I1(ALUResultW[1]),
        .I2(ReadDataW[15]),
        .O(\q_reg[68]_1 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(\q_reg_n_0_[12] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_12_17_i_9_n_0),
        .I3(rf_reg_r1_0_31_12_17_i_10_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[12]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(\q_reg_n_0_[15] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_12_17_i_11_n_0),
        .I3(rf_reg_r1_0_31_12_17_i_12_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[15]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(\q_reg_n_0_[14] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_12_17_i_13_n_0),
        .I3(rf_reg_r1_0_31_12_17_i_14_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[14]));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_12_17_i_7
       (.I0(ReadDataW[13]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[13]),
        .O(rf_reg_r1_0_31_12_17_i_7_n_0));
  LUT6 #(
    .INIT(64'hBABABA101010BA10)) 
    rf_reg_r1_0_31_12_17_i_8
       (.I0(\q_reg[52]_0 [0]),
        .I1(\q_reg[52]_0 [2]),
        .I2(\q_reg[68]_0 ),
        .I3(ReadDataW[13]),
        .I4(ALUResultW[1]),
        .I5(Q[34]),
        .O(rf_reg_r1_0_31_12_17_i_8_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_12_17_i_9
       (.I0(ReadDataW[12]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[12]),
        .O(rf_reg_r1_0_31_12_17_i_9_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(\q_reg_n_0_[7] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_6_11_i_7_n_0),
        .I3(rf_reg_r1_0_31_6_11_i_8_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[7]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    rf_reg_r1_0_31_6_11_i_10
       (.I0(\loader/data0 [6]),
        .I1(ReadDataW[6]),
        .I2(Q[27]),
        .I3(\q_reg[52]_0 [0]),
        .I4(ALUResultW[1]),
        .O(rf_reg_r1_0_31_6_11_i_10_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_6_11_i_11
       (.I0(ReadDataW[9]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[9]),
        .O(rf_reg_r1_0_31_6_11_i_11_n_0));
  LUT6 #(
    .INIT(64'hBABABA101010BA10)) 
    rf_reg_r1_0_31_6_11_i_12
       (.I0(\q_reg[52]_0 [0]),
        .I1(\q_reg[52]_0 [2]),
        .I2(\q_reg[68]_0 ),
        .I3(ReadDataW[9]),
        .I4(ALUResultW[1]),
        .I5(Q[30]),
        .O(rf_reg_r1_0_31_6_11_i_12_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_6_11_i_13
       (.I0(ReadDataW[8]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[8]),
        .O(rf_reg_r1_0_31_6_11_i_13_n_0));
  LUT6 #(
    .INIT(64'hBABABA101010BA10)) 
    rf_reg_r1_0_31_6_11_i_14
       (.I0(\q_reg[52]_0 [0]),
        .I1(\q_reg[52]_0 [2]),
        .I2(\q_reg[68]_0 ),
        .I3(ReadDataW[8]),
        .I4(ALUResultW[1]),
        .I5(Q[29]),
        .O(rf_reg_r1_0_31_6_11_i_14_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_6_11_i_15
       (.I0(ReadDataW[11]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[11]),
        .O(rf_reg_r1_0_31_6_11_i_15_n_0));
  LUT6 #(
    .INIT(64'hBABABA101010BA10)) 
    rf_reg_r1_0_31_6_11_i_16
       (.I0(\q_reg[52]_0 [0]),
        .I1(\q_reg[52]_0 [2]),
        .I2(\q_reg[68]_0 ),
        .I3(ReadDataW[11]),
        .I4(ALUResultW[1]),
        .I5(Q[32]),
        .O(rf_reg_r1_0_31_6_11_i_16_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_6_11_i_17
       (.I0(ReadDataW[10]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[10]),
        .O(rf_reg_r1_0_31_6_11_i_17_n_0));
  LUT6 #(
    .INIT(64'hBABABA101010BA10)) 
    rf_reg_r1_0_31_6_11_i_18
       (.I0(\q_reg[52]_0 [0]),
        .I1(\q_reg[52]_0 [2]),
        .I2(\q_reg[68]_0 ),
        .I3(ReadDataW[10]),
        .I4(ALUResultW[1]),
        .I5(Q[31]),
        .O(rf_reg_r1_0_31_6_11_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_19
       (.I0(Q[36]),
        .I1(ReadDataW[15]),
        .I2(ALUResultW[0]),
        .I3(Q[28]),
        .I4(ALUResultW[1]),
        .I5(ReadDataW[7]),
        .O(\q_reg[68]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(\q_reg_n_0_[6] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_6_11_i_9_n_0),
        .I3(rf_reg_r1_0_31_6_11_i_10_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_20
       (.I0(Q[35]),
        .I1(ReadDataW[14]),
        .I2(ALUResultW[0]),
        .I3(Q[27]),
        .I4(ALUResultW[1]),
        .I5(ReadDataW[6]),
        .O(\loader/data0 [6]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(\q_reg_n_0_[9] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_6_11_i_11_n_0),
        .I3(rf_reg_r1_0_31_6_11_i_12_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[9]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(\q_reg_n_0_[8] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_6_11_i_13_n_0),
        .I3(rf_reg_r1_0_31_6_11_i_14_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[8]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(\q_reg_n_0_[11] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_6_11_i_15_n_0),
        .I3(rf_reg_r1_0_31_6_11_i_16_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[11]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(\q_reg_n_0_[10] ),
        .I1(\q_reg[52]_0 [4]),
        .I2(rf_reg_r1_0_31_6_11_i_17_n_0),
        .I3(rf_reg_r1_0_31_6_11_i_18_n_0),
        .I4(\q_reg[52]_0 [3]),
        .I5(\q_reg[52]_0 [1]),
        .O(wd3[10]));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_6_11_i_7
       (.I0(ReadDataW[7]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[7]),
        .O(rf_reg_r1_0_31_6_11_i_7_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    rf_reg_r1_0_31_6_11_i_8
       (.I0(\q_reg[68]_0 ),
        .I1(ReadDataW[7]),
        .I2(Q[28]),
        .I3(\q_reg[52]_0 [0]),
        .I4(ALUResultW[1]),
        .O(rf_reg_r1_0_31_6_11_i_8_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    rf_reg_r1_0_31_6_11_i_9
       (.I0(ReadDataW[6]),
        .I1(\q_reg[52]_0 [1]),
        .I2(\q_reg[52]_0 [3]),
        .I3(ALUResultW[6]),
        .O(rf_reg_r1_0_31_6_11_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module design_1_top_0_0_floprc
   (D,
    \q_reg[9]_0 ,
    Q,
    \q_reg[13]_0 ,
    \q_reg[2]_0 ,
    \q_reg[9]_1 ,
    \q_reg[10]_0 ,
    \q_reg[9]_2 ,
    \q_reg[8]_0 ,
    \q_reg[8]_1 ,
    \q_reg[8]_2 ,
    \q_reg[11]_0 ,
    \q_reg[9]_3 ,
    \q_reg[8]_3 ,
    PCPlus4F,
    PCTargetEmux,
    \q_reg[2]_1 ,
    InstrF,
    \q[31]_i_4_0 ,
    \q_reg[92] ,
    \q_reg[92]_0 ,
    \q_reg[92]_1 ,
    \q_reg[93] ,
    \q_reg[93]_0 ,
    \q_reg[93]_1 ,
    \q_reg[94] ,
    \q_reg[94]_0 ,
    \q_reg[94]_1 ,
    \q_reg[95] ,
    \q_reg[95]_0 ,
    \q_reg[95]_1 ,
    \q_reg[96] ,
    \q_reg[96]_0 ,
    \q_reg[96]_1 ,
    \q_reg[97] ,
    \q_reg[97]_0 ,
    \q_reg[97]_1 ,
    \q_reg[98] ,
    \q_reg[98]_0 ,
    \q_reg[98]_1 ,
    O,
    \q_reg[100] ,
    \q_reg[76] ,
    \q_reg[76]_0 ,
    \q_reg[76]_1 ,
    \q_reg[90] ,
    \q_reg[90]_0 ,
    \q_reg[90]_1 ,
    \q_reg[91] ,
    \q_reg[91]_0 ,
    \q_reg[91]_1 ,
    \q_reg[89] ,
    \q_reg[89]_0 ,
    \q_reg[89]_1 ,
    \q_reg[88] ,
    \q_reg[88]_0 ,
    \q_reg[88]_1 ,
    \q_reg[84] ,
    \q_reg[84]_0 ,
    \q_reg[84]_1 ,
    \q_reg[85] ,
    \q_reg[85]_0 ,
    \q_reg[85]_1 ,
    \q_reg[87] ,
    \q_reg[87]_0 ,
    \q_reg[87]_1 ,
    \q_reg[86] ,
    \q_reg[86]_0 ,
    \q_reg[86]_1 ,
    \q_reg[80] ,
    \q_reg[80]_0 ,
    \q_reg[80]_1 ,
    \q_reg[81] ,
    \q_reg[81]_0 ,
    \q_reg[81]_1 ,
    \q_reg[82] ,
    \q_reg[82]_0 ,
    \q_reg[82]_1 ,
    \q_reg[83] ,
    \q_reg[83]_0 ,
    \q_reg[83]_1 ,
    \q_reg[78] ,
    \q_reg[78]_0 ,
    \q_reg[78]_1 ,
    \q_reg[79] ,
    \q_reg[79]_0 ,
    \q_reg[79]_1 ,
    \q_reg[77] ,
    \q_reg[77]_0 ,
    \q_reg[77]_1 ,
    \q_reg[72] ,
    \q_reg[72]_0 ,
    \q_reg[72]_1 ,
    \q_reg[75] ,
    \q_reg[75]_0 ,
    \q_reg[75]_1 ,
    \q_reg[75]_2 ,
    \q_reg[74] ,
    \q_reg[74]_0 ,
    \q_reg[74]_1 ,
    \q_reg[73] ,
    \q_reg[73]_0 ,
    \q_reg[73]_1 ,
    \q_reg[73]_2 ,
    \q_reg[74]_2 ,
    \q_reg[72]_2 ,
    SrcBE,
    \q_reg[80]_2 ,
    \q_reg[78]_2 ,
    \q_reg[82]_2 ,
    \q_reg[84]_2 ,
    \q_reg[77]_2 ,
    \q_reg[81]_2 ,
    \q_reg[79]_2 ,
    \q_reg[76]_2 ,
    \q_reg[83]_2 ,
    \q_reg[89]_2 ,
    \q_reg[90]_2 ,
    \q_reg[91]_2 ,
    \q_reg[92]_2 ,
    \q_reg[87]_2 ,
    \q_reg[88]_2 ,
    \q_reg[85]_2 ,
    \q_reg[86]_2 ,
    \q_reg[93]_2 ,
    \q_reg[94]_2 ,
    \q_reg[95]_2 ,
    \q_reg[96]_2 ,
    \q_reg[97]_2 ,
    \q_reg[98]_2 ,
    SrcAE,
    \q_reg[100]_0 ,
    \q_reg[100]_1 ,
    \q_reg[17]_0 ,
    clk,
    reset);
  output [27:0]D;
  output [27:0]\q_reg[9]_0 ;
  output [15:0]Q;
  output \q_reg[13]_0 ;
  output [31:0]\q_reg[2]_0 ;
  output \q_reg[9]_1 ;
  output \q_reg[10]_0 ;
  output \q_reg[9]_2 ;
  output \q_reg[8]_0 ;
  output \q_reg[8]_1 ;
  output \q_reg[8]_2 ;
  output \q_reg[11]_0 ;
  output \q_reg[9]_3 ;
  output \q_reg[8]_3 ;
  input [27:0]PCPlus4F;
  input [27:0]PCTargetEmux;
  input [0:0]\q_reg[2]_1 ;
  input [30:0]InstrF;
  input [3:0]\q[31]_i_4_0 ;
  input \q_reg[92] ;
  input \q_reg[92]_0 ;
  input \q_reg[92]_1 ;
  input \q_reg[93] ;
  input \q_reg[93]_0 ;
  input \q_reg[93]_1 ;
  input \q_reg[94] ;
  input \q_reg[94]_0 ;
  input \q_reg[94]_1 ;
  input \q_reg[95] ;
  input \q_reg[95]_0 ;
  input \q_reg[95]_1 ;
  input \q_reg[96] ;
  input \q_reg[96]_0 ;
  input \q_reg[96]_1 ;
  input \q_reg[97] ;
  input \q_reg[97]_0 ;
  input \q_reg[97]_1 ;
  input \q_reg[98] ;
  input \q_reg[98]_0 ;
  input \q_reg[98]_1 ;
  input [0:0]O;
  input \q_reg[100] ;
  input \q_reg[76] ;
  input \q_reg[76]_0 ;
  input \q_reg[76]_1 ;
  input \q_reg[90] ;
  input \q_reg[90]_0 ;
  input \q_reg[90]_1 ;
  input \q_reg[91] ;
  input \q_reg[91]_0 ;
  input \q_reg[91]_1 ;
  input \q_reg[89] ;
  input \q_reg[89]_0 ;
  input \q_reg[89]_1 ;
  input \q_reg[88] ;
  input \q_reg[88]_0 ;
  input \q_reg[88]_1 ;
  input \q_reg[84] ;
  input \q_reg[84]_0 ;
  input \q_reg[84]_1 ;
  input \q_reg[85] ;
  input \q_reg[85]_0 ;
  input \q_reg[85]_1 ;
  input \q_reg[87] ;
  input \q_reg[87]_0 ;
  input \q_reg[87]_1 ;
  input \q_reg[86] ;
  input \q_reg[86]_0 ;
  input \q_reg[86]_1 ;
  input \q_reg[80] ;
  input \q_reg[80]_0 ;
  input \q_reg[80]_1 ;
  input \q_reg[81] ;
  input \q_reg[81]_0 ;
  input \q_reg[81]_1 ;
  input \q_reg[82] ;
  input \q_reg[82]_0 ;
  input \q_reg[82]_1 ;
  input \q_reg[83] ;
  input \q_reg[83]_0 ;
  input \q_reg[83]_1 ;
  input \q_reg[78] ;
  input \q_reg[78]_0 ;
  input \q_reg[78]_1 ;
  input \q_reg[79] ;
  input \q_reg[79]_0 ;
  input \q_reg[79]_1 ;
  input \q_reg[77] ;
  input \q_reg[77]_0 ;
  input \q_reg[77]_1 ;
  input \q_reg[72] ;
  input \q_reg[72]_0 ;
  input \q_reg[72]_1 ;
  input \q_reg[75] ;
  input \q_reg[75]_0 ;
  input \q_reg[75]_1 ;
  input \q_reg[75]_2 ;
  input \q_reg[74] ;
  input \q_reg[74]_0 ;
  input \q_reg[74]_1 ;
  input \q_reg[73] ;
  input \q_reg[73]_0 ;
  input \q_reg[73]_1 ;
  input \q_reg[73]_2 ;
  input \q_reg[74]_2 ;
  input \q_reg[72]_2 ;
  input [1:0]SrcBE;
  input \q_reg[80]_2 ;
  input \q_reg[78]_2 ;
  input \q_reg[82]_2 ;
  input \q_reg[84]_2 ;
  input \q_reg[77]_2 ;
  input \q_reg[81]_2 ;
  input \q_reg[79]_2 ;
  input \q_reg[76]_2 ;
  input \q_reg[83]_2 ;
  input \q_reg[89]_2 ;
  input \q_reg[90]_2 ;
  input \q_reg[91]_2 ;
  input \q_reg[92]_2 ;
  input \q_reg[87]_2 ;
  input \q_reg[88]_2 ;
  input \q_reg[85]_2 ;
  input \q_reg[86]_2 ;
  input \q_reg[93]_2 ;
  input \q_reg[94]_2 ;
  input \q_reg[95]_2 ;
  input \q_reg[96]_2 ;
  input \q_reg[97]_2 ;
  input \q_reg[98]_2 ;
  input [0:0]SrcAE;
  input \q_reg[100]_0 ;
  input [0:0]\q_reg[100]_1 ;
  input [16:0]\q_reg[17]_0 ;
  input clk;
  input reset;

  wire BranchE;
  wire Branchout10_in;
  wire [27:0]D;
  wire [30:0]InstrF;
  wire [0:0]O;
  wire [27:0]PCPlus4F;
  wire [27:0]PCTargetEmux;
  wire [15:0]Q;
  wire [0:0]SrcAE;
  wire [1:0]SrcBE;
  wire clk;
  wire \q[100]_i_2_n_0 ;
  wire \q[100]_i_3_n_0 ;
  wire \q[31]_i_10_n_0 ;
  wire \q[31]_i_11_n_0 ;
  wire \q[31]_i_12_n_0 ;
  wire \q[31]_i_13_n_0 ;
  wire \q[31]_i_14_n_0 ;
  wire \q[31]_i_15_n_0 ;
  wire \q[31]_i_16_n_0 ;
  wire \q[31]_i_17_n_0 ;
  wire \q[31]_i_18_n_0 ;
  wire [3:0]\q[31]_i_4_0 ;
  wire \q[31]_i_9_n_0 ;
  wire \q[72]_i_4_n_0 ;
  wire \q[73]_i_4_n_0 ;
  wire \q[74]_i_4_n_0 ;
  wire \q[75]_i_4_n_0 ;
  wire \q[76]_i_4_n_0 ;
  wire \q[77]_i_4_n_0 ;
  wire \q[78]_i_4_n_0 ;
  wire \q[79]_i_4_n_0 ;
  wire \q[80]_i_4_n_0 ;
  wire \q[81]_i_4_n_0 ;
  wire \q[82]_i_4_n_0 ;
  wire \q[83]_i_4_n_0 ;
  wire \q[84]_i_4_n_0 ;
  wire \q[85]_i_4_n_0 ;
  wire \q[86]_i_4_n_0 ;
  wire \q[87]_i_4_n_0 ;
  wire \q[88]_i_4_n_0 ;
  wire \q[89]_i_4_n_0 ;
  wire \q[90]_i_4_n_0 ;
  wire \q[91]_i_4_n_0 ;
  wire \q[92]_i_4_n_0 ;
  wire \q[93]_i_4_n_0 ;
  wire \q[94]_i_4_n_0 ;
  wire \q[95]_i_4_n_0 ;
  wire \q[96]_i_4_n_0 ;
  wire \q[97]_i_4_n_0 ;
  wire \q[98]_i_5_n_0 ;
  wire \q_reg[100] ;
  wire \q_reg[100]_0 ;
  wire [0:0]\q_reg[100]_1 ;
  wire \q_reg[10]_0 ;
  wire \q_reg[11]_0 ;
  wire \q_reg[13]_0 ;
  wire [16:0]\q_reg[17]_0 ;
  wire [31:0]\q_reg[2]_0 ;
  wire [0:0]\q_reg[2]_1 ;
  wire \q_reg[72] ;
  wire \q_reg[72]_0 ;
  wire \q_reg[72]_1 ;
  wire \q_reg[72]_2 ;
  wire \q_reg[73] ;
  wire \q_reg[73]_0 ;
  wire \q_reg[73]_1 ;
  wire \q_reg[73]_2 ;
  wire \q_reg[74] ;
  wire \q_reg[74]_0 ;
  wire \q_reg[74]_1 ;
  wire \q_reg[74]_2 ;
  wire \q_reg[75] ;
  wire \q_reg[75]_0 ;
  wire \q_reg[75]_1 ;
  wire \q_reg[75]_2 ;
  wire \q_reg[76] ;
  wire \q_reg[76]_0 ;
  wire \q_reg[76]_1 ;
  wire \q_reg[76]_2 ;
  wire \q_reg[77] ;
  wire \q_reg[77]_0 ;
  wire \q_reg[77]_1 ;
  wire \q_reg[77]_2 ;
  wire \q_reg[78] ;
  wire \q_reg[78]_0 ;
  wire \q_reg[78]_1 ;
  wire \q_reg[78]_2 ;
  wire \q_reg[79] ;
  wire \q_reg[79]_0 ;
  wire \q_reg[79]_1 ;
  wire \q_reg[79]_2 ;
  wire \q_reg[80] ;
  wire \q_reg[80]_0 ;
  wire \q_reg[80]_1 ;
  wire \q_reg[80]_2 ;
  wire \q_reg[81] ;
  wire \q_reg[81]_0 ;
  wire \q_reg[81]_1 ;
  wire \q_reg[81]_2 ;
  wire \q_reg[82] ;
  wire \q_reg[82]_0 ;
  wire \q_reg[82]_1 ;
  wire \q_reg[82]_2 ;
  wire \q_reg[83] ;
  wire \q_reg[83]_0 ;
  wire \q_reg[83]_1 ;
  wire \q_reg[83]_2 ;
  wire \q_reg[84] ;
  wire \q_reg[84]_0 ;
  wire \q_reg[84]_1 ;
  wire \q_reg[84]_2 ;
  wire \q_reg[85] ;
  wire \q_reg[85]_0 ;
  wire \q_reg[85]_1 ;
  wire \q_reg[85]_2 ;
  wire \q_reg[86] ;
  wire \q_reg[86]_0 ;
  wire \q_reg[86]_1 ;
  wire \q_reg[86]_2 ;
  wire \q_reg[87] ;
  wire \q_reg[87]_0 ;
  wire \q_reg[87]_1 ;
  wire \q_reg[87]_2 ;
  wire \q_reg[88] ;
  wire \q_reg[88]_0 ;
  wire \q_reg[88]_1 ;
  wire \q_reg[88]_2 ;
  wire \q_reg[89] ;
  wire \q_reg[89]_0 ;
  wire \q_reg[89]_1 ;
  wire \q_reg[89]_2 ;
  wire \q_reg[8]_0 ;
  wire \q_reg[8]_1 ;
  wire \q_reg[8]_2 ;
  wire \q_reg[8]_3 ;
  wire \q_reg[90] ;
  wire \q_reg[90]_0 ;
  wire \q_reg[90]_1 ;
  wire \q_reg[90]_2 ;
  wire \q_reg[91] ;
  wire \q_reg[91]_0 ;
  wire \q_reg[91]_1 ;
  wire \q_reg[91]_2 ;
  wire \q_reg[92] ;
  wire \q_reg[92]_0 ;
  wire \q_reg[92]_1 ;
  wire \q_reg[92]_2 ;
  wire \q_reg[93] ;
  wire \q_reg[93]_0 ;
  wire \q_reg[93]_1 ;
  wire \q_reg[93]_2 ;
  wire \q_reg[94] ;
  wire \q_reg[94]_0 ;
  wire \q_reg[94]_1 ;
  wire \q_reg[94]_2 ;
  wire \q_reg[95] ;
  wire \q_reg[95]_0 ;
  wire \q_reg[95]_1 ;
  wire \q_reg[95]_2 ;
  wire \q_reg[96] ;
  wire \q_reg[96]_0 ;
  wire \q_reg[96]_1 ;
  wire \q_reg[96]_2 ;
  wire \q_reg[97] ;
  wire \q_reg[97]_0 ;
  wire \q_reg[97]_1 ;
  wire \q_reg[97]_2 ;
  wire \q_reg[98] ;
  wire \q_reg[98]_0 ;
  wire \q_reg[98]_1 ;
  wire \q_reg[98]_2 ;
  wire [27:0]\q_reg[9]_0 ;
  wire \q_reg[9]_1 ;
  wire \q_reg[9]_2 ;
  wire \q_reg[9]_3 ;
  wire reset;
  wire vE;

  LUT2 #(
    .INIT(4'h2)) 
    \q[100]_i_10 
       (.I0(Q[8]),
        .I1(SrcBE[0]),
        .O(\q_reg[8]_2 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[100]_i_1__0 
       (.I0(\q[100]_i_2_n_0 ),
        .I1(\q[100]_i_3_n_0 ),
        .I2(\q_reg[100] ),
        .I3(\q_reg[9]_2 ),
        .I4(Q[9]),
        .I5(\q_reg[9]_1 ),
        .O(\q_reg[9]_0 [27]));
  LUT6 #(
    .INIT(64'h333300000A080800)) 
    \q[100]_i_2 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[10]),
        .I3(SrcBE[1]),
        .I4(SrcAE),
        .I5(Q[11]),
        .O(\q[100]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h013F0100)) 
    \q[100]_i_3 
       (.I0(\q_reg[100]_0 ),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[10]),
        .I4(\q_reg[100]_1 ),
        .O(\q[100]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \q[100]_i_5 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[10]),
        .O(\q_reg[9]_2 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \q[100]_i_6 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[11]),
        .O(\q_reg[9]_1 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[10]_i_1__1 
       (.I0(PCPlus4F[7]),
        .I1(PCTargetEmux[7]),
        .I2(\q_reg[9]_0 [7]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[11]_i_1__1 
       (.I0(PCPlus4F[8]),
        .I1(PCTargetEmux[8]),
        .I2(\q_reg[9]_0 [8]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[12]_i_1__1 
       (.I0(PCPlus4F[9]),
        .I1(PCTargetEmux[9]),
        .I2(\q_reg[9]_0 [9]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[13]_i_1__1 
       (.I0(PCPlus4F[10]),
        .I1(PCTargetEmux[10]),
        .I2(\q_reg[9]_0 [10]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[14]_i_1__1 
       (.I0(PCPlus4F[11]),
        .I1(PCTargetEmux[11]),
        .I2(\q_reg[9]_0 [11]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[15]_i_1__1 
       (.I0(PCPlus4F[12]),
        .I1(PCTargetEmux[12]),
        .I2(\q_reg[9]_0 [12]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[16]_i_1__0 
       (.I0(PCPlus4F[13]),
        .I1(PCTargetEmux[13]),
        .I2(\q_reg[9]_0 [13]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[17]_i_1__1 
       (.I0(PCPlus4F[14]),
        .I1(PCTargetEmux[14]),
        .I2(\q_reg[9]_0 [14]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[18]_i_1__0 
       (.I0(PCPlus4F[15]),
        .I1(PCTargetEmux[15]),
        .I2(\q_reg[9]_0 [15]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[19]_i_1__0 
       (.I0(PCPlus4F[16]),
        .I1(PCTargetEmux[16]),
        .I2(\q_reg[9]_0 [16]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[20]_i_1__0 
       (.I0(PCPlus4F[17]),
        .I1(PCTargetEmux[17]),
        .I2(\q_reg[9]_0 [17]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[21]_i_1__0 
       (.I0(PCPlus4F[18]),
        .I1(PCTargetEmux[18]),
        .I2(\q_reg[9]_0 [18]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[22]_i_1__0 
       (.I0(PCPlus4F[19]),
        .I1(PCTargetEmux[19]),
        .I2(\q_reg[9]_0 [19]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[23]_i_1__0 
       (.I0(PCPlus4F[20]),
        .I1(PCTargetEmux[20]),
        .I2(\q_reg[9]_0 [20]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[24]_i_1__0 
       (.I0(PCPlus4F[21]),
        .I1(PCTargetEmux[21]),
        .I2(\q_reg[9]_0 [21]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[25]_i_1__0 
       (.I0(PCPlus4F[22]),
        .I1(PCTargetEmux[22]),
        .I2(\q_reg[9]_0 [22]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[26]_i_1__0 
       (.I0(PCPlus4F[23]),
        .I1(PCTargetEmux[23]),
        .I2(\q_reg[9]_0 [23]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[27]_i_1__0 
       (.I0(PCPlus4F[24]),
        .I1(PCTargetEmux[24]),
        .I2(\q_reg[9]_0 [24]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[28]_i_1__0 
       (.I0(PCPlus4F[25]),
        .I1(PCTargetEmux[25]),
        .I2(\q_reg[9]_0 [25]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[29]_i_1__0 
       (.I0(PCPlus4F[26]),
        .I1(PCTargetEmux[26]),
        .I2(\q_reg[9]_0 [26]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[2]_i_1__2 
       (.I0(\q_reg[13]_0 ),
        .I1(\q_reg[2]_1 ),
        .O(\q_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \q[31]_i_10 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\q[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \q[31]_i_11 
       (.I0(\q[31]_i_14_n_0 ),
        .I1(\q_reg[9]_0 [3]),
        .I2(\q_reg[9]_0 [2]),
        .I3(\q_reg[9]_0 [1]),
        .I4(\q_reg[9]_0 [0]),
        .I5(\q[31]_i_15_n_0 ),
        .O(\q[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \q[31]_i_12 
       (.I0(\q_reg[9]_0 [27]),
        .I1(\q[31]_i_16_n_0 ),
        .I2(\q[31]_i_17_n_0 ),
        .I3(\q[31]_i_18_n_0 ),
        .I4(\q[31]_i_4_0 [3]),
        .O(\q[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2020208080802080)) 
    \q[31]_i_13 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(BranchE),
        .I3(Branchout10_in),
        .I4(Q[3]),
        .I5(O),
        .O(\q[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_14 
       (.I0(\q[31]_i_4_0 [1]),
        .I1(\q_reg[9]_0 [6]),
        .I2(\q_reg[9]_0 [8]),
        .I3(\q_reg[9]_0 [12]),
        .I4(\q_reg[9]_0 [10]),
        .I5(\q[31]_i_4_0 [0]),
        .O(\q[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_15 
       (.I0(\q_reg[9]_0 [7]),
        .I1(\q_reg[9]_0 [5]),
        .I2(\q_reg[9]_0 [9]),
        .I3(\q_reg[9]_0 [4]),
        .I4(\q_reg[9]_0 [11]),
        .I5(\q[31]_i_4_0 [2]),
        .O(\q[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_16 
       (.I0(\q_reg[9]_0 [16]),
        .I1(\q_reg[9]_0 [15]),
        .I2(\q_reg[9]_0 [14]),
        .I3(\q_reg[9]_0 [13]),
        .O(\q[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_17 
       (.I0(\q_reg[9]_0 [18]),
        .I1(\q_reg[9]_0 [17]),
        .I2(\q_reg[9]_0 [20]),
        .I3(\q_reg[9]_0 [19]),
        .O(\q[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_18 
       (.I0(\q_reg[9]_0 [23]),
        .I1(\q_reg[9]_0 [24]),
        .I2(\q_reg[9]_0 [21]),
        .I3(\q_reg[9]_0 [22]),
        .I4(\q_reg[9]_0 [26]),
        .I5(\q_reg[9]_0 [25]),
        .O(\q[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5555555566666AAA)) 
    \q[31]_i_19 
       (.I0(vE),
        .I1(\q_reg[9]_1 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[100] ),
        .I4(\q[100]_i_3_n_0 ),
        .I5(\q[100]_i_2_n_0 ),
        .O(Branchout10_in));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[31]_i_2 
       (.I0(PCPlus4F[27]),
        .I1(PCTargetEmux[27]),
        .I2(\q_reg[9]_0 [27]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0005010050000010)) 
    \q[31]_i_21 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(\q_reg[100]_1 ),
        .I3(SrcBE[1]),
        .I4(Q[8]),
        .I5(SrcAE),
        .O(vE));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEAEAEA)) 
    \q[31]_i_4 
       (.I0(Q[12]),
        .I1(\q[31]_i_9_n_0 ),
        .I2(\q[31]_i_10_n_0 ),
        .I3(\q[31]_i_11_n_0 ),
        .I4(\q[31]_i_12_n_0 ),
        .I5(\q[31]_i_13_n_0 ),
        .O(\q_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[31]_i_9 
       (.I0(BranchE),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(\q[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[3]_i_1__1 
       (.I0(PCPlus4F[0]),
        .I1(PCTargetEmux[0]),
        .I2(\q_reg[9]_0 [0]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[4]_i_1__1 
       (.I0(PCPlus4F[1]),
        .I1(PCTargetEmux[1]),
        .I2(\q_reg[9]_0 [1]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[5]_i_1__1 
       (.I0(PCPlus4F[2]),
        .I1(PCTargetEmux[2]),
        .I2(\q_reg[9]_0 [2]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[65]_i_1__0 
       (.I0(InstrF[0]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[66]_i_1__0 
       (.I0(InstrF[1]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[67]_i_1__0 
       (.I0(InstrF[2]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[68]_i_1__0 
       (.I0(InstrF[3]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[69]_i_1__0 
       (.I0(InstrF[4]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[69]_i_5 
       (.I0(Q[9]),
        .I1(Q[8]),
        .O(\q_reg[9]_3 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[6]_i_1__1 
       (.I0(PCPlus4F[3]),
        .I1(PCTargetEmux[3]),
        .I2(\q_reg[9]_0 [3]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[70]_i_1__0 
       (.I0(InstrF[5]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[71]_i_1__0 
       (.I0(InstrF[6]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \q[72]_i_10 
       (.I0(Q[8]),
        .I1(SrcBE[0]),
        .O(\q_reg[8]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[72]_i_1__0 
       (.I0(InstrF[7]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[72]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[72] ),
        .I3(\q_reg[72]_0 ),
        .I4(\q[72]_i_4_n_0 ),
        .I5(\q_reg[72]_1 ),
        .O(\q_reg[9]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[72]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[72]_2 ),
        .O(\q[72]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[73]_i_1__0 
       (.I0(InstrF[8]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[73]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[73] ),
        .I3(\q_reg[73]_0 ),
        .I4(\q[73]_i_4_n_0 ),
        .I5(\q_reg[73]_1 ),
        .O(\q_reg[9]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[73]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[73]_2 ),
        .O(\q[73]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[74]_i_1__0 
       (.I0(InstrF[9]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[74]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[74] ),
        .I3(\q_reg[74]_0 ),
        .I4(\q[74]_i_4_n_0 ),
        .I5(\q_reg[74]_1 ),
        .O(\q_reg[9]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[74]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[74]_2 ),
        .O(\q[74]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[75]_i_1__0 
       (.I0(InstrF[10]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[75]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[75] ),
        .I3(\q_reg[75]_0 ),
        .I4(\q[75]_i_4_n_0 ),
        .I5(\q_reg[75]_1 ),
        .O(\q_reg[9]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[75]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[75]_2 ),
        .O(\q[75]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[76]_i_1__0 
       (.I0(InstrF[11]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[76]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[76] ),
        .I3(\q_reg[76]_0 ),
        .I4(\q[76]_i_4_n_0 ),
        .I5(\q_reg[76]_1 ),
        .O(\q_reg[9]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[76]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[76]_2 ),
        .O(\q[76]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[77]_i_1__0 
       (.I0(InstrF[12]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[77]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[77] ),
        .I3(\q_reg[77]_0 ),
        .I4(\q[77]_i_4_n_0 ),
        .I5(\q_reg[77]_1 ),
        .O(\q_reg[9]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[77]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[77]_2 ),
        .O(\q[77]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[78]_i_1__0 
       (.I0(InstrF[13]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[78]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[78] ),
        .I3(\q_reg[78]_0 ),
        .I4(\q[78]_i_4_n_0 ),
        .I5(\q_reg[78]_1 ),
        .O(\q_reg[9]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[78]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[78]_2 ),
        .O(\q[78]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[79]_i_1__0 
       (.I0(InstrF[14]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[79]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[79] ),
        .I3(\q_reg[79]_0 ),
        .I4(\q[79]_i_4_n_0 ),
        .I5(\q_reg[79]_1 ),
        .O(\q_reg[9]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[79]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[79]_2 ),
        .O(\q[79]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[7]_i_1__1 
       (.I0(PCPlus4F[4]),
        .I1(PCTargetEmux[4]),
        .I2(\q_reg[9]_0 [4]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[80]_i_1__0 
       (.I0(InstrF[15]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[80]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[80] ),
        .I3(\q_reg[80]_0 ),
        .I4(\q[80]_i_4_n_0 ),
        .I5(\q_reg[80]_1 ),
        .O(\q_reg[9]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[80]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[80]_2 ),
        .O(\q[80]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[81]_i_1__0 
       (.I0(InstrF[16]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[81]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[81] ),
        .I3(\q_reg[81]_0 ),
        .I4(\q[81]_i_4_n_0 ),
        .I5(\q_reg[81]_1 ),
        .O(\q_reg[9]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[81]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[81]_2 ),
        .O(\q[81]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[82]_i_1__0 
       (.I0(InstrF[17]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[82]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[82] ),
        .I3(\q_reg[82]_0 ),
        .I4(\q[82]_i_4_n_0 ),
        .I5(\q_reg[82]_1 ),
        .O(\q_reg[9]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[82]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[82]_2 ),
        .O(\q[82]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[83]_i_1__0 
       (.I0(InstrF[18]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[83]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[83] ),
        .I3(\q_reg[83]_0 ),
        .I4(\q[83]_i_4_n_0 ),
        .I5(\q_reg[83]_1 ),
        .O(\q_reg[9]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[83]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[83]_2 ),
        .O(\q[83]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[84]_i_1__0 
       (.I0(InstrF[19]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[84]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[84] ),
        .I3(\q_reg[84]_0 ),
        .I4(\q[84]_i_4_n_0 ),
        .I5(\q_reg[84]_1 ),
        .O(\q_reg[9]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[84]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[84]_2 ),
        .O(\q[84]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[85]_i_1__0 
       (.I0(InstrF[20]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[85]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[85] ),
        .I3(\q_reg[85]_0 ),
        .I4(\q[85]_i_4_n_0 ),
        .I5(\q_reg[85]_1 ),
        .O(\q_reg[9]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[85]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[85]_2 ),
        .O(\q[85]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[86]_i_1__0 
       (.I0(InstrF[21]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[86]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[86] ),
        .I3(\q_reg[86]_0 ),
        .I4(\q[86]_i_4_n_0 ),
        .I5(\q_reg[86]_1 ),
        .O(\q_reg[9]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[86]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[86]_2 ),
        .O(\q[86]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[87]_i_1__0 
       (.I0(InstrF[22]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[87]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[87] ),
        .I3(\q_reg[87]_0 ),
        .I4(\q[87]_i_4_n_0 ),
        .I5(\q_reg[87]_1 ),
        .O(\q_reg[9]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[87]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[87]_2 ),
        .O(\q[87]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[88]_i_1__0 
       (.I0(InstrF[23]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[88]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[88] ),
        .I3(\q_reg[88]_0 ),
        .I4(\q[88]_i_4_n_0 ),
        .I5(\q_reg[88]_1 ),
        .O(\q_reg[9]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[88]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[88]_2 ),
        .O(\q[88]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[89]_i_1__0 
       (.I0(InstrF[24]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[89]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[89] ),
        .I3(\q_reg[89]_0 ),
        .I4(\q[89]_i_4_n_0 ),
        .I5(\q_reg[89]_1 ),
        .O(\q_reg[9]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[89]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[89]_2 ),
        .O(\q[89]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[8]_i_1__1 
       (.I0(PCPlus4F[5]),
        .I1(PCTargetEmux[5]),
        .I2(\q_reg[9]_0 [5]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[90]_i_1__0 
       (.I0(InstrF[25]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[90]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[90] ),
        .I3(\q_reg[90]_0 ),
        .I4(\q[90]_i_4_n_0 ),
        .I5(\q_reg[90]_1 ),
        .O(\q_reg[9]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[90]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[90]_2 ),
        .O(\q[90]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[91]_i_1__0 
       (.I0(InstrF[26]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [27]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[91]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[91] ),
        .I3(\q_reg[91]_0 ),
        .I4(\q[91]_i_4_n_0 ),
        .I5(\q_reg[91]_1 ),
        .O(\q_reg[9]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[91]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[91]_2 ),
        .O(\q[91]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[92]_i_1__0 
       (.I0(InstrF[27]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[92]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[92] ),
        .I3(\q_reg[92]_0 ),
        .I4(\q[92]_i_4_n_0 ),
        .I5(\q_reg[92]_1 ),
        .O(\q_reg[9]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[92]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[92]_2 ),
        .O(\q[92]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[93]_i_1__0 
       (.I0(InstrF[28]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[93]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[93] ),
        .I3(\q_reg[93]_0 ),
        .I4(\q[93]_i_4_n_0 ),
        .I5(\q_reg[93]_1 ),
        .O(\q_reg[9]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[93]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[93]_2 ),
        .O(\q[93]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[94]_i_1__0 
       (.I0(InstrF[29]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[94]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[94] ),
        .I3(\q_reg[94]_0 ),
        .I4(\q[94]_i_4_n_0 ),
        .I5(\q_reg[94]_1 ),
        .O(\q_reg[9]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[94]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[94]_2 ),
        .O(\q[94]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[95]_i_1__1 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[95] ),
        .I3(\q_reg[95]_0 ),
        .I4(\q[95]_i_4_n_0 ),
        .I5(\q_reg[95]_1 ),
        .O(\q_reg[9]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[95]_i_2 
       (.I0(InstrF[30]),
        .I1(\q_reg[13]_0 ),
        .O(\q_reg[2]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[95]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[95]_2 ),
        .O(\q[95]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[96]_i_1__0 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[96] ),
        .I3(\q_reg[96]_0 ),
        .I4(\q[96]_i_4_n_0 ),
        .I5(\q_reg[96]_1 ),
        .O(\q_reg[9]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[96]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[96]_2 ),
        .O(\q[96]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[97]_i_1__0 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[97] ),
        .I3(\q_reg[97]_0 ),
        .I4(\q[97]_i_4_n_0 ),
        .I5(\q_reg[97]_1 ),
        .O(\q_reg[9]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[97]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[97]_2 ),
        .O(\q[97]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[98]_i_1__0 
       (.I0(\q_reg[9]_1 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[98] ),
        .I3(\q_reg[98]_0 ),
        .I4(\q[98]_i_5_n_0 ),
        .I5(\q_reg[98]_1 ),
        .O(\q_reg[9]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \q[98]_i_2 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .O(\q_reg[10]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[98]_i_5 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[98]_2 ),
        .O(\q[98]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[99]_i_10 
       (.I0(Q[8]),
        .I1(Q[11]),
        .I2(SrcBE[0]),
        .O(\q_reg[8]_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \q[99]_i_11 
       (.I0(Q[11]),
        .I1(Q[9]),
        .I2(Q[10]),
        .O(\q_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \q[99]_i_4 
       (.I0(Q[8]),
        .I1(Q[11]),
        .I2(SrcBE[0]),
        .O(\q_reg[8]_1 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[9]_i_1__1 
       (.I0(PCPlus4F[6]),
        .I1(PCTargetEmux[6]),
        .I2(\q_reg[9]_0 [6]),
        .I3(Q[1]),
        .I4(\q_reg[13]_0 ),
        .O(D[6]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [0]),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [10]),
        .Q(Q[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [11]),
        .Q(Q[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [12]),
        .Q(BranchE));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [13]),
        .Q(Q[12]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [14]),
        .Q(Q[13]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [15]),
        .Q(Q[14]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [16]),
        .Q(Q[15]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [1]),
        .Q(Q[1]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [2]),
        .Q(Q[2]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [3]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [4]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [5]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [6]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [7]),
        .Q(Q[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [8]),
        .Q(Q[8]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_0 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module design_1_top_0_0_floprc__parameterized0
   (\q_reg[63]_0 ,
    Q,
    E,
    StallD,
    \FSM_sequential_state_reg[0] ,
    \q_reg[1] ,
    \q_reg[9]_0 ,
    \q_reg[8]_0 ,
    \q_reg[32]_0 ,
    \q_reg[8]_1 ,
    \q_reg[8]_2 ,
    \q_reg[8]_3 ,
    \q_reg[8]_4 ,
    \q_reg[8]_5 ,
    \q_reg[8]_6 ,
    \q_reg[33]_0 ,
    \q_reg[8]_7 ,
    DI,
    \q_reg[8]_8 ,
    \q_reg[33]_1 ,
    \q_reg[8]_9 ,
    \q_reg[8]_10 ,
    \q_reg[8]_11 ,
    \q_reg[8]_12 ,
    \q_reg[8]_13 ,
    \q_reg[8]_14 ,
    \q_reg[8]_15 ,
    \q_reg[8]_16 ,
    \q_reg[8]_17 ,
    \q_reg[8]_18 ,
    \q_reg[8]_19 ,
    \q_reg[8]_20 ,
    \q_reg[8]_21 ,
    \q_reg[8]_22 ,
    \q_reg[8]_23 ,
    \q_reg[8]_24 ,
    \q_reg[8]_25 ,
    \q_reg[8]_26 ,
    \q_reg[8]_27 ,
    \q_reg[34]_0 ,
    \q_reg[8]_28 ,
    \q_reg[8]_29 ,
    \q_reg[8]_30 ,
    \q_reg[110]_0 ,
    \q_reg[8]_31 ,
    \q_reg[34]_1 ,
    \q_reg[8]_32 ,
    \q_reg[34]_2 ,
    \q_reg[8]_33 ,
    \q_reg[33]_2 ,
    \q_reg[8]_34 ,
    \q_reg[33]_3 ,
    \q_reg[8]_35 ,
    \q_reg[33]_4 ,
    \q_reg[8]_36 ,
    \q_reg[33]_5 ,
    \q_reg[8]_37 ,
    \q_reg[33]_6 ,
    \q_reg[8]_38 ,
    \q_reg[33]_7 ,
    \q_reg[8]_39 ,
    \q_reg[33]_8 ,
    \q_reg[8]_40 ,
    \q_reg[33]_9 ,
    \q_reg[8]_41 ,
    \q_reg[33]_10 ,
    \q_reg[8]_42 ,
    \q_reg[33]_11 ,
    \q_reg[8]_43 ,
    \q_reg[33]_12 ,
    \q_reg[8]_44 ,
    \q_reg[33]_13 ,
    \q_reg[8]_45 ,
    \q_reg[33]_14 ,
    \q_reg[8]_46 ,
    \q_reg[33]_15 ,
    \q_reg[8]_47 ,
    \q_reg[33]_16 ,
    \q_reg[8]_48 ,
    \q_reg[33]_17 ,
    \q_reg[8]_49 ,
    \q_reg[33]_18 ,
    \q_reg[8]_50 ,
    \q_reg[33]_19 ,
    \q_reg[8]_51 ,
    \q_reg[33]_20 ,
    \q_reg[8]_52 ,
    \q_reg[33]_21 ,
    \q_reg[8]_53 ,
    \q_reg[33]_22 ,
    \q_reg[8]_54 ,
    \q_reg[33]_23 ,
    \q_reg[46]_0 ,
    \q_reg[63]_1 ,
    \q_reg[54]_0 ,
    \q_reg[63]_2 ,
    \q_reg[63]_3 ,
    \q_reg[109]_0 ,
    \q_reg[31]_i_22_0 ,
    S,
    \q_reg[39]_0 ,
    \q_reg[43]_0 ,
    \q_reg[47]_0 ,
    \q_reg[51]_0 ,
    \q_reg[55]_0 ,
    \q_reg[59]_0 ,
    \q_reg[9]_1 ,
    \q_reg[9]_2 ,
    \q_reg[85]_0 ,
    \q_reg[9]_3 ,
    \q_reg[9]_4 ,
    \q_reg[9]_5 ,
    \q_reg[9]_6 ,
    \q_reg[9]_7 ,
    \q_reg[9]_8 ,
    \q_reg[94]_0 ,
    \q_reg[9]_9 ,
    \q_reg[9]_10 ,
    \q_reg[9]_11 ,
    \q_reg[9]_12 ,
    \q_reg[9]_13 ,
    \q_reg[9]_14 ,
    \q_reg[9]_15 ,
    \q_reg[9]_16 ,
    \q_reg[9]_17 ,
    \q_reg[9]_18 ,
    \q_reg[9]_19 ,
    \q_reg[9]_20 ,
    \q_reg[109]_1 ,
    \q_reg[9]_21 ,
    \q_reg[101]_0 ,
    \q_reg[9]_22 ,
    \q_reg[9]_23 ,
    \q_reg[9]_24 ,
    \q_reg[9]_25 ,
    \q_reg[9]_26 ,
    \q_reg[9]_27 ,
    D,
    PCSrcE,
    rd21__3,
    rd20,
    rd11__3,
    rd10,
    PCready,
    \q_reg[142]_0 ,
    \q_reg[95]_0 ,
    \q_reg[95]_1 ,
    \q[31]_i_3_0 ,
    O,
    PCTargetEmux,
    \q_reg[71]_0 ,
    \q_reg[70]_0 ,
    \q_reg[71]_1 ,
    \q_reg[70]_1 ,
    \q_reg[99]_0 ,
    \q_reg[99]_1 ,
    CO,
    ResultW,
    \q_reg[68]_0 ,
    \q_reg[71]_2 ,
    \q_reg[68]_1 ,
    result2_carry_i_40_0,
    \q_reg[57]_0 ,
    \q[100]_i_15_0 ,
    \q[100]_i_15_1 ,
    \q[100]_i_15_2 ,
    \q[69]_i_3_0 ,
    \q_reg[69]_0 ,
    clk,
    reset);
  output [3:0]\q_reg[63]_0 ;
  output [69:0]Q;
  output [0:0]E;
  output StallD;
  output [0:0]\FSM_sequential_state_reg[0] ;
  output [0:0]\q_reg[1] ;
  output [35:0]\q_reg[9]_0 ;
  output \q_reg[8]_0 ;
  output \q_reg[32]_0 ;
  output \q_reg[8]_1 ;
  output \q_reg[8]_2 ;
  output \q_reg[8]_3 ;
  output \q_reg[8]_4 ;
  output \q_reg[8]_5 ;
  output \q_reg[8]_6 ;
  output \q_reg[33]_0 ;
  output \q_reg[8]_7 ;
  output [3:0]DI;
  output \q_reg[8]_8 ;
  output \q_reg[33]_1 ;
  output \q_reg[8]_9 ;
  output \q_reg[8]_10 ;
  output \q_reg[8]_11 ;
  output \q_reg[8]_12 ;
  output \q_reg[8]_13 ;
  output \q_reg[8]_14 ;
  output \q_reg[8]_15 ;
  output \q_reg[8]_16 ;
  output \q_reg[8]_17 ;
  output \q_reg[8]_18 ;
  output \q_reg[8]_19 ;
  output \q_reg[8]_20 ;
  output \q_reg[8]_21 ;
  output \q_reg[8]_22 ;
  output \q_reg[8]_23 ;
  output \q_reg[8]_24 ;
  output \q_reg[8]_25 ;
  output \q_reg[8]_26 ;
  output \q_reg[8]_27 ;
  output \q_reg[34]_0 ;
  output \q_reg[8]_28 ;
  output \q_reg[8]_29 ;
  output \q_reg[8]_30 ;
  output [0:0]\q_reg[110]_0 ;
  output \q_reg[8]_31 ;
  output \q_reg[34]_1 ;
  output \q_reg[8]_32 ;
  output \q_reg[34]_2 ;
  output \q_reg[8]_33 ;
  output \q_reg[33]_2 ;
  output \q_reg[8]_34 ;
  output \q_reg[33]_3 ;
  output \q_reg[8]_35 ;
  output \q_reg[33]_4 ;
  output \q_reg[8]_36 ;
  output \q_reg[33]_5 ;
  output \q_reg[8]_37 ;
  output \q_reg[33]_6 ;
  output \q_reg[8]_38 ;
  output \q_reg[33]_7 ;
  output \q_reg[8]_39 ;
  output \q_reg[33]_8 ;
  output \q_reg[8]_40 ;
  output \q_reg[33]_9 ;
  output \q_reg[8]_41 ;
  output \q_reg[33]_10 ;
  output \q_reg[8]_42 ;
  output \q_reg[33]_11 ;
  output \q_reg[8]_43 ;
  output \q_reg[33]_12 ;
  output \q_reg[8]_44 ;
  output \q_reg[33]_13 ;
  output \q_reg[8]_45 ;
  output \q_reg[33]_14 ;
  output \q_reg[8]_46 ;
  output \q_reg[33]_15 ;
  output \q_reg[8]_47 ;
  output \q_reg[33]_16 ;
  output \q_reg[8]_48 ;
  output \q_reg[33]_17 ;
  output \q_reg[8]_49 ;
  output \q_reg[33]_18 ;
  output \q_reg[8]_50 ;
  output \q_reg[33]_19 ;
  output \q_reg[8]_51 ;
  output \q_reg[33]_20 ;
  output \q_reg[8]_52 ;
  output \q_reg[33]_21 ;
  output \q_reg[8]_53 ;
  output \q_reg[33]_22 ;
  output \q_reg[8]_54 ;
  output \q_reg[33]_23 ;
  output [3:0]\q_reg[46]_0 ;
  output [3:0]\q_reg[63]_1 ;
  output [3:0]\q_reg[54]_0 ;
  output \q_reg[63]_2 ;
  output [0:0]\q_reg[63]_3 ;
  output [0:0]\q_reg[109]_0 ;
  output [0:0]\q_reg[31]_i_22_0 ;
  output [3:0]S;
  output [3:0]\q_reg[39]_0 ;
  output [3:0]\q_reg[43]_0 ;
  output [3:0]\q_reg[47]_0 ;
  output [3:0]\q_reg[51]_0 ;
  output [3:0]\q_reg[55]_0 ;
  output [3:0]\q_reg[59]_0 ;
  output \q_reg[9]_1 ;
  output \q_reg[9]_2 ;
  output [3:0]\q_reg[85]_0 ;
  output \q_reg[9]_3 ;
  output \q_reg[9]_4 ;
  output \q_reg[9]_5 ;
  output \q_reg[9]_6 ;
  output \q_reg[9]_7 ;
  output \q_reg[9]_8 ;
  output [3:0]\q_reg[94]_0 ;
  output \q_reg[9]_9 ;
  output \q_reg[9]_10 ;
  output \q_reg[9]_11 ;
  output \q_reg[9]_12 ;
  output \q_reg[9]_13 ;
  output \q_reg[9]_14 ;
  output \q_reg[9]_15 ;
  output \q_reg[9]_16 ;
  output \q_reg[9]_17 ;
  output \q_reg[9]_18 ;
  output \q_reg[9]_19 ;
  output \q_reg[9]_20 ;
  output [3:0]\q_reg[109]_1 ;
  output \q_reg[9]_21 ;
  output [3:0]\q_reg[101]_0 ;
  output \q_reg[9]_22 ;
  output \q_reg[9]_23 ;
  output \q_reg[9]_24 ;
  output \q_reg[9]_25 ;
  output \q_reg[9]_26 ;
  output \q_reg[9]_27 ;
  input [108:0]D;
  input PCSrcE;
  input rd21__3;
  input [31:0]rd20;
  input rd11__3;
  input [31:0]rd10;
  input PCready;
  input [8:0]\q_reg[142]_0 ;
  input \q_reg[95]_0 ;
  input \q_reg[95]_1 ;
  input [5:0]\q[31]_i_3_0 ;
  input [0:0]O;
  input [0:0]PCTargetEmux;
  input \q_reg[71]_0 ;
  input \q_reg[70]_0 ;
  input \q_reg[71]_1 ;
  input \q_reg[70]_1 ;
  input \q_reg[99]_0 ;
  input \q_reg[99]_1 ;
  input [0:0]CO;
  input [15:0]ResultW;
  input [36:0]\q_reg[68]_0 ;
  input \q_reg[71]_2 ;
  input [15:0]\q_reg[68]_1 ;
  input [4:0]result2_carry_i_40_0;
  input [0:0]\q_reg[57]_0 ;
  input \q[100]_i_15_0 ;
  input [0:0]\q[100]_i_15_1 ;
  input \q[100]_i_15_2 ;
  input \q[69]_i_3_0 ;
  input \q_reg[69]_0 ;
  input clk;
  input reset;

  wire [0:0]CO;
  wire CarryE;
  wire [108:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg[0] ;
  wire [1:1]ForwardBE;
  wire [31:31]ImmExtE;
  wire [0:0]O;
  wire [31:2]PCE;
  wire PCSrcE;
  wire [0:0]PCTargetEmux;
  wire PCready;
  wire [69:0]Q;
  wire [31:0]RD1E;
  wire [31:0]RD2E;
  wire [15:0]ResultW;
  wire [4:0]Rs1E;
  wire [4:0]Rs2E;
  wire [3:0]S;
  wire [30:0]SrcAE;
  wire [30:1]SrcBE;
  wire StallD;
  wire [0:0]\alu/data7 ;
  wire [30:0]\alu/sum ;
  wire clk;
  wire \hu/ForwardAE11_out ;
  wire \hu/ForwardBE10_out ;
  wire [174:111]p_0_in;
  wire \q[100]_i_11_n_0 ;
  wire \q[100]_i_12_n_0 ;
  wire \q[100]_i_13_n_0 ;
  wire \q[100]_i_14_n_0 ;
  wire \q[100]_i_15_0 ;
  wire [0:0]\q[100]_i_15_1 ;
  wire \q[100]_i_15_2 ;
  wire \q[100]_i_15_n_0 ;
  wire \q[100]_i_16_n_0 ;
  wire \q[100]_i_17_n_0 ;
  wire \q[100]_i_18_n_0 ;
  wire \q[100]_i_19_n_0 ;
  wire \q[100]_i_20_n_0 ;
  wire \q[100]_i_21_n_0 ;
  wire \q[100]_i_22_n_0 ;
  wire \q[100]_i_23_n_0 ;
  wire \q[100]_i_24_n_0 ;
  wire \q[100]_i_25_n_0 ;
  wire \q[100]_i_26_n_0 ;
  wire \q[100]_i_27_n_0 ;
  wire \q[100]_i_28_n_0 ;
  wire \q[100]_i_29_n_0 ;
  wire \q[100]_i_9_n_0 ;
  wire \q[174]_i_2_n_0 ;
  wire \q[31]_i_25_n_0 ;
  wire \q[31]_i_26_n_0 ;
  wire \q[31]_i_27_n_0 ;
  wire \q[31]_i_29_n_0 ;
  wire \q[31]_i_30_n_0 ;
  wire \q[31]_i_31_n_0 ;
  wire \q[31]_i_32_n_0 ;
  wire \q[31]_i_34_n_0 ;
  wire \q[31]_i_35_n_0 ;
  wire \q[31]_i_36_n_0 ;
  wire \q[31]_i_37_n_0 ;
  wire \q[31]_i_39_n_0 ;
  wire [5:0]\q[31]_i_3_0 ;
  wire \q[31]_i_40_n_0 ;
  wire \q[31]_i_41_n_0 ;
  wire \q[31]_i_42_n_0 ;
  wire \q[31]_i_44_n_0 ;
  wire \q[31]_i_45_n_0 ;
  wire \q[31]_i_46_n_0 ;
  wire \q[31]_i_47_n_0 ;
  wire \q[31]_i_49_n_0 ;
  wire \q[31]_i_50_n_0 ;
  wire \q[31]_i_51_n_0 ;
  wire \q[31]_i_52_n_0 ;
  wire \q[31]_i_54_n_0 ;
  wire \q[31]_i_55_n_0 ;
  wire \q[31]_i_56_n_0 ;
  wire \q[31]_i_57_n_0 ;
  wire \q[31]_i_58_n_0 ;
  wire \q[31]_i_59_n_0 ;
  wire \q[31]_i_5_n_0 ;
  wire \q[31]_i_60_n_0 ;
  wire \q[31]_i_61_n_0 ;
  wire \q[31]_i_7_n_0 ;
  wire \q[68]_i_10_n_0 ;
  wire \q[68]_i_2_n_0 ;
  wire \q[68]_i_4_n_0 ;
  wire \q[68]_i_6_n_0 ;
  wire \q[68]_i_7_n_0 ;
  wire \q[68]_i_8_n_0 ;
  wire \q[69]_i_10_n_0 ;
  wire \q[69]_i_11_n_0 ;
  wire \q[69]_i_12_n_0 ;
  wire \q[69]_i_13_n_0 ;
  wire \q[69]_i_14_n_0 ;
  wire \q[69]_i_15_n_0 ;
  wire \q[69]_i_16_n_0 ;
  wire \q[69]_i_17_n_0 ;
  wire \q[69]_i_18_n_0 ;
  wire \q[69]_i_2_n_0 ;
  wire \q[69]_i_3_0 ;
  wire \q[69]_i_3_n_0 ;
  wire \q[69]_i_6_n_0 ;
  wire \q[69]_i_7_n_0 ;
  wire \q[69]_i_8_n_0 ;
  wire \q[69]_i_9_n_0 ;
  wire \q[70]_i_10_n_0 ;
  wire \q[70]_i_2_n_0 ;
  wire \q[70]_i_3_n_0 ;
  wire \q[70]_i_4_n_0 ;
  wire \q[70]_i_5_n_0 ;
  wire \q[70]_i_6_n_0 ;
  wire \q[70]_i_7_n_0 ;
  wire \q[70]_i_8_n_0 ;
  wire \q[70]_i_9_n_0 ;
  wire \q[71]_i_10_n_0 ;
  wire \q[71]_i_11_n_0 ;
  wire \q[71]_i_12_n_0 ;
  wire \q[71]_i_13_n_0 ;
  wire \q[71]_i_14_n_0 ;
  wire \q[71]_i_2_n_0 ;
  wire \q[71]_i_3_n_0 ;
  wire \q[71]_i_4_n_0 ;
  wire \q[71]_i_5_n_0 ;
  wire \q[71]_i_6_n_0 ;
  wire \q[71]_i_7_n_0 ;
  wire \q[71]_i_8_n_0 ;
  wire \q[71]_i_9_n_0 ;
  wire \q[72]_i_11_n_0 ;
  wire \q[72]_i_12_n_0 ;
  wire \q[72]_i_13_n_0 ;
  wire \q[72]_i_14_n_0 ;
  wire \q[72]_i_6_n_0 ;
  wire \q[72]_i_7_n_0 ;
  wire \q[72]_i_9_n_0 ;
  wire \q[73]_i_10_n_0 ;
  wire \q[73]_i_6_n_0 ;
  wire \q[73]_i_7_n_0 ;
  wire \q[73]_i_9_n_0 ;
  wire \q[74]_i_10_n_0 ;
  wire \q[74]_i_11_n_0 ;
  wire \q[74]_i_6_n_0 ;
  wire \q[74]_i_7_n_0 ;
  wire \q[74]_i_9_n_0 ;
  wire \q[75]_i_10_n_0 ;
  wire \q[75]_i_11_n_0 ;
  wire \q[75]_i_12_n_0 ;
  wire \q[75]_i_6_n_0 ;
  wire \q[75]_i_7_n_0 ;
  wire \q[75]_i_9_n_0 ;
  wire \q[76]_i_10_n_0 ;
  wire \q[76]_i_11_n_0 ;
  wire \q[76]_i_12_n_0 ;
  wire \q[76]_i_13_n_0 ;
  wire \q[76]_i_14_n_0 ;
  wire \q[76]_i_15_n_0 ;
  wire \q[76]_i_6_n_0 ;
  wire \q[76]_i_7_n_0 ;
  wire \q[77]_i_10_n_0 ;
  wire \q[77]_i_11_n_0 ;
  wire \q[77]_i_12_n_0 ;
  wire \q[77]_i_6_n_0 ;
  wire \q[77]_i_7_n_0 ;
  wire \q[77]_i_9_n_0 ;
  wire \q[78]_i_10_n_0 ;
  wire \q[78]_i_11_n_0 ;
  wire \q[78]_i_6_n_0 ;
  wire \q[78]_i_7_n_0 ;
  wire \q[78]_i_9_n_0 ;
  wire \q[79]_i_10_n_0 ;
  wire \q[79]_i_11_n_0 ;
  wire \q[79]_i_12_n_0 ;
  wire \q[79]_i_6_n_0 ;
  wire \q[79]_i_7_n_0 ;
  wire \q[79]_i_9_n_0 ;
  wire \q[80]_i_10_n_0 ;
  wire \q[80]_i_11_n_0 ;
  wire \q[80]_i_12_n_0 ;
  wire \q[80]_i_13_n_0 ;
  wire \q[80]_i_14_n_0 ;
  wire \q[80]_i_15_n_0 ;
  wire \q[80]_i_16_n_0 ;
  wire \q[80]_i_6_n_0 ;
  wire \q[80]_i_7_n_0 ;
  wire \q[81]_i_10_n_0 ;
  wire \q[81]_i_11_n_0 ;
  wire \q[81]_i_6_n_0 ;
  wire \q[81]_i_7_n_0 ;
  wire \q[81]_i_9_n_0 ;
  wire \q[82]_i_10_n_0 ;
  wire \q[82]_i_11_n_0 ;
  wire \q[82]_i_6_n_0 ;
  wire \q[82]_i_7_n_0 ;
  wire \q[82]_i_9_n_0 ;
  wire \q[83]_i_10_n_0 ;
  wire \q[83]_i_11_n_0 ;
  wire \q[83]_i_6_n_0 ;
  wire \q[83]_i_7_n_0 ;
  wire \q[83]_i_9_n_0 ;
  wire \q[84]_i_10_n_0 ;
  wire \q[84]_i_11_n_0 ;
  wire \q[84]_i_12_n_0 ;
  wire \q[84]_i_13_n_0 ;
  wire \q[84]_i_14_n_0 ;
  wire \q[84]_i_15_n_0 ;
  wire \q[84]_i_16_n_0 ;
  wire \q[84]_i_6_n_0 ;
  wire \q[84]_i_7_n_0 ;
  wire \q[85]_i_10_n_0 ;
  wire \q[85]_i_11_n_0 ;
  wire \q[85]_i_12_n_0 ;
  wire \q[85]_i_6_n_0 ;
  wire \q[85]_i_7_n_0 ;
  wire \q[85]_i_9_n_0 ;
  wire \q[86]_i_10_n_0 ;
  wire \q[86]_i_11_n_0 ;
  wire \q[86]_i_12_n_0 ;
  wire \q[86]_i_6_n_0 ;
  wire \q[86]_i_7_n_0 ;
  wire \q[86]_i_9_n_0 ;
  wire \q[87]_i_10_n_0 ;
  wire \q[87]_i_11_n_0 ;
  wire \q[87]_i_12_n_0 ;
  wire \q[87]_i_6_n_0 ;
  wire \q[87]_i_7_n_0 ;
  wire \q[87]_i_9_n_0 ;
  wire \q[88]_i_10_n_0 ;
  wire \q[88]_i_11_n_0 ;
  wire \q[88]_i_12_n_0 ;
  wire \q[88]_i_13_n_0 ;
  wire \q[88]_i_14_n_0 ;
  wire \q[88]_i_15_n_0 ;
  wire \q[88]_i_16_n_0 ;
  wire \q[88]_i_17_n_0 ;
  wire \q[88]_i_18_n_0 ;
  wire \q[88]_i_6_n_0 ;
  wire \q[88]_i_7_n_0 ;
  wire \q[89]_i_10_n_0 ;
  wire \q[89]_i_11_n_0 ;
  wire \q[89]_i_12_n_0 ;
  wire \q[89]_i_6_n_0 ;
  wire \q[89]_i_7_n_0 ;
  wire \q[89]_i_9_n_0 ;
  wire \q[90]_i_10_n_0 ;
  wire \q[90]_i_11_n_0 ;
  wire \q[90]_i_12_n_0 ;
  wire \q[90]_i_6_n_0 ;
  wire \q[90]_i_7_n_0 ;
  wire \q[90]_i_9_n_0 ;
  wire \q[91]_i_10_n_0 ;
  wire \q[91]_i_11_n_0 ;
  wire \q[91]_i_12_n_0 ;
  wire \q[91]_i_6_n_0 ;
  wire \q[91]_i_7_n_0 ;
  wire \q[91]_i_9_n_0 ;
  wire \q[92]_i_10_n_0 ;
  wire \q[92]_i_11_n_0 ;
  wire \q[92]_i_12_n_0 ;
  wire \q[92]_i_13_n_0 ;
  wire \q[92]_i_14_n_0 ;
  wire \q[92]_i_15_n_0 ;
  wire \q[92]_i_16_n_0 ;
  wire \q[92]_i_6_n_0 ;
  wire \q[92]_i_7_n_0 ;
  wire \q[93]_i_10_n_0 ;
  wire \q[93]_i_11_n_0 ;
  wire \q[93]_i_6_n_0 ;
  wire \q[93]_i_7_n_0 ;
  wire \q[93]_i_9_n_0 ;
  wire \q[94]_i_10_n_0 ;
  wire \q[94]_i_11_n_0 ;
  wire \q[94]_i_6_n_0 ;
  wire \q[94]_i_7_n_0 ;
  wire \q[94]_i_9_n_0 ;
  wire \q[95]_i_10_n_0 ;
  wire \q[95]_i_11_n_0 ;
  wire \q[95]_i_6_n_0 ;
  wire \q[95]_i_7_n_0 ;
  wire \q[95]_i_9_n_0 ;
  wire \q[96]_i_10_n_0 ;
  wire \q[96]_i_11_n_0 ;
  wire \q[96]_i_12_n_0 ;
  wire \q[96]_i_13_n_0 ;
  wire \q[96]_i_14_n_0 ;
  wire \q[96]_i_15_n_0 ;
  wire \q[96]_i_16_n_0 ;
  wire \q[96]_i_17_n_0 ;
  wire \q[96]_i_6_n_0 ;
  wire \q[96]_i_7_n_0 ;
  wire \q[97]_i_10_n_0 ;
  wire \q[97]_i_11_n_0 ;
  wire \q[97]_i_12_n_0 ;
  wire \q[97]_i_6_n_0 ;
  wire \q[97]_i_7_n_0 ;
  wire \q[97]_i_9_n_0 ;
  wire \q[98]_i_11_n_0 ;
  wire \q[98]_i_12_n_0 ;
  wire \q[98]_i_13_n_0 ;
  wire \q[98]_i_14_n_0 ;
  wire \q[98]_i_15_n_0 ;
  wire \q[98]_i_16_n_0 ;
  wire \q[98]_i_17_n_0 ;
  wire \q[98]_i_7_n_0 ;
  wire \q[98]_i_8_n_0 ;
  wire \q[98]_i_9_n_0 ;
  wire \q[99]_i_12_n_0 ;
  wire \q[99]_i_2_n_0 ;
  wire \q[99]_i_3_n_0 ;
  wire \q[99]_i_6_n_0 ;
  wire \q[99]_i_7_n_0 ;
  wire \q[99]_i_8_n_0 ;
  wire \q[99]_i_9_n_0 ;
  wire \q_reg[100]_i_8_n_1 ;
  wire \q_reg[100]_i_8_n_2 ;
  wire \q_reg[100]_i_8_n_3 ;
  wire [3:0]\q_reg[101]_0 ;
  wire [0:0]\q_reg[109]_0 ;
  wire [3:0]\q_reg[109]_1 ;
  wire [0:0]\q_reg[110]_0 ;
  wire [8:0]\q_reg[142]_0 ;
  wire [0:0]\q_reg[1] ;
  wire [0:0]\q_reg[31]_i_22_0 ;
  wire \q_reg[31]_i_22_n_1 ;
  wire \q_reg[31]_i_22_n_2 ;
  wire \q_reg[31]_i_22_n_3 ;
  wire \q_reg[31]_i_23_n_0 ;
  wire \q_reg[31]_i_23_n_1 ;
  wire \q_reg[31]_i_23_n_2 ;
  wire \q_reg[31]_i_23_n_3 ;
  wire \q_reg[31]_i_28_n_0 ;
  wire \q_reg[31]_i_28_n_1 ;
  wire \q_reg[31]_i_28_n_2 ;
  wire \q_reg[31]_i_28_n_3 ;
  wire \q_reg[31]_i_33_n_0 ;
  wire \q_reg[31]_i_33_n_1 ;
  wire \q_reg[31]_i_33_n_2 ;
  wire \q_reg[31]_i_33_n_3 ;
  wire \q_reg[31]_i_38_n_0 ;
  wire \q_reg[31]_i_38_n_1 ;
  wire \q_reg[31]_i_38_n_2 ;
  wire \q_reg[31]_i_38_n_3 ;
  wire \q_reg[31]_i_43_n_0 ;
  wire \q_reg[31]_i_43_n_1 ;
  wire \q_reg[31]_i_43_n_2 ;
  wire \q_reg[31]_i_43_n_3 ;
  wire \q_reg[31]_i_48_n_0 ;
  wire \q_reg[31]_i_48_n_1 ;
  wire \q_reg[31]_i_48_n_2 ;
  wire \q_reg[31]_i_48_n_3 ;
  wire \q_reg[31]_i_53_n_0 ;
  wire \q_reg[31]_i_53_n_1 ;
  wire \q_reg[31]_i_53_n_2 ;
  wire \q_reg[31]_i_53_n_3 ;
  wire \q_reg[32]_0 ;
  wire \q_reg[33]_0 ;
  wire \q_reg[33]_1 ;
  wire \q_reg[33]_10 ;
  wire \q_reg[33]_11 ;
  wire \q_reg[33]_12 ;
  wire \q_reg[33]_13 ;
  wire \q_reg[33]_14 ;
  wire \q_reg[33]_15 ;
  wire \q_reg[33]_16 ;
  wire \q_reg[33]_17 ;
  wire \q_reg[33]_18 ;
  wire \q_reg[33]_19 ;
  wire \q_reg[33]_2 ;
  wire \q_reg[33]_20 ;
  wire \q_reg[33]_21 ;
  wire \q_reg[33]_22 ;
  wire \q_reg[33]_23 ;
  wire \q_reg[33]_3 ;
  wire \q_reg[33]_4 ;
  wire \q_reg[33]_5 ;
  wire \q_reg[33]_6 ;
  wire \q_reg[33]_7 ;
  wire \q_reg[33]_8 ;
  wire \q_reg[33]_9 ;
  wire \q_reg[34]_0 ;
  wire \q_reg[34]_1 ;
  wire \q_reg[34]_2 ;
  wire [3:0]\q_reg[39]_0 ;
  wire [3:0]\q_reg[43]_0 ;
  wire [3:0]\q_reg[46]_0 ;
  wire [3:0]\q_reg[47]_0 ;
  wire [3:0]\q_reg[51]_0 ;
  wire [3:0]\q_reg[54]_0 ;
  wire [3:0]\q_reg[55]_0 ;
  wire [0:0]\q_reg[57]_0 ;
  wire [3:0]\q_reg[59]_0 ;
  wire [3:0]\q_reg[63]_0 ;
  wire [3:0]\q_reg[63]_1 ;
  wire \q_reg[63]_2 ;
  wire [0:0]\q_reg[63]_3 ;
  wire [36:0]\q_reg[68]_0 ;
  wire [15:0]\q_reg[68]_1 ;
  wire \q_reg[69]_0 ;
  wire \q_reg[70]_0 ;
  wire \q_reg[70]_1 ;
  wire \q_reg[71]_0 ;
  wire \q_reg[71]_1 ;
  wire \q_reg[71]_2 ;
  wire \q_reg[72]_i_8_n_0 ;
  wire \q_reg[72]_i_8_n_1 ;
  wire \q_reg[72]_i_8_n_2 ;
  wire \q_reg[72]_i_8_n_3 ;
  wire \q_reg[76]_i_8_n_0 ;
  wire \q_reg[76]_i_8_n_1 ;
  wire \q_reg[76]_i_8_n_2 ;
  wire \q_reg[76]_i_8_n_3 ;
  wire \q_reg[80]_i_8_n_0 ;
  wire \q_reg[80]_i_8_n_1 ;
  wire \q_reg[80]_i_8_n_2 ;
  wire \q_reg[80]_i_8_n_3 ;
  wire \q_reg[84]_i_8_n_0 ;
  wire \q_reg[84]_i_8_n_1 ;
  wire \q_reg[84]_i_8_n_2 ;
  wire \q_reg[84]_i_8_n_3 ;
  wire [3:0]\q_reg[85]_0 ;
  wire \q_reg[88]_i_8_n_0 ;
  wire \q_reg[88]_i_8_n_1 ;
  wire \q_reg[88]_i_8_n_2 ;
  wire \q_reg[88]_i_8_n_3 ;
  wire \q_reg[8]_0 ;
  wire \q_reg[8]_1 ;
  wire \q_reg[8]_10 ;
  wire \q_reg[8]_11 ;
  wire \q_reg[8]_12 ;
  wire \q_reg[8]_13 ;
  wire \q_reg[8]_14 ;
  wire \q_reg[8]_15 ;
  wire \q_reg[8]_16 ;
  wire \q_reg[8]_17 ;
  wire \q_reg[8]_18 ;
  wire \q_reg[8]_19 ;
  wire \q_reg[8]_2 ;
  wire \q_reg[8]_20 ;
  wire \q_reg[8]_21 ;
  wire \q_reg[8]_22 ;
  wire \q_reg[8]_23 ;
  wire \q_reg[8]_24 ;
  wire \q_reg[8]_25 ;
  wire \q_reg[8]_26 ;
  wire \q_reg[8]_27 ;
  wire \q_reg[8]_28 ;
  wire \q_reg[8]_29 ;
  wire \q_reg[8]_3 ;
  wire \q_reg[8]_30 ;
  wire \q_reg[8]_31 ;
  wire \q_reg[8]_32 ;
  wire \q_reg[8]_33 ;
  wire \q_reg[8]_34 ;
  wire \q_reg[8]_35 ;
  wire \q_reg[8]_36 ;
  wire \q_reg[8]_37 ;
  wire \q_reg[8]_38 ;
  wire \q_reg[8]_39 ;
  wire \q_reg[8]_4 ;
  wire \q_reg[8]_40 ;
  wire \q_reg[8]_41 ;
  wire \q_reg[8]_42 ;
  wire \q_reg[8]_43 ;
  wire \q_reg[8]_44 ;
  wire \q_reg[8]_45 ;
  wire \q_reg[8]_46 ;
  wire \q_reg[8]_47 ;
  wire \q_reg[8]_48 ;
  wire \q_reg[8]_49 ;
  wire \q_reg[8]_5 ;
  wire \q_reg[8]_50 ;
  wire \q_reg[8]_51 ;
  wire \q_reg[8]_52 ;
  wire \q_reg[8]_53 ;
  wire \q_reg[8]_54 ;
  wire \q_reg[8]_6 ;
  wire \q_reg[8]_7 ;
  wire \q_reg[8]_8 ;
  wire \q_reg[8]_9 ;
  wire \q_reg[92]_i_8_n_0 ;
  wire \q_reg[92]_i_8_n_1 ;
  wire \q_reg[92]_i_8_n_2 ;
  wire \q_reg[92]_i_8_n_3 ;
  wire [3:0]\q_reg[94]_0 ;
  wire \q_reg[95]_0 ;
  wire \q_reg[95]_1 ;
  wire \q_reg[96]_i_8_n_0 ;
  wire \q_reg[96]_i_8_n_1 ;
  wire \q_reg[96]_i_8_n_2 ;
  wire \q_reg[96]_i_8_n_3 ;
  wire \q_reg[99]_0 ;
  wire \q_reg[99]_1 ;
  wire [35:0]\q_reg[9]_0 ;
  wire \q_reg[9]_1 ;
  wire \q_reg[9]_10 ;
  wire \q_reg[9]_11 ;
  wire \q_reg[9]_12 ;
  wire \q_reg[9]_13 ;
  wire \q_reg[9]_14 ;
  wire \q_reg[9]_15 ;
  wire \q_reg[9]_16 ;
  wire \q_reg[9]_17 ;
  wire \q_reg[9]_18 ;
  wire \q_reg[9]_19 ;
  wire \q_reg[9]_2 ;
  wire \q_reg[9]_20 ;
  wire \q_reg[9]_21 ;
  wire \q_reg[9]_22 ;
  wire \q_reg[9]_23 ;
  wire \q_reg[9]_24 ;
  wire \q_reg[9]_25 ;
  wire \q_reg[9]_26 ;
  wire \q_reg[9]_27 ;
  wire \q_reg[9]_3 ;
  wire \q_reg[9]_4 ;
  wire \q_reg[9]_5 ;
  wire \q_reg[9]_6 ;
  wire \q_reg[9]_7 ;
  wire \q_reg[9]_8 ;
  wire \q_reg[9]_9 ;
  wire [31:0]rd10;
  wire rd11__3;
  wire [31:0]rd20;
  wire rd21__3;
  wire reset;
  wire result2_carry__0_i_25_n_0;
  wire result2_carry__0_i_26_n_0;
  wire result2_carry__0_i_27_n_0;
  wire result2_carry__0_i_28_n_0;
  wire result2_carry__0_i_29_n_0;
  wire result2_carry__0_i_30_n_0;
  wire result2_carry__0_i_31_n_0;
  wire result2_carry__0_i_32_n_0;
  wire result2_carry__1_i_25_n_0;
  wire result2_carry__1_i_26_n_0;
  wire result2_carry__1_i_27_n_0;
  wire result2_carry__1_i_28_n_0;
  wire result2_carry__1_i_29_n_0;
  wire result2_carry__1_i_30_n_0;
  wire result2_carry__1_i_31_n_0;
  wire result2_carry__1_i_32_n_0;
  wire result2_carry__2_i_25_n_0;
  wire result2_carry__2_i_26_n_0;
  wire result2_carry__2_i_27_n_0;
  wire result2_carry__2_i_28_n_0;
  wire result2_carry__2_i_29_n_0;
  wire result2_carry__2_i_30_n_0;
  wire result2_carry__2_i_31_n_0;
  wire result2_carry__2_i_32_n_0;
  wire result2_carry_i_25_n_0;
  wire result2_carry_i_26_n_0;
  wire result2_carry_i_27_n_0;
  wire result2_carry_i_28_n_0;
  wire result2_carry_i_29_n_0;
  wire result2_carry_i_30_n_0;
  wire result2_carry_i_31_n_0;
  wire result2_carry_i_32_n_0;
  wire result2_carry_i_33_n_0;
  wire result2_carry_i_34_n_0;
  wire result2_carry_i_35_n_0;
  wire result2_carry_i_36_n_0;
  wire result2_carry_i_37_n_0;
  wire result2_carry_i_38_n_0;
  wire [4:0]result2_carry_i_40_0;
  wire result2_carry_i_40_n_0;
  wire result2_carry_i_41_n_0;
  wire result2_carry_i_42_n_0;
  wire result2_carry_i_43_n_0;
  wire result2_carry_i_44_n_0;
  wire result2_carry_i_45_n_0;
  wire result2_carry_i_46_n_0;
  wire result2_carry_i_47_n_0;
  wire v2;
  wire [3:3]\NLW_q_reg[100]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_20_CO_UNCONNECTED ;
  wire [3:1]\NLW_q_reg[31]_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_33_O_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_43_O_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_48_O_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_53_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[100]_i_11 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(\q_reg[110]_0 ),
        .O(\q[100]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[100]_i_12 
       (.I0(SrcBE[1]),
        .I1(SrcBE[2]),
        .O(\q[100]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \q[100]_i_13 
       (.I0(SrcBE[2]),
        .I1(\q[100]_i_23_n_0 ),
        .I2(\q[100]_i_24_n_0 ),
        .I3(SrcBE[1]),
        .I4(\q[100]_i_25_n_0 ),
        .O(\q[100]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[100]_i_14 
       (.I0(\q_reg[32]_0 ),
        .I1(\q_reg[142]_0 [4]),
        .O(\q[100]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    \q[100]_i_15 
       (.I0(\q_reg[68]_0 [36]),
        .I1(RD2E[31]),
        .I2(\hu/ForwardBE10_out ),
        .I3(result2_carry_i_43_n_0),
        .I4(\q[68]_i_7_n_0 ),
        .O(\q[100]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h96999666)) 
    \q[100]_i_16 
       (.I0(\q_reg[110]_0 ),
        .I1(\q_reg[142]_0 [4]),
        .I2(ImmExtE),
        .I3(\q_reg[142]_0 [1]),
        .I4(\q_reg[9]_0 [31]),
        .O(\q[100]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[100]_i_17 
       (.I0(SrcAE[30]),
        .I1(SrcBE[30]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[100]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[100]_i_18 
       (.I0(SrcAE[29]),
        .I1(SrcBE[29]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[100]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[100]_i_19 
       (.I0(SrcAE[28]),
        .I1(SrcBE[28]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[100]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBB8BBB8)) 
    \q[100]_i_20 
       (.I0(\q[98]_i_15_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[98]_i_17_n_0 ),
        .I3(\q[100]_i_26_n_0 ),
        .I4(SrcBE[3]),
        .I5(\q[100]_i_27_n_0 ),
        .O(\q[100]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[100]_i_21 
       (.I0(SrcAE[27]),
        .I1(SrcAE[11]),
        .I2(SrcBE[3]),
        .I3(SrcAE[3]),
        .I4(SrcBE[4]),
        .I5(SrcAE[19]),
        .O(\q[100]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8CCFFFFB800)) 
    \q[100]_i_22 
       (.I0(SrcAE[7]),
        .I1(SrcBE[4]),
        .I2(SrcAE[23]),
        .I3(SrcBE[3]),
        .I4(\q[100]_i_11_n_0 ),
        .I5(SrcAE[15]),
        .O(\q[100]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8CCFFFFB800)) 
    \q[100]_i_23 
       (.I0(SrcAE[6]),
        .I1(SrcBE[4]),
        .I2(SrcAE[22]),
        .I3(SrcBE[3]),
        .I4(\q[99]_i_12_n_0 ),
        .I5(SrcAE[14]),
        .O(\q[100]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[100]_i_24 
       (.I0(SrcAE[26]),
        .I1(SrcAE[10]),
        .I2(SrcBE[3]),
        .I3(SrcAE[2]),
        .I4(SrcBE[4]),
        .I5(SrcAE[18]),
        .O(\q[100]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBB8BBB8)) 
    \q[100]_i_25 
       (.I0(\q[98]_i_12_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[97]_i_10_n_0 ),
        .I3(\q[100]_i_28_n_0 ),
        .I4(SrcBE[3]),
        .I5(\q[100]_i_29_n_0 ),
        .O(\q[100]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[100]_i_26 
       (.I0(SrcBE[3]),
        .I1(SrcBE[4]),
        .I2(SrcAE[13]),
        .O(\q[100]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[100]_i_27 
       (.I0(SrcAE[5]),
        .I1(SrcBE[4]),
        .I2(SrcAE[21]),
        .O(\q[100]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[100]_i_28 
       (.I0(SrcBE[3]),
        .I1(SrcBE[4]),
        .I2(SrcAE[12]),
        .O(\q[100]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[100]_i_29 
       (.I0(SrcAE[4]),
        .I1(SrcBE[4]),
        .I2(SrcAE[20]),
        .O(\q[100]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \q[100]_i_4 
       (.I0(\q[100]_i_9_n_0 ),
        .I1(\q_reg[70]_1 ),
        .I2(\q[100]_i_11_n_0 ),
        .I3(\q[100]_i_12_n_0 ),
        .I4(\q[100]_i_13_n_0 ),
        .I5(\q[100]_i_14_n_0 ),
        .O(\q_reg[8]_7 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \q[100]_i_7 
       (.I0(ImmExtE),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q[100]_i_15_n_0 ),
        .I3(\q_reg[68]_1 [15]),
        .I4(\q[68]_i_4_n_0 ),
        .O(\q_reg[63]_3 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[100]_i_9 
       (.I0(\q[99]_i_8_n_0 ),
        .I1(\q[100]_i_20_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[100]_i_21_n_0 ),
        .I4(\q[100]_i_22_n_0 ),
        .I5(SrcBE[2]),
        .O(\q[100]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[111]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[0]),
        .O(p_0_in[111]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[112]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[1]),
        .O(p_0_in[112]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[113]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[2]),
        .O(p_0_in[113]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[114]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[3]),
        .O(p_0_in[114]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[115]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[4]),
        .O(p_0_in[115]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[116]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[5]),
        .O(p_0_in[116]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[117]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[6]),
        .O(p_0_in[117]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[118]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[7]),
        .O(p_0_in[118]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[119]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[8]),
        .O(p_0_in[119]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[120]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[9]),
        .O(p_0_in[120]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[121]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[10]),
        .O(p_0_in[121]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[122]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[11]),
        .O(p_0_in[122]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[123]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[12]),
        .O(p_0_in[123]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[124]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[13]),
        .O(p_0_in[124]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[125]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[14]),
        .O(p_0_in[125]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[126]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[15]),
        .O(p_0_in[126]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[127]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[16]),
        .O(p_0_in[127]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[128]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[17]),
        .O(p_0_in[128]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[129]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[18]),
        .O(p_0_in[129]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[130]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[19]),
        .O(p_0_in[130]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[131]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[20]),
        .O(p_0_in[131]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[132]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[21]),
        .O(p_0_in[132]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[133]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[22]),
        .O(p_0_in[133]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[134]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[23]),
        .O(p_0_in[134]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[135]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[24]),
        .O(p_0_in[135]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[136]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[25]),
        .O(p_0_in[136]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[137]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[26]),
        .O(p_0_in[137]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[138]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[27]),
        .O(p_0_in[138]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[139]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[28]),
        .O(p_0_in[139]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[140]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[29]),
        .O(p_0_in[140]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[141]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[30]),
        .O(p_0_in[141]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[142]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd21__3),
        .I3(rd20[31]),
        .O(p_0_in[142]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[143]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[0]),
        .O(p_0_in[143]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[144]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[1]),
        .O(p_0_in[144]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[145]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[2]),
        .O(p_0_in[145]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[146]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[3]),
        .O(p_0_in[146]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[147]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[4]),
        .O(p_0_in[147]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[148]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[5]),
        .O(p_0_in[148]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[149]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[6]),
        .O(p_0_in[149]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[150]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[7]),
        .O(p_0_in[150]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[151]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[8]),
        .O(p_0_in[151]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[152]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[9]),
        .O(p_0_in[152]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[153]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[10]),
        .O(p_0_in[153]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[154]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[11]),
        .O(p_0_in[154]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[155]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[12]),
        .O(p_0_in[155]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[156]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[13]),
        .O(p_0_in[156]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[157]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[14]),
        .O(p_0_in[157]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[158]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[15]),
        .O(p_0_in[158]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[159]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[16]),
        .O(p_0_in[159]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[160]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[17]),
        .O(p_0_in[160]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[161]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[18]),
        .O(p_0_in[161]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[162]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[19]),
        .O(p_0_in[162]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[163]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[20]),
        .O(p_0_in[163]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[164]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[21]),
        .O(p_0_in[164]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[165]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[22]),
        .O(p_0_in[165]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[166]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[23]),
        .O(p_0_in[166]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[167]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[24]),
        .O(p_0_in[167]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[168]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[25]),
        .O(p_0_in[168]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[169]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[26]),
        .O(p_0_in[169]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[170]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[27]),
        .O(p_0_in[170]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[171]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[28]),
        .O(p_0_in[171]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[172]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[29]),
        .O(p_0_in[172]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[173]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[30]),
        .O(p_0_in[173]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[174]_i_1 
       (.I0(\q[174]_i_2_n_0 ),
        .I1(PCSrcE),
        .I2(rd11__3),
        .I3(rd10[31]),
        .O(p_0_in[174]));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \q[174]_i_2 
       (.I0(\q_reg[142]_0 [8]),
        .I1(\q[31]_i_5_n_0 ),
        .I2(\q_reg[95]_0 ),
        .I3(\q[31]_i_7_n_0 ),
        .I4(\q_reg[95]_1 ),
        .O(\q[174]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \q[30]_i_1__0 
       (.I0(O),
        .I1(PCTargetEmux),
        .I2(\q_reg[9]_0 [35]),
        .I3(\q_reg[142]_0 [0]),
        .I4(PCSrcE),
        .O(\q_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \q[31]_i_1__0 
       (.I0(PCready),
        .I1(StallD),
        .O(\FSM_sequential_state_reg[0] ));
  LUT5 #(
    .INIT(32'h96999666)) 
    \q[31]_i_24 
       (.I0(\q_reg[110]_0 ),
        .I1(\q_reg[142]_0 [4]),
        .I2(ImmExtE),
        .I3(\q_reg[142]_0 [1]),
        .I4(\q_reg[9]_0 [31]),
        .O(v2));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_25 
       (.I0(SrcAE[30]),
        .I1(SrcBE[30]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_26 
       (.I0(SrcAE[29]),
        .I1(SrcBE[29]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_27 
       (.I0(SrcAE[28]),
        .I1(SrcBE[28]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_29 
       (.I0(SrcAE[27]),
        .I1(SrcBE[27]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \q[31]_i_3 
       (.I0(\q_reg[142]_0 [8]),
        .I1(\q[31]_i_5_n_0 ),
        .I2(\q_reg[95]_0 ),
        .I3(\q[31]_i_7_n_0 ),
        .I4(\q_reg[95]_1 ),
        .O(StallD));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_30 
       (.I0(SrcAE[26]),
        .I1(SrcBE[26]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_31 
       (.I0(SrcAE[25]),
        .I1(SrcBE[25]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_32 
       (.I0(SrcAE[24]),
        .I1(SrcBE[24]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_34 
       (.I0(SrcAE[23]),
        .I1(SrcBE[23]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_35 
       (.I0(SrcAE[22]),
        .I1(SrcBE[22]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_36 
       (.I0(SrcAE[21]),
        .I1(SrcBE[21]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_37 
       (.I0(SrcAE[20]),
        .I1(SrcBE[20]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_39 
       (.I0(SrcAE[19]),
        .I1(SrcBE[19]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_40 
       (.I0(SrcAE[18]),
        .I1(SrcBE[18]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_41 
       (.I0(SrcAE[17]),
        .I1(SrcBE[17]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_42 
       (.I0(SrcAE[16]),
        .I1(SrcBE[16]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_44 
       (.I0(SrcAE[15]),
        .I1(SrcBE[15]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_45 
       (.I0(SrcAE[14]),
        .I1(SrcBE[14]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_46 
       (.I0(SrcAE[13]),
        .I1(SrcBE[13]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_47 
       (.I0(SrcAE[12]),
        .I1(SrcBE[12]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_49 
       (.I0(SrcAE[11]),
        .I1(SrcBE[11]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_5 
       (.I0(Q[65]),
        .I1(\q[31]_i_3_0 [2]),
        .I2(Q[64]),
        .I3(\q[31]_i_3_0 [1]),
        .I4(\q[31]_i_3_0 [0]),
        .I5(Q[63]),
        .O(\q[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_50 
       (.I0(SrcAE[10]),
        .I1(SrcBE[10]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_51 
       (.I0(SrcAE[9]),
        .I1(SrcBE[9]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_52 
       (.I0(SrcAE[8]),
        .I1(SrcBE[8]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_54 
       (.I0(SrcAE[7]),
        .I1(SrcBE[7]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_55 
       (.I0(SrcAE[6]),
        .I1(SrcBE[6]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_56 
       (.I0(SrcAE[5]),
        .I1(SrcBE[5]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_56_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_57 
       (.I0(SrcAE[4]),
        .I1(SrcBE[4]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_57_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_58 
       (.I0(SrcAE[3]),
        .I1(SrcBE[3]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_59 
       (.I0(SrcAE[2]),
        .I1(SrcBE[2]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_59_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[31]_i_60 
       (.I0(SrcAE[1]),
        .I1(SrcBE[1]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[31]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[31]_i_61 
       (.I0(SrcAE[0]),
        .I1(\q_reg[142]_0 [4]),
        .O(\q[31]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_7 
       (.I0(Q[65]),
        .I1(\q[31]_i_3_0 [5]),
        .I2(Q[64]),
        .I3(\q[31]_i_3_0 [4]),
        .I4(Q[63]),
        .I5(\q[31]_i_3_0 [3]),
        .O(\q[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[37]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[0]),
        .I2(\q_reg[68]_0 [5]),
        .I3(ForwardBE),
        .I4(ResultW[0]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[38]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[1]),
        .I2(\q_reg[68]_0 [6]),
        .I3(ForwardBE),
        .I4(ResultW[1]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[39]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[2]),
        .I2(\q_reg[68]_0 [7]),
        .I3(ForwardBE),
        .I4(ResultW[2]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[40]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[3]),
        .I2(\q_reg[68]_0 [8]),
        .I3(ForwardBE),
        .I4(ResultW[3]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[41]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[4]),
        .I2(\q_reg[68]_0 [9]),
        .I3(ForwardBE),
        .I4(ResultW[4]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[42]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[5]),
        .I2(\q_reg[68]_0 [10]),
        .I3(ForwardBE),
        .I4(ResultW[5]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[43]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[6]),
        .I2(\q_reg[68]_0 [11]),
        .I3(ForwardBE),
        .I4(ResultW[6]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[44]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[7]),
        .I2(\q_reg[68]_0 [12]),
        .I3(ForwardBE),
        .I4(ResultW[7]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[45]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[8]),
        .I2(\q_reg[68]_0 [13]),
        .I3(ForwardBE),
        .I4(ResultW[8]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[46]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[9]),
        .I2(\q_reg[68]_0 [14]),
        .I3(ForwardBE),
        .I4(ResultW[9]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[47]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[10]),
        .I2(\q_reg[68]_0 [15]),
        .I3(ForwardBE),
        .I4(ResultW[10]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[48]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[11]),
        .I2(\q_reg[68]_0 [16]),
        .I3(ForwardBE),
        .I4(ResultW[11]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[49]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[12]),
        .I2(\q_reg[68]_0 [17]),
        .I3(ForwardBE),
        .I4(ResultW[12]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[50]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[13]),
        .I2(\q_reg[68]_0 [18]),
        .I3(ForwardBE),
        .I4(ResultW[13]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[51]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[14]),
        .I2(\q_reg[68]_0 [19]),
        .I3(ForwardBE),
        .I4(ResultW[14]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[52]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[15]),
        .I2(\q_reg[68]_0 [20]),
        .I3(ForwardBE),
        .I4(ResultW[15]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[53]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[16]),
        .I2(\q_reg[68]_0 [21]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [0]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[54]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[17]),
        .I2(\q_reg[68]_0 [22]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [1]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[55]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[18]),
        .I2(\q_reg[68]_0 [23]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [2]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[56]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[19]),
        .I2(\q_reg[68]_0 [24]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [3]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[57]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[20]),
        .I2(\q_reg[68]_0 [25]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [4]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[58]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[21]),
        .I2(\q_reg[68]_0 [26]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [5]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[59]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[22]),
        .I2(\q_reg[68]_0 [27]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [6]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[60]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[23]),
        .I2(\q_reg[68]_0 [28]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [7]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[61]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[24]),
        .I2(\q_reg[68]_0 [29]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [8]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[62]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[25]),
        .I2(\q_reg[68]_0 [30]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [9]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[63]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[26]),
        .I2(\q_reg[68]_0 [31]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [10]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[64]_i_1__0 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[27]),
        .I2(\q_reg[68]_0 [32]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [11]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[65]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[28]),
        .I2(\q_reg[68]_0 [33]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [12]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[66]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[29]),
        .I2(\q_reg[68]_0 [34]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [13]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[67]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[30]),
        .I2(\q_reg[68]_0 [35]),
        .I3(ForwardBE),
        .I4(\q_reg[68]_1 [14]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [30]));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[68]_i_10 
       (.I0(Rs2E[4]),
        .I1(result2_carry_i_40_0[4]),
        .I2(Rs2E[0]),
        .I3(result2_carry_i_40_0[0]),
        .O(\q[68]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[68]_i_1__1 
       (.I0(\q[68]_i_2_n_0 ),
        .I1(RD2E[31]),
        .I2(ForwardBE),
        .I3(\q_reg[68]_0 [36]),
        .I4(\q_reg[68]_1 [15]),
        .I5(\q[68]_i_4_n_0 ),
        .O(\q_reg[9]_0 [31]));
  LUT6 #(
    .INIT(64'h14555555FFFFFFFF)) 
    \q[68]_i_2 
       (.I0(\hu/ForwardBE10_out ),
        .I1(Rs2E[1]),
        .I2(result2_carry_i_40_0[1]),
        .I3(\q_reg[57]_0 ),
        .I4(\q[68]_i_6_n_0 ),
        .I5(\q[68]_i_7_n_0 ),
        .O(\q[68]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \q[68]_i_3 
       (.I0(Q[67]),
        .I1(Q[66]),
        .I2(Rs2E[1]),
        .I3(Rs2E[0]),
        .I4(Rs2E[4]),
        .I5(\hu/ForwardBE10_out ),
        .O(ForwardBE));
  LUT6 #(
    .INIT(64'h0000900000000000)) 
    \q[68]_i_4 
       (.I0(Rs2E[1]),
        .I1(result2_carry_i_40_0[1]),
        .I2(\q_reg[57]_0 ),
        .I3(\q[68]_i_6_n_0 ),
        .I4(\hu/ForwardBE10_out ),
        .I5(\q[68]_i_7_n_0 ),
        .O(\q[68]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000080)) 
    \q[68]_i_5 
       (.I0(\q[68]_i_8_n_0 ),
        .I1(\q[100]_i_15_0 ),
        .I2(\q[100]_i_15_1 ),
        .I3(\q_reg[68]_0 [1]),
        .I4(Rs2E[1]),
        .O(\hu/ForwardBE10_out ));
  LUT5 #(
    .INIT(32'h90090000)) 
    \q[68]_i_6 
       (.I0(result2_carry_i_40_0[3]),
        .I1(Q[67]),
        .I2(Q[66]),
        .I3(result2_carry_i_40_0[2]),
        .I4(\q[68]_i_10_n_0 ),
        .O(\q[68]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[68]_i_7 
       (.I0(Rs2E[4]),
        .I1(Rs2E[0]),
        .I2(Rs2E[1]),
        .I3(Q[66]),
        .I4(Q[67]),
        .O(\q[68]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[68]_i_8 
       (.I0(Rs2E[4]),
        .I1(\q_reg[68]_0 [4]),
        .I2(Rs2E[0]),
        .I3(\q_reg[68]_0 [0]),
        .O(\q[68]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    \q[69]_i_10 
       (.I0(\q[75]_i_11_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[78]_i_10_n_0 ),
        .I3(\q[69]_i_17_n_0 ),
        .I4(SrcBE[3]),
        .I5(\q[69]_i_18_n_0 ),
        .O(\q[69]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0CCCCFF00AAAA)) 
    \q[69]_i_11 
       (.I0(SrcAE[0]),
        .I1(SrcAE[8]),
        .I2(SrcAE[24]),
        .I3(SrcAE[16]),
        .I4(SrcBE[4]),
        .I5(SrcBE[3]),
        .O(\q[69]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \q[69]_i_12 
       (.I0(SrcBE[2]),
        .I1(SrcBE[1]),
        .I2(SrcAE[0]),
        .I3(SrcBE[3]),
        .I4(SrcBE[4]),
        .O(\q[69]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q[69]_i_13 
       (.I0(SrcAE[0]),
        .I1(\q_reg[32]_0 ),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[69]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \q[69]_i_14 
       (.I0(\q_reg[110]_0 ),
        .I1(\q_reg[142]_0 [4]),
        .I2(\q_reg[63]_3 ),
        .I3(\q_reg[109]_0 ),
        .I4(\q_reg[142]_0 [5]),
        .O(\q[69]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'hCC008C00)) 
    \q[69]_i_15 
       (.I0(\q_reg[110]_0 ),
        .I1(\q_reg[142]_0 [4]),
        .I2(\q_reg[63]_3 ),
        .I3(\q_reg[109]_0 ),
        .I4(\q_reg[142]_0 [5]),
        .O(\q[69]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[69]_i_16 
       (.I0(SrcAE[24]),
        .I1(SrcBE[4]),
        .I2(SrcAE[8]),
        .O(\q[69]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[69]_i_17 
       (.I0(SrcAE[26]),
        .I1(SrcBE[4]),
        .I2(SrcAE[10]),
        .O(\q[69]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[69]_i_18 
       (.I0(SrcBE[3]),
        .I1(SrcBE[4]),
        .I2(SrcAE[18]),
        .O(\q[69]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFEE00EEF0EEF0EE)) 
    \q[69]_i_1__1 
       (.I0(\q[69]_i_2_n_0 ),
        .I1(\q[69]_i_3_n_0 ),
        .I2(\alu/data7 ),
        .I3(\q_reg[142]_0 [7]),
        .I4(CO),
        .I5(\q_reg[142]_0 [4]),
        .O(\q_reg[9]_0 [32]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800080)) 
    \q[69]_i_2 
       (.I0(\q_reg[142]_0 [6]),
        .I1(\q_reg[69]_0 ),
        .I2(\q[69]_i_6_n_0 ),
        .I3(\q_reg[32]_0 ),
        .I4(\q[70]_i_4_n_0 ),
        .I5(\q[69]_i_7_n_0 ),
        .O(\q[69]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3232320232020202)) 
    \q[69]_i_3 
       (.I0(\alu/sum [0]),
        .I1(\q_reg[142]_0 [6]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[32]_0 ),
        .I4(SrcAE[0]),
        .I5(\q_reg[142]_0 [4]),
        .O(\q[69]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBB8BBB8)) 
    \q[69]_i_4 
       (.I0(\q[70]_i_4_n_0 ),
        .I1(\q_reg[32]_0 ),
        .I2(\q[69]_i_8_n_0 ),
        .I3(\q[69]_i_9_n_0 ),
        .I4(SrcBE[1]),
        .I5(\q[69]_i_10_n_0 ),
        .O(\alu/data7 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[69]_i_6 
       (.I0(\q[69]_i_11_n_0 ),
        .I1(\q[73]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[75]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[71]_i_12_n_0 ),
        .O(\q[69]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F8F8F8F80)) 
    \q[69]_i_7 
       (.I0(\q[69]_i_12_n_0 ),
        .I1(\q[99]_i_8_n_0 ),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q[69]_i_13_n_0 ),
        .I4(\q[69]_i_14_n_0 ),
        .I5(\q[69]_i_15_n_0 ),
        .O(\q[69]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0E0C02000)) 
    \q[69]_i_8 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(\q[100]_i_12_n_0 ),
        .I3(SrcAE[16]),
        .I4(\q[69]_i_16_n_0 ),
        .I5(\q[76]_i_10_n_0 ),
        .O(\q[69]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[69]_i_9 
       (.I0(SrcBE[1]),
        .I1(SrcBE[2]),
        .I2(\q[73]_i_10_n_0 ),
        .O(\q[69]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0CCCCFF00AAAA)) 
    \q[70]_i_10 
       (.I0(SrcAE[3]),
        .I1(SrcAE[11]),
        .I2(SrcAE[27]),
        .I3(SrcAE[19]),
        .I4(SrcBE[4]),
        .I5(SrcBE[3]),
        .O(\q[70]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA8A8A8)) 
    \q[70]_i_1__1 
       (.I0(\q_reg[71]_0 ),
        .I1(\q[70]_i_2_n_0 ),
        .I2(\q[70]_i_3_n_0 ),
        .I3(\q_reg[70]_0 ),
        .I4(\q[70]_i_4_n_0 ),
        .I5(\q[70]_i_5_n_0 ),
        .O(\q_reg[9]_0 [33]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \q[70]_i_2 
       (.I0(\q_reg[71]_1 ),
        .I1(\q[70]_i_6_n_0 ),
        .I2(\q[71]_i_6_n_0 ),
        .I3(\q[70]_i_7_n_0 ),
        .I4(\q[70]_i_4_n_0 ),
        .I5(\q_reg[70]_1 ),
        .O(\q[70]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[70]_i_3 
       (.I0(SrcBE[1]),
        .I1(SrcAE[1]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [1]),
        .O(\q[70]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[70]_i_4 
       (.I0(\q[70]_i_8_n_0 ),
        .I1(\q[71]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[70]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[70]_i_10_n_0 ),
        .O(\q[70]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[70]_i_5 
       (.I0(\q[71]_i_11_n_0 ),
        .I1(\q_reg[71]_2 ),
        .I2(SrcBE[1]),
        .I3(SrcAE[1]),
        .I4(\q_reg[99]_0 ),
        .I5(\q_reg[99]_1 ),
        .O(\q[70]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \q[70]_i_6 
       (.I0(\q[76]_i_10_n_0 ),
        .I1(\q[100]_i_14_n_0 ),
        .I2(\q[100]_i_12_n_0 ),
        .I3(\q[77]_i_10_n_0 ),
        .I4(\q[99]_i_8_n_0 ),
        .O(\q[70]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[70]_i_7 
       (.I0(\q_reg[32]_0 ),
        .I1(\q_reg[142]_0 [4]),
        .O(\q[70]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0CCCCFF00AAAA)) 
    \q[70]_i_8 
       (.I0(SrcAE[1]),
        .I1(SrcAE[9]),
        .I2(SrcAE[25]),
        .I3(SrcAE[17]),
        .I4(SrcBE[4]),
        .I5(SrcBE[3]),
        .O(\q[70]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCFC0C0CFA0AFA0A)) 
    \q[70]_i_9 
       (.I0(SrcAE[7]),
        .I1(SrcAE[23]),
        .I2(SrcBE[3]),
        .I3(SrcAE[15]),
        .I4(\q_reg[110]_0 ),
        .I5(SrcBE[4]),
        .O(\q[70]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    \q[71]_i_10 
       (.I0(\q[70]_i_9_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[79]_i_10_n_0 ),
        .I3(\q[71]_i_13_n_0 ),
        .I4(SrcBE[3]),
        .I5(\q[71]_i_14_n_0 ),
        .O(\q[71]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[71]_i_11 
       (.I0(\q[77]_i_12_n_0 ),
        .I1(\q[73]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[75]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[71]_i_12_n_0 ),
        .O(\q[71]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0CCCCFF00AAAA)) 
    \q[71]_i_12 
       (.I0(SrcAE[2]),
        .I1(SrcAE[10]),
        .I2(SrcAE[26]),
        .I3(SrcAE[18]),
        .I4(SrcBE[4]),
        .I5(SrcBE[3]),
        .O(\q[71]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[71]_i_13 
       (.I0(SrcAE[27]),
        .I1(SrcBE[4]),
        .I2(SrcAE[11]),
        .O(\q[71]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[71]_i_14 
       (.I0(SrcBE[3]),
        .I1(SrcBE[4]),
        .I2(SrcAE[19]),
        .O(\q[71]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[71]_i_1__1 
       (.I0(\q_reg[71]_0 ),
        .I1(\q_reg[71]_1 ),
        .I2(\q[71]_i_2_n_0 ),
        .I3(\q[71]_i_3_n_0 ),
        .I4(\q[71]_i_4_n_0 ),
        .I5(\q[71]_i_5_n_0 ),
        .O(\q_reg[9]_0 [34]));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \q[71]_i_2 
       (.I0(\q[71]_i_6_n_0 ),
        .I1(\q[71]_i_7_n_0 ),
        .I2(\q[72]_i_7_n_0 ),
        .I3(\q[72]_i_6_n_0 ),
        .I4(\q_reg[32]_0 ),
        .I5(\q_reg[142]_0 [4]),
        .O(\q[71]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[71]_i_3 
       (.I0(SrcBE[2]),
        .I1(SrcAE[2]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [2]),
        .O(\q[71]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \q[71]_i_4 
       (.I0(\q[71]_i_8_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[71]_i_9_n_0 ),
        .I3(\q_reg[71]_2 ),
        .I4(\q[71]_i_10_n_0 ),
        .I5(SrcBE[1]),
        .O(\q[71]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[71]_i_5 
       (.I0(\q[71]_i_11_n_0 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcBE[2]),
        .I4(SrcAE[2]),
        .I5(\q_reg[99]_1 ),
        .O(\q[71]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[71]_i_6 
       (.I0(\q[77]_i_9_n_0 ),
        .I1(\q[73]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[75]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[71]_i_12_n_0 ),
        .O(\q[71]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[71]_i_7 
       (.I0(\q[100]_i_12_n_0 ),
        .I1(\q[77]_i_10_n_0 ),
        .O(\q[71]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[71]_i_8 
       (.I0(SrcAE[17]),
        .I1(\q_reg[110]_0 ),
        .I2(SrcBE[3]),
        .I3(SrcAE[25]),
        .I4(SrcBE[4]),
        .I5(SrcAE[9]),
        .O(\q[71]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0CCCCFF00AAAA)) 
    \q[71]_i_9 
       (.I0(SrcAE[5]),
        .I1(SrcAE[13]),
        .I2(SrcAE[29]),
        .I3(SrcAE[21]),
        .I4(SrcBE[4]),
        .I5(SrcBE[3]),
        .O(\q[71]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[72]_i_11 
       (.I0(SrcAE[3]),
        .I1(SrcBE[3]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[72]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[72]_i_12 
       (.I0(SrcAE[2]),
        .I1(SrcBE[2]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[72]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[72]_i_13 
       (.I0(SrcAE[1]),
        .I1(SrcBE[1]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[72]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[72]_i_14 
       (.I0(SrcAE[0]),
        .I1(\q_reg[142]_0 [4]),
        .O(\q[72]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \q[72]_i_2 
       (.I0(\q[72]_i_6_n_0 ),
        .I1(\q[73]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[73]_i_6_n_0 ),
        .I5(\q[72]_i_7_n_0 ),
        .O(\q_reg[8]_25 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[72]_i_3 
       (.I0(SrcBE[3]),
        .I1(SrcAE[3]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [3]),
        .O(\q_reg[9]_5 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[72]_i_5 
       (.I0(\q[72]_i_9_n_0 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcBE[3]),
        .I4(SrcAE[3]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_26 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[72]_i_6 
       (.I0(\q[78]_i_9_n_0 ),
        .I1(\q[71]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[70]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[70]_i_10_n_0 ),
        .O(\q[72]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[72]_i_7 
       (.I0(\q[76]_i_10_n_0 ),
        .I1(\q[78]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(SrcBE[2]),
        .O(\q[72]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[72]_i_9 
       (.I0(\q[71]_i_8_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[71]_i_9_n_0 ),
        .I3(SrcBE[1]),
        .I4(\q[71]_i_10_n_0 ),
        .O(\q[72]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0CCCCFF00AAAA)) 
    \q[73]_i_10 
       (.I0(SrcAE[4]),
        .I1(SrcAE[12]),
        .I2(SrcAE[28]),
        .I3(SrcAE[20]),
        .I4(SrcBE[4]),
        .I5(SrcBE[3]),
        .O(\q[73]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[73]_i_2 
       (.I0(\q[73]_i_6_n_0 ),
        .I1(\q[74]_i_6_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[74]_i_7_n_0 ),
        .I5(\q[73]_i_7_n_0 ),
        .O(\q_reg[8]_30 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[73]_i_3 
       (.I0(SrcBE[4]),
        .I1(SrcAE[4]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [4]),
        .O(\q_reg[9]_4 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[73]_i_5 
       (.I0(\q_reg[34]_2 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcBE[4]),
        .I4(SrcAE[4]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_32 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[73]_i_6 
       (.I0(\q[77]_i_10_n_0 ),
        .I1(\q[79]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(SrcBE[2]),
        .O(\q[73]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[73]_i_7 
       (.I0(\q[75]_i_10_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[73]_i_9_n_0 ),
        .O(\q[73]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[73]_i_8 
       (.I0(\q[77]_i_12_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[73]_i_10_n_0 ),
        .I3(\q[79]_i_12_n_0 ),
        .I4(\q[75]_i_11_n_0 ),
        .I5(SrcBE[1]),
        .O(\q_reg[34]_2 ));
  LUT6 #(
    .INIT(64'h7520FFFF75200000)) 
    \q[73]_i_9 
       (.I0(SrcBE[3]),
        .I1(SrcBE[4]),
        .I2(SrcAE[16]),
        .I3(\q[69]_i_16_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[73]_i_10_n_0 ),
        .O(\q[73]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7520FFFF75200000)) 
    \q[74]_i_10 
       (.I0(SrcBE[3]),
        .I1(SrcBE[4]),
        .I2(SrcAE[17]),
        .I3(\q[74]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[71]_i_9_n_0 ),
        .O(\q[74]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[74]_i_11 
       (.I0(SrcAE[25]),
        .I1(SrcBE[4]),
        .I2(SrcAE[9]),
        .O(\q[74]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \q[74]_i_2 
       (.I0(\q[74]_i_6_n_0 ),
        .I1(\q[75]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[75]_i_6_n_0 ),
        .I5(\q[74]_i_7_n_0 ),
        .O(\q_reg[8]_29 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[74]_i_3 
       (.I0(SrcAE[5]),
        .I1(SrcBE[5]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [5]),
        .O(\q_reg[9]_2 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[74]_i_5 
       (.I0(\q_reg[34]_0 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[5]),
        .I4(SrcBE[5]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_27 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[74]_i_6 
       (.I0(\q[74]_i_9_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[74]_i_10_n_0 ),
        .O(\q[74]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \q[74]_i_7 
       (.I0(\q[76]_i_10_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[76]_i_11_n_0 ),
        .I3(\q[78]_i_10_n_0 ),
        .I4(SrcBE[1]),
        .O(\q[74]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[74]_i_8 
       (.I0(\q[71]_i_8_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[71]_i_9_n_0 ),
        .I3(\q[80]_i_16_n_0 ),
        .I4(\q[70]_i_9_n_0 ),
        .I5(SrcBE[1]),
        .O(\q_reg[34]_0 ));
  LUT6 #(
    .INIT(64'h7520FFFF75200000)) 
    \q[74]_i_9 
       (.I0(SrcBE[3]),
        .I1(SrcBE[4]),
        .I2(SrcAE[19]),
        .I3(\q[71]_i_13_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[70]_i_9_n_0 ),
        .O(\q[74]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7520FFFF75200000)) 
    \q[75]_i_10 
       (.I0(SrcBE[3]),
        .I1(SrcBE[4]),
        .I2(SrcAE[18]),
        .I3(\q[69]_i_17_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[75]_i_11_n_0 ),
        .O(\q[75]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0CCCCFF00AAAA)) 
    \q[75]_i_11 
       (.I0(SrcAE[6]),
        .I1(SrcAE[14]),
        .I2(SrcAE[30]),
        .I3(SrcAE[22]),
        .I4(SrcBE[4]),
        .I5(SrcBE[3]),
        .O(\q[75]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[75]_i_12 
       (.I0(SrcAE[28]),
        .I1(SrcBE[4]),
        .I2(SrcAE[12]),
        .O(\q[75]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[75]_i_2 
       (.I0(\q[75]_i_6_n_0 ),
        .I1(\q[76]_i_6_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[76]_i_7_n_0 ),
        .I5(\q[75]_i_7_n_0 ),
        .O(\q_reg[8]_28 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[75]_i_3 
       (.I0(SrcAE[6]),
        .I1(SrcBE[6]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [6]),
        .O(\q_reg[9]_3 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[75]_i_5 
       (.I0(\q_reg[34]_1 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[6]),
        .I4(SrcBE[6]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_31 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \q[75]_i_6 
       (.I0(\q[77]_i_10_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[77]_i_11_n_0 ),
        .I3(\q[79]_i_10_n_0 ),
        .I4(SrcBE[1]),
        .O(\q[75]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[75]_i_7 
       (.I0(\q[75]_i_9_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[75]_i_10_n_0 ),
        .O(\q[75]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[75]_i_8 
       (.I0(\q[81]_i_11_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[77]_i_12_n_0 ),
        .I3(\q[79]_i_12_n_0 ),
        .I4(\q[75]_i_11_n_0 ),
        .I5(SrcBE[1]),
        .O(\q_reg[34]_1 ));
  LUT6 #(
    .INIT(64'h7520FFFF75200000)) 
    \q[75]_i_9 
       (.I0(SrcBE[3]),
        .I1(SrcBE[4]),
        .I2(SrcAE[20]),
        .I3(\q[75]_i_12_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[77]_i_9_n_0 ),
        .O(\q[75]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[76]_i_10 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[0]),
        .O(\q[76]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[76]_i_11 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[4]),
        .O(\q[76]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[76]_i_12 
       (.I0(SrcAE[7]),
        .I1(SrcBE[7]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[76]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[76]_i_13 
       (.I0(SrcAE[6]),
        .I1(SrcBE[6]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[76]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[76]_i_14 
       (.I0(SrcAE[5]),
        .I1(SrcBE[5]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[76]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[76]_i_15 
       (.I0(SrcAE[4]),
        .I1(SrcBE[4]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[76]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \q[76]_i_2 
       (.I0(\q[76]_i_6_n_0 ),
        .I1(\q[77]_i_6_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[77]_i_7_n_0 ),
        .I5(\q[76]_i_7_n_0 ),
        .O(\q_reg[8]_24 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[76]_i_3 
       (.I0(SrcAE[7]),
        .I1(SrcBE[7]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [7]),
        .O(\q_reg[9]_1 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[76]_i_5 
       (.I0(\q_reg[33]_1 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[7]),
        .I4(SrcBE[7]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[76]_i_6 
       (.I0(\q[82]_i_9_n_0 ),
        .I1(\q[78]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[80]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[70]_i_9_n_0 ),
        .O(\q[76]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[76]_i_7 
       (.I0(\q[76]_i_10_n_0 ),
        .I1(\q[76]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[78]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[78]_i_11_n_0 ),
        .O(\q[76]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[76]_i_9 
       (.I0(\q[82]_i_11_n_0 ),
        .I1(\q[71]_i_8_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[80]_i_16_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[70]_i_9_n_0 ),
        .O(\q_reg[33]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[77]_i_10 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[1]),
        .O(\q[77]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[77]_i_11 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[5]),
        .O(\q[77]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[77]_i_12 
       (.I0(SrcAE[16]),
        .I1(\q_reg[110]_0 ),
        .I2(SrcBE[3]),
        .I3(SrcAE[24]),
        .I4(SrcBE[4]),
        .I5(SrcAE[8]),
        .O(\q[77]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \q[77]_i_2 
       (.I0(\q[77]_i_6_n_0 ),
        .I1(\q[77]_i_7_n_0 ),
        .I2(\q[78]_i_7_n_0 ),
        .I3(\q[78]_i_6_n_0 ),
        .I4(\q_reg[32]_0 ),
        .I5(\q_reg[142]_0 [4]),
        .O(\q_reg[8]_23 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[77]_i_3 
       (.I0(SrcAE[8]),
        .I1(SrcBE[8]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [8]),
        .O(\q_reg[9]_11 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[77]_i_5 
       (.I0(\q_reg[33]_6 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[8]),
        .I4(SrcBE[8]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_37 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[77]_i_6 
       (.I0(\q[83]_i_9_n_0 ),
        .I1(\q[79]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[81]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[77]_i_9_n_0 ),
        .O(\q[77]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[77]_i_7 
       (.I0(\q[77]_i_10_n_0 ),
        .I1(\q[77]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[79]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[79]_i_11_n_0 ),
        .O(\q[77]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[77]_i_8 
       (.I0(\q[83]_i_11_n_0 ),
        .I1(\q[79]_i_12_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[81]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[77]_i_12_n_0 ),
        .O(\q_reg[33]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[77]_i_9 
       (.I0(SrcAE[16]),
        .I1(SrcBE[3]),
        .I2(SrcAE[24]),
        .I3(SrcBE[4]),
        .I4(SrcAE[8]),
        .O(\q[77]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[78]_i_10 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[2]),
        .O(\q[78]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[78]_i_11 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[6]),
        .O(\q[78]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \q[78]_i_2 
       (.I0(\q[78]_i_6_n_0 ),
        .I1(\q[79]_i_6_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[79]_i_7_n_0 ),
        .I5(\q[78]_i_7_n_0 ),
        .O(\q_reg[8]_21 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[78]_i_3 
       (.I0(SrcAE[9]),
        .I1(SrcBE[9]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [9]),
        .O(\q_reg[9]_6 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[78]_i_5 
       (.I0(\q_reg[33]_3 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[9]),
        .I4(SrcBE[9]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_34 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[78]_i_6 
       (.I0(\q[84]_i_10_n_0 ),
        .I1(\q[80]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[82]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[78]_i_9_n_0 ),
        .O(\q[78]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[78]_i_7 
       (.I0(\q[78]_i_10_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[78]_i_11_n_0 ),
        .I3(SrcBE[1]),
        .I4(\q[80]_i_11_n_0 ),
        .O(\q[78]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[78]_i_8 
       (.I0(\q[84]_i_16_n_0 ),
        .I1(\q[80]_i_16_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[82]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[71]_i_8_n_0 ),
        .O(\q_reg[33]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[78]_i_9 
       (.I0(SrcAE[17]),
        .I1(SrcBE[3]),
        .I2(SrcAE[25]),
        .I3(SrcBE[4]),
        .I4(SrcAE[9]),
        .O(\q[78]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[79]_i_10 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[3]),
        .O(\q[79]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[79]_i_11 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[7]),
        .O(\q[79]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[79]_i_12 
       (.I0(SrcAE[18]),
        .I1(\q_reg[110]_0 ),
        .I2(SrcBE[3]),
        .I3(SrcAE[26]),
        .I4(SrcBE[4]),
        .I5(SrcAE[10]),
        .O(\q[79]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \q[79]_i_2 
       (.I0(\q[79]_i_6_n_0 ),
        .I1(\q[79]_i_7_n_0 ),
        .I2(\q[80]_i_7_n_0 ),
        .I3(\q[80]_i_6_n_0 ),
        .I4(\q_reg[32]_0 ),
        .I5(\q_reg[142]_0 [4]),
        .O(\q_reg[8]_22 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[79]_i_3 
       (.I0(SrcAE[10]),
        .I1(SrcBE[10]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [10]),
        .O(\q_reg[9]_9 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[79]_i_5 
       (.I0(\q_reg[33]_8 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[10]),
        .I4(SrcBE[10]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_39 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[79]_i_6 
       (.I0(\q[85]_i_11_n_0 ),
        .I1(\q[81]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[83]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[79]_i_9_n_0 ),
        .O(\q[79]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[79]_i_7 
       (.I0(\q[79]_i_10_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[79]_i_11_n_0 ),
        .I3(SrcBE[1]),
        .I4(\q[81]_i_10_n_0 ),
        .O(\q[79]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[79]_i_8 
       (.I0(\q[85]_i_12_n_0 ),
        .I1(\q[81]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[83]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[79]_i_12_n_0 ),
        .O(\q_reg[33]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[79]_i_9 
       (.I0(SrcAE[18]),
        .I1(SrcBE[3]),
        .I2(SrcAE[26]),
        .I3(SrcBE[4]),
        .I4(SrcAE[10]),
        .O(\q[79]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[80]_i_10 
       (.I0(SrcAE[19]),
        .I1(SrcBE[3]),
        .I2(SrcAE[27]),
        .I3(SrcBE[4]),
        .I4(SrcAE[11]),
        .O(\q[80]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[80]_i_11 
       (.I0(SrcAE[4]),
        .I1(SrcBE[2]),
        .I2(SrcAE[0]),
        .I3(SrcAE[8]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[80]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[80]_i_12 
       (.I0(SrcAE[11]),
        .I1(SrcBE[11]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[80]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[80]_i_13 
       (.I0(SrcAE[10]),
        .I1(SrcBE[10]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[80]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[80]_i_14 
       (.I0(SrcAE[9]),
        .I1(SrcBE[9]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[80]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[80]_i_15 
       (.I0(SrcAE[8]),
        .I1(SrcBE[8]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[80]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[80]_i_16 
       (.I0(SrcAE[19]),
        .I1(\q_reg[110]_0 ),
        .I2(SrcBE[3]),
        .I3(SrcAE[27]),
        .I4(SrcBE[4]),
        .I5(SrcAE[11]),
        .O(\q[80]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \q[80]_i_2 
       (.I0(\q[80]_i_6_n_0 ),
        .I1(\q[81]_i_6_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[81]_i_7_n_0 ),
        .I5(\q[80]_i_7_n_0 ),
        .O(\q_reg[8]_17 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[80]_i_3 
       (.I0(SrcAE[11]),
        .I1(SrcBE[11]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [11]),
        .O(\q_reg[9]_7 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[80]_i_5 
       (.I0(\q_reg[33]_2 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[11]),
        .I4(SrcBE[11]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_33 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[80]_i_6 
       (.I0(\q[86]_i_11_n_0 ),
        .I1(\q[82]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[84]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[80]_i_10_n_0 ),
        .O(\q[80]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[80]_i_7 
       (.I0(\q[80]_i_11_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[82]_i_10_n_0 ),
        .O(\q[80]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[80]_i_9 
       (.I0(\q[86]_i_12_n_0 ),
        .I1(\q[82]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[84]_i_16_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[80]_i_16_n_0 ),
        .O(\q_reg[33]_2 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[81]_i_10 
       (.I0(SrcAE[5]),
        .I1(SrcBE[2]),
        .I2(SrcAE[1]),
        .I3(SrcAE[9]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[81]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[81]_i_11 
       (.I0(SrcAE[20]),
        .I1(\q_reg[110]_0 ),
        .I2(SrcBE[3]),
        .I3(SrcAE[28]),
        .I4(SrcBE[4]),
        .I5(SrcAE[12]),
        .O(\q[81]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \q[81]_i_2 
       (.I0(\q[81]_i_6_n_0 ),
        .I1(\q[81]_i_7_n_0 ),
        .I2(\q[82]_i_7_n_0 ),
        .I3(\q[82]_i_6_n_0 ),
        .I4(\q_reg[32]_0 ),
        .I5(\q_reg[142]_0 [4]),
        .O(\q_reg[8]_18 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[81]_i_3 
       (.I0(SrcAE[12]),
        .I1(SrcBE[12]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [12]),
        .O(\q_reg[9]_12 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[81]_i_5 
       (.I0(\q_reg[33]_7 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[12]),
        .I4(SrcBE[12]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_38 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[81]_i_6 
       (.I0(\q[87]_i_11_n_0 ),
        .I1(\q[83]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[85]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[81]_i_9_n_0 ),
        .O(\q[81]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[81]_i_7 
       (.I0(\q[81]_i_10_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[83]_i_10_n_0 ),
        .O(\q[81]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[81]_i_8 
       (.I0(\q[87]_i_12_n_0 ),
        .I1(\q[83]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[85]_i_12_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[81]_i_11_n_0 ),
        .O(\q_reg[33]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[81]_i_9 
       (.I0(SrcAE[20]),
        .I1(SrcBE[3]),
        .I2(SrcAE[28]),
        .I3(SrcBE[4]),
        .I4(SrcAE[12]),
        .O(\q[81]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[82]_i_10 
       (.I0(SrcAE[6]),
        .I1(SrcBE[2]),
        .I2(SrcAE[2]),
        .I3(SrcAE[10]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[82]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[82]_i_11 
       (.I0(SrcAE[21]),
        .I1(\q_reg[110]_0 ),
        .I2(SrcBE[3]),
        .I3(SrcAE[29]),
        .I4(SrcBE[4]),
        .I5(SrcAE[13]),
        .O(\q[82]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \q[82]_i_2 
       (.I0(\q[82]_i_6_n_0 ),
        .I1(\q[83]_i_6_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[83]_i_7_n_0 ),
        .I5(\q[82]_i_7_n_0 ),
        .O(\q_reg[8]_19 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[82]_i_3 
       (.I0(SrcAE[13]),
        .I1(SrcBE[13]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [13]),
        .O(\q_reg[9]_8 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[82]_i_5 
       (.I0(\q_reg[33]_4 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[13]),
        .I4(SrcBE[13]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_35 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[82]_i_6 
       (.I0(\q[88]_i_12_n_0 ),
        .I1(\q[84]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[86]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[82]_i_9_n_0 ),
        .O(\q[82]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[82]_i_7 
       (.I0(\q[82]_i_10_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[84]_i_11_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[88]_i_10_n_0 ),
        .O(\q[82]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[82]_i_8 
       (.I0(\q[88]_i_18_n_0 ),
        .I1(\q[84]_i_16_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[86]_i_12_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[82]_i_11_n_0 ),
        .O(\q_reg[33]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[82]_i_9 
       (.I0(SrcAE[21]),
        .I1(SrcBE[3]),
        .I2(SrcAE[29]),
        .I3(SrcBE[4]),
        .I4(SrcAE[13]),
        .O(\q[82]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[83]_i_10 
       (.I0(SrcAE[7]),
        .I1(SrcBE[2]),
        .I2(SrcAE[3]),
        .I3(SrcAE[11]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[83]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[83]_i_11 
       (.I0(SrcAE[22]),
        .I1(\q_reg[110]_0 ),
        .I2(SrcBE[3]),
        .I3(SrcAE[30]),
        .I4(SrcBE[4]),
        .I5(SrcAE[14]),
        .O(\q[83]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \q[83]_i_2 
       (.I0(\q[83]_i_6_n_0 ),
        .I1(\q[83]_i_7_n_0 ),
        .I2(\q[84]_i_7_n_0 ),
        .I3(\q[84]_i_6_n_0 ),
        .I4(\q_reg[32]_0 ),
        .I5(\q_reg[142]_0 [4]),
        .O(\q_reg[8]_20 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[83]_i_3 
       (.I0(SrcAE[14]),
        .I1(SrcBE[14]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [14]),
        .O(\q_reg[9]_10 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[83]_i_5 
       (.I0(\q_reg[33]_9 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[14]),
        .I4(SrcBE[14]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_40 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[83]_i_6 
       (.I0(\q[85]_i_10_n_0 ),
        .I1(\q[85]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[87]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[83]_i_9_n_0 ),
        .O(\q[83]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[83]_i_7 
       (.I0(\q[83]_i_10_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[85]_i_9_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[89]_i_9_n_0 ),
        .O(\q[83]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[83]_i_8 
       (.I0(\q[89]_i_12_n_0 ),
        .I1(\q[85]_i_12_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[87]_i_12_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[83]_i_11_n_0 ),
        .O(\q_reg[33]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[83]_i_9 
       (.I0(SrcAE[22]),
        .I1(SrcBE[3]),
        .I2(SrcAE[30]),
        .I3(SrcBE[4]),
        .I4(SrcAE[14]),
        .O(\q[83]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \q[84]_i_10 
       (.I0(SrcAE[23]),
        .I1(SrcBE[3]),
        .I2(SrcAE[15]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[4]),
        .O(\q[84]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[84]_i_11 
       (.I0(SrcAE[0]),
        .I1(SrcAE[8]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[84]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[84]_i_12 
       (.I0(SrcAE[15]),
        .I1(SrcBE[15]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[84]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[84]_i_13 
       (.I0(SrcAE[14]),
        .I1(SrcBE[14]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[84]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[84]_i_14 
       (.I0(SrcAE[13]),
        .I1(SrcBE[13]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[84]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[84]_i_15 
       (.I0(SrcAE[12]),
        .I1(SrcBE[12]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[84]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[84]_i_16 
       (.I0(SrcAE[23]),
        .I1(SrcBE[3]),
        .I2(SrcAE[15]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[4]),
        .O(\q[84]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \q[84]_i_2 
       (.I0(\q[84]_i_6_n_0 ),
        .I1(\q[85]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[85]_i_6_n_0 ),
        .I5(\q[84]_i_7_n_0 ),
        .O(\q_reg[8]_13 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[84]_i_3 
       (.I0(SrcAE[15]),
        .I1(SrcBE[15]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [15]),
        .O(\q_reg[9]_13 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[84]_i_5 
       (.I0(\q_reg[33]_5 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[15]),
        .I4(SrcBE[15]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_36 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[84]_i_6 
       (.I0(\q[86]_i_10_n_0 ),
        .I1(\q[86]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[88]_i_12_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[84]_i_10_n_0 ),
        .O(\q[84]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[84]_i_7 
       (.I0(\q[84]_i_11_n_0 ),
        .I1(\q[88]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[86]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[90]_i_9_n_0 ),
        .O(\q[84]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[84]_i_9 
       (.I0(\q[90]_i_12_n_0 ),
        .I1(\q[86]_i_12_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[88]_i_18_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[84]_i_16_n_0 ),
        .O(\q_reg[33]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[85]_i_10 
       (.I0(SrcAE[28]),
        .I1(SrcAE[20]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[85]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[85]_i_11 
       (.I0(SrcAE[24]),
        .I1(SrcAE[16]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[85]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[85]_i_12 
       (.I0(SrcAE[24]),
        .I1(SrcBE[3]),
        .I2(SrcAE[16]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[4]),
        .O(\q[85]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[85]_i_2 
       (.I0(\q[85]_i_6_n_0 ),
        .I1(\q[86]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[86]_i_6_n_0 ),
        .I5(\q[85]_i_7_n_0 ),
        .O(\q_reg[8]_14 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[85]_i_3 
       (.I0(SrcAE[16]),
        .I1(SrcBE[16]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [16]),
        .O(\q_reg[9]_25 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[85]_i_5 
       (.I0(\q_reg[33]_16 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[16]),
        .I4(SrcBE[16]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_47 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[85]_i_6 
       (.I0(\q[85]_i_9_n_0 ),
        .I1(\q[89]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[87]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[91]_i_9_n_0 ),
        .O(\q[85]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[85]_i_7 
       (.I0(\q[87]_i_10_n_0 ),
        .I1(\q[87]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[85]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[85]_i_11_n_0 ),
        .O(\q[85]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[85]_i_8 
       (.I0(\q[91]_i_12_n_0 ),
        .I1(\q[87]_i_12_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[89]_i_12_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[85]_i_12_n_0 ),
        .O(\q_reg[33]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[85]_i_9 
       (.I0(SrcAE[1]),
        .I1(SrcAE[9]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[85]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[86]_i_10 
       (.I0(SrcAE[29]),
        .I1(SrcAE[21]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[86]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[86]_i_11 
       (.I0(SrcAE[25]),
        .I1(SrcAE[17]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[86]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[86]_i_12 
       (.I0(SrcAE[25]),
        .I1(SrcBE[3]),
        .I2(SrcAE[17]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[4]),
        .O(\q[86]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[86]_i_2 
       (.I0(\q[86]_i_6_n_0 ),
        .I1(\q[87]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[87]_i_6_n_0 ),
        .I5(\q[86]_i_7_n_0 ),
        .O(\q_reg[8]_16 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[86]_i_3 
       (.I0(SrcAE[17]),
        .I1(SrcBE[17]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [17]),
        .O(\q_reg[9]_18 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[86]_i_5 
       (.I0(\q_reg[33]_17 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[17]),
        .I4(SrcBE[17]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_48 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[86]_i_6 
       (.I0(\q[86]_i_9_n_0 ),
        .I1(\q[90]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[88]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[92]_i_10_n_0 ),
        .O(\q[86]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[86]_i_7 
       (.I0(\q[88]_i_11_n_0 ),
        .I1(\q[88]_i_12_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[86]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[86]_i_11_n_0 ),
        .O(\q[86]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[86]_i_8 
       (.I0(\q[88]_i_17_n_0 ),
        .I1(\q[88]_i_18_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[90]_i_12_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[86]_i_12_n_0 ),
        .O(\q_reg[33]_17 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[86]_i_9 
       (.I0(SrcAE[2]),
        .I1(SrcAE[10]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[86]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[87]_i_10 
       (.I0(SrcAE[30]),
        .I1(SrcAE[22]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[87]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[87]_i_11 
       (.I0(SrcAE[26]),
        .I1(SrcAE[18]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[87]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[87]_i_12 
       (.I0(SrcAE[26]),
        .I1(SrcBE[3]),
        .I2(SrcAE[18]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[4]),
        .O(\q[87]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[87]_i_2 
       (.I0(\q[87]_i_6_n_0 ),
        .I1(\q[88]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[88]_i_6_n_0 ),
        .I5(\q[87]_i_7_n_0 ),
        .O(\q_reg[8]_15 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[87]_i_3 
       (.I0(SrcAE[18]),
        .I1(SrcBE[18]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [18]),
        .O(\q_reg[9]_22 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[87]_i_5 
       (.I0(\q_reg[33]_14 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[18]),
        .I4(SrcBE[18]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_45 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[87]_i_6 
       (.I0(\q[87]_i_9_n_0 ),
        .I1(\q[91]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[89]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[93]_i_9_n_0 ),
        .O(\q[87]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[87]_i_7 
       (.I0(\q[89]_i_10_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[87]_i_10_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[87]_i_11_n_0 ),
        .O(\q[87]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[87]_i_8 
       (.I0(\q[89]_i_11_n_0 ),
        .I1(\q[89]_i_12_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[91]_i_12_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[87]_i_12_n_0 ),
        .O(\q_reg[33]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[87]_i_9 
       (.I0(SrcAE[3]),
        .I1(SrcAE[11]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[87]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[88]_i_10 
       (.I0(SrcAE[4]),
        .I1(SrcAE[12]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[88]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[88]_i_11 
       (.I0(\q_reg[110]_0 ),
        .I1(SrcAE[23]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[88]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[88]_i_12 
       (.I0(SrcAE[27]),
        .I1(SrcAE[19]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[88]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[88]_i_13 
       (.I0(SrcAE[19]),
        .I1(SrcBE[19]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[88]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[88]_i_14 
       (.I0(SrcAE[18]),
        .I1(SrcBE[18]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[88]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[88]_i_15 
       (.I0(SrcAE[17]),
        .I1(SrcBE[17]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[88]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[88]_i_16 
       (.I0(SrcAE[16]),
        .I1(SrcBE[16]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[88]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \q[88]_i_17 
       (.I0(SrcAE[23]),
        .I1(SrcBE[4]),
        .I2(\q_reg[110]_0 ),
        .I3(SrcBE[3]),
        .O(\q[88]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[88]_i_18 
       (.I0(SrcAE[27]),
        .I1(SrcBE[3]),
        .I2(SrcAE[19]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[4]),
        .O(\q[88]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[88]_i_2 
       (.I0(\q[88]_i_6_n_0 ),
        .I1(\q[89]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[89]_i_6_n_0 ),
        .I5(\q[88]_i_7_n_0 ),
        .O(\q_reg[8]_12 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[88]_i_3 
       (.I0(SrcAE[19]),
        .I1(SrcBE[19]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [19]),
        .O(\q_reg[9]_15 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[88]_i_5 
       (.I0(\q_reg[33]_15 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[19]),
        .I4(SrcBE[19]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_46 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[88]_i_6 
       (.I0(\q[88]_i_10_n_0 ),
        .I1(\q[92]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[90]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[94]_i_9_n_0 ),
        .O(\q[88]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[88]_i_7 
       (.I0(\q[90]_i_10_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[88]_i_11_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[88]_i_12_n_0 ),
        .O(\q[88]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[88]_i_9 
       (.I0(\q[90]_i_11_n_0 ),
        .I1(\q[90]_i_12_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[88]_i_17_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[88]_i_18_n_0 ),
        .O(\q_reg[33]_15 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[89]_i_10 
       (.I0(SrcAE[24]),
        .I1(SrcBE[2]),
        .I2(SrcAE[28]),
        .I3(SrcAE[20]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[89]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \q[89]_i_11 
       (.I0(SrcAE[24]),
        .I1(SrcBE[4]),
        .I2(\q_reg[110]_0 ),
        .I3(SrcBE[3]),
        .O(\q[89]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[89]_i_12 
       (.I0(SrcAE[28]),
        .I1(SrcBE[3]),
        .I2(SrcAE[20]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[4]),
        .O(\q[89]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[89]_i_2 
       (.I0(\q[89]_i_6_n_0 ),
        .I1(\q[90]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[90]_i_6_n_0 ),
        .I5(\q[89]_i_7_n_0 ),
        .O(\q_reg[8]_11 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[89]_i_3 
       (.I0(SrcAE[20]),
        .I1(SrcBE[20]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [20]),
        .O(\q_reg[9]_27 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[89]_i_5 
       (.I0(\q_reg[33]_10 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[20]),
        .I4(SrcBE[20]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_41 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[89]_i_6 
       (.I0(\q[89]_i_9_n_0 ),
        .I1(\q[93]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[91]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[95]_i_9_n_0 ),
        .O(\q[89]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[89]_i_7 
       (.I0(\q[91]_i_10_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[89]_i_10_n_0 ),
        .O(\q[89]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[89]_i_8 
       (.I0(\q[91]_i_11_n_0 ),
        .I1(\q[91]_i_12_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[89]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[89]_i_12_n_0 ),
        .O(\q_reg[33]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[89]_i_9 
       (.I0(SrcAE[5]),
        .I1(SrcAE[13]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[89]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[90]_i_10 
       (.I0(SrcAE[25]),
        .I1(SrcBE[2]),
        .I2(SrcAE[29]),
        .I3(SrcAE[21]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[90]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \q[90]_i_11 
       (.I0(SrcAE[25]),
        .I1(SrcBE[4]),
        .I2(\q_reg[110]_0 ),
        .I3(SrcBE[3]),
        .O(\q[90]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[90]_i_12 
       (.I0(SrcAE[29]),
        .I1(SrcBE[3]),
        .I2(SrcAE[21]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[4]),
        .O(\q[90]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[90]_i_2 
       (.I0(\q[90]_i_6_n_0 ),
        .I1(\q[91]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[91]_i_6_n_0 ),
        .I5(\q[90]_i_7_n_0 ),
        .O(\q_reg[8]_9 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[90]_i_3 
       (.I0(SrcAE[21]),
        .I1(SrcBE[21]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [21]),
        .O(\q_reg[9]_20 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[90]_i_5 
       (.I0(\q_reg[33]_11 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[21]),
        .I4(SrcBE[21]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_42 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[90]_i_6 
       (.I0(\q[90]_i_9_n_0 ),
        .I1(\q[94]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[92]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[96]_i_10_n_0 ),
        .O(\q[90]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[90]_i_7 
       (.I0(\q[92]_i_11_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[90]_i_10_n_0 ),
        .O(\q[90]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[90]_i_8 
       (.I0(\q[92]_i_16_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[90]_i_11_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[90]_i_12_n_0 ),
        .O(\q_reg[33]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[90]_i_9 
       (.I0(SrcAE[6]),
        .I1(SrcAE[14]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[90]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[91]_i_10 
       (.I0(SrcAE[26]),
        .I1(SrcBE[2]),
        .I2(SrcAE[30]),
        .I3(SrcAE[22]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[91]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \q[91]_i_11 
       (.I0(SrcAE[26]),
        .I1(SrcBE[4]),
        .I2(\q_reg[110]_0 ),
        .I3(SrcBE[3]),
        .O(\q[91]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[91]_i_12 
       (.I0(SrcAE[30]),
        .I1(SrcBE[3]),
        .I2(SrcAE[22]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[4]),
        .O(\q[91]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[91]_i_2 
       (.I0(\q[91]_i_6_n_0 ),
        .I1(\q[92]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[92]_i_6_n_0 ),
        .I5(\q[91]_i_7_n_0 ),
        .O(\q_reg[8]_10 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[91]_i_3 
       (.I0(SrcAE[22]),
        .I1(SrcBE[22]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [22]),
        .O(\q_reg[9]_23 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[91]_i_5 
       (.I0(\q_reg[33]_12 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[22]),
        .I4(SrcBE[22]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_43 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[91]_i_6 
       (.I0(\q[91]_i_9_n_0 ),
        .I1(\q[95]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[93]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[97]_i_9_n_0 ),
        .O(\q[91]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[91]_i_7 
       (.I0(\q[97]_i_10_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[93]_i_10_n_0 ),
        .I3(SrcBE[1]),
        .I4(\q[91]_i_10_n_0 ),
        .O(\q[91]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[91]_i_8 
       (.I0(\q[93]_i_11_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[91]_i_11_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[91]_i_12_n_0 ),
        .O(\q_reg[33]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[91]_i_9 
       (.I0(SrcAE[7]),
        .I1(SrcAE[15]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[91]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[92]_i_10 
       (.I0(SrcAE[8]),
        .I1(SrcBE[3]),
        .I2(SrcAE[0]),
        .I3(SrcBE[4]),
        .I4(SrcAE[16]),
        .O(\q[92]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[92]_i_11 
       (.I0(SrcAE[27]),
        .I1(SrcBE[2]),
        .I2(\q_reg[110]_0 ),
        .I3(SrcAE[23]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[92]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[92]_i_12 
       (.I0(SrcAE[23]),
        .I1(SrcBE[23]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[92]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[92]_i_13 
       (.I0(SrcAE[22]),
        .I1(SrcBE[22]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[92]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[92]_i_14 
       (.I0(SrcAE[21]),
        .I1(SrcBE[21]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[92]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[92]_i_15 
       (.I0(SrcAE[20]),
        .I1(SrcBE[20]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[92]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[92]_i_16 
       (.I0(SrcAE[27]),
        .I1(SrcBE[2]),
        .I2(SrcAE[23]),
        .I3(SrcBE[4]),
        .I4(\q_reg[110]_0 ),
        .I5(SrcBE[3]),
        .O(\q[92]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[92]_i_2 
       (.I0(\q[92]_i_6_n_0 ),
        .I1(\q[93]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[93]_i_6_n_0 ),
        .I5(\q[92]_i_7_n_0 ),
        .O(\q_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[92]_i_3 
       (.I0(SrcAE[23]),
        .I1(SrcBE[23]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [23]),
        .O(\q_reg[9]_16 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[92]_i_5 
       (.I0(\q_reg[33]_13 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[23]),
        .I4(SrcBE[23]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_44 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[92]_i_6 
       (.I0(\q[92]_i_10_n_0 ),
        .I1(\q[96]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[94]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[98]_i_11_n_0 ),
        .O(\q[92]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[92]_i_7 
       (.I0(\q[98]_i_17_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[94]_i_10_n_0 ),
        .I3(SrcBE[1]),
        .I4(\q[92]_i_11_n_0 ),
        .O(\q[92]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[92]_i_9 
       (.I0(\q[94]_i_11_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[92]_i_16_n_0 ),
        .O(\q_reg[33]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[93]_i_10 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[24]),
        .O(\q[93]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[93]_i_11 
       (.I0(SrcAE[28]),
        .I1(SrcBE[2]),
        .I2(SrcAE[24]),
        .I3(SrcBE[4]),
        .I4(\q_reg[110]_0 ),
        .I5(SrcBE[3]),
        .O(\q[93]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[93]_i_2 
       (.I0(\q[93]_i_6_n_0 ),
        .I1(\q[94]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[94]_i_6_n_0 ),
        .I5(\q[93]_i_7_n_0 ),
        .O(\q_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[93]_i_3 
       (.I0(SrcAE[24]),
        .I1(SrcBE[24]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [24]),
        .O(\q_reg[9]_24 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[93]_i_5 
       (.I0(\q_reg[33]_18 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[24]),
        .I4(SrcBE[24]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_49 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[93]_i_6 
       (.I0(\q[93]_i_9_n_0 ),
        .I1(\q[97]_i_9_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[95]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[98]_i_14_n_0 ),
        .O(\q[93]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[93]_i_7 
       (.I0(\q[99]_i_12_n_0 ),
        .I1(\q[95]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[97]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[93]_i_10_n_0 ),
        .O(\q[93]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[93]_i_8 
       (.I0(\q[95]_i_11_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[93]_i_11_n_0 ),
        .O(\q_reg[33]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[93]_i_9 
       (.I0(SrcAE[9]),
        .I1(SrcBE[3]),
        .I2(SrcAE[1]),
        .I3(SrcBE[4]),
        .I4(SrcAE[17]),
        .O(\q[93]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[94]_i_10 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[25]),
        .O(\q[94]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[94]_i_11 
       (.I0(SrcAE[29]),
        .I1(SrcBE[2]),
        .I2(SrcAE[25]),
        .I3(SrcBE[4]),
        .I4(\q_reg[110]_0 ),
        .I5(SrcBE[3]),
        .O(\q[94]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[94]_i_2 
       (.I0(\q[94]_i_6_n_0 ),
        .I1(\q[95]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[95]_i_6_n_0 ),
        .I5(\q[94]_i_7_n_0 ),
        .O(\q_reg[8]_2 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[94]_i_3 
       (.I0(SrcAE[25]),
        .I1(SrcBE[25]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [25]),
        .O(\q_reg[9]_17 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[94]_i_5 
       (.I0(\q_reg[33]_19 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[25]),
        .I4(SrcBE[25]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_50 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[94]_i_6 
       (.I0(\q[94]_i_9_n_0 ),
        .I1(\q[98]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[96]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[98]_i_12_n_0 ),
        .O(\q[94]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[94]_i_7 
       (.I0(\q[100]_i_11_n_0 ),
        .I1(\q[96]_i_11_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[98]_i_17_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[94]_i_10_n_0 ),
        .O(\q[94]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[94]_i_8 
       (.I0(\q[96]_i_17_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[94]_i_11_n_0 ),
        .O(\q_reg[33]_19 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[94]_i_9 
       (.I0(SrcAE[10]),
        .I1(SrcBE[3]),
        .I2(SrcAE[2]),
        .I3(SrcBE[4]),
        .I4(SrcAE[18]),
        .O(\q[94]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[95]_i_10 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[26]),
        .O(\q[95]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[95]_i_11 
       (.I0(SrcAE[30]),
        .I1(SrcBE[2]),
        .I2(SrcAE[26]),
        .I3(SrcBE[4]),
        .I4(\q_reg[110]_0 ),
        .I5(SrcBE[3]),
        .O(\q[95]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q[95]_i_1__0 
       (.I0(StallD),
        .O(E));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[95]_i_2__0 
       (.I0(\q[95]_i_6_n_0 ),
        .I1(\q[96]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[96]_i_6_n_0 ),
        .I5(\q[95]_i_7_n_0 ),
        .O(\q_reg[8]_3 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[95]_i_3 
       (.I0(SrcAE[26]),
        .I1(SrcBE[26]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [26]),
        .O(\q_reg[9]_21 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[95]_i_5 
       (.I0(\q_reg[33]_20 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[26]),
        .I4(SrcBE[26]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_51 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[95]_i_6 
       (.I0(\q[95]_i_9_n_0 ),
        .I1(\q[98]_i_14_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[97]_i_9_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[98]_i_15_n_0 ),
        .O(\q[95]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[95]_i_7 
       (.I0(\q[97]_i_10_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[99]_i_12_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[95]_i_10_n_0 ),
        .O(\q[95]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[95]_i_8 
       (.I0(\q[97]_i_12_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[95]_i_11_n_0 ),
        .O(\q_reg[33]_20 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[95]_i_9 
       (.I0(SrcAE[11]),
        .I1(SrcBE[3]),
        .I2(SrcAE[3]),
        .I3(SrcBE[4]),
        .I4(SrcAE[19]),
        .O(\q[95]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[96]_i_10 
       (.I0(SrcAE[12]),
        .I1(SrcBE[3]),
        .I2(SrcAE[4]),
        .I3(SrcBE[4]),
        .I4(SrcAE[20]),
        .O(\q[96]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[96]_i_11 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[27]),
        .O(\q[96]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[96]_i_12 
       (.I0(SrcAE[27]),
        .I1(SrcBE[27]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[96]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[96]_i_13 
       (.I0(SrcAE[26]),
        .I1(SrcBE[26]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[96]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[96]_i_14 
       (.I0(SrcAE[25]),
        .I1(SrcBE[25]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[96]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[96]_i_15 
       (.I0(SrcAE[24]),
        .I1(SrcBE[24]),
        .I2(\q_reg[142]_0 [4]),
        .O(\q[96]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \q[96]_i_16 
       (.I0(SrcAE[29]),
        .I1(SrcBE[4]),
        .I2(SrcBE[3]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[2]),
        .O(\q[96]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \q[96]_i_17 
       (.I0(SrcAE[27]),
        .I1(SrcBE[4]),
        .I2(SrcBE[3]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[2]),
        .O(\q[96]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[96]_i_2 
       (.I0(\q[96]_i_6_n_0 ),
        .I1(\q[97]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[97]_i_6_n_0 ),
        .I5(\q[96]_i_7_n_0 ),
        .O(\q_reg[8]_4 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[96]_i_3 
       (.I0(SrcAE[27]),
        .I1(SrcBE[27]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [27]),
        .O(\q_reg[9]_14 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[96]_i_5 
       (.I0(\q_reg[33]_21 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[27]),
        .I4(SrcBE[27]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_52 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[96]_i_6 
       (.I0(\q[96]_i_10_n_0 ),
        .I1(\q[98]_i_12_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[98]_i_11_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[100]_i_24_n_0 ),
        .O(\q[96]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[96]_i_7 
       (.I0(\q[98]_i_17_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[100]_i_11_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[96]_i_11_n_0 ),
        .O(\q[96]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[96]_i_9 
       (.I0(\q[96]_i_16_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[96]_i_17_n_0 ),
        .O(\q_reg[33]_21 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[97]_i_10 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[28]),
        .O(\q[97]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \q[97]_i_11 
       (.I0(SrcAE[30]),
        .I1(SrcBE[4]),
        .I2(SrcBE[3]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[2]),
        .O(\q[97]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \q[97]_i_12 
       (.I0(SrcAE[28]),
        .I1(SrcBE[4]),
        .I2(SrcBE[3]),
        .I3(\q_reg[110]_0 ),
        .I4(SrcBE[2]),
        .O(\q[97]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[97]_i_2 
       (.I0(\q[97]_i_6_n_0 ),
        .I1(\q[98]_i_9_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[98]_i_7_n_0 ),
        .I5(\q[97]_i_7_n_0 ),
        .O(\q_reg[8]_5 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[97]_i_3 
       (.I0(SrcAE[28]),
        .I1(SrcBE[28]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [28]),
        .O(\q_reg[9]_26 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[97]_i_5 
       (.I0(\q_reg[33]_22 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[28]),
        .I4(SrcBE[28]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_53 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[97]_i_6 
       (.I0(\q[97]_i_9_n_0 ),
        .I1(\q[98]_i_15_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[98]_i_14_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[100]_i_21_n_0 ),
        .O(\q[97]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[97]_i_7 
       (.I0(\q[99]_i_12_n_0 ),
        .I1(\q[97]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(SrcBE[2]),
        .O(\q[97]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[97]_i_8 
       (.I0(\q[97]_i_11_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[97]_i_12_n_0 ),
        .O(\q_reg[33]_22 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[97]_i_9 
       (.I0(SrcAE[13]),
        .I1(SrcBE[3]),
        .I2(SrcAE[5]),
        .I3(SrcBE[4]),
        .I4(SrcAE[21]),
        .O(\q[97]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \q[98]_i_10 
       (.I0(SrcBE[1]),
        .I1(SrcAE[29]),
        .I2(SrcBE[4]),
        .I3(SrcBE[3]),
        .I4(\q_reg[110]_0 ),
        .I5(SrcBE[2]),
        .O(\q_reg[33]_23 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[98]_i_11 
       (.I0(SrcAE[14]),
        .I1(SrcBE[3]),
        .I2(SrcAE[6]),
        .I3(SrcBE[4]),
        .I4(SrcAE[22]),
        .O(\q[98]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[98]_i_12 
       (.I0(SrcAE[24]),
        .I1(SrcAE[8]),
        .I2(SrcBE[3]),
        .I3(SrcAE[0]),
        .I4(SrcBE[4]),
        .I5(SrcAE[16]),
        .O(\q[98]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[98]_i_13 
       (.I0(SrcAE[28]),
        .I1(SrcAE[12]),
        .I2(SrcBE[3]),
        .I3(SrcAE[4]),
        .I4(SrcBE[4]),
        .I5(SrcAE[20]),
        .O(\q[98]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[98]_i_14 
       (.I0(SrcAE[15]),
        .I1(SrcBE[3]),
        .I2(SrcAE[7]),
        .I3(SrcBE[4]),
        .I4(SrcAE[23]),
        .O(\q[98]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[98]_i_15 
       (.I0(SrcAE[25]),
        .I1(SrcAE[9]),
        .I2(SrcBE[3]),
        .I3(SrcAE[1]),
        .I4(SrcBE[4]),
        .I5(SrcAE[17]),
        .O(\q[98]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[98]_i_16 
       (.I0(SrcAE[29]),
        .I1(SrcAE[13]),
        .I2(SrcBE[3]),
        .I3(SrcAE[5]),
        .I4(SrcBE[4]),
        .I5(SrcAE[21]),
        .O(\q[98]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[98]_i_17 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[29]),
        .O(\q[98]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \q[98]_i_3 
       (.I0(\q[98]_i_7_n_0 ),
        .I1(\q[99]_i_7_n_0 ),
        .I2(\q_reg[142]_0 [4]),
        .I3(\q_reg[32]_0 ),
        .I4(\q[98]_i_8_n_0 ),
        .I5(\q[98]_i_9_n_0 ),
        .O(\q_reg[8]_6 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[98]_i_4 
       (.I0(SrcAE[29]),
        .I1(SrcBE[29]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [29]),
        .O(\q_reg[9]_19 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[98]_i_6 
       (.I0(\q_reg[33]_23 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[29]),
        .I4(SrcBE[29]),
        .I5(\q_reg[99]_1 ),
        .O(\q_reg[8]_54 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[98]_i_7 
       (.I0(\q[98]_i_11_n_0 ),
        .I1(\q[100]_i_24_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[98]_i_12_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[98]_i_13_n_0 ),
        .O(\q[98]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[98]_i_8 
       (.I0(\q[98]_i_14_n_0 ),
        .I1(\q[100]_i_21_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[98]_i_15_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[98]_i_16_n_0 ),
        .O(\q[98]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[98]_i_9 
       (.I0(\q[100]_i_11_n_0 ),
        .I1(\q[98]_i_17_n_0 ),
        .I2(SrcBE[1]),
        .I3(SrcBE[2]),
        .O(\q[98]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[99]_i_12 
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(SrcAE[30]),
        .O(\q[99]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA8A8A8)) 
    \q[99]_i_1__0 
       (.I0(\q_reg[71]_0 ),
        .I1(\q[99]_i_2_n_0 ),
        .I2(\q[99]_i_3_n_0 ),
        .I3(\q_reg[70]_0 ),
        .I4(\q_reg[33]_0 ),
        .I5(\q[99]_i_6_n_0 ),
        .O(\q_reg[9]_0 [35]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \q[99]_i_2 
       (.I0(\q_reg[71]_1 ),
        .I1(\q[99]_i_7_n_0 ),
        .I2(\q_reg[70]_1 ),
        .I3(\q[100]_i_13_n_0 ),
        .I4(\q[99]_i_8_n_0 ),
        .I5(\q[99]_i_9_n_0 ),
        .O(\q[99]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[99]_i_3 
       (.I0(SrcAE[30]),
        .I1(SrcBE[30]),
        .I2(\q_reg[142]_0 [5]),
        .I3(\q_reg[142]_0 [4]),
        .I4(\q_reg[142]_0 [6]),
        .I5(\alu/sum [30]),
        .O(\q[99]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \q[99]_i_5 
       (.I0(SrcBE[1]),
        .I1(SrcAE[30]),
        .I2(SrcBE[4]),
        .I3(SrcBE[3]),
        .I4(\q_reg[110]_0 ),
        .I5(SrcBE[2]),
        .O(\q_reg[33]_0 ));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[99]_i_6 
       (.I0(\q_reg[110]_0 ),
        .I1(\q_reg[71]_2 ),
        .I2(\q_reg[99]_0 ),
        .I3(SrcAE[30]),
        .I4(SrcBE[30]),
        .I5(\q_reg[99]_1 ),
        .O(\q[99]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[99]_i_7 
       (.I0(\q[100]_i_12_n_0 ),
        .I1(\q[99]_i_12_n_0 ),
        .O(\q[99]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[99]_i_8 
       (.I0(\q_reg[32]_0 ),
        .I1(\q_reg[142]_0 [4]),
        .O(\q[99]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \q[99]_i_9 
       (.I0(\q[100]_i_12_n_0 ),
        .I1(\q[100]_i_11_n_0 ),
        .I2(\q[70]_i_7_n_0 ),
        .I3(\q[98]_i_8_n_0 ),
        .I4(\q[100]_i_14_n_0 ),
        .O(\q[99]_i_9_n_0 ));
  FDCE \q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[98]),
        .Q(PCE[21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_reg[100]_i_8 
       (.CI(\q_reg[96]_i_8_n_0 ),
        .CO({\NLW_q_reg[100]_i_8_CO_UNCONNECTED [3],\q_reg[100]_i_8_n_1 ,\q_reg[100]_i_8_n_2 ,\q_reg[100]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,SrcAE[30:28]}),
        .O({\q_reg[109]_0 ,\alu/sum [30:28]}),
        .S({\q[100]_i_16_n_0 ,\q[100]_i_17_n_0 ,\q[100]_i_18_n_0 ,\q[100]_i_19_n_0 }));
  FDCE \q_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[99]),
        .Q(PCE[22]));
  FDCE \q_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[100]),
        .Q(PCE[23]));
  FDCE \q_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[101]),
        .Q(PCE[24]));
  FDCE \q_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[102]),
        .Q(PCE[25]));
  FDCE \q_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[103]),
        .Q(PCE[26]));
  FDCE \q_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[104]),
        .Q(PCE[27]));
  FDCE \q_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[105]),
        .Q(PCE[28]));
  FDCE \q_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[106]),
        .Q(PCE[29]));
  FDCE \q_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[107]),
        .Q(PCE[30]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \q_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[108]),
        .Q(PCE[31]));
  FDCE \q_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[111]),
        .Q(RD2E[0]));
  FDCE \q_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[112]),
        .Q(RD2E[1]));
  FDCE \q_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[113]),
        .Q(RD2E[2]));
  FDCE \q_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[114]),
        .Q(RD2E[3]));
  FDCE \q_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[115]),
        .Q(RD2E[4]));
  FDCE \q_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[116]),
        .Q(RD2E[5]));
  FDCE \q_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[117]),
        .Q(RD2E[6]));
  FDCE \q_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[118]),
        .Q(RD2E[7]));
  FDCE \q_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[119]),
        .Q(RD2E[8]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[9]));
  FDCE \q_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[120]),
        .Q(RD2E[9]));
  FDCE \q_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[121]),
        .Q(RD2E[10]));
  FDCE \q_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[122]),
        .Q(RD2E[11]));
  FDCE \q_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[123]),
        .Q(RD2E[12]));
  FDCE \q_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[124]),
        .Q(RD2E[13]));
  FDCE \q_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[125]),
        .Q(RD2E[14]));
  FDCE \q_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[126]),
        .Q(RD2E[15]));
  FDCE \q_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[127]),
        .Q(RD2E[16]));
  FDCE \q_reg[128] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[128]),
        .Q(RD2E[17]));
  FDCE \q_reg[129] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[129]),
        .Q(RD2E[18]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \q_reg[130] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[130]),
        .Q(RD2E[19]));
  FDCE \q_reg[131] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[131]),
        .Q(RD2E[20]));
  FDCE \q_reg[132] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[132]),
        .Q(RD2E[21]));
  FDCE \q_reg[133] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[133]),
        .Q(RD2E[22]));
  FDCE \q_reg[134] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[134]),
        .Q(RD2E[23]));
  FDCE \q_reg[135] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[135]),
        .Q(RD2E[24]));
  FDCE \q_reg[136] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[136]),
        .Q(RD2E[25]));
  FDCE \q_reg[137] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[137]),
        .Q(RD2E[26]));
  FDCE \q_reg[138] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[138]),
        .Q(RD2E[27]));
  FDCE \q_reg[139] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[139]),
        .Q(RD2E[28]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \q_reg[140] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[140]),
        .Q(RD2E[29]));
  FDCE \q_reg[141] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[141]),
        .Q(RD2E[30]));
  FDCE \q_reg[142] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[142]),
        .Q(RD2E[31]));
  FDCE \q_reg[143] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[143]),
        .Q(RD1E[0]));
  FDCE \q_reg[144] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[144]),
        .Q(RD1E[1]));
  FDCE \q_reg[145] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[145]),
        .Q(RD1E[2]));
  FDCE \q_reg[146] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[146]),
        .Q(RD1E[3]));
  FDCE \q_reg[147] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[147]),
        .Q(RD1E[4]));
  FDCE \q_reg[148] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[148]),
        .Q(RD1E[5]));
  FDCE \q_reg[149] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[149]),
        .Q(RD1E[6]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \q_reg[150] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[150]),
        .Q(RD1E[7]));
  FDCE \q_reg[151] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[151]),
        .Q(RD1E[8]));
  FDCE \q_reg[152] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[152]),
        .Q(RD1E[9]));
  FDCE \q_reg[153] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[153]),
        .Q(RD1E[10]));
  FDCE \q_reg[154] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[154]),
        .Q(RD1E[11]));
  FDCE \q_reg[155] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[155]),
        .Q(RD1E[12]));
  FDCE \q_reg[156] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[156]),
        .Q(RD1E[13]));
  FDCE \q_reg[157] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[157]),
        .Q(RD1E[14]));
  FDCE \q_reg[158] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[158]),
        .Q(RD1E[15]));
  FDCE \q_reg[159] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[159]),
        .Q(RD1E[16]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \q_reg[160] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[160]),
        .Q(RD1E[17]));
  FDCE \q_reg[161] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[161]),
        .Q(RD1E[18]));
  FDCE \q_reg[162] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[162]),
        .Q(RD1E[19]));
  FDCE \q_reg[163] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[163]),
        .Q(RD1E[20]));
  FDCE \q_reg[164] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[164]),
        .Q(RD1E[21]));
  FDCE \q_reg[165] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[165]),
        .Q(RD1E[22]));
  FDCE \q_reg[166] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[166]),
        .Q(RD1E[23]));
  FDCE \q_reg[167] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[167]),
        .Q(RD1E[24]));
  FDCE \q_reg[168] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[168]),
        .Q(RD1E[25]));
  FDCE \q_reg[169] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[169]),
        .Q(RD1E[26]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \q_reg[170] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[170]),
        .Q(RD1E[27]));
  FDCE \q_reg[171] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[171]),
        .Q(RD1E[28]));
  FDCE \q_reg[172] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[172]),
        .Q(RD1E[29]));
  FDCE \q_reg[173] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[173]),
        .Q(RD1E[30]));
  FDCE \q_reg[174] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[174]),
        .Q(RD1E[31]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[29]),
        .Q(Q[29]));
  CARRY4 \q_reg[31]_i_20 
       (.CI(CarryE),
        .CO(\NLW_q_reg[31]_i_20_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg[31]_i_20_O_UNCONNECTED [3:1],\q_reg[31]_i_22_0 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \q_reg[31]_i_22 
       (.CI(\q_reg[31]_i_23_n_0 ),
        .CO({CarryE,\q_reg[31]_i_22_n_1 ,\q_reg[31]_i_22_n_2 ,\q_reg[31]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\q_reg[110]_0 ,SrcAE[30:28]}),
        .O(\NLW_q_reg[31]_i_22_O_UNCONNECTED [3:0]),
        .S({v2,\q[31]_i_25_n_0 ,\q[31]_i_26_n_0 ,\q[31]_i_27_n_0 }));
  CARRY4 \q_reg[31]_i_23 
       (.CI(\q_reg[31]_i_28_n_0 ),
        .CO({\q_reg[31]_i_23_n_0 ,\q_reg[31]_i_23_n_1 ,\q_reg[31]_i_23_n_2 ,\q_reg[31]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[27:24]),
        .O(\NLW_q_reg[31]_i_23_O_UNCONNECTED [3:0]),
        .S({\q[31]_i_29_n_0 ,\q[31]_i_30_n_0 ,\q[31]_i_31_n_0 ,\q[31]_i_32_n_0 }));
  CARRY4 \q_reg[31]_i_28 
       (.CI(\q_reg[31]_i_33_n_0 ),
        .CO({\q_reg[31]_i_28_n_0 ,\q_reg[31]_i_28_n_1 ,\q_reg[31]_i_28_n_2 ,\q_reg[31]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[23:20]),
        .O(\NLW_q_reg[31]_i_28_O_UNCONNECTED [3:0]),
        .S({\q[31]_i_34_n_0 ,\q[31]_i_35_n_0 ,\q[31]_i_36_n_0 ,\q[31]_i_37_n_0 }));
  CARRY4 \q_reg[31]_i_33 
       (.CI(\q_reg[31]_i_38_n_0 ),
        .CO({\q_reg[31]_i_33_n_0 ,\q_reg[31]_i_33_n_1 ,\q_reg[31]_i_33_n_2 ,\q_reg[31]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[19:16]),
        .O(\NLW_q_reg[31]_i_33_O_UNCONNECTED [3:0]),
        .S({\q[31]_i_39_n_0 ,\q[31]_i_40_n_0 ,\q[31]_i_41_n_0 ,\q[31]_i_42_n_0 }));
  CARRY4 \q_reg[31]_i_38 
       (.CI(\q_reg[31]_i_43_n_0 ),
        .CO({\q_reg[31]_i_38_n_0 ,\q_reg[31]_i_38_n_1 ,\q_reg[31]_i_38_n_2 ,\q_reg[31]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[15:12]),
        .O(\NLW_q_reg[31]_i_38_O_UNCONNECTED [3:0]),
        .S({\q[31]_i_44_n_0 ,\q[31]_i_45_n_0 ,\q[31]_i_46_n_0 ,\q[31]_i_47_n_0 }));
  CARRY4 \q_reg[31]_i_43 
       (.CI(\q_reg[31]_i_48_n_0 ),
        .CO({\q_reg[31]_i_43_n_0 ,\q_reg[31]_i_43_n_1 ,\q_reg[31]_i_43_n_2 ,\q_reg[31]_i_43_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[11:8]),
        .O(\NLW_q_reg[31]_i_43_O_UNCONNECTED [3:0]),
        .S({\q[31]_i_49_n_0 ,\q[31]_i_50_n_0 ,\q[31]_i_51_n_0 ,\q[31]_i_52_n_0 }));
  CARRY4 \q_reg[31]_i_48 
       (.CI(\q_reg[31]_i_53_n_0 ),
        .CO({\q_reg[31]_i_48_n_0 ,\q_reg[31]_i_48_n_1 ,\q_reg[31]_i_48_n_2 ,\q_reg[31]_i_48_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[7:4]),
        .O(\NLW_q_reg[31]_i_48_O_UNCONNECTED [3:0]),
        .S({\q[31]_i_54_n_0 ,\q[31]_i_55_n_0 ,\q[31]_i_56_n_0 ,\q[31]_i_57_n_0 }));
  CARRY4 \q_reg[31]_i_53 
       (.CI(1'b0),
        .CO({\q_reg[31]_i_53_n_0 ,\q_reg[31]_i_53_n_1 ,\q_reg[31]_i_53_n_2 ,\q_reg[31]_i_53_n_3 }),
        .CYINIT(\q[69]_i_3_0 ),
        .DI(SrcAE[3:0]),
        .O(\NLW_q_reg[31]_i_53_O_UNCONNECTED [3:0]),
        .S({\q[31]_i_58_n_0 ,\q[31]_i_59_n_0 ,\q[31]_i_60_n_0 ,\q[31]_i_61_n_0 }));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[32]),
        .Q(Q[32]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[33]),
        .Q(Q[33]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[34]),
        .Q(Q[34]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[35]),
        .Q(Q[35]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[36]),
        .Q(Q[36]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[37]),
        .Q(Q[37]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[38]),
        .Q(Q[38]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[39]),
        .Q(Q[39]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[40]),
        .Q(Q[40]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[41]),
        .Q(Q[41]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[42]),
        .Q(Q[42]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[43]),
        .Q(Q[43]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[44]),
        .Q(Q[44]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[45]),
        .Q(Q[45]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[46]),
        .Q(Q[46]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[47]),
        .Q(Q[47]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[48]),
        .Q(Q[48]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[49]),
        .Q(Q[49]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[50]),
        .Q(Q[50]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[51]),
        .Q(Q[51]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[52]),
        .Q(Q[52]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[53]),
        .Q(Q[53]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[54]),
        .Q(Q[54]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[55]),
        .Q(Q[55]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[56]),
        .Q(Q[56]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[57]),
        .Q(Q[57]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[58]),
        .Q(Q[58]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[59]),
        .Q(Q[59]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[60]),
        .Q(Q[60]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[61]),
        .Q(ImmExtE));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[62]),
        .Q(Q[61]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[63]),
        .Q(Q[62]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[64]),
        .Q(Q[63]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[65]),
        .Q(Q[64]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[66]),
        .Q(Q[65]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[67]),
        .Q(Rs2E[0]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[68]),
        .Q(Rs2E[1]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[69]),
        .Q(Q[66]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[70]),
        .Q(Q[67]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_reg[72]_i_8 
       (.CI(1'b0),
        .CO({\q_reg[72]_i_8_n_0 ,\q_reg[72]_i_8_n_1 ,\q_reg[72]_i_8_n_2 ,\q_reg[72]_i_8_n_3 }),
        .CYINIT(\q[69]_i_3_0 ),
        .DI(SrcAE[3:0]),
        .O(\alu/sum [3:0]),
        .S({\q[72]_i_11_n_0 ,\q[72]_i_12_n_0 ,\q[72]_i_13_n_0 ,\q[72]_i_14_n_0 }));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[71]),
        .Q(Rs2E[4]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[72]),
        .Q(Rs1E[0]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[73]),
        .Q(Rs1E[1]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[74]),
        .Q(Rs1E[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_reg[76]_i_8 
       (.CI(\q_reg[72]_i_8_n_0 ),
        .CO({\q_reg[76]_i_8_n_0 ,\q_reg[76]_i_8_n_1 ,\q_reg[76]_i_8_n_2 ,\q_reg[76]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[7:4]),
        .O(\alu/sum [7:4]),
        .S({\q[76]_i_12_n_0 ,\q[76]_i_13_n_0 ,\q[76]_i_14_n_0 ,\q[76]_i_15_n_0 }));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[75]),
        .Q(Rs1E[3]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[76]),
        .Q(Rs1E[4]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[77]),
        .Q(Q[68]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[78]),
        .Q(Q[69]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_reg[80]_i_8 
       (.CI(\q_reg[76]_i_8_n_0 ),
        .CO({\q_reg[80]_i_8_n_0 ,\q_reg[80]_i_8_n_1 ,\q_reg[80]_i_8_n_2 ,\q_reg[80]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[11:8]),
        .O(\alu/sum [11:8]),
        .S({\q[80]_i_12_n_0 ,\q[80]_i_13_n_0 ,\q[80]_i_14_n_0 ,\q[80]_i_15_n_0 }));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[79]),
        .Q(PCE[2]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[80]),
        .Q(PCE[3]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[81]),
        .Q(PCE[4]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[82]),
        .Q(PCE[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_reg[84]_i_8 
       (.CI(\q_reg[80]_i_8_n_0 ),
        .CO({\q_reg[84]_i_8_n_0 ,\q_reg[84]_i_8_n_1 ,\q_reg[84]_i_8_n_2 ,\q_reg[84]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[15:12]),
        .O(\alu/sum [15:12]),
        .S({\q[84]_i_12_n_0 ,\q[84]_i_13_n_0 ,\q[84]_i_14_n_0 ,\q[84]_i_15_n_0 }));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[83]),
        .Q(PCE[6]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[84]),
        .Q(PCE[7]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[85]),
        .Q(PCE[8]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[86]),
        .Q(PCE[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_reg[88]_i_8 
       (.CI(\q_reg[84]_i_8_n_0 ),
        .CO({\q_reg[88]_i_8_n_0 ,\q_reg[88]_i_8_n_1 ,\q_reg[88]_i_8_n_2 ,\q_reg[88]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[19:16]),
        .O(\alu/sum [19:16]),
        .S({\q[88]_i_13_n_0 ,\q[88]_i_14_n_0 ,\q[88]_i_15_n_0 ,\q[88]_i_16_n_0 }));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[87]),
        .Q(PCE[10]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[88]),
        .Q(PCE[11]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[89]),
        .Q(PCE[12]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[90]),
        .Q(PCE[13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_reg[92]_i_8 
       (.CI(\q_reg[88]_i_8_n_0 ),
        .CO({\q_reg[92]_i_8_n_0 ,\q_reg[92]_i_8_n_1 ,\q_reg[92]_i_8_n_2 ,\q_reg[92]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[23:20]),
        .O(\alu/sum [23:20]),
        .S({\q[92]_i_12_n_0 ,\q[92]_i_13_n_0 ,\q[92]_i_14_n_0 ,\q[92]_i_15_n_0 }));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[91]),
        .Q(PCE[14]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[92]),
        .Q(PCE[15]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[93]),
        .Q(PCE[16]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[94]),
        .Q(PCE[17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_reg[96]_i_8 
       (.CI(\q_reg[92]_i_8_n_0 ),
        .CO({\q_reg[96]_i_8_n_0 ,\q_reg[96]_i_8_n_1 ,\q_reg[96]_i_8_n_2 ,\q_reg[96]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcAE[27:24]),
        .O(\alu/sum [27:24]),
        .S({\q[96]_i_12_n_0 ,\q[96]_i_13_n_0 ,\q[96]_i_14_n_0 ,\q[96]_i_15_n_0 }));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[95]),
        .Q(PCE[18]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[96]),
        .Q(PCE[19]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[97]),
        .Q(PCE[20]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[7]));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__0_i_1
       (.I0(SrcBE[14]),
        .I1(SrcAE[14]),
        .I2(SrcAE[15]),
        .I3(SrcBE[15]),
        .O(\q_reg[46]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__0_i_10
       (.I0(PCE[14]),
        .I1(result2_carry__0_i_25_n_0),
        .I2(ResultW[14]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[14]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__0_i_11
       (.I0(PCE[15]),
        .I1(result2_carry__0_i_26_n_0),
        .I2(ResultW[15]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[15]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__0_i_12
       (.I0(Q[45]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [15]),
        .O(SrcBE[15]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__0_i_13
       (.I0(Q[42]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [12]),
        .O(SrcBE[12]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__0_i_14
       (.I0(PCE[12]),
        .I1(result2_carry__0_i_27_n_0),
        .I2(ResultW[12]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[12]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__0_i_15
       (.I0(PCE[13]),
        .I1(result2_carry__0_i_28_n_0),
        .I2(ResultW[13]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[13]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__0_i_16
       (.I0(Q[43]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [13]),
        .O(SrcBE[13]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__0_i_17
       (.I0(Q[40]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [10]),
        .O(SrcBE[10]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__0_i_18
       (.I0(PCE[10]),
        .I1(result2_carry__0_i_29_n_0),
        .I2(ResultW[10]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[10]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__0_i_19
       (.I0(PCE[11]),
        .I1(result2_carry__0_i_30_n_0),
        .I2(ResultW[11]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[11]));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__0_i_2
       (.I0(SrcBE[12]),
        .I1(SrcAE[12]),
        .I2(SrcAE[13]),
        .I3(SrcBE[13]),
        .O(\q_reg[46]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__0_i_20
       (.I0(Q[41]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [11]),
        .O(SrcBE[11]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__0_i_21
       (.I0(Q[38]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [8]),
        .O(SrcBE[8]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__0_i_22
       (.I0(PCE[8]),
        .I1(result2_carry__0_i_31_n_0),
        .I2(ResultW[8]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[8]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__0_i_23
       (.I0(PCE[9]),
        .I1(result2_carry__0_i_32_n_0),
        .I2(ResultW[9]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[9]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__0_i_24
       (.I0(Q[39]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [9]),
        .O(SrcBE[9]));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__0_i_25
       (.I0(\q_reg[68]_0 [19]),
        .I1(RD1E[14]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__0_i_25_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__0_i_26
       (.I0(\q_reg[68]_0 [20]),
        .I1(RD1E[15]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__0_i_26_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__0_i_27
       (.I0(\q_reg[68]_0 [17]),
        .I1(RD1E[12]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__0_i_27_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__0_i_28
       (.I0(\q_reg[68]_0 [18]),
        .I1(RD1E[13]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__0_i_28_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__0_i_29
       (.I0(\q_reg[68]_0 [15]),
        .I1(RD1E[10]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__0_i_29_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__0_i_3
       (.I0(SrcBE[10]),
        .I1(SrcAE[10]),
        .I2(SrcAE[11]),
        .I3(SrcBE[11]),
        .O(\q_reg[46]_0 [1]));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__0_i_30
       (.I0(\q_reg[68]_0 [16]),
        .I1(RD1E[11]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__0_i_30_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__0_i_31
       (.I0(\q_reg[68]_0 [13]),
        .I1(RD1E[8]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__0_i_31_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__0_i_32
       (.I0(\q_reg[68]_0 [14]),
        .I1(RD1E[9]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__0_i_32_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__0_i_4
       (.I0(SrcBE[8]),
        .I1(SrcAE[8]),
        .I2(SrcAE[9]),
        .I3(SrcBE[9]),
        .O(\q_reg[46]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__0_i_5
       (.I0(SrcAE[15]),
        .I1(SrcBE[15]),
        .I2(SrcAE[14]),
        .I3(SrcBE[14]),
        .O(\q_reg[94]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__0_i_6
       (.I0(SrcAE[12]),
        .I1(SrcBE[12]),
        .I2(SrcAE[13]),
        .I3(SrcBE[13]),
        .O(\q_reg[94]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__0_i_7
       (.I0(SrcAE[10]),
        .I1(SrcBE[10]),
        .I2(SrcAE[11]),
        .I3(SrcBE[11]),
        .O(\q_reg[94]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__0_i_8
       (.I0(SrcAE[8]),
        .I1(SrcBE[8]),
        .I2(SrcAE[9]),
        .I3(SrcBE[9]),
        .O(\q_reg[94]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__0_i_9
       (.I0(Q[44]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [14]),
        .O(SrcBE[14]));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__1_i_1
       (.I0(SrcBE[22]),
        .I1(SrcAE[22]),
        .I2(SrcAE[23]),
        .I3(SrcBE[23]),
        .O(\q_reg[54]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__1_i_10
       (.I0(PCE[22]),
        .I1(result2_carry__1_i_25_n_0),
        .I2(\q_reg[68]_1 [6]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[22]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__1_i_11
       (.I0(PCE[23]),
        .I1(result2_carry__1_i_26_n_0),
        .I2(\q_reg[68]_1 [7]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[23]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__1_i_12
       (.I0(Q[53]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [23]),
        .O(SrcBE[23]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__1_i_13
       (.I0(Q[50]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [20]),
        .O(SrcBE[20]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__1_i_14
       (.I0(PCE[20]),
        .I1(result2_carry__1_i_27_n_0),
        .I2(\q_reg[68]_1 [4]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[20]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__1_i_15
       (.I0(PCE[21]),
        .I1(result2_carry__1_i_28_n_0),
        .I2(\q_reg[68]_1 [5]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[21]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__1_i_16
       (.I0(Q[51]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [21]),
        .O(SrcBE[21]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__1_i_17
       (.I0(Q[48]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [18]),
        .O(SrcBE[18]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__1_i_18
       (.I0(PCE[18]),
        .I1(result2_carry__1_i_29_n_0),
        .I2(\q_reg[68]_1 [2]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[18]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__1_i_19
       (.I0(PCE[19]),
        .I1(result2_carry__1_i_30_n_0),
        .I2(\q_reg[68]_1 [3]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[19]));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__1_i_2
       (.I0(SrcBE[20]),
        .I1(SrcAE[20]),
        .I2(SrcAE[21]),
        .I3(SrcBE[21]),
        .O(\q_reg[54]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__1_i_20
       (.I0(Q[49]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [19]),
        .O(SrcBE[19]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__1_i_21
       (.I0(Q[46]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [16]),
        .O(SrcBE[16]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__1_i_22
       (.I0(PCE[16]),
        .I1(result2_carry__1_i_31_n_0),
        .I2(\q_reg[68]_1 [0]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[16]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__1_i_23
       (.I0(PCE[17]),
        .I1(result2_carry__1_i_32_n_0),
        .I2(\q_reg[68]_1 [1]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[17]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__1_i_24
       (.I0(Q[47]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [17]),
        .O(SrcBE[17]));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__1_i_25
       (.I0(\q_reg[68]_0 [27]),
        .I1(RD1E[22]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__1_i_25_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__1_i_26
       (.I0(\q_reg[68]_0 [28]),
        .I1(RD1E[23]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__1_i_26_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__1_i_27
       (.I0(\q_reg[68]_0 [25]),
        .I1(RD1E[20]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__1_i_27_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__1_i_28
       (.I0(\q_reg[68]_0 [26]),
        .I1(RD1E[21]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__1_i_28_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__1_i_29
       (.I0(\q_reg[68]_0 [23]),
        .I1(RD1E[18]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__1_i_29_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__1_i_3
       (.I0(SrcBE[18]),
        .I1(SrcAE[18]),
        .I2(SrcAE[19]),
        .I3(SrcBE[19]),
        .O(\q_reg[54]_0 [1]));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__1_i_30
       (.I0(\q_reg[68]_0 [24]),
        .I1(RD1E[19]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__1_i_30_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__1_i_31
       (.I0(\q_reg[68]_0 [21]),
        .I1(RD1E[16]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__1_i_31_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__1_i_32
       (.I0(\q_reg[68]_0 [22]),
        .I1(RD1E[17]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__1_i_32_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__1_i_4
       (.I0(SrcBE[16]),
        .I1(SrcAE[16]),
        .I2(SrcAE[17]),
        .I3(SrcBE[17]),
        .O(\q_reg[54]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__1_i_5
       (.I0(SrcAE[22]),
        .I1(SrcBE[22]),
        .I2(SrcAE[23]),
        .I3(SrcBE[23]),
        .O(\q_reg[101]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__1_i_6
       (.I0(SrcAE[20]),
        .I1(SrcBE[20]),
        .I2(SrcAE[21]),
        .I3(SrcBE[21]),
        .O(\q_reg[101]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__1_i_7
       (.I0(SrcAE[18]),
        .I1(SrcBE[18]),
        .I2(SrcAE[19]),
        .I3(SrcBE[19]),
        .O(\q_reg[101]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__1_i_8
       (.I0(SrcAE[16]),
        .I1(SrcBE[16]),
        .I2(SrcAE[17]),
        .I3(SrcBE[17]),
        .O(\q_reg[101]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__1_i_9
       (.I0(Q[52]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [22]),
        .O(SrcBE[22]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    result2_carry__2_i_1
       (.I0(SrcBE[30]),
        .I1(SrcAE[30]),
        .I2(\q_reg[110]_0 ),
        .I3(ImmExtE),
        .I4(\q_reg[142]_0 [1]),
        .I5(\q_reg[9]_0 [31]),
        .O(\q_reg[63]_1 [3]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__2_i_10
       (.I0(PCE[30]),
        .I1(result2_carry__2_i_25_n_0),
        .I2(\q_reg[68]_1 [14]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[30]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__2_i_11
       (.I0(PCE[31]),
        .I1(result2_carry__2_i_26_n_0),
        .I2(\q_reg[68]_1 [15]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(\q_reg[110]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__2_i_12
       (.I0(Q[58]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [28]),
        .O(SrcBE[28]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__2_i_13
       (.I0(PCE[28]),
        .I1(result2_carry__2_i_27_n_0),
        .I2(\q_reg[68]_1 [12]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[28]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__2_i_14
       (.I0(PCE[29]),
        .I1(result2_carry__2_i_28_n_0),
        .I2(\q_reg[68]_1 [13]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[29]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__2_i_15
       (.I0(Q[59]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [29]),
        .O(SrcBE[29]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__2_i_16
       (.I0(Q[56]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [26]),
        .O(SrcBE[26]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__2_i_17
       (.I0(PCE[26]),
        .I1(result2_carry__2_i_29_n_0),
        .I2(\q_reg[68]_1 [10]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[26]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__2_i_18
       (.I0(PCE[27]),
        .I1(result2_carry__2_i_30_n_0),
        .I2(\q_reg[68]_1 [11]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[27]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__2_i_19
       (.I0(Q[57]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [27]),
        .O(SrcBE[27]));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__2_i_2
       (.I0(SrcBE[28]),
        .I1(SrcAE[28]),
        .I2(SrcAE[29]),
        .I3(SrcBE[29]),
        .O(\q_reg[63]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__2_i_20
       (.I0(Q[54]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [24]),
        .O(SrcBE[24]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__2_i_21
       (.I0(PCE[24]),
        .I1(result2_carry__2_i_31_n_0),
        .I2(\q_reg[68]_1 [8]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[24]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry__2_i_22
       (.I0(PCE[25]),
        .I1(result2_carry__2_i_32_n_0),
        .I2(\q_reg[68]_1 [9]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[25]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__2_i_23
       (.I0(Q[55]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [25]),
        .O(SrcBE[25]));
  LUT4 #(
    .INIT(16'hB847)) 
    result2_carry__2_i_24
       (.I0(ImmExtE),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [31]),
        .I3(\q_reg[110]_0 ),
        .O(\q_reg[63]_2 ));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__2_i_25
       (.I0(\q_reg[68]_0 [35]),
        .I1(RD1E[30]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__2_i_25_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__2_i_26
       (.I0(\q_reg[68]_0 [36]),
        .I1(RD1E[31]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__2_i_26_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__2_i_27
       (.I0(\q_reg[68]_0 [33]),
        .I1(RD1E[28]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__2_i_27_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__2_i_28
       (.I0(\q_reg[68]_0 [34]),
        .I1(RD1E[29]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__2_i_28_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__2_i_29
       (.I0(\q_reg[68]_0 [31]),
        .I1(RD1E[26]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__2_i_29_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__2_i_3
       (.I0(SrcBE[26]),
        .I1(SrcAE[26]),
        .I2(SrcAE[27]),
        .I3(SrcBE[27]),
        .O(\q_reg[63]_1 [1]));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__2_i_30
       (.I0(\q_reg[68]_0 [32]),
        .I1(RD1E[27]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__2_i_30_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__2_i_31
       (.I0(\q_reg[68]_0 [29]),
        .I1(RD1E[24]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__2_i_31_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry__2_i_32
       (.I0(\q_reg[68]_0 [30]),
        .I1(RD1E[25]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry__2_i_32_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry__2_i_4
       (.I0(SrcBE[24]),
        .I1(SrcAE[24]),
        .I2(SrcAE[25]),
        .I3(SrcBE[25]),
        .O(\q_reg[63]_1 [0]));
  LUT3 #(
    .INIT(8'h90)) 
    result2_carry__2_i_5
       (.I0(SrcAE[30]),
        .I1(SrcBE[30]),
        .I2(\q_reg[63]_2 ),
        .O(\q_reg[109]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__2_i_6
       (.I0(SrcAE[28]),
        .I1(SrcBE[28]),
        .I2(SrcAE[29]),
        .I3(SrcBE[29]),
        .O(\q_reg[109]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__2_i_7
       (.I0(SrcAE[26]),
        .I1(SrcBE[26]),
        .I2(SrcAE[27]),
        .I3(SrcBE[27]),
        .O(\q_reg[109]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry__2_i_8
       (.I0(SrcAE[24]),
        .I1(SrcBE[24]),
        .I2(SrcAE[25]),
        .I3(SrcBE[25]),
        .O(\q_reg[109]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry__2_i_9
       (.I0(Q[60]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [30]),
        .O(SrcBE[30]));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry_i_1
       (.I0(SrcBE[6]),
        .I1(SrcAE[6]),
        .I2(SrcAE[7]),
        .I3(SrcBE[7]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry_i_10
       (.I0(PCE[6]),
        .I1(result2_carry_i_25_n_0),
        .I2(ResultW[6]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[6]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry_i_11
       (.I0(PCE[7]),
        .I1(result2_carry_i_27_n_0),
        .I2(ResultW[7]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[7]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry_i_12
       (.I0(Q[37]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [7]),
        .O(SrcBE[7]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    result2_carry_i_13
       (.I0(Q[34]),
        .I1(\q_reg[142]_0 [1]),
        .I2(result2_carry_i_28_n_0),
        .I3(ResultW[4]),
        .I4(\q[68]_i_4_n_0 ),
        .O(SrcBE[4]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry_i_14
       (.I0(PCE[4]),
        .I1(result2_carry_i_29_n_0),
        .I2(ResultW[4]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[4]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry_i_15
       (.I0(PCE[5]),
        .I1(result2_carry_i_30_n_0),
        .I2(ResultW[5]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[5]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry_i_16
       (.I0(Q[35]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [5]),
        .O(SrcBE[5]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    result2_carry_i_17
       (.I0(Q[32]),
        .I1(\q_reg[142]_0 [1]),
        .I2(result2_carry_i_31_n_0),
        .I3(ResultW[2]),
        .I4(\q[68]_i_4_n_0 ),
        .O(SrcBE[2]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry_i_18
       (.I0(PCE[2]),
        .I1(result2_carry_i_32_n_0),
        .I2(ResultW[2]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[2]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry_i_19
       (.I0(PCE[3]),
        .I1(result2_carry_i_33_n_0),
        .I2(ResultW[3]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry_i_2
       (.I0(SrcBE[4]),
        .I1(SrcAE[4]),
        .I2(SrcAE[5]),
        .I3(SrcBE[5]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    result2_carry_i_20
       (.I0(Q[33]),
        .I1(\q_reg[142]_0 [1]),
        .I2(result2_carry_i_34_n_0),
        .I3(ResultW[3]),
        .I4(\q[68]_i_4_n_0 ),
        .O(SrcBE[3]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry_i_21
       (.I0(Q[68]),
        .I1(result2_carry_i_35_n_0),
        .I2(ResultW[0]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[0]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    result2_carry_i_22
       (.I0(Q[30]),
        .I1(\q_reg[142]_0 [1]),
        .I2(result2_carry_i_36_n_0),
        .I3(ResultW[0]),
        .I4(\q[68]_i_4_n_0 ),
        .O(\q_reg[32]_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFCCC)) 
    result2_carry_i_23
       (.I0(Q[69]),
        .I1(result2_carry_i_37_n_0),
        .I2(ResultW[1]),
        .I3(result2_carry_i_26_n_0),
        .I4(\q_reg[142]_0 [3]),
        .I5(\q_reg[142]_0 [2]),
        .O(SrcAE[1]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    result2_carry_i_24
       (.I0(Q[31]),
        .I1(\q_reg[142]_0 [1]),
        .I2(result2_carry_i_38_n_0),
        .I3(ResultW[1]),
        .I4(\q[68]_i_4_n_0 ),
        .O(SrcBE[1]));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_25
       (.I0(\q_reg[68]_0 [11]),
        .I1(RD1E[6]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry_i_25_n_0));
  LUT6 #(
    .INIT(64'h0000900000000000)) 
    result2_carry_i_26
       (.I0(Rs1E[1]),
        .I1(result2_carry_i_40_0[1]),
        .I2(\q_reg[57]_0 ),
        .I3(result2_carry_i_42_n_0),
        .I4(\hu/ForwardAE11_out ),
        .I5(result2_carry_i_41_n_0),
        .O(result2_carry_i_26_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_27
       (.I0(\q_reg[68]_0 [12]),
        .I1(RD1E[7]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry_i_27_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_28
       (.I0(\q_reg[68]_0 [9]),
        .I1(RD2E[4]),
        .I2(\hu/ForwardBE10_out ),
        .I3(result2_carry_i_43_n_0),
        .I4(\q[68]_i_7_n_0 ),
        .O(result2_carry_i_28_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_29
       (.I0(\q_reg[68]_0 [9]),
        .I1(RD1E[4]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry_i_29_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    result2_carry_i_3
       (.I0(SrcBE[2]),
        .I1(SrcAE[2]),
        .I2(SrcAE[3]),
        .I3(SrcBE[3]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_30
       (.I0(\q_reg[68]_0 [10]),
        .I1(RD1E[5]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry_i_30_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_31
       (.I0(\q_reg[68]_0 [7]),
        .I1(RD2E[2]),
        .I2(\hu/ForwardBE10_out ),
        .I3(result2_carry_i_43_n_0),
        .I4(\q[68]_i_7_n_0 ),
        .O(result2_carry_i_31_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_32
       (.I0(\q_reg[68]_0 [7]),
        .I1(RD1E[2]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry_i_32_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_33
       (.I0(\q_reg[68]_0 [8]),
        .I1(RD1E[3]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry_i_33_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_34
       (.I0(\q_reg[68]_0 [8]),
        .I1(RD2E[3]),
        .I2(\hu/ForwardBE10_out ),
        .I3(result2_carry_i_43_n_0),
        .I4(\q[68]_i_7_n_0 ),
        .O(result2_carry_i_34_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_35
       (.I0(\q_reg[68]_0 [5]),
        .I1(RD1E[0]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry_i_35_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_36
       (.I0(\q_reg[68]_0 [5]),
        .I1(RD2E[0]),
        .I2(\hu/ForwardBE10_out ),
        .I3(result2_carry_i_43_n_0),
        .I4(\q[68]_i_7_n_0 ),
        .O(result2_carry_i_36_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_37
       (.I0(\q_reg[68]_0 [6]),
        .I1(RD1E[1]),
        .I2(\hu/ForwardAE11_out ),
        .I3(result2_carry_i_40_n_0),
        .I4(result2_carry_i_41_n_0),
        .O(result2_carry_i_37_n_0));
  LUT5 #(
    .INIT(32'hA0ACCCCC)) 
    result2_carry_i_38
       (.I0(\q_reg[68]_0 [6]),
        .I1(RD2E[1]),
        .I2(\hu/ForwardBE10_out ),
        .I3(result2_carry_i_43_n_0),
        .I4(\q[68]_i_7_n_0 ),
        .O(result2_carry_i_38_n_0));
  LUT5 #(
    .INIT(32'h80000080)) 
    result2_carry_i_39
       (.I0(result2_carry_i_44_n_0),
        .I1(result2_carry_i_45_n_0),
        .I2(\q[100]_i_15_1 ),
        .I3(\q_reg[68]_0 [1]),
        .I4(Rs1E[1]),
        .O(\hu/ForwardAE11_out ));
  LUT4 #(
    .INIT(16'h4F04)) 
    result2_carry_i_4
       (.I0(SrcAE[0]),
        .I1(\q_reg[32]_0 ),
        .I2(SrcAE[1]),
        .I3(SrcBE[1]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h80000080)) 
    result2_carry_i_40
       (.I0(result2_carry_i_46_n_0),
        .I1(result2_carry_i_47_n_0),
        .I2(\q_reg[57]_0 ),
        .I3(result2_carry_i_40_0[1]),
        .I4(Rs1E[1]),
        .O(result2_carry_i_40_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    result2_carry_i_41
       (.I0(Rs1E[4]),
        .I1(Rs1E[0]),
        .I2(Rs1E[1]),
        .I3(Rs1E[2]),
        .I4(Rs1E[3]),
        .O(result2_carry_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h90090000)) 
    result2_carry_i_42
       (.I0(result2_carry_i_40_0[3]),
        .I1(Rs1E[3]),
        .I2(result2_carry_i_40_0[2]),
        .I3(Rs1E[2]),
        .I4(result2_carry_i_46_n_0),
        .O(result2_carry_i_42_n_0));
  LUT5 #(
    .INIT(32'h80000080)) 
    result2_carry_i_43
       (.I0(\q[68]_i_10_n_0 ),
        .I1(\q[100]_i_15_2 ),
        .I2(\q_reg[57]_0 ),
        .I3(result2_carry_i_40_0[1]),
        .I4(Rs2E[1]),
        .O(result2_carry_i_43_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry_i_44
       (.I0(Rs1E[4]),
        .I1(\q_reg[68]_0 [4]),
        .I2(Rs1E[0]),
        .I3(\q_reg[68]_0 [0]),
        .O(result2_carry_i_44_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry_i_45
       (.I0(Rs1E[2]),
        .I1(\q_reg[68]_0 [2]),
        .I2(Rs1E[3]),
        .I3(\q_reg[68]_0 [3]),
        .O(result2_carry_i_45_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry_i_46
       (.I0(Rs1E[4]),
        .I1(result2_carry_i_40_0[4]),
        .I2(Rs1E[0]),
        .I3(result2_carry_i_40_0[0]),
        .O(result2_carry_i_46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry_i_47
       (.I0(Rs1E[2]),
        .I1(result2_carry_i_40_0[2]),
        .I2(Rs1E[3]),
        .I3(result2_carry_i_40_0[3]),
        .O(result2_carry_i_47_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry_i_5
       (.I0(SrcAE[6]),
        .I1(SrcBE[6]),
        .I2(SrcAE[7]),
        .I3(SrcBE[7]),
        .O(\q_reg[85]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry_i_6
       (.I0(SrcBE[4]),
        .I1(SrcAE[4]),
        .I2(SrcAE[5]),
        .I3(SrcBE[5]),
        .O(\q_reg[85]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry_i_7
       (.I0(SrcBE[3]),
        .I1(SrcAE[3]),
        .I2(SrcAE[2]),
        .I3(SrcBE[2]),
        .O(\q_reg[85]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    result2_carry_i_8
       (.I0(SrcBE[1]),
        .I1(SrcAE[1]),
        .I2(\q_reg[32]_0 ),
        .I3(SrcAE[0]),
        .O(\q_reg[85]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result2_carry_i_9
       (.I0(Q[36]),
        .I1(\q_reg[142]_0 [1]),
        .I2(\q_reg[9]_0 [6]),
        .O(SrcBE[6]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_1
       (.I0(Q[37]),
        .I1(PCE[7]),
        .O(\q_reg[39]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_2
       (.I0(Q[36]),
        .I1(PCE[6]),
        .O(\q_reg[39]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_3
       (.I0(Q[35]),
        .I1(PCE[5]),
        .O(\q_reg[39]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_4
       (.I0(Q[34]),
        .I1(PCE[4]),
        .O(\q_reg[39]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_1
       (.I0(Q[41]),
        .I1(PCE[11]),
        .O(\q_reg[43]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_2
       (.I0(Q[40]),
        .I1(PCE[10]),
        .O(\q_reg[43]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_3
       (.I0(Q[39]),
        .I1(PCE[9]),
        .O(\q_reg[43]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_4
       (.I0(Q[38]),
        .I1(PCE[8]),
        .O(\q_reg[43]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_1
       (.I0(Q[45]),
        .I1(PCE[15]),
        .O(\q_reg[47]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_2
       (.I0(Q[44]),
        .I1(PCE[14]),
        .O(\q_reg[47]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_3
       (.I0(Q[43]),
        .I1(PCE[13]),
        .O(\q_reg[47]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_4
       (.I0(Q[42]),
        .I1(PCE[12]),
        .O(\q_reg[47]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_1
       (.I0(Q[49]),
        .I1(PCE[19]),
        .O(\q_reg[51]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_2
       (.I0(Q[48]),
        .I1(PCE[18]),
        .O(\q_reg[51]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_3
       (.I0(Q[47]),
        .I1(PCE[17]),
        .O(\q_reg[51]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_4
       (.I0(Q[46]),
        .I1(PCE[16]),
        .O(\q_reg[51]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_1
       (.I0(Q[53]),
        .I1(PCE[23]),
        .O(\q_reg[55]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_2
       (.I0(Q[52]),
        .I1(PCE[22]),
        .O(\q_reg[55]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_3
       (.I0(Q[51]),
        .I1(PCE[21]),
        .O(\q_reg[55]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_4
       (.I0(Q[50]),
        .I1(PCE[20]),
        .O(\q_reg[55]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_1
       (.I0(Q[57]),
        .I1(PCE[27]),
        .O(\q_reg[59]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_2
       (.I0(Q[56]),
        .I1(PCE[26]),
        .O(\q_reg[59]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_3
       (.I0(Q[55]),
        .I1(PCE[25]),
        .O(\q_reg[59]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_4
       (.I0(Q[54]),
        .I1(PCE[24]),
        .O(\q_reg[59]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_1
       (.I0(ImmExtE),
        .I1(PCE[31]),
        .O(\q_reg[63]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_2
       (.I0(Q[60]),
        .I1(PCE[30]),
        .O(\q_reg[63]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_3
       (.I0(Q[59]),
        .I1(PCE[29]),
        .O(\q_reg[63]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_4
       (.I0(Q[58]),
        .I1(PCE[28]),
        .O(\q_reg[63]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_1
       (.I0(Q[33]),
        .I1(PCE[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_2
       (.I0(Q[32]),
        .I1(PCE[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_3
       (.I0(Q[31]),
        .I1(Q[69]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_4
       (.I0(Q[30]),
        .I1(Q[68]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "imem" *) 
module design_1_top_0_0_imem
   (a,
    rd);
  input [31:0]a;
  output [31:0]rd;

  wire [31:0]a;
  wire [31:1]\^rd ;

  assign rd[31:27] = \^rd [31:27];
  assign rd[26] = \^rd [29];
  assign rd[25:1] = \^rd [25:1];
  assign rd[0] = \^rd [1];
  LUT6 #(
    .INIT(64'h07FFFFFFFFFFFFFF)) 
    g0_b0
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [1]));
  LUT6 #(
    .INIT(64'h07FC000400000C15)) 
    g0_b1
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [2]));
  LUT6 #(
    .INIT(64'h000000DFFFFC0000)) 
    g0_b10
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [11]));
  LUT6 #(
    .INIT(64'h0002AE07F2730C01)) 
    g0_b11
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [12]));
  LUT6 #(
    .INIT(64'h0003003006FFE004)) 
    g0_b12
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [13]));
  LUT6 #(
    .INIT(64'h0003C4836FC00405)) 
    g0_b13
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [14]));
  LUT6 #(
    .INIT(64'h000AB001BFF57326)) 
    g0_b14
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [15]));
  LUT6 #(
    .INIT(64'h00084003602A8238)) 
    g0_b15
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [16]));
  LUT6 #(
    .INIT(64'h000B0FF800000000)) 
    g0_b16
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [17]));
  LUT6 #(
    .INIT(64'h00000FF800000405)) 
    g0_b17
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [18]));
  LUT6 #(
    .INIT(64'h00000FF800000004)) 
    g0_b18
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [19]));
  LUT6 #(
    .INIT(64'h000158238FED97A5)) 
    g0_b19
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [20]));
  LUT6 #(
    .INIT(64'h07F4000000000000)) 
    g0_b2
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [3]));
  LUT6 #(
    .INIT(64'h0000A7000FD585A5)) 
    g0_b20
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [21]));
  LUT6 #(
    .INIT(64'h02AF09207E2190A0)) 
    g0_b21
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [22]));
  LUT6 #(
    .INIT(64'h019001280E01E0A6)) 
    g0_b22
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [23]));
  LUT6 #(
    .INIT(64'h007001280003C02A)) 
    g0_b23
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [24]));
  LUT6 #(
    .INIT(64'h0003F0080001A42F)) 
    g0_b24
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [25]));
  LUT6 #(
    .INIT(64'h000000000003A02C)) 
    g0_b25
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [27]));
  LUT6 #(
    .INIT(64'h000000080003A425)) 
    g0_b26
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [28]));
  LUT6 #(
    .INIT(64'h000000080003A02A)) 
    g0_b27
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [29]));
  LUT6 #(
    .INIT(64'h0000000A4003C22A)) 
    g0_b28
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [30]));
  LUT6 #(
    .INIT(64'h000000080000C02C)) 
    g0_b29
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [31]));
  LUT4 #(
    .INIT(16'h01FF)) 
    g0_b3
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[7]),
        .O(\^rd [4]));
  LUT6 #(
    .INIT(64'h07FFF92071FC0715)) 
    g0_b4
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [5]));
  LUT6 #(
    .INIT(64'h07FFF00000000000)) 
    g0_b5
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [6]));
  LUT6 #(
    .INIT(64'h00040392AAAAAAB3)) 
    g0_b6
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [7]));
  LUT6 #(
    .INIT(64'h00040CC33333333C)) 
    g0_b7
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [8]));
  LUT6 #(
    .INIT(64'h00040EFFC3C3C3C0)) 
    g0_b8
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [9]));
  LUT6 #(
    .INIT(64'h000800DFFC03FC00)) 
    g0_b9
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\^rd [10]));
endmodule

(* ORIG_REF_NAME = "regfile" *) 
module design_1_top_0_0_regfile
   (rd10,
    rd20,
    \q_reg[142] ,
    \q_reg[142]_0 ,
    Q,
    \q_reg[136] ,
    wd3,
    clk);
  output [31:0]rd10;
  output [31:0]rd20;
  input [15:0]\q_reg[142] ;
  input [0:0]\q_reg[142]_0 ;
  input [4:0]Q;
  input [9:0]\q_reg[136] ;
  input [15:0]wd3;
  input clk;

  wire [4:0]Q;
  wire clk;
  wire [9:0]\q_reg[136] ;
  wire [15:0]\q_reg[142] ;
  wire [0:0]\q_reg[142]_0 ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [15:0]wd3;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_0_5
       (.ADDRA(\q_reg[136] [4:0]),
        .ADDRB(\q_reg[136] [4:0]),
        .ADDRC(\q_reg[136] [4:0]),
        .ADDRD(Q),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_12_17
       (.ADDRA(\q_reg[136] [4:0]),
        .ADDRB(\q_reg[136] [4:0]),
        .ADDRC(\q_reg[136] [4:0]),
        .ADDRD(Q),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(\q_reg[142] [1:0]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_18_23
       (.ADDRA(\q_reg[136] [4:0]),
        .ADDRB(\q_reg[136] [4:0]),
        .ADDRC(\q_reg[136] [4:0]),
        .ADDRD(Q),
        .DIA(\q_reg[142] [3:2]),
        .DIB(\q_reg[142] [5:4]),
        .DIC(\q_reg[142] [7:6]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_24_29
       (.ADDRA(\q_reg[136] [4:0]),
        .ADDRB(\q_reg[136] [4:0]),
        .ADDRC(\q_reg[136] [4:0]),
        .ADDRD(Q),
        .DIA(\q_reg[142] [9:8]),
        .DIB(\q_reg[142] [11:10]),
        .DIC(\q_reg[142] [13:12]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_30_31
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(\q_reg[142] [14]),
        .DPO(rd10[30]),
        .DPRA0(\q_reg[136] [0]),
        .DPRA1(\q_reg[136] [1]),
        .DPRA2(\q_reg[136] [2]),
        .DPRA3(\q_reg[136] [3]),
        .DPRA4(\q_reg[136] [4]),
        .SPO(NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_30_31__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(\q_reg[142] [15]),
        .DPO(rd10[31]),
        .DPRA0(\q_reg[136] [0]),
        .DPRA1(\q_reg[136] [1]),
        .DPRA2(\q_reg[136] [2]),
        .DPRA3(\q_reg[136] [3]),
        .DPRA4(\q_reg[136] [4]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_6_11
       (.ADDRA(\q_reg[136] [4:0]),
        .ADDRB(\q_reg[136] [4:0]),
        .ADDRC(\q_reg[136] [4:0]),
        .ADDRD(Q),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_0_5
       (.ADDRA(\q_reg[136] [9:5]),
        .ADDRB(\q_reg[136] [9:5]),
        .ADDRC(\q_reg[136] [9:5]),
        .ADDRD(Q),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_12_17
       (.ADDRA(\q_reg[136] [9:5]),
        .ADDRB(\q_reg[136] [9:5]),
        .ADDRC(\q_reg[136] [9:5]),
        .ADDRD(Q),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(\q_reg[142] [1:0]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_18_23
       (.ADDRA(\q_reg[136] [9:5]),
        .ADDRB(\q_reg[136] [9:5]),
        .ADDRC(\q_reg[136] [9:5]),
        .ADDRD(Q),
        .DIA(\q_reg[142] [3:2]),
        .DIB(\q_reg[142] [5:4]),
        .DIC(\q_reg[142] [7:6]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_24_29
       (.ADDRA(\q_reg[136] [9:5]),
        .ADDRB(\q_reg[136] [9:5]),
        .ADDRC(\q_reg[136] [9:5]),
        .ADDRD(Q),
        .DIA(\q_reg[142] [9:8]),
        .DIB(\q_reg[142] [11:10]),
        .DIC(\q_reg[142] [13:12]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_30_31
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(\q_reg[142] [14]),
        .DPO(rd20[30]),
        .DPRA0(\q_reg[136] [5]),
        .DPRA1(\q_reg[136] [6]),
        .DPRA2(\q_reg[136] [7]),
        .DPRA3(\q_reg[136] [8]),
        .DPRA4(\q_reg[136] [9]),
        .SPO(NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_30_31__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(\q_reg[142] [15]),
        .DPO(rd20[31]),
        .DPRA0(\q_reg[136] [5]),
        .DPRA1(\q_reg[136] [6]),
        .DPRA2(\q_reg[136] [7]),
        .DPRA3(\q_reg[136] [8]),
        .DPRA4(\q_reg[136] [9]),
        .SPO(NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_6_11
       (.ADDRA(\q_reg[136] [9:5]),
        .ADDRB(\q_reg[136] [9:5]),
        .ADDRC(\q_reg[136] [9:5]),
        .ADDRD(Q),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[142]_0 ));
endmodule

(* ORIG_REF_NAME = "riscv" *) 
module design_1_top_0_0_riscv
   (clk,
    reset,
    PCF,
    InstrF,
    MemWriteM,
    ALUResultM,
    WriteDataM,
    ReadDataM,
    MemStrobe,
    PCready);
  input clk;
  input reset;
  output [31:0]PCF;
  input [31:0]InstrF;
  output MemWriteM;
  output [31:0]ALUResultM;
  output [31:0]WriteDataM;
  input [31:0]ReadDataM;
  output MemStrobe;
  input PCready;

  wire [3:0]ALUControlE;
  wire [30:0]ALUResultE;
  wire [31:0]ALUResultM;
  wire [31:16]ALUResultW;
  wire [1:0]ALUSrcAE;
  wire ALUSrcBE;
  wire [31:0]InstrF;
  wire JalrControlE;
  wire MemStrobe;
  wire MemWriteM;
  wire NegativeE;
  wire [31:0]PCF;
  wire [31:3]PCNextF;
  wire [31:3]PCPlus4F;
  wire PCSrcE;
  wire [31:3]PCTargetEmux;
  wire PCready;
  wire [31:0]ReadDataM;
  wire [31:16]ReadDataW;
  wire RegWriteM;
  wire RegWriteW;
  wire ResultSrcEb0;
  wire [1:0]ResultSrcW;
  wire [31:16]ResultW;
  wire [31:31]SrcAE;
  wire [31:0]SrcBE;
  wire [31:0]WriteDataM;
  wire [31:8]WriteDataM_Original;
  wire \alu/p_3_in ;
  wire c_n_100;
  wire c_n_101;
  wire c_n_102;
  wire c_n_103;
  wire c_n_126;
  wire c_n_127;
  wire c_n_158;
  wire c_n_159;
  wire c_n_160;
  wire c_n_98;
  wire c_n_99;
  wire clk;
  wire dp_n_109;
  wire dp_n_112;
  wire dp_n_113;
  wire dp_n_114;
  wire dp_n_115;
  wire dp_n_116;
  wire dp_n_117;
  wire dp_n_118;
  wire dp_n_120;
  wire dp_n_121;
  wire dp_n_122;
  wire dp_n_123;
  wire dp_n_124;
  wire dp_n_125;
  wire dp_n_126;
  wire dp_n_127;
  wire dp_n_128;
  wire dp_n_129;
  wire dp_n_130;
  wire dp_n_131;
  wire dp_n_132;
  wire dp_n_133;
  wire dp_n_134;
  wire dp_n_135;
  wire dp_n_136;
  wire dp_n_137;
  wire dp_n_138;
  wire dp_n_139;
  wire dp_n_140;
  wire dp_n_141;
  wire dp_n_142;
  wire dp_n_143;
  wire dp_n_144;
  wire dp_n_145;
  wire dp_n_202;
  wire dp_n_203;
  wire dp_n_204;
  wire dp_n_205;
  wire dp_n_206;
  wire dp_n_207;
  wire dp_n_208;
  wire dp_n_209;
  wire dp_n_210;
  wire dp_n_211;
  wire dp_n_212;
  wire dp_n_213;
  wire dp_n_214;
  wire dp_n_215;
  wire dp_n_216;
  wire dp_n_217;
  wire dp_n_218;
  wire dp_n_219;
  wire dp_n_220;
  wire dp_n_221;
  wire dp_n_222;
  wire dp_n_223;
  wire dp_n_224;
  wire dp_n_225;
  wire dp_n_226;
  wire dp_n_227;
  wire dp_n_228;
  wire dp_n_229;
  wire dp_n_230;
  wire dp_n_231;
  wire dp_n_232;
  wire dp_n_233;
  wire dp_n_234;
  wire dp_n_235;
  wire dp_n_236;
  wire dp_n_237;
  wire dp_n_238;
  wire dp_n_239;
  wire dp_n_240;
  wire dp_n_241;
  wire dp_n_242;
  wire dp_n_243;
  wire dp_n_244;
  wire dp_n_245;
  wire dp_n_246;
  wire dp_n_247;
  wire dp_n_248;
  wire dp_n_249;
  wire dp_n_283;
  wire dp_n_284;
  wire dp_n_285;
  wire dp_n_286;
  wire dp_n_287;
  wire dp_n_288;
  wire dp_n_289;
  wire dp_n_290;
  wire dp_n_291;
  wire dp_n_292;
  wire dp_n_293;
  wire dp_n_294;
  wire dp_n_295;
  wire dp_n_296;
  wire dp_n_297;
  wire dp_n_298;
  wire dp_n_299;
  wire dp_n_300;
  wire dp_n_309;
  wire dp_n_310;
  wire dp_n_311;
  wire dp_n_312;
  wire dp_n_313;
  wire dp_n_314;
  wire dp_n_315;
  wire dp_n_316;
  wire dp_n_317;
  wire dp_n_318;
  wire dp_n_319;
  wire dp_n_320;
  wire dp_n_321;
  wire dp_n_322;
  wire dp_n_323;
  wire dp_n_324;
  wire dp_n_325;
  wire dp_n_326;
  wire dp_n_327;
  wire dp_n_328;
  wire dp_n_329;
  wire dp_n_330;
  wire dp_n_331;
  wire dp_n_332;
  wire dp_n_334;
  wire dp_n_335;
  wire dp_n_336;
  wire dp_n_337;
  wire dp_n_338;
  wire dp_n_339;
  wire dp_n_340;
  wire dp_n_341;
  wire dp_n_342;
  wire dp_n_343;
  wire dp_n_344;
  wire dp_n_345;
  wire dp_n_346;
  wire dp_n_347;
  wire dp_n_348;
  wire dp_n_349;
  wire dp_n_350;
  wire dp_n_351;
  wire dp_n_352;
  wire dp_n_353;
  wire dp_n_354;
  wire dp_n_355;
  wire dp_n_356;
  wire dp_n_357;
  wire dp_n_358;
  wire dp_n_359;
  wire dp_n_360;
  wire dp_n_361;
  wire [2:0]funct3M;
  wire [2:0]funct3W;
  wire [31:31]\loader/data0 ;
  wire [17:0]p_0_in;
  wire [95:2]\regD/p_0_in ;
  wire reset;

  design_1_top_0_0_controller c
       (.D({PCNextF[31],PCNextF[29:3]}),
        .InstrF(InstrF[31:1]),
        .O(dp_n_334),
        .PCPlus4F({PCPlus4F[31],PCPlus4F[29:3]}),
        .PCSrcE(PCSrcE),
        .PCTargetEmux({PCTargetEmux[31],PCTargetEmux[29:3]}),
        .Q({ResultSrcEb0,ALUControlE,ALUSrcAE,ALUSrcBE,JalrControlE}),
        .ReadDataM(ReadDataM[31:8]),
        .ResultW(ResultW),
        .SrcAE(SrcAE),
        .SrcBE({SrcBE[31],SrcBE[0]}),
        .WriteDataM(WriteDataM[31:8]),
        .clk(clk),
        .data0(\loader/data0 ),
        .\q[31]_i_4 ({ALUResultE[30],ALUResultE[2:0]}),
        .\q_reg[100] (dp_n_120),
        .\q_reg[100]_0 (dp_n_299),
        .\q_reg[100]_1 (\alu/p_3_in ),
        .\q_reg[10] (c_n_99),
        .\q_reg[11] (c_n_126),
        .\q_reg[17] ({p_0_in[17],p_0_in[15:0]}),
        .\q_reg[1] (c_n_159),
        .\q_reg[2] ({\regD/p_0_in [95:65],\regD/p_0_in [2]}),
        .\q_reg[2]_0 (c_n_158),
        .\q_reg[2]_1 (PCF[2]),
        .\q_reg[5] ({RegWriteW,ResultSrcW,funct3W}),
        .\q_reg[68] ({ALUResultW,ReadDataW,dp_n_283,dp_n_284,dp_n_285,dp_n_286,dp_n_287,dp_n_288,dp_n_289,dp_n_290,dp_n_291,dp_n_292,dp_n_293,dp_n_294,dp_n_295,dp_n_296,dp_n_297,dp_n_298}),
        .\q_reg[72] (dp_n_139),
        .\q_reg[72]_0 (dp_n_339),
        .\q_reg[72]_1 (dp_n_140),
        .\q_reg[72]_2 (dp_n_205),
        .\q_reg[73] (dp_n_145),
        .\q_reg[73]_0 (dp_n_338),
        .\q_reg[73]_1 (dp_n_204),
        .\q_reg[73]_2 (dp_n_142),
        .\q_reg[74] (dp_n_144),
        .\q_reg[74]_0 (dp_n_336),
        .\q_reg[74]_1 (dp_n_141),
        .\q_reg[74]_2 (dp_n_203),
        .\q_reg[75] (dp_n_143),
        .\q_reg[75]_0 (dp_n_337),
        .\q_reg[75]_1 (dp_n_202),
        .\q_reg[75]_2 (dp_n_122),
        .\q_reg[76] (dp_n_138),
        .\q_reg[76]_0 (dp_n_335),
        .\q_reg[76]_1 (dp_n_121),
        .\q_reg[76]_2 (dp_n_215),
        .\q_reg[77] (dp_n_137),
        .\q_reg[77]_0 (dp_n_345),
        .\q_reg[77]_1 (dp_n_214),
        .\q_reg[77]_2 (dp_n_209),
        .\q_reg[78] (dp_n_135),
        .\q_reg[78]_0 (dp_n_340),
        .\q_reg[78]_1 (dp_n_208),
        .\q_reg[78]_2 (dp_n_219),
        .\q_reg[79] (dp_n_136),
        .\q_reg[79]_0 (dp_n_343),
        .\q_reg[79]_1 (dp_n_218),
        .\q_reg[79]_2 (dp_n_207),
        .\q_reg[7] ({RegWriteM,MemWriteM,funct3M,MemStrobe}),
        .\q_reg[80] (dp_n_131),
        .\q_reg[80]_0 (dp_n_341),
        .\q_reg[80]_1 (dp_n_206),
        .\q_reg[80]_2 (dp_n_217),
        .\q_reg[81] (dp_n_132),
        .\q_reg[81]_0 (dp_n_346),
        .\q_reg[81]_1 (dp_n_216),
        .\q_reg[81]_2 (dp_n_211),
        .\q_reg[82] (dp_n_133),
        .\q_reg[82]_0 (dp_n_342),
        .\q_reg[82]_1 (dp_n_210),
        .\q_reg[82]_2 (dp_n_221),
        .\q_reg[83] (dp_n_134),
        .\q_reg[83]_0 (dp_n_344),
        .\q_reg[83]_1 (dp_n_220),
        .\q_reg[83]_2 (dp_n_213),
        .\q_reg[84] (dp_n_127),
        .\q_reg[84]_0 (dp_n_347),
        .\q_reg[84]_1 (dp_n_212),
        .\q_reg[84]_2 (dp_n_235),
        .\q_reg[85] (dp_n_128),
        .\q_reg[85]_0 (dp_n_359),
        .\q_reg[85]_1 (dp_n_234),
        .\q_reg[85]_2 (dp_n_237),
        .\q_reg[86] (dp_n_130),
        .\q_reg[86]_0 (dp_n_352),
        .\q_reg[86]_1 (dp_n_236),
        .\q_reg[86]_2 (dp_n_231),
        .\q_reg[87] (dp_n_129),
        .\q_reg[87]_0 (dp_n_356),
        .\q_reg[87]_1 (dp_n_230),
        .\q_reg[87]_2 (dp_n_233),
        .\q_reg[88] (dp_n_126),
        .\q_reg[88]_0 (dp_n_349),
        .\q_reg[88]_1 (dp_n_232),
        .\q_reg[88]_2 (dp_n_223),
        .\q_reg[89] (dp_n_125),
        .\q_reg[89]_0 (dp_n_361),
        .\q_reg[89]_1 (dp_n_222),
        .\q_reg[89]_2 (dp_n_225),
        .\q_reg[8] (c_n_101),
        .\q_reg[8]_0 (c_n_102),
        .\q_reg[8]_1 (c_n_103),
        .\q_reg[8]_2 (c_n_160),
        .\q_reg[90] (dp_n_123),
        .\q_reg[90]_0 (dp_n_354),
        .\q_reg[90]_1 (dp_n_224),
        .\q_reg[90]_2 (dp_n_227),
        .\q_reg[91] (dp_n_124),
        .\q_reg[91]_0 (dp_n_357),
        .\q_reg[91]_1 (dp_n_226),
        .\q_reg[91]_2 (dp_n_229),
        .\q_reg[92] (dp_n_109),
        .\q_reg[92]_0 (dp_n_350),
        .\q_reg[92]_1 (dp_n_228),
        .\q_reg[92]_2 (dp_n_239),
        .\q_reg[93] (dp_n_112),
        .\q_reg[93]_0 (dp_n_358),
        .\q_reg[93]_1 (dp_n_238),
        .\q_reg[93]_2 (dp_n_241),
        .\q_reg[94] (dp_n_113),
        .\q_reg[94]_0 (dp_n_351),
        .\q_reg[94]_1 (dp_n_240),
        .\q_reg[94]_2 (dp_n_243),
        .\q_reg[95] (dp_n_114),
        .\q_reg[95]_0 (dp_n_355),
        .\q_reg[95]_1 (dp_n_242),
        .\q_reg[95]_2 (dp_n_245),
        .\q_reg[96] (dp_n_115),
        .\q_reg[96]_0 (dp_n_348),
        .\q_reg[96]_1 (dp_n_244),
        .\q_reg[96]_2 (dp_n_247),
        .\q_reg[97] (dp_n_116),
        .\q_reg[97]_0 (dp_n_360),
        .\q_reg[97]_1 (dp_n_246),
        .\q_reg[97]_2 (dp_n_249),
        .\q_reg[98] (dp_n_117),
        .\q_reg[98]_0 (dp_n_353),
        .\q_reg[98]_1 (dp_n_248),
        .\q_reg[98]_2 (dp_n_118),
        .\q_reg[9] ({NegativeE,ALUResultE[29:3]}),
        .\q_reg[9]_0 (c_n_98),
        .\q_reg[9]_1 (c_n_100),
        .\q_reg[9]_2 (c_n_127),
        .reset(reset),
        .rf_reg_r1_0_31_24_29_i_3(dp_n_300),
        .\writeDataM[10] (dp_n_311),
        .\writeDataM[11] (dp_n_312),
        .\writeDataM[12] (dp_n_313),
        .\writeDataM[13] (dp_n_314),
        .\writeDataM[14] (dp_n_315),
        .\writeDataM[15] (dp_n_316),
        .\writeDataM[16] ({ALUResultM[1],WriteDataM_Original}),
        .\writeDataM[16]_0 (dp_n_317),
        .\writeDataM[17] (dp_n_318),
        .\writeDataM[18] (dp_n_319),
        .\writeDataM[19] (dp_n_320),
        .\writeDataM[20] (dp_n_321),
        .\writeDataM[21] (dp_n_322),
        .\writeDataM[22] (dp_n_323),
        .\writeDataM[23] (dp_n_324),
        .\writeDataM[24] (dp_n_325),
        .\writeDataM[25] (dp_n_326),
        .\writeDataM[26] (dp_n_327),
        .\writeDataM[27] (dp_n_328),
        .\writeDataM[28] (dp_n_329),
        .\writeDataM[29] (dp_n_330),
        .\writeDataM[30] (dp_n_331),
        .\writeDataM[31] (dp_n_332),
        .\writeDataM[8] (dp_n_309),
        .\writeDataM[9] (dp_n_310));
  design_1_top_0_0_datapath dp
       (.D({PCNextF[31],PCNextF[29:3]}),
        .O(dp_n_334),
        .PCSrcE(PCSrcE),
        .PCready(PCready),
        .Q(PCF),
        .ReadDataM(ReadDataM),
        .WriteDataM(WriteDataM[7:0]),
        .clk(clk),
        .\q[100]_i_15 ({RegWriteM,funct3M}),
        .\q[69]_i_3 (c_n_160),
        .\q_reg[100] ({ALUResultM,WriteDataM_Original}),
        .\q_reg[100]_0 ({ALUResultW,ReadDataW,dp_n_283,dp_n_284,dp_n_285,dp_n_286,dp_n_287,dp_n_288,dp_n_289,dp_n_290,dp_n_291,dp_n_292,dp_n_293,dp_n_294,dp_n_295,dp_n_296,dp_n_297,dp_n_298}),
        .\q_reg[100]_1 ({NegativeE,ALUResultE[29:3]}),
        .\q_reg[109] (\alu/p_3_in ),
        .\q_reg[110] (SrcAE),
        .\q_reg[142] ({RegWriteW,ResultSrcW,funct3W}),
        .\q_reg[142]_0 ({ResultSrcEb0,ALUControlE,ALUSrcAE,ALUSrcBE,JalrControlE}),
        .\q_reg[1] (dp_n_317),
        .\q_reg[1]_0 (dp_n_318),
        .\q_reg[1]_1 (dp_n_319),
        .\q_reg[1]_2 (dp_n_320),
        .\q_reg[1]_3 (dp_n_321),
        .\q_reg[1]_4 (dp_n_322),
        .\q_reg[1]_5 (dp_n_323),
        .\q_reg[1]_6 (dp_n_324),
        .\q_reg[31] ({PCPlus4F[31],PCPlus4F[29:3]}),
        .\q_reg[33] (dp_n_118),
        .\q_reg[33]_0 (dp_n_122),
        .\q_reg[33]_1 (dp_n_207),
        .\q_reg[33]_10 (dp_n_225),
        .\q_reg[33]_11 (dp_n_227),
        .\q_reg[33]_12 (dp_n_229),
        .\q_reg[33]_13 (dp_n_231),
        .\q_reg[33]_14 (dp_n_233),
        .\q_reg[33]_15 (dp_n_235),
        .\q_reg[33]_16 (dp_n_237),
        .\q_reg[33]_17 (dp_n_239),
        .\q_reg[33]_18 (dp_n_241),
        .\q_reg[33]_19 (dp_n_243),
        .\q_reg[33]_2 (dp_n_209),
        .\q_reg[33]_20 (dp_n_245),
        .\q_reg[33]_21 (dp_n_247),
        .\q_reg[33]_22 (dp_n_249),
        .\q_reg[33]_3 (dp_n_211),
        .\q_reg[33]_4 (dp_n_213),
        .\q_reg[33]_5 (dp_n_215),
        .\q_reg[33]_6 (dp_n_217),
        .\q_reg[33]_7 (dp_n_219),
        .\q_reg[33]_8 (dp_n_221),
        .\q_reg[33]_9 (dp_n_223),
        .\q_reg[34] (dp_n_142),
        .\q_reg[34]_0 (dp_n_203),
        .\q_reg[34]_1 (dp_n_205),
        .\q_reg[37] (dp_n_309),
        .\q_reg[38] (dp_n_310),
        .\q_reg[39] (dp_n_311),
        .\q_reg[40] (dp_n_312),
        .\q_reg[41] (dp_n_313),
        .\q_reg[42] (dp_n_314),
        .\q_reg[43] (dp_n_315),
        .\q_reg[44] (dp_n_316),
        .\q_reg[45] (dp_n_325),
        .\q_reg[46] (dp_n_326),
        .\q_reg[47] (dp_n_327),
        .\q_reg[48] (dp_n_328),
        .\q_reg[49] (dp_n_329),
        .\q_reg[50] (dp_n_330),
        .\q_reg[51] (dp_n_331),
        .\q_reg[52] (dp_n_332),
        .\q_reg[62] ({PCTargetEmux[31],PCTargetEmux[29:3]}),
        .\q_reg[63] ({SrcBE[31],SrcBE[0]}),
        .\q_reg[63]_0 (dp_n_299),
        .\q_reg[65] ({p_0_in[17],p_0_in[15:0]}),
        .\q_reg[68] (\loader/data0 ),
        .\q_reg[68]_0 (dp_n_300),
        .\q_reg[68]_1 (ResultW),
        .\q_reg[69] (c_n_127),
        .\q_reg[70] (c_n_102),
        .\q_reg[70]_0 (c_n_103),
        .\q_reg[71] (c_n_98),
        .\q_reg[71]_0 (c_n_99),
        .\q_reg[71]_1 (c_n_101),
        .\q_reg[8] (dp_n_109),
        .\q_reg[8]_0 (dp_n_112),
        .\q_reg[8]_1 (dp_n_113),
        .\q_reg[8]_10 (dp_n_125),
        .\q_reg[8]_11 (dp_n_126),
        .\q_reg[8]_12 (dp_n_127),
        .\q_reg[8]_13 (dp_n_128),
        .\q_reg[8]_14 (dp_n_129),
        .\q_reg[8]_15 (dp_n_130),
        .\q_reg[8]_16 (dp_n_131),
        .\q_reg[8]_17 (dp_n_132),
        .\q_reg[8]_18 (dp_n_133),
        .\q_reg[8]_19 (dp_n_134),
        .\q_reg[8]_2 (dp_n_114),
        .\q_reg[8]_20 (dp_n_135),
        .\q_reg[8]_21 (dp_n_136),
        .\q_reg[8]_22 (dp_n_137),
        .\q_reg[8]_23 (dp_n_138),
        .\q_reg[8]_24 (dp_n_139),
        .\q_reg[8]_25 (dp_n_140),
        .\q_reg[8]_26 (dp_n_141),
        .\q_reg[8]_27 (dp_n_143),
        .\q_reg[8]_28 (dp_n_144),
        .\q_reg[8]_29 (dp_n_145),
        .\q_reg[8]_3 (dp_n_115),
        .\q_reg[8]_30 (dp_n_202),
        .\q_reg[8]_31 (dp_n_204),
        .\q_reg[8]_32 (dp_n_206),
        .\q_reg[8]_33 (dp_n_208),
        .\q_reg[8]_34 (dp_n_210),
        .\q_reg[8]_35 (dp_n_212),
        .\q_reg[8]_36 (dp_n_214),
        .\q_reg[8]_37 (dp_n_216),
        .\q_reg[8]_38 (dp_n_218),
        .\q_reg[8]_39 (dp_n_220),
        .\q_reg[8]_4 (dp_n_116),
        .\q_reg[8]_40 (dp_n_222),
        .\q_reg[8]_41 (dp_n_224),
        .\q_reg[8]_42 (dp_n_226),
        .\q_reg[8]_43 (dp_n_228),
        .\q_reg[8]_44 (dp_n_230),
        .\q_reg[8]_45 (dp_n_232),
        .\q_reg[8]_46 (dp_n_234),
        .\q_reg[8]_47 (dp_n_236),
        .\q_reg[8]_48 (dp_n_238),
        .\q_reg[8]_49 (dp_n_240),
        .\q_reg[8]_5 (dp_n_117),
        .\q_reg[8]_50 (dp_n_242),
        .\q_reg[8]_51 (dp_n_244),
        .\q_reg[8]_52 (dp_n_246),
        .\q_reg[8]_53 (dp_n_248),
        .\q_reg[8]_6 (dp_n_120),
        .\q_reg[8]_7 (dp_n_121),
        .\q_reg[8]_8 (dp_n_123),
        .\q_reg[8]_9 (dp_n_124),
        .\q_reg[95] ({\regD/p_0_in [95:65],\regD/p_0_in [2]}),
        .\q_reg[99] (c_n_100),
        .\q_reg[99]_0 (c_n_126),
        .\q_reg[9] ({ALUResultE[30],ALUResultE[2:0]}),
        .\q_reg[9]_0 (dp_n_335),
        .\q_reg[9]_1 (dp_n_336),
        .\q_reg[9]_10 (dp_n_345),
        .\q_reg[9]_11 (dp_n_346),
        .\q_reg[9]_12 (dp_n_347),
        .\q_reg[9]_13 (dp_n_348),
        .\q_reg[9]_14 (dp_n_349),
        .\q_reg[9]_15 (dp_n_350),
        .\q_reg[9]_16 (dp_n_351),
        .\q_reg[9]_17 (dp_n_352),
        .\q_reg[9]_18 (dp_n_353),
        .\q_reg[9]_19 (dp_n_354),
        .\q_reg[9]_2 (dp_n_337),
        .\q_reg[9]_20 (dp_n_355),
        .\q_reg[9]_21 (dp_n_356),
        .\q_reg[9]_22 (dp_n_357),
        .\q_reg[9]_23 (dp_n_358),
        .\q_reg[9]_24 (dp_n_359),
        .\q_reg[9]_25 (dp_n_360),
        .\q_reg[9]_26 (dp_n_361),
        .\q_reg[9]_3 (dp_n_338),
        .\q_reg[9]_4 (dp_n_339),
        .\q_reg[9]_5 (dp_n_340),
        .\q_reg[9]_6 (dp_n_341),
        .\q_reg[9]_7 (dp_n_342),
        .\q_reg[9]_8 (dp_n_343),
        .\q_reg[9]_9 (dp_n_344),
        .reset(reset),
        .\writeDataM[31] (c_n_158),
        .\writeDataM[31]_0 (c_n_159));
endmodule

(* ORIG_REF_NAME = "top" *) (* keep_hierarchy = "soft" *) 
module design_1_top_0_0_top
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  input clk;
  (* mark_debug = "true" *) input reset;
  input doneM;
  (* mark_debug = "true" *) input [31:0]readDataM;
  (* mark_debug = "true" *) output [31:0]writeDataM;
  (* mark_debug = "true" *) output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  (* MARK_DEBUG *) wire [31:0]Instr;
  wire MStrobe;
  wire MemWrite;
  (* MARK_DEBUG *) wire [31:0]PC;
  wire PCReady;
  (* MARK_DEBUG *) wire [31:0]addressM;
  wire clk;
  wire doneM;
  (* MARK_DEBUG *) wire [31:0]readDataM;
  (* MARK_DEBUG *) wire reset;
  (* MARK_DEBUG *) wire [31:0]writeDataM;

  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_imem imem
       (.a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PC[7:2],1'b0,1'b0}),
        .rd(Instr));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_MemControl memcontrol
       (.AXIstart(AXIStart),
        .DRW(DRW),
        .Done(PCReady),
        .MStrobe(MStrobe),
        .MemWrite(MemWrite),
        .Trigger(doneM),
        .clk(clk),
        .reset(reset));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_riscv riscv
       (.ALUResultM(addressM),
        .InstrF({Instr[31:1],1'b0}),
        .MemStrobe(MStrobe),
        .MemWriteM(MemWrite),
        .PCF(PC),
        .PCready(PCReady),
        .ReadDataM(readDataM),
        .WriteDataM(writeDataM),
        .clk(clk),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
