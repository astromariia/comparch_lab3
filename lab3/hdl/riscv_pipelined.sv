// riscvpipelined.sv

// RISC-V pipelined processor
// From Section 7.6 of Digital Design & Computer Architecture: RISC-V Edition
// 27 April 2020
// David_Harris@hmc.edu 
// Sarah.Harris@unlv.edu

// run 210
// Expect simulator to print "Simulation succeeded"
// when the value 25 (0x19) is written to address 100 (0x64)

// Pipelined implementation of RISC-V (RV32I)
// User-level Instruction Set Architecture V2.2 (May 7, 2017)
// Implements a subset of the base integer instructions:
//    lw, sw
//    add, sub, and, or, slt, 
//    addi, andi, ori, slti
//    beq
//    jal
// Exceptions, traps, and interrupts not implemented
// little-endian memory

// 31 32-bit registers x1-x31, x0 hardwired to 0
// R-Type instructions
//   add, sub, and, or, slt
//   INSTR rd, rs1, rs2
//   Instr[31:25] = funct7 (funct7b5 & opb5 = 1 for sub, 0 for others)
//   Instr[24:20] = rs2
//   Instr[19:15] = rs1
//   Instr[14:12] = funct3
//   Instr[11:7]  = rd
//   Instr[6:0]   = opcode
// I-Type Instructions
//   lw, I-type ALU (addi, andi, ori, slti)
//   lw:         INSTR rd, imm(rs1)
//   I-type ALU: INSTR rd, rs1, imm (12-bit signed)
//   Instr[31:20] = imm[11:0]
//   Instr[24:20] = rs2
//   Instr[19:15] = rs1
//   Instr[14:12] = funct3
//   Instr[11:7]  = rd
//   Instr[6:0]   = opcode
// S-Type Instruction
//   sw rs2, imm(rs1) (store rs2 into address specified by rs1 + immm)
//   Instr[31:25] = imm[11:5] (offset[11:5])
//   Instr[24:20] = rs2 (src)
//   Instr[19:15] = rs1 (base)
//   Instr[14:12] = funct3
//   Instr[11:7]  = imm[4:0]  (offset[4:0])
//   Instr[6:0]   = opcode
// B-Type Instruction
//   beq rs1, rs2, imm (PCTarget = PC + (signed imm x 2))
//   Instr[31:25] = imm[12], imm[10:5]
//   Instr[24:20] = rs2
//   Instr[19:15] = rs1
//   Instr[14:12] = funct3
//   Instr[11:7]  = imm[4:1], imm[11]
//   Instr[6:0]   = opcode
// J-Type Instruction
//   jal rd, imm  (signed imm is multiplied by 2 and added to PC, rd = PC+4)
//   Instr[31:12] = imm[20], imm[10:1], imm[11], imm[19:12]
//   Instr[11:7]  = rd
//   Instr[6:0]   = opcode

//   Instruction  opcode    funct3    funct7
//   add          0110011   000       0000000
//   sub          0110011   000       0100000
//   and          0110011   111       0000000
//   or           0110011   110       0000000
//   slt          0110011   010       0000000
//   addi         0010011   000       immediate
//   andi         0010011   111       immediate
//   ori          0010011   110       immediate
//   slti         0010011   010       immediate
//   beq          1100011   000       immediate
//   lw	          0000011   010       immediate
//   sw           0100011   010       immediate
//   jal          1101111   immediate immediate

module testbench();

   logic        clk;
   logic        reset;

   logic [31:0] WriteData, DataAdr;
   logic        MemWrite;

   // instantiate device to be tested
   top dut(clk, reset, WriteData, DataAdr, MemWrite);

   initial
     begin
	string memfilename;
        memfilename = {"../testing/sh.memfile"};
	      $readmemh(memfilename, dut.imem.RAM);
        $readmemh(memfilename, dut.dmem.RAM);
     end
   
   // initialize test
   initial
     begin
	reset <= 1; # 22; reset <= 0;
     end

   // generate clock to sequence tests
   always
     begin
	clk <= 1; # 5; clk <= 0; # 5;
     end

   // check results
   always @(negedge clk)
     begin
	if(MemWrite) begin
           if(DataAdr === 100 & WriteData === 10) begin
              $display("Simulation succeeded");
              //$stop;
           end else if (DataAdr === 100 & WriteData === 17) begin
              $display("Simulation failed");
              //$stop;
           end
	end
     end
