module tb(
input clk_a,
input clk_b
//input clk_d,
//input clk_e,
//input clk_f
);



reg clk_a;
reg [7:0] counter_a;

always@(posedge clk_a)
  counter_a<=counter_a +1;	

reg clk_b;
reg [7:0] counter_b;

always@(posedge clk_b)
  counter_b<=counter_b +1;	


localparam MODULE_ID = 'h2ED2200C;
localparam SW_MAJOR_REV = 2 ;
localparam SW_MINOR_REV = 1 ;
localparam VPS_ID = 'h2ED22 ;
localparam APB_ADDRESS_WIDTH = 12 ;
localparam APB_DATA_WIDTH = 32 ;
localparam NUM_RED_VAPB = 1 ;
wire [7:0]wire_apb_psel ;



// APB interface
 wire wire_apb_pclk ;
 wire wire_apb_presetn ;
 wire wire_apb_penable ;
 wire wire_apb_pwrite ;
 wire [11:0] wire_apb_paddr ;
 wire [31:0] wire_apb_pwdata ;
 wire [31:0] wire_apb_prdata ;
 wire wire_apb_pready ;
 wire wire_apb_pslverr ;
 RED_VAPB #(
          .APB_ADDRESS_WIDTH (APB_ADDRESS_WIDTH),
          .APB_DATA_WIDTH (APB_DATA_WIDTH)
           ) my_RED_VAPB(
                        // APB interface
                        .u_apb_pclk ( clk_a ),
                        .u_apb_presetn ( wire_apb_presetn ),
                        .u_apb_psel ( wire_apb_psel ),
                        .u_apb_penable ( wire_apb_penable ),
                        .u_apb_pwrite ( wire_apb_pwrite ),
                        .u_apb_paddr ( wire_apb_paddr ),
                        .u_apb_pwdata ( wire_apb_pwdata ),
                        .u_apb_prdata ( wire_apb_prdata ),
                        .u_apb_pready ( wire_apb_pready ),
                        .u_apb_pslverr ( wire_apb_pslverr ),
                        .dut_apb_pclk ( clk_a ),
                        .dut_apb_presetn ( dut_apb_presetn)
                        );


