module recon_counter (
  input clk,
  output eos
);

(* KEEP = "true" *)
wire preq;

STARTUPE2 STARTUPE2_inst (
   // .CFGCLK(CFGCLK),       // 1-bit output: Configuration main clock output
   // .CFGMCLK(CFGMCLK),     // 1-bit output: Configuration internal oscillator clock output
   .EOS(eos),             // 1-bit output: Active high output signal indicating the End Of Startup.
   .CLK(clk),              // 1-bit input: User start-up clock input
   .GSR(1'b0),
   .GTS(1'b0),
   .PACK(1'b0),
   .USRCCLKO(1'b0),
   .USRCCLKTS(1'b1),
   .KEYCLEARB(1'b1),
   .USRDONEO(1'b1),   // 1-bit input: User DONE pin output control
   .USRDONETS(1'b0)  // 1-bit input: User DONE 3-state enable output
);

(* KEEP = "true" *)
reg [31:0] counter = 0, counter_next;

(* KEEP = "true" *)
localparam IDLE = 0, RECON = 1;

(* KEEP = "true" *)
reg state = 0, next_state;

always @(*) begin : counter_state
	case (state)
	IDLE: begin
		next_state = (!eos)? RECON : IDLE;
		counter_next = counter;
	end
	RECON: begin
		next_state = (eos)? IDLE : RECON;
		counter_next = counter + 1;
	end
	default: begin
		next_state = IDLE;
		counter_next = counter;
	end
	endcase
end

always @(posedge clk) begin : counter_switch
  state = next_state;
  if(preq)
    counter <= 32'd0;
  else
    counter <= counter_next;
end

ila_0 ila(.clk(clk),.probe0(counter));

endmodule
