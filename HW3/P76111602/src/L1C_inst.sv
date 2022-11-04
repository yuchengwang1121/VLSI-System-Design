//================================================
// Auther:      Chen Yun-Ru (May)
// Filename:    L1C_inst.sv
// Description: L1 Cache for instruction
// Version:     0.1
//================================================
`include "def.svh"
module L1C_inst(
  input clk,
  input rst,
  // Core to CPU wrapper
  input [`DATA_BITS-1:0] core_addr,
  input core_req,
  input core_write,
  input [`DATA_BITS-1:0] core_in,
  input [`CACHE_TYPE_BITS-1:0] core_type,
  // CPU wrapper to core
  output logic [`DATA_BITS-1:0] core_out,
  output core_wait,
  // CPU wrapper to Mem
  inter_CachetoMem.Cache i_cache
);

  logic [`CACHE_INDEX_BITS-1:0] index;
  logic [`CACHE_DATA_BITS-1:0] DA_out;
  logic [`CACHE_DATA_BITS-1:0] DA_in;
  logic [`CACHE_WRITE_BITS-1:0] DA_write;
  logic DA_read;
  logic [`CACHE_TAG_BITS-1:0] TA_out;
  logic [`CACHE_TAG_BITS-1:0] TA_in;
  logic TA_write;
  logic TA_read;
  logic [`CACHE_LINES-1:0] valid;

  //--------------- complete this part by yourself -----------------//
  logic hit, rst_cnt;
  logic [2:0] cur_state, next_state;
  logic [2:0] cnt;
  logic [3:0] w_control;

  parameter IDLE  = 3'b00;
  parameter CHECK = 3'b01;
  parameter READ  = 3'b10;
  parameter WRITE = 3'b11;

  always_ff @(posedge clk or posedge rst) begin //change current_state
    if(~rst) begin
      cur_state <= IDLE;
    end
    else begin
      cur_state <= next_state;
    end
  end

  always_comb begin                             //state transform
    case (cur_state)
      IDLE: begin
        if(core_req) begin
          if(core_write) next_state = WRITE;
          else begin
            if(valid[index]) next_state = CHECK; //if exist, check if match
            else next_state = READ;
          end
        end
      end
      CHECK: begin
        if(hit) next_state = IDLE;
        else next_state = READ;
      end
      READ: begin
        if((cnt == 3'b100) & ~i_cache.cwait) next_state = IDLE;
        else next_state = READ;
      end
      default: begin //WRITE
        if(i_cache.cwait) next_state = WRITE;
        else next_state = IDLE;
      end
    endcase
  end

  assign index = core_addr[9:4];
  assign hit = (TA_in == TA_out)? 1'b1:1'b0;

  always_comb begin                       //state performance
    case (cur_state)
      IDLE: begin
        core_out          = DA_out[{core_addr[3:2], 5'b0}+:32];
        core_wait         = core_req? 1'b1:1'b0;
        i_cache.creq      = 1'b0;
        i_cache.caddr     = `DATA_BITS'b0;
        i_cache.cwrite    = 1'b0;
        i_cache.cin       = `DATA_BITS'b0;
        i_cache.ctype     = `CACHE_TYPE_BITS'b0;
        rst_cnt = 1'b1;
      end
      CHECK: begin
        core_out          = hit? DA_out[{core_addr[3:2], 5'b0}+:32]:`DATA_BITS'b0;
        core_wait         = hit? 1'b0:1'b1;
        i_cache.creq      = 1'b0;
        i_cache.caddr     = `DATA_BITS'b0;
        i_cache.cwrite    = 1'b0;
        i_cache.cin       = `DATA_BITS'b0;
        i_cache.ctype     = core_type;
        rst_cnt = 1'b1;
      end
      READ: begin
        if(cnt == 3'b100) begin
          core_out        = DA_out[{core_addr[3:2], 5'b0}+:32];
          core_wait       = 1'b0;
          i_cache.creq    = 1'b0;
          i_cache.caddr   = core_addr;
          i_cache.cwrite  = 1'b0;
          i_cache.cin     = core_in;
          i_cache.ctype   = core_type;
          rst_cnt = 1'b1;
        end
        else begin
          core_out        = DA_out[{core_addr[3:2], 5'b0}+:32];
          core_wait       = 1'b1;
          i_cache.creq    = 1'b1;
          i_cache.caddr   = {core_addr[`DATA_BITS-1:4], 4'b0};
          i_cache.cwrite  = 1'b0;
          i_cache.cin     = core_in; 
          i_cache.ctype   = core_type;
          rst_cnt = 1'b0;
        end 
      end
      default: begin
        core_out        = `DATA_BITS'b0;
        core_wait       = i_cache.cwait;
        i_cache.creq    = 1'b1;
        i_cache.caddr   = core_addr;
        i_cache.cwrite  = 1'b1;
        i_cache.cin     = core_in; 
        i_cache.ctype   = core_type;
        rst_cnt = 1'b1;
      end
    endcase
  end

  always_comb begin                 //tag & data signal control
    TA_in = core_addr[31:10];       //tag array
    TA_read = 1'b1;

    DA_in = `CACHE_DATA_BITS'b0;    //data array
    DA_write = `CACHE_WRITE_BITS'hffff;
    case (cur_state)
      IDLE:  {DA_read, TA_write} = 2'b01;
      CHECK: {DA_read, TA_write} = 2'b11;
      READ:begin
        if(cnt == 3'b100) begin
          DA_in[{cnt[1:0], 5'b0}+:32]   = i_cache.cout;
          DA_write[{cnt[1:0], 2'b0}+:4] = 4'b1111;
          {DA_read, TA_write} = 2'b11;
        end
        else begin
          DA_in[{cnt[1:0], 5'b0}+:32]   = i_cache.cout;
          DA_write[{cnt[1:0], 2'b0}+:4] = 4'b1111;
          {DA_read, TA_write} = {1'b0, ~(&cnt[1:0] & ~ i_cache.cwait)};
        end
      end
      default: begin
        DA_in[{core_addr[3:2], 5'b0}+:32] = core_in;
        DA_write[{core_addr[3:2], 2'b0}+:4] = (hit & valid[index])? w_control: 4'b1111;
        {DA_read, TA_write} = 2'b01;
      end
    endcase  
  end

  always_comb begin
    w_control = 4'b1111;
    if(core_write)
        case(core_type)
            `CACHE_WORD: w_control = 4'b0;
            `CACHE_BYTE, `CACHE_BYTE_U: w_control[core_addr[1:0]] = 1'b0;
            `CACHE_HWORD, `CACHE_HWORD_U: w_control[{core_addr[1], 1'b0}+:2] = 2'b00;
            default:
                w_control = 4'b1111;
        endcase
    else
        w_control = i_cache.cwait? 4'b1111:4'b0;
  end

  always_ff @(posedge clk or posedge rst) begin
    if(rst) begin
      for(int i=0; i<`CACHE_LINES; i++)
        valid[i] <= 1'b0;
    end
    else begin
      valid[index] <= (~TA_write)? 1'b1:valid[index];
    end
  end
  
  always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
      cnt <= 3'b0;
    end 
    else begin
      if (rst_cnt) cnt <= 3'b0;
      else cnt <= i_cache.cwait? cnt: cnt + 1'b1;
    end
  end

  data_array_wrapper DA(
    .A(index),
    .DO(DA_out),
    .DI(DA_in),
    .CK(clk),
    .WEB(DA_write),
    .OE(DA_read),
    .CS(1'b1)
  );
   
  tag_array_wrapper  TA(
    .A(index),
    .DO(TA_out),
    .DI(TA_in),
    .CK(clk),
    .WEB(TA_write),
    .OE(TA_read),
    .CS(1'b1)
  );

endmodule