endmodule

module top(input  logic        clk, reset, 
           output logic [31:0] WriteDataM, DataAdrM, 
           output logic        MemWriteM);

   logic [31:0] 	       PCF, InstrF, ReadDataM;
   
   // instantiate processor and memories
   riscv rv32pipe (clk, reset, PCF, InstrF, MemWriteM, DataAdrM, 
		   WriteDataM, ReadDataM);
   imem imem (PCF, InstrF);
   dmem dmem (clk, MemWriteM, DataAdrM, WriteDataM, ReadDataM);
   
endmodule

module riscv(input  logic        clk, reset,
             output logic [31:0] PCF,
             input logic [31:0]  InstrF,
             output logic 	 MemWriteM,
             output logic [31:0] ALUResultM, WriteDataM,
             input logic [31:0]  ReadDataM);

   logic [6:0] 			 opD;
   logic [2:0] 			 funct3D;
   logic 			 funct7b5D;
   logic [2:0] 			 ImmSrcD;
   logic 			 ZeroE,NegativeE,CarryE,vE;
   logic 			 PCSrcE;
   logic [3:0] 			 ALUControlE;
   logic [1:0]			 ALUSrcAE;   
   logic 			 ALUSrcBE;
   logic 			 ResultSrcEb0;
   logic 			 RegWriteM;
   logic [1:0] 			 ResultSrcW;
   logic 			 RegWriteW;

   logic [1:0] 			 ForwardAE, ForwardBE;
   logic 			 StallF, StallD, FlushD, FlushE;

   logic [4:0] 			 Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW;
   logic              JalrControlE;
   logic [2:0]              funct3M;
   logic [2:0]              funct3W;
   
   controller c(clk, reset,
		opD, funct3D, funct7b5D, ImmSrcD,
		FlushE, ZeroE,NegativeE,CarryE,vE, PCSrcE, ALUControlE, ALUSrcAE, ALUSrcBE, ResultSrcEb0,
		MemWriteM, RegWriteM,funct3M, 
		RegWriteW, ResultSrcW, JalrControlE, funct3W);

   datapath dp(clk, reset, StallF, JalrControlE, PCF, InstrF,
	       opD, funct3D, funct7b5D, StallD, FlushD, ImmSrcD,
	       FlushE, ForwardAE, ForwardBE, PCSrcE, ALUControlE, ALUSrcAE, ALUSrcBE, ZeroE,NegativeE,CarryE,vE,
               MemWriteM, WriteDataM, ALUResultM, ReadDataM,
               RegWriteW, ResultSrcW,
               Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW,funct3M,funct3W);

   hazard  hu(Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW,
              PCSrcE, ResultSrcEb0, RegWriteM, RegWriteW,
              ForwardAE, ForwardBE, StallF, StallD, FlushD, FlushE);			 
endmodule


