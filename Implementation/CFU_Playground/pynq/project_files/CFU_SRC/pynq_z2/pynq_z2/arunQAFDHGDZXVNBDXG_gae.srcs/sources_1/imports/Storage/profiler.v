module reconf_counter (
  input clk,
  input rst,
  output [31:0] count_out,
  output eos
);

(* KEEP = "true" *)
wire preq;

STARTUPE2 STARTUPE2_inst (
   // .CFGCLK(CFGCLK),       // 1-bit output: Configuration main clock output
   // .CFGMCLK(CFGMCLK),     // 1-bit output: Configuration internal oscillator clock output
   .EOS(eos),             // 1-bit output: Active high output signal indicating the End Of Startup.
   .PREQ(preq),           // 1-bit output: PROGRAM request to fabric output
   .CLK(clk)              // 1-bit input: User start-up clock input
   // .GSR(GSR),             // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
   // .GTS(GTS),             // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
   // .KEYCLEARB(KEYCLEARB), // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
   // .PACK(PACK),           // 1-bit input: PROGRAM acknowledge input
   // .USRCCLKO(USRCCLKO),   // 1-bit input: User CCLK input
   //                        // For Zynq-7000 devices, this input must be tied to GND
   // .USRCCLKTS(USRCCLKTS), // 1-bit input: User CCLK 3-state enable input
   //                        // For Zynq-7000 devices, this input must be tied to VCC
   // .USRDONEO(USRDONEO),   // 1-bit input: User DONE pin output control
   // .USRDONETS(USRDONETS)  // 1-bit input: User DONE 3-state enable output
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
  if(rst)
    counter <= 32'd0;
  else
    counter <= counter_next;
end

assign count_out = counter;

endmodule
