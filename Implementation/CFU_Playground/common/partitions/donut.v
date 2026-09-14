module cfu_compute (
  input               cmd_valid,
  output              cmd_ready,
  input      [9:0]    cmd_payload_function_id,
  input      [31:0]   cmd_payload_inputs_0,
  input      [31:0]   cmd_payload_inputs_1,
  output              rsp_valid,
  input               rsp_ready,
  output     [31:0]   rsp_payload_outputs_0,
  input               reset,
  input               clk
);

  // Trivial handshaking for a combinational CFU
  // assign rsp_valid = cmd_valid;
  assign cmd_ready = rsp_ready;

  reg [31:0] rsp_payload;
  reg rsp_valid0, rsp_valid1;

  reg [31:0] cfu_in0, cfu_in1;

  always @(posedge clk) begin
    // stage 1
    rsp_valid0 <= cmd_valid;
    cfu_in0 <= cmd_payload_inputs_0;
    cfu_in1 <= cmd_payload_inputs_1;

    // stage 2
    rsp_valid1 <= rsp_valid0;
    rsp_payload <= cmd_payload_function_id[0] ? mul : mulsh;
  end

  assign rsp_valid = rsp_valid1;

  wire [31:0] mul    = $signed(cfu_in0) * $signed(cfu_in1);

  wire [31:0] mulsh  = $signed(mul) >>> 10;

  assign rsp_payload_outputs_0 = rsp_payload;


endmodule