module controller(input  logic		 clk, reset,
                  // Decode stage control signals
                  input logic [6:0]  opD,
                  input logic [2:0]  funct3D,
                  input logic 	     funct7b5D,
                  output logic [2:0] ImmSrcD,
                  // Execute stage control signals
                  input logic 	     FlushE, 
                  input logic 	     ZeroE,NegativeE,CarryE,vE, 
                  output logic 	     PCSrcE, // for datapath and Hazard Unit
                  output logic [3:0] ALUControlE,
		  output logic 	[1:0]     ALUSrcAE,
                  output logic 	     ALUSrcBE,
                  output logic 	     ResultSrcEb0, // for Hazard Unit
                  // Memory stage control signals
                  output logic 	     MemWriteM,
                  output logic 	     RegWriteM,
                  output logic [2:0]   funct3M,			  
                  // Writeback stage control signals
                  output logic 	     RegWriteW, // for datapath and Hazard Unit
                  output logic [1:0] ResultSrcW,
                  output logic      JalrControlE,
                  output logic [2:0] funct3W);

   // pipelined control signals
   logic 			     RegWriteD, RegWriteE;
   logic [1:0] 			     ResultSrcD, ResultSrcE, ResultSrcM;
   logic 			     MemWriteD, MemWriteE;
   logic 			     JumpD, JumpE;
   logic 			     BranchD, BranchE;
   logic [1:0] 			     ALUOpD;
   logic [3:0] 			     ALUControlD;
   logic [1:0]			     ALUSrcAD;   
   logic 			     ALUSrcBD;
   logic [2:0] 			     funct3E;
   logic  Branchout;   
   
   // Decode stage logic
   maindec md(opD, ResultSrcD, MemWriteD, BranchD,
              ALUSrcAD, ALUSrcBD, RegWriteD, JumpD, JalrControlD, ImmSrcD, ALUOpD);
   aludec  ad(opD[5], funct3D, funct7b5D, ALUOpD, ALUControlD);
   
   // Execute stage pipeline control register and logic
   floprc #(17) controlregE(clk, reset, FlushE,
                            {RegWriteD, ResultSrcD, MemWriteD, JumpD, BranchD, ALUControlD, ALUSrcAD, ALUSrcBD, funct3D,JalrControlD},
                            {RegWriteE, ResultSrcE, MemWriteE, JumpE, BranchE, ALUControlE, ALUSrcAE, ALUSrcBE, funct3E,JalrControlE});


assign PCSrcE = Branchout | JumpE; //Branch & (Zero ^ funct3[0])
   always_comb
    case(funct3E)
    3'b000: Branchout = BranchE & ZeroE;                     // beg
    3'b001: Branchout = BranchE & ~ZeroE;                    // bne
    3'b100: Branchout = BranchE & (NegativeE != vE);   // blt (signed)
    3'b101: Branchout = BranchE & (NegativeE == vE);   // bge (signed)
    3'b110: Branchout = BranchE & ~CarryE;                   // bltu (unsigned)
    3'b111: Branchout = BranchE & CarryE;                    // bgeu (unsigned)
    default: Branchout = 0;
  endcase

   //assign PCSrcE = (BranchE & (ZeroE ^ funct3E[0])) | JumpE;
   
   assign ResultSrcEb0 = ResultSrcE[0];
   
   // Memory stage pipeline control register
   flopr #(7) controlregM(clk, reset,
                          {RegWriteE, ResultSrcE, MemWriteE, funct3E},
                          {RegWriteM, ResultSrcM, MemWriteM, funct3M});
   
   // Writeback stage pipeline control register
   flopr #(6) controlregW(clk, reset,
                          {RegWriteM, ResultSrcM,funct3M},
                          {RegWriteW, ResultSrcW,funct3W});     
endmodule

module maindec(input  logic [6:0] op,
               output logic [1:0] ResultSrc,
               output logic 	  MemWrite,
               output logic 	  Branch, 
               output logic [1:0] ALUSrcA, 
               output logic     ALUSrcB,
               output logic 	  RegWrite, Jump, JalrControl,
               output logic [2:0] ImmSrc,
               output logic [1:0] ALUOp);

   logic [15:0] 		  controls;

   assign {RegWrite, ImmSrc, ALUSrcA, ALUSrcB, MemWrite,
           ResultSrc, Branch, ALUOp, Jump, JalrControl} = controls;

   always_comb
     case(op)
       // RegWrite_ImmSrc_ALUSrcA_ALUSrcB_MemWrite_ResultSrc_Branch_ALUOp_Jump_JalrControl
       7'b0000011: controls = 16'b1_000_00_1_0_01_0_00_0_0; // lw
       7'b0100011: controls = 16'b0_001_00_1_1_00_0_00_0_0; // sw
       7'b0110011: controls = 16'b1_xxx_00_0_0_00_0_10_0_0; // R-type 
       7'b1100011: controls = 16'b0_010_00_0_0_00_1_01_0_0; // branches
       7'b0010011: controls = 16'b1_000_00_1_0_00_0_10_0_0; // I-type ALU
       7'b1101111: controls = 16'b1_011_00_0_0_10_0_00_1_0; // jal
       7'b0110111: controls = 16'b1_100_01_1_0_00_0_00_0_0; // lui
       7'b1100111: controls = 16'b1_000_00_1_0_10_0_00_1_1; // jalr
       7'b0010111: controls = 16'b1_100_10_0_0_00_0_00_0_0; // auipc    
       7'b0000000: controls = 16'b0_000_00_0_0_00_0_00_0_0; // need valid values at reset
       default:    controls = 16'bx_xxx_xx_x_x_xx_x_xx_x_x; // non-implemented instruction
     endcase
