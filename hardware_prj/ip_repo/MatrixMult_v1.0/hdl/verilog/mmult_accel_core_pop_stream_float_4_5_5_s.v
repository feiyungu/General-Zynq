// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mmult_accel_core_pop_stream_float_4_5_5_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        e_data_V_dout,
        e_data_V_empty_n,
        e_data_V_read,
        e_data_V_blk_n,
        e_keep_V_dout,
        e_keep_V_empty_n,
        e_keep_V_read,
        e_keep_V_blk_n,
        e_strb_V_dout,
        e_strb_V_empty_n,
        e_strb_V_read,
        e_strb_V_blk_n,
        e_user_V_dout,
        e_user_V_empty_n,
        e_user_V_read,
        e_user_V_blk_n,
        e_last_V_dout,
        e_last_V_empty_n,
        e_last_V_read,
        e_last_V_blk_n,
        e_id_V_dout,
        e_id_V_empty_n,
        e_id_V_read,
        e_id_V_blk_n,
        e_dest_V_dout,
        e_dest_V_empty_n,
        e_dest_V_read,
        e_dest_V_blk_n,
        ap_return,
        ap_ce
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 1'b0;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] e_data_V_dout;
input   e_data_V_empty_n;
output   e_data_V_read;
output   e_data_V_blk_n;
input  [3:0] e_keep_V_dout;
input   e_keep_V_empty_n;
output   e_keep_V_read;
output   e_keep_V_blk_n;
input  [3:0] e_strb_V_dout;
input   e_strb_V_empty_n;
output   e_strb_V_read;
output   e_strb_V_blk_n;
input  [3:0] e_user_V_dout;
input   e_user_V_empty_n;
output   e_user_V_read;
output   e_user_V_blk_n;
input  [0:0] e_last_V_dout;
input   e_last_V_empty_n;
output   e_last_V_read;
output   e_last_V_blk_n;
input  [4:0] e_id_V_dout;
input   e_id_V_empty_n;
output   e_id_V_read;
output   e_id_V_blk_n;
input  [4:0] e_dest_V_dout;
input   e_dest_V_empty_n;
output   e_dest_V_read;
output   e_dest_V_blk_n;
output  [31:0] ap_return;
input   ap_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg e_data_V_read;
reg e_data_V_blk_n;
reg e_keep_V_read;
reg e_keep_V_blk_n;
reg e_strb_V_read;
reg e_strb_V_blk_n;
reg e_user_V_read;
reg e_user_V_blk_n;
reg e_last_V_read;
reg e_last_V_blk_n;
reg e_id_V_read;
reg e_id_V_blk_n;
reg e_dest_V_read;
reg e_dest_V_blk_n;
reg   [0:0] ap_CS_fsm = 1'b0;
reg    ap_sig_bdd_69;
reg   [0:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm)) | ((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_69 & (ap_const_logic_1 == ap_ce)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_69 & (ap_const_logic_1 == ap_ce))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// e_data_V_blk_n assign process. ///
always @ (ap_CS_fsm or e_data_V_empty_n)
begin
    if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        e_data_V_blk_n = e_data_V_empty_n;
    end else begin
        e_data_V_blk_n = ap_const_logic_1;
    end
end

/// e_data_V_read assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_69 & (ap_const_logic_1 == ap_ce))) begin
        e_data_V_read = ap_const_logic_1;
    end else begin
        e_data_V_read = ap_const_logic_0;
    end
end

/// e_dest_V_blk_n assign process. ///
always @ (ap_CS_fsm or e_dest_V_empty_n)
begin
    if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        e_dest_V_blk_n = e_dest_V_empty_n;
    end else begin
        e_dest_V_blk_n = ap_const_logic_1;
    end
end

/// e_dest_V_read assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_69 & (ap_const_logic_1 == ap_ce))) begin
        e_dest_V_read = ap_const_logic_1;
    end else begin
        e_dest_V_read = ap_const_logic_0;
    end
end

/// e_id_V_blk_n assign process. ///
always @ (ap_CS_fsm or e_id_V_empty_n)
begin
    if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        e_id_V_blk_n = e_id_V_empty_n;
    end else begin
        e_id_V_blk_n = ap_const_logic_1;
    end
end

/// e_id_V_read assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_69 & (ap_const_logic_1 == ap_ce))) begin
        e_id_V_read = ap_const_logic_1;
    end else begin
        e_id_V_read = ap_const_logic_0;
    end
end

/// e_keep_V_blk_n assign process. ///
always @ (ap_CS_fsm or e_keep_V_empty_n)
begin
    if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        e_keep_V_blk_n = e_keep_V_empty_n;
    end else begin
        e_keep_V_blk_n = ap_const_logic_1;
    end
end

/// e_keep_V_read assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_69 & (ap_const_logic_1 == ap_ce))) begin
        e_keep_V_read = ap_const_logic_1;
    end else begin
        e_keep_V_read = ap_const_logic_0;
    end
end

/// e_last_V_blk_n assign process. ///
always @ (ap_CS_fsm or e_last_V_empty_n)
begin
    if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        e_last_V_blk_n = e_last_V_empty_n;
    end else begin
        e_last_V_blk_n = ap_const_logic_1;
    end
end

/// e_last_V_read assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_69 & (ap_const_logic_1 == ap_ce))) begin
        e_last_V_read = ap_const_logic_1;
    end else begin
        e_last_V_read = ap_const_logic_0;
    end
end

/// e_strb_V_blk_n assign process. ///
always @ (ap_CS_fsm or e_strb_V_empty_n)
begin
    if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        e_strb_V_blk_n = e_strb_V_empty_n;
    end else begin
        e_strb_V_blk_n = ap_const_logic_1;
    end
end

/// e_strb_V_read assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_69 & (ap_const_logic_1 == ap_ce))) begin
        e_strb_V_read = ap_const_logic_1;
    end else begin
        e_strb_V_read = ap_const_logic_0;
    end
end

/// e_user_V_blk_n assign process. ///
always @ (ap_CS_fsm or e_user_V_empty_n)
begin
    if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        e_user_V_blk_n = e_user_V_empty_n;
    end else begin
        e_user_V_blk_n = ap_const_logic_1;
    end
end

/// e_user_V_read assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_69 & (ap_const_logic_1 == ap_ce))) begin
        e_user_V_read = ap_const_logic_1;
    end else begin
        e_user_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_69 or ap_ce)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_return = e_data_V_dout;

/// ap_sig_bdd_69 assign process. ///
always @ (ap_start or e_data_V_empty_n or e_keep_V_empty_n or e_strb_V_empty_n or e_user_V_empty_n or e_last_V_empty_n or e_id_V_empty_n or e_dest_V_empty_n)
begin
    ap_sig_bdd_69 = ((e_data_V_empty_n == ap_const_logic_0) | (e_strb_V_empty_n == ap_const_logic_0) | (e_keep_V_empty_n == ap_const_logic_0) | (e_user_V_empty_n == ap_const_logic_0) | (e_last_V_empty_n == ap_const_logic_0) | (e_id_V_empty_n == ap_const_logic_0) | (e_dest_V_empty_n == ap_const_logic_0) | (ap_start == ap_const_logic_0));
end


endmodule //mmult_accel_core_pop_stream_float_4_5_5_s
