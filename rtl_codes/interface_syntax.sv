interface axi_wr_addr_intf #(AWIDTH = 32) (input clk, input rst);
  logic [3:0]        awid;
  logic [AWIDTH-1:0] awaddr;
  logic [3:0]        awlen;
  logic [2:0]        awsize;
  logic [1:0]        awburst;
  logic [1:0]        awlock;
  logic [3:0]        awcache;
  logic [2:0]        awprot;
  logic              awvalid;
  logic              awready;

  modport MASTER (
    input  clk, rst,
    output awid, awaddr, awlen, awsize, awburst, awlock, awcache, awprot, awvalid,
    input  awready
  );

  modport SLAVE (
    input  clk, rst,
    input  awid, awaddr, awlen, awsize, awburst, awlock, awcache, awprot, awvalid,
    output awready
  );

endinterface: axi_wr_addr_intf