endmodule

module aludec(input  logic       opb5,
              input logic [2:0]  funct3,
              input logic 	 funct7b5, 
              input logic [1:0]  ALUOp,
              output logic [3:0] ALUControl);

   logic 			 RtypeSub;
   assign RtypeSub = funct7b5 & opb5;  // TRUE for R-type subtract instruction

   always_comb
     case(ALUOp)
       2'b00:                ALUControl = 4'b0000; // addition
       2'b01:                ALUControl = 4'b0001; // subtraction
       default: case(funct3) // R-type or I-type ALU
                  3'b000:  if (RtypeSub) 
                    ALUControl = 4'b0001; // sub
                 else
		                ALUControl = 4'b0000; // add, addi
		            3'b010: ALUControl = 4'b0101; // slt, slti
                3'b011: ALUControl = 4'b1001;   // sltu
		            3'b110: ALUControl = 4'b0011; // or, ori
		            3'b111: ALUControl = 4'b0010; // and, andi
                3'b100: ALUControl = 4'b0100; //xor, xori
                3'b001: ALUControl = 4'b0110; // sll
                3'b101:
                  if (funct7b5) ALUControl = 4'b1000; // sra
                  else ALUControl = 4'b0111; // srl

		  default: ALUControl = 4'bxxx; // ???
		endcase
     endcase
endmodule

