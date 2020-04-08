
`timescale 1 ns / 1 ps

	module CMDA_controller_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface axi_lite
		parameter  C_axi_lite_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_axi_lite_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_axi_lite_ADDR_WIDTH	= 32,
		parameter integer C_axi_lite_DATA_WIDTH	= 32,
		parameter integer C_axi_lite_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here
        input wire [31:0] img_addr,
        input wire [31:0] frame_buffer_location,
        input wire [10:0] y_location,
        input wire [10:0] x_location,
        input wire start,
        output wire done,
        input wire [31:0] delay_per_line,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface axi_lite
		//input wire  axi_lite_init_axi_txn,
		output wire  axi_lite_error,
		output wire  axi_lite_txn_done,
		input wire  axi_lite_aclk,
		input wire  axi_lite_aresetn,
		output wire [C_axi_lite_ADDR_WIDTH-1 : 0] axi_lite_awaddr,
		output wire [2 : 0] axi_lite_awprot,
		output wire  axi_lite_awvalid,
		input wire  axi_lite_awready,
		output wire [C_axi_lite_DATA_WIDTH-1 : 0] axi_lite_wdata,
		output wire [C_axi_lite_DATA_WIDTH/8-1 : 0] axi_lite_wstrb,
		output wire  axi_lite_wvalid,
		input wire  axi_lite_wready,
		input wire [1 : 0] axi_lite_bresp,
		input wire  axi_lite_bvalid,
		output wire  axi_lite_bready,
		output wire [C_axi_lite_ADDR_WIDTH-1 : 0] axi_lite_araddr,
		output wire [2 : 0] axi_lite_arprot,
		output wire  axi_lite_arvalid,
		input wire  axi_lite_arready,
		input wire [C_axi_lite_DATA_WIDTH-1 : 0] axi_lite_rdata,
		input wire [1 : 0] axi_lite_rresp,
		input wire  axi_lite_rvalid,
		output wire  axi_lite_rready
	);
// Instantiation of Axi Bus Interface axi_lite
	CMDA_controller_v1_0_axi_lite # ( 
		.C_M_START_DATA_VALUE(C_axi_lite_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_axi_lite_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_axi_lite_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_axi_lite_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_axi_lite_TRANSACTIONS_NUM)
	) CMDA_controller_v1_0_axi_lite_inst (
		//.INIT_AXI_TXN(axi_lite_init_axi_txn),
		.ERROR(axi_lite_error),
		.TXN_DONE(axi_lite_txn_done),
		.M_AXI_ACLK(axi_lite_aclk),
		.M_AXI_ARESETN(axi_lite_aresetn),
		.M_AXI_AWADDR(axi_lite_awaddr),
		.M_AXI_AWPROT(axi_lite_awprot),
		.M_AXI_AWVALID(axi_lite_awvalid),
		.M_AXI_AWREADY(axi_lite_awready),
		.M_AXI_WDATA(axi_lite_wdata),
		.M_AXI_WSTRB(axi_lite_wstrb),
		.M_AXI_WVALID(axi_lite_wvalid),
		.M_AXI_WREADY(axi_lite_wready),
		.M_AXI_BRESP(axi_lite_bresp),
		.M_AXI_BVALID(axi_lite_bvalid),
		.M_AXI_BREADY(axi_lite_bready),
		.M_AXI_ARADDR(axi_lite_araddr),
		.M_AXI_ARPROT(axi_lite_arprot),
		.M_AXI_ARVALID(axi_lite_arvalid),
		.M_AXI_ARREADY(axi_lite_arready),
		.M_AXI_RDATA(axi_lite_rdata),
		.M_AXI_RRESP(axi_lite_rresp),
		.M_AXI_RVALID(axi_lite_rvalid),
		.M_AXI_RREADY(axi_lite_rready),
		.img_addr(img_addr),
		.frame_buffer_location(frame_buffer_location),
        .y_location(y_location),
        .x_location(x_location),
        .start(start),
        .done(done),
        .delay_per_line(delay_per_line)
	);

	// Add user logic here

	// User logic ends

	endmodule
