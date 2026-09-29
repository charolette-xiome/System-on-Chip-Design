module testbench();
  logic clk,rst;

  // Instantiate the interfaces
  axi_wr_addr_intf axi_wr_addr_intf1(clk,rst),axi_wr_addr_intf2(clk,rst);

  // DUT Instantiation
  interconnect interconnect1 (.*);

  // Clock and reset generation
  initial begin clk=0; forever #100 clk=~clk; end
  initial begin rst=0; repeat (3) @(posedge clk); rst=1; end

  // Start driving the DUT inputs from the TB through the interface signals.

endmodule : testbench