/////////////////////////////////////////////////////////////////////////
///////
// LOCAL PARAMETERS
/////////////////////////////////////////////////////////////////////////
///////
localparam AXI_AWIDTH = 32 ;
localparam AXI_DWIDTH = 32 ;
localparam AXI_ID = 4 ;
 wire wire_axi_aclk ;
 wire wire_axi_aresetn ;
 wire [AXI_AWIDTH -1:0] wire_axi_awaddr ;
 wire [0:0] wire_axi_awvalid ;
 wire [0:0] wire_axi_awready ;
 wire [1:0] wire_axi_awburst ;
 wire [2:0] wire_axi_awsize ;
 wire [7:0] wire_axi_awlen ;
 wire [AXI_ID -1 :0] wire_axi_awid ;
 wire [3:0] wire_axi_awcache ;
 wire [3:0] wire_axi_awqos ;
 wire [2:0] wire_axi_awprot ;
 wire [0:0] wire_axi_awregion ;
 wire [0:0] wire_axi_awlock ;
 wire [AXI_DWIDTH - 1:0] wire_axi_wdata ;
 wire [0:0] wire_axi_wvalid ;
 wire [0:0] wire_axi_wready ;
 wire [AXI_DWIDTH/8 -1:0] wire_axi_wstrb ;
 wire [0:0] wire_axi_wlast ;
 wire [1:0] wire_axi_bresp ;
 wire [0:0] wire_axi_bready ;
 wire [0:0] wire_axi_bvalid ;
 wire [AXI_ID -1 :0] wire_axi_bid ;
 wire [AXI_AWIDTH -1:0] wire_axi_araddr ;
 wire [0:0] wire_axi_arvalid ;
 wire [0:0] wire_axi_arready ;
 wire [1:0] wire_axi_arburst ;
 wire [2:0] wire_axi_arsize ;
 wire [7:0] wire_axi_arlen ;
 wire [AXI_ID -1 :0] wire_axi_arid ;
 wire [3:0] wire_axi_arcache ;
 wire [3:0] wire_axi_arqos ;
 wire [2:0] wire_axi_arprot ;
 wire [0:0] wire_axi_arregion ;
 wire [0:0] wire_axi_arlock ;
 wire [AXI_DWIDTH - 1:0] wire_axi_rdata ;
 wire [0:0] wire_axi_rvalid ;
 wire [0:0] wire_axi_rready ;
 wire [0:0] wire_axi_rlast ;
 wire [AXI_ID -1 :0] wire_axi_rid ;
 wire [1:0] wire_axi_rresp ;
 assign top_output = wire_axi_arlen;
 wire dut_axi_aclk;
 wire dut_axi_aresetn;
 RED_VAXI #(
           .AXI_AWIDTH (AXI_AWIDTH),
           .AXI_DWIDTH (AXI_DWIDTH),
           .AXI_ID (AXI_ID)
) my_RED_VAXI (
            .u_axi_aclk ( dut_axi_aclk ),
            .u_axi_aresetn ( u_axi_aresetn ),
            .u_axi_awaddr ( wire_axi_awaddr ),
            .u_axi_awvalid ( wire_axi_awvalid ),
            .u_axi_awready ( wire_axi_awready ),
            .u_axi_awburst ( wire_axi_awburst ),
            .u_axi_awsize ( wire_axi_awsize ),
            .u_axi_awlen ( wire_axi_awlen ),
            .u_axi_awid ( wire_axi_awid ),
            .u_axi_awcache ( wire_axi_awcache ),
            .u_axi_awqos ( wire_axi_awqos ),
            .u_axi_awprot ( wire_axi_awprot ),
            .u_axi_awregion ( wire_axi_awregion ),
            .u_axi_awlock ( wire_axi_awlock ),
            .u_axi_wdata ( wire_axi_wdata ),
            .u_axi_wvalid ( wire_axi_wvalid ),
            .u_axi_wready ( wire_axi_wready ),
            .u_axi_wstrb ( wire_axi_wstrb ),
            .u_axi_wlast ( wire_axi_wlast ),
            .u_axi_bresp ( wire_axi_bresp ),
            .u_axi_bready ( wire_axi_bready ),
            .u_axi_bvalid ( wire_axi_bvalid ),
            .u_axi_bid ( wire_axi_bid ),
            .u_axi_araddr ( wire_axi_araddr ),
            .u_axi_arvalid ( wire_axi_arvalid ),
            .u_axi_arready ( wire_axi_arready ),
            .u_axi_arburst ( wire_axi_arburst ),
            .u_axi_arsize ( wire_axi_arsize ),
            .u_axi_arlen ( wire_axi_arlen ),
            .u_axi_arid ( wire_axi_arid ),
            .u_axi_arcache ( wire_axi_arcache ),
            .u_axi_arqos ( wire_axi_arqos ),
            .u_axi_arprot ( wire_axi_arprot ),
            .u_axi_arregion ( wire_axi_arregion ),
            .u_axi_arlock ( wire_axi_arlock ),
            .u_axi_rdata ( wire_axi_rdata ),
            .u_axi_rvalid ( wire_axi_rvalid ),
            .u_axi_rready ( wire_axi_rready ),
            .u_axi_rlast ( wire_axi_rlast ),
            .u_axi_rid ( wire_axi_rid ),
            .u_axi_rresp ( wire_axi_rresp ),
            .dut_axi_aclk ( clk_b ),
            .dut_axi_aresetn ( dut_axi_aresetn )
           );

    axi4_slave_sm 
                         #
			 (
			.ID_WIDTH          (4 ),
                        .ADDR_WIDTH        (32),
                        .DATA_WIDTH        (32))
		   axi_sm	 
                        (.aclk               (dut_axi_aclk)  
                         ,.aresetn            (u_axi_aresetn)         
                         ,.awid               (wire_axi_awid)      
                         ,.awaddr             (wire_axi_awaddr)        
                         ,.awlen              (wire_axi_awlen)       
                         ,.awsize             (wire_axi_awsize)        
                         ,.awlock             (wire_axi_awlock)        
                         ,.awburst            (wire_axi_awburst)         
                         ,.awcache            (wire_axi_awcache)         
                         ,.awvalid            (wire_axi_awvalid)         
                         ,.awprot             (wire_axi_awprot)        
                         ,.awqos              (wire_axi_awqos)       
                         ,.awready            (wire_axi_awready)         
                         ,.wdata              (wire_axi_wdata)       
                         ,.wlast              (wire_axi_wlast)       
                         ,.wstrb              (wire_axi_wstrb)       
                         ,.wready             (wire_axi_wready)        
                         ,.wvalid             (wire_axi_wvalid)        
                         ,.bresp              (wire_axi_bresp)       
                         ,.bid                (wire_axi_bid)     
                         ,.bready             (wire_axi_bready)        
                         ,.bvalid             (wire_axi_bvalid)        
                         ,.arsize             (wire_axi_arsize)        
                         ,.araddr             (wire_axi_araddr)        
                         ,.arlen              (wire_axi_arlen)       
                         ,.arid               (wire_axi_arid)      
                         ,.arprot             (wire_axi_arprot)        
                         ,.arready            (wire_axi_rready)         
                         ,.arburst            (wire_axi_arburst)         
                         ,.arlock             (wire_axi_arlock)        
                         ,.arvalid            (wire_axi_rvalid)         
                         ,.arqos              (wire_axi_arqos)       
                         ,.arcache            (wire_axi_arcache)         
                         ,.rdata              (wire_axi_rdata)       
                         ,.rlast              (wire_axi_rlast)       
                         ,.rresp              (wire_axi_rresp)       
                         ,.rready             (wire_axi_rready)        
                         ,.rvalid             (wire_axi_rvalid)        
                         ,.rid                (wire_axi_rid)     
                         ,.init_calib_complete()          
                         ,.mmcm_locked        ()
                         );
	   
	   RED_VUART vuart_inst(
                            .rx(dut_tx_signal),
                            .tx(dut_rx_signal)
                           );
endmodule