module datapath(input logic clk, reset,
                // Fetch stage signals
                input logic 	    StallF,
                input logic       JalrControlE,
                output logic [31:0] PCF,
                input logic [31:0]  InstrF,
                // Decode stage signals
                output logic [6:0]  opD,
                output logic [2:0]  funct3D,
                output logic 	    funct7b5D,
                input logic 	    StallD, FlushD,
                input logic [2:0]   ImmSrcD,
                // Execute stage signals
                input logic 	    FlushE,
                input logic [1:0]   ForwardAE, ForwardBE,
                input logic 	    PCSrcE,
                input logic [3:0]   ALUControlE,
		input logic 	[1:0]    ALUSrcAE,
                input logic 	    ALUSrcBE,
                output logic 	    ZeroE,NegativeE,CarryE,vE,
                // Memory stage signals
                input logic 	    MemWriteM, 
                output logic [31:0] WriteDataM, ALUResultM,
                input logic [31:0]  ReadDataM,
                // Writeback stage signals
                input logic 	    RegWriteW, 
                input logic [1:0]   ResultSrcW,
                // Hazard Unit signals 
                output logic [4:0]  Rs1D, Rs2D, Rs1E, Rs2E,
                output logic [4:0]  RdE, RdM, RdW,
                input logic [2:0] funct3M,funct3W);

   // Fetch stage signals
   logic [31:0] 		    PCNextF, PCPlus4F;
   // Decode stage signals
   logic [31:0] 		    InstrD;
   logic [31:0] 		    PCD, PCPlus4D;
   logic [31:0] 		    RD1D, RD2D;
   logic [31:0] 		    ImmExtD;
   logic [4:0] 			    RdD;
   // Execute stage signals
   logic [31:0] 		    RD1E, RD2E;
   logic [31:0] 		    PCE, ImmExtE;
   logic [31:0] 		    SrcAE, SrcBE;
   logic [31:0] 		    SrcAEforward;   
   logic [31:0] 		    ALUResultE;
   logic [31:0] 		    WriteDataE;
   logic [31:0] 		    PCPlus4E;
   logic [31:0] 		    PCTargetE;
   // Memory stage signals
   logic [31:0] 		    PCPlus4M;
   // Writeback stage signals
   logic [31:0] 		    ALUResultW;
   logic [31:0] 		    ReadDataW;
   logic [31:0] 		    PCPlus4W;
   logic [31:0] 		    ResultW;
   logic [31:0]         PCTargetEmux;
   logic [31:0]         WriteDataM_Original; 
   logic [31:0]         ReadDataWout;

   // Fetch stage pipeline register and logic
   mux2    #(32) pcmux(PCPlus4F, PCTargetE, PCSrcE, PCNextF);
   flopenr #(32) pcreg(clk, reset, ~StallF, PCNextF, PCF);
   adder         pcadd(PCF, 32'h4, PCPlus4F);

   // Decode stage pipeline register and logic
   flopenrc #(96) regD(clk, reset, FlushD, ~StallD, 
                       {InstrF, PCF, PCPlus4F},
                       {InstrD, PCD, PCPlus4D});
   assign opD       = InstrD[6:0];
   assign funct3D   = InstrD[14:12];
   assign funct7b5D = InstrD[30];
   assign Rs1D      = InstrD[19:15];
   assign Rs2D      = InstrD[24:20];
   assign RdD       = InstrD[11:7];
   
   regfile        rf(clk, RegWriteW, Rs1D, Rs2D, RdW, ResultW, RD1D, RD2D);
   extend         ext(InstrD[31:7], ImmSrcD, ImmExtD);
   
   // Execute stage pipeline register and logic
   floprc #(175) regE(clk, reset, FlushE, 
                      {RD1D, RD2D, PCD, Rs1D, Rs2D, RdD, ImmExtD, PCPlus4D}, 
                      {RD1E, RD2E, PCE, Rs1E, Rs2E, RdE, ImmExtE, PCPlus4E});
   
   mux3   #(32)  faemux(RD1E, ResultW, ALUResultM, ForwardAE, SrcAEforward);
   mux3   #(32)  fbemux(RD2E, ResultW, ALUResultM, ForwardBE, WriteDataE);
   mux3   #(32)  srcamux(SrcAEforward, 32'h0,PCE, ALUSrcAE, SrcAE);   
   mux2   #(32)  srcbmux(WriteDataE, ImmExtE, ALUSrcBE, SrcBE);
   mux2   #(32)  JalrMux(PCTargetEmux,ALUResultE,JalrControlE,PCTargetE);
   alu           alu(SrcAE, SrcBE, ALUControlE, ALUResultE, ZeroE, NegativeE,CarryE,vE);
   adder         branchadd(ImmExtE, PCE, PCTargetEmux);

   // Memory stage pipeline register
   flopr  #(101) regM(clk, reset, 
                      {ALUResultE, WriteDataE, RdE, PCPlus4E},
                      {ALUResultM, WriteDataM_Original, RdM, PCPlus4M});
   
   // Writeback stage pipeline register and logic
   flopr  #(101) regW(clk, reset, 
                      {ALUResultM, ReadDataM, RdM, PCPlus4M},
                      {ALUResultW, ReadDataW, RdW, PCPlus4W});
  loadextend loader(ALUResultW,ReadDataW,funct3W,ReadDataWout);
   store store(ALUResultM, WriteDataM_Original, ReadDataM, funct3M, WriteDataM);
   mux3   #(32)  resultmux(ALUResultW, ReadDataWout, PCPlus4W, ResultSrcW, ResultW);	
endmodule

