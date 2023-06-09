module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    vssa2,
    vdda2,
    vssa1,
    vdda1,
    vssd2,
    vccd2,
    vssd1,
    vccd1,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 input vssa2;
 input vdda2;
 input vssa1;
 input vdda1;
 input vssd2;
 input vccd2;
 input vssd1;
 input vccd1;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;


 solo_squash_caravel adapter (.blue(io_out[15]),
    .debug_design_reset(io_out[19]),
    .debug_gpio_ready(io_out[20]),
    .down_key_n(io_in[11]),
    .ext_reset_n(io_in[8]),
    .gpio_ready(la_data_in[32]),
    .green(io_out[14]),
    .hsync(io_out[16]),
    .new_game_n(io_in[10]),
    .pause_n(io_in[9]),
    .red(io_out[13]),
    .speaker(io_out[18]),
    .up_key_n(io_in[12]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .vsync(io_out[17]),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .debug_oeb({io_oeb[20],
    io_oeb[19]}),
    .design_oeb({io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13]}));
endmodule
