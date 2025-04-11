module dfx_calc (
    output tx,
    output [3:0] LED,
    input [3:0] op,  // Opcode
    input btn,
    input clk_100MHz,
    input reset,
    input rx
);

    wire [7:0]stored_data;
    wire [7:0]read_data;
    wire [7:0]write_data;
    wire  op_alu_mul;
    
    assign op_alu_mul = op[3];

    system_dfx_wrapper system(
        .DDR_addr(),
        .DDR_ba(),
        .DDR_cas_n(),
        .DDR_ck_n(),
        .DDR_ck_p(),
        .DDR_cke(),
        .DDR_cs_n(),
        .DDR_dm(),
        .DDR_dq(),
        .DDR_dqs_n(),
        .DDR_dqs_p(),
        .DDR_odt(),
        .DDR_ras_n(),
        .DDR_reset_n(),
        .DDR_we_n(),
        .FIXED_IO_ddr_vrn(),
        .FIXED_IO_ddr_vrp(),
        .FIXED_IO_mio(),
        .FIXED_IO_ps_clk(),
        .FIXED_IO_ps_porb(),
        .FIXED_IO_ps_srstb(),

        // Important
        .btn(btn),
        .clk_100MHz(clk_100MHz),
        .op_alu_mul(op_alu_mul),
        .read_data_0(read_data),
        .reset(reset),
        .rx_0(rx),
        .stored_data_0(stored_data),
        .tx_0(tx),
        .write_data_0(write_data)
    );
    
    calc u_calc(
        .y(write_data),
        .flg(),  // Flag
        .op(op),  // Opcode
        .a(stored_data),
        .b(read_data)
    );

    assign LED = stored_data[3:0];

endmodule