// Hazard Unit: forward, stall, and flush
module hazard(input  logic [4:0] Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW,
              input logic 	 PCSrcE, ResultSrcEb0, 
              input logic 	 RegWriteM, RegWriteW,
              output logic [1:0] ForwardAE, ForwardBE,
              output logic 	 StallF, StallD, FlushD, FlushE);

   logic 			 lwStallD;
   
   // forwarding logic
   always_comb begin
      ForwardAE = 2'b00;
      ForwardBE = 2'b00;
      if (Rs1E != 5'b0)
	if      ((Rs1E == RdM) & RegWriteM) ForwardAE = 2'b10;
	else if ((Rs1E == RdW) & RegWriteW) ForwardAE = 2'b01;
      
      if (Rs2E != 5'b0)
	if      ((Rs2E == RdM) & RegWriteM) ForwardBE = 2'b10;
	else if ((Rs2E == RdW) & RegWriteW) ForwardBE = 2'b01;
   end
   
   // stalls and flushes
   assign lwStallD = ResultSrcEb0 & ((Rs1D == RdE) | (Rs2D == RdE));  
   assign StallD = lwStallD;
   assign StallF = lwStallD;
   assign FlushD = PCSrcE;
   assign FlushE = lwStallD | PCSrcE;
endmodule

module regfile(input  logic        clk, 
               input logic 	   we3, 
               input logic [ 4:0]  a1, a2, a3, 
               input logic [31:0]  wd3, 
               output logic [31:0] rd1, rd2);

   logic [31:0] 		   rf[31:0];

   // three ported register file
   // read two ports combinationally (A1/RD1, A2/RD2)
   // write third port on rising edge of clock (A3/WD3/WE3)
   // write occurs on falling edge of clock
   // register 0 hardwired to 0

   always_ff @(negedge clk)
     if (we3) rf[a3] <= wd3;	

   assign rd1 = (a1 != 0) ? rf[a1] : 0;
   assign rd2 = (a2 != 0) ? rf[a2] : 0;
endmodule

module adder(input  [31:0] a, b,
             output [31:0] y);

   assign y = a + b;
endmodule

module extend(input  logic [31:7] instr,
              input logic [2:0]   immsrc,
              output logic [31:0] immext);
   
   always_comb
     case(immsrc) 
       // I-type 
       3'b000:   immext = {{20{instr[31]}}, instr[31:20]};  
       // S-type (stores)
       3'b001:   immext = {{20{instr[31]}}, instr[31:25], instr[11:7]}; 
       // B-type (branches)
       3'b010:   immext = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0}; 
       // J-type (jal)
       3'b011:   immext = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
       // U−type (lui/auipc) 
       3'b100:  immext = {instr[31:12], 12'h0};         
       default: immext = 32'bx; // undefined
     endcase             
endmodule

module flopr #(parameter WIDTH = 8)
   (input  logic             clk, reset,
    input logic [WIDTH-1:0]  d, 
    output logic [WIDTH-1:0] q);

   always_ff @(posedge clk, posedge reset)
     if (reset) q <= 0;
     else       q <= d;
endmodule

module flopenr #(parameter WIDTH = 8)
   (input  logic             clk, reset, en,
    input logic [WIDTH-1:0]  d, 
    output logic [WIDTH-1:0] q);

   always_ff @(posedge clk, posedge reset)
     if (reset)   q <= 0;
     else if (en) q <= d;
endmodule

module flopenrc #(parameter WIDTH = 8)
   (input  logic             clk, reset, clear, en,
    input logic [WIDTH-1:0]  d, 
    output logic [WIDTH-1:0] q);

   always_ff @(posedge clk, posedge reset)
     if (reset)   q <= 0;
     else if (en) 
       if (clear) q <= 0;
       else       q <= d;
endmodule

module floprc #(parameter WIDTH = 8)
   (input  logic clk,
    input logic 	     reset,
    input logic 	     clear,
    input logic [WIDTH-1:0]  d, 
    output logic [WIDTH-1:0] q);

   always_ff @(posedge clk, posedge reset)
     if (reset) q <= 0;
     else       
       if (clear) q <= 0;
       else       q <= d;
endmodule

module mux2 #(parameter WIDTH = 8)
   (input  logic [WIDTH-1:0] d0, d1, 
    input logic 	     s, 
    output logic [WIDTH-1:0] y);

   assign y = s ? d1 : d0; 
endmodule

module mux3 #(parameter WIDTH = 8)
   (input  logic [WIDTH-1:0] d0, d1, d2,
    input logic [1:0] 	     s, 
    output logic [WIDTH-1:0] y);

   assign y = s[1] ? d2 : (s[0] ? d1 : d0); 
endmodule

module mux4 #(parameter WIDTH = 8)
   (input  logic [WIDTH-1:0] d0, d1, d2, d3,
    input logic [1:0] 	     s, 
    output logic [WIDTH-1:0] y);

   assign y = s[1] ?(s[0]? d3 : d2) : (s[0] ? d1 : d0); 
endmodule

module imem (input  logic [31:0] a,
	     output logic [31:0] rd);
   
   logic [31:0] 		 RAM[1500:0];
   
   assign rd = RAM[a[31:2]]; // word aligned
   
endmodule // imem

module dmem (input  logic        clk, we,
	     input  logic [31:0] a, wd,
	     output logic [31:0] rd);
   
   logic [31:0] 		 RAM[2047:0];
   
   assign rd = RAM[a[31:2]]; // word aligned
   always_ff @(posedge clk)
     if (we) RAM[a[31:2]] <= wd;
   
endmodule // dmem

module alu (input  logic [31:0] a, b,
           input logic [3:0]   alucontrol,
           output logic [31:0] result,
           output logic        zero,Negative,Carry,v);

   logic [31:0] 	       condinvb, sum;            
   logic 		       isAddSub;       // true when is add or sub
   logic [32:0] Carryholder;

   assign condinvb = alucontrol[0] ? ~b : b;
   assign sum = a + condinvb + alucontrol[0];
   assign isAddSub = ~alucontrol[2] & ~alucontrol[1] |
                     ~alucontrol[1] &  alucontrol[0];
    assign Carryholder = {1'b0, a} + {1'b0, condinvb} + alucontrol[0];

   always_comb
     case (alucontrol)
       4'b0000:  result = sum;         // add
       4'b0001:  result = sum;         // subtract
       4'b0010:  result = a & b;       // and
       4'b0011:  result = a | b;       // or
       4'b0100:  result = a ^ b;       // xor
       4'b0101:  result = sum[31] ^ v; // slt
       4'b0110:  result = a << b[4:0]; // sll
       4'b1001: result = (a < b) ? 32'd1 : 32'd0; //sltu
       4'b0111:  result = a >> b[4:0]; // srl
       4'b1000: result = $signed(a) >>> b[4:0]; //sra/srai
       default: result = 32'bx;
     endcase

   assign zero = (result == 32'b0);
   assign v = ~(alucontrol[0] ^ a[31] ^ b[31]) & (a[31] ^ sum[31]) & isAddSub;
   assign Negative = (result[31]);
   assign Carry =  Carryholder[32];
   
endmodule

module loadextend(input logic [31:0]ALUResult,input logic[31:0] MemData, input logic [2:0] funct3,output logic [31:0] loadedMemory);
always_comb
case(funct3)
3'b000: loadedMemory = ALUResult[0] ? ( ALUResult[1] ? {{24{MemData[31]}},MemData[31:24]} : {{24{MemData[15]}},MemData[15:8]}):
(ALUResult[1] ? {{24{MemData[23]}},MemData[23:16]} : {{24{MemData[7]}},MemData[7:0]}); // lb
3'b001: loadedMemory = ALUResult[1] ? {{16{MemData[31]}}, MemData[31:16]} : {{16{MemData[15]}}, MemData[15:0]}; // Lh
3'b010: loadedMemory=MemData; //lw
3'b100: loadedMemory= ALUResult[0] ? ( ALUResult[1]? {24'b0,MemData[31:24]}: {24'b0,MemData[15:8]}):
(ALUResult[1] ? {24'b0,MemData[23:16]} : {24'b0,MemData[7:0]}); // lbu
3'b101: loadedMemory = ALUResult[1] ? {16'b0, MemData[31:16]} : {16'b0, MemData[15:0]};  //lhu

default: loadedMemory=32'bx; //undefined load
endcase//case load
endmodule

module store (input logic [31:0] ALUResult, 
  input logic [31:0] WriteData, 
  input logic [31:0] ReadData, 
  input logic [2:0] funct3,
  output logic [31:0] storedMemory);
  always_comb
  case(funct3)
  3'b010: storedMemory =  WriteData; // SW (Store Word)
  3'b001: storedMemory = ALUResult[1] ? {WriteData[15:0], ReadData[15:0]} : {ReadData[31:16], WriteData[15:0]}; // SH (Store Halfword)
  3'b000: storedMemory = ALUResult[1] ? 
    (ALUResult[0] ? 
      {WriteData[7:0], ReadData[23:0]} :      //byte 3 (31:24)
      {ReadData[31:24], WriteData[7:0], ReadData[15:0]} //byte 2 (23:16)
    ) : 
    (ALUResult[0] ? 
      {ReadData[31:16], WriteData[7:0], ReadData[7:0]} : //byte 1 (15:8)
      {ReadData[31:8], WriteData[7:0]}        //byte 0 (7:0)          
    );//sb
  default: storedMemory =WriteData; // Default to SW
  endcase
endmodule
