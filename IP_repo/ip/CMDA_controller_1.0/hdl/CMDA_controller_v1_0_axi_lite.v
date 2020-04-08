
`timescale 1 ns / 1 ps

	module CMDA_controller_v1_0_axi_lite #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// The master will start generating data from the C_M_START_DATA_VALUE value
		parameter  C_M_START_DATA_VALUE	= 32'hAA000000,
		// The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h44A00000,
		// Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.
		parameter integer C_M_TRANSACTIONS_NUM	= 1
	)
	(
		// Users to add ports here
		input wire [31:0] img_addr,
        input wire [10:0] y_location,
        input wire [10:0] x_location,
        input wire [31:0] frame_buffer_location,
        input wire start,
        input wire [31:0] delay_per_line,
        output reg done,
		// User ports ends
		// Do not modify the ports beyond this line

		// Initiate AXI transactions
		//input wire  INIT_AXI_TXN,
		// Asserts when ERROR is detected
		output reg  ERROR,
		// Asserts when AXI transactions is complete
		output wire  TXN_DONE,
		// AXI clock signal
		input wire  M_AXI_ACLK,
		// AXI active low reset signal
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address Channel ports. Write address (issued by master)
		output reg [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Write channel Protection type.
    // This signal indicates the privilege and security level of the transaction,
    // and whether the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Write address valid. 
    // This signal indicates that the master signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data Channel ports. Write data (issued by master)
		output reg [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes. 
    // This signal indicates which byte lanes hold valid data.
    // There is one write strobe bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write valid. This signal indicates that valid write data and strobes are available.
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response Channel ports. 
    // This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Write response valid. 
    // This signal indicates that the channel is signaling a valid write response
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address Channel ports. Read address (issued by master)
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		// Protection type. 
    // This signal indicates the privilege and security level of the transaction, 
    // and whether the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,
		// Read address valid. 
    // This signal indicates that the channel is signaling valid read address and control information.
		output wire  M_AXI_ARVALID,
		// Read address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire  M_AXI_ARREADY,
		// Master Interface Read Data Channel ports. Read data (issued by slave)
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer.
		input wire [1 : 0] M_AXI_RRESP,
		// Read valid. This signal indicates that the channel is signaling the required read data.
		input wire  M_AXI_RVALID,
		// Read ready. This signal indicates that the master can accept the read data and response information.
		output wire  M_AXI_RREADY
	);

	// function called clogb2 that returns an integer which has the
	// value of the ceiling of the log base 2
    reg INIT_AXI_TXN;
    reg init_read;
	 function integer clogb2 (input integer bit_depth);
		 begin
		 for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
			 bit_depth = bit_depth >> 1;
		 end
	 endfunction

	// TRANS_NUM_BITS is the width of the index counter for 
	// number of write or read transaction.
	 localparam integer TRANS_NUM_BITS = clogb2(C_M_TRANSACTIONS_NUM-1);

	// Example State machine to initialize counter, initialize write transactions, 
	// initialize read transactions and comparison of read data with the 
	// written data words.
	parameter [2:0] IDLE = 3'b000, // This state initiates AXI4Lite transaction 
			// after the state machine changes state to INIT_WRITE   
			// when there is 0 to 1 transition on INIT_AXI_TXN
		INIT_WRITE   = 3'b001, // This state initializes write transaction,
			// once writes are done, the state machine 
			// changes state to INIT_READ 
		INIT_READ = 3'b010, // This state initializes read transaction
			// once reads are done, the state machine 
			// changes state to INIT_COMPARE 
		INIT_READ_2=3'b011,
		INIT_COMPARE = 2'b100; // This state issues the status of comparison 
			// of the written data with the read data	

	 reg [2:0] mst_exec_state;

	// AXI4LITE signals
	//write address valid
	reg  	axi_awvalid;
	//write data valid
	reg  	axi_wvalid;
	//read address valid
	reg  	axi_arvalid;
	//read data acceptance
	reg  	axi_rready;
	//write response acceptance
	reg  	axi_bready;
	//write address
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	//write data
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	//read addresss
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	//Asserts when there is a write response error
	wire  	write_resp_error;
	//Asserts when there is a read response error
	wire  	read_resp_error;
	//A pulse to initiate a write transaction
	reg  	start_single_write;
	//A pulse to initiate a read transaction
	reg  	start_single_read;
	//Asserts when a single beat write transaction is issued and remains asserted till the completion of write trasaction.
	reg  	write_issued;
	//Asserts when a single beat read transaction is issued and remains asserted till the completion of read trasaction.
	reg  	read_issued;
	//flag that marks the completion of write trasactions. The number of write transaction is user selected by the parameter C_M_TRANSACTIONS_NUM.
	reg  	writes_done;
	//flag that marks the completion of read trasactions. The number of read transaction is user selected by the parameter C_M_TRANSACTIONS_NUM
	reg  	reads_done;
	//The error register is asserted when any of the write response error, read response error or the data mismatch flags are asserted.
	reg  	error_reg;
	//index counter to track the number of write transaction issued
	reg [TRANS_NUM_BITS : 0] 	write_index;
	//index counter to track the number of read transaction issued
	reg [TRANS_NUM_BITS : 0] 	read_index;
	//Expected read data used to compare with the read data.
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	expected_rdata;
	//Flag marks the completion of comparison of the read data with the expected read data
	reg  	compare_done;
	//This flag is asserted when there is a mismatch of the read data with the expected read data.
	reg  	read_mismatch;
	//Flag is asserted when the write index reaches the last write transction number
	reg  	last_write;
	//Flag is asserted when the read index reaches the last read transction number
	reg  	last_read;
	reg  	init_txn_ff;
	reg  	init_txn_ff2;
	reg  	init_txn_edge;
	wire  	init_txn_pulse;
    reg [31:0] m_axi_araddr;

	// I/O Connections assignments

	//Adding the offset address to the base addr of the slave
	//assign M_AXI_AWADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_awaddr;
	//AXI 4 write data
	//assign M_AXI_WDATA	= axi_wdata;
	assign M_AXI_AWPROT	= 3'b000;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WVALID	= axi_wvalid;
	//Set all byte strobes in this example
	assign M_AXI_WSTRB	= 4'b1111;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;
	//Read Address (AR)
	assign M_AXI_ARADDR = m_axi_araddr;//C_M_TARGET_SLAVE_BASE_ADDR + axi_araddr;
	assign M_AXI_ARVALID	= axi_arvalid;
	assign M_AXI_ARPROT	= 3'b001;
	//Read and Read Response (R)
	assign M_AXI_RREADY	= axi_rready;
	//Example design I/O
	assign TXN_DONE	= compare_done;
	assign init_txn_pulse	= (!init_txn_ff2) && init_txn_ff;


	//Generate a pulse to initiate AXI transaction.
	always @(posedge M_AXI_ACLK)										      
	  begin                                                                        
	    // Initiates AXI transaction delay    
	    if (M_AXI_ARESETN == 0 )                                                   
	      begin                                                                    
	        init_txn_ff <= 1'b0;                                                   
	        init_txn_ff2 <= 1'b0;                                                   
	      end                                                                               
	    else                                                                       
	      begin  
	        init_txn_ff <= INIT_AXI_TXN;
	        init_txn_ff2 <= init_txn_ff;                                                                 
	      end                                                                      
	  end     


	//--------------------
	//Write Address Channel
	//--------------------

	// The purpose of the write address channel is to request the address and 
	// command information for the entire transaction.  It is a single beat
	// of information.

	// Note for this example the axi_awvalid/axi_wvalid are asserted at the same
	// time, and then each is deasserted independent from each other.
	// This is a lower-performance, but simplier control scheme.

	// AXI VALID signals must be held active until accepted by the partner.

	// A data transfer is accepted by the slave when a master has
	// VALID data and the slave acknoledges it is also READY. While the master
	// is allowed to generated multiple, back-to-back requests by not 
	// deasserting VALID, this design will add rest cycle for
	// simplicity.

	// Since only one outstanding transaction is issued by the user design,
	// there will not be a collision between a new request and an accepted
	// request on the same clock cycle. 

	  always @(posedge M_AXI_ACLK)										      
	  begin                                                                        
	    //Only VALID signals must be deasserted during reset per AXI spec          
	    //Consider inverting then registering active-low reset for higher fmax     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                   
	      begin                                                                    
	        axi_awvalid <= 1'b0;                                                   
	      end                                                                      
	      //Signal a new address/data command is available by user logic           
	    else                                                                       
	      begin                                                                    
	        if (start_single_write)                                                
	          begin                                                                
	            axi_awvalid <= 1'b1;                                               
	          end                                                                  
	     //Address accepted by interconnect/slave (issue of M_AXI_AWREADY by slave)
	        else if (M_AXI_AWREADY && axi_awvalid)                                 
	          begin                                                                
	            axi_awvalid <= 1'b0;                                               
	          end                                                                  
	      end                                                                      
	  end                                                                          
	                                                                               
	                                                                               
	  // start_single_write triggers a new write                                   
	  // transaction. write_index is a counter to                                  
	  // keep track with number of write transaction                               
	  // issued/initiated                                                          
	  always @(posedge M_AXI_ACLK)                                                 
	  begin                                                                        
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                   
	      begin                                                                    
	        write_index <= 0;                                                      
	      end                                                                      
	      // Signals a new write address/ write data is                            
	      // available by user logic                                               
	    else if (start_single_write)                                               
	      begin                                                                    
	        write_index <= write_index + 1;                                        
	      end                                                                      
	  end                                                                          


	//--------------------
	//Write Data Channel
	//--------------------

	//The write data channel is for transfering the actual data.
	//The data generation is speific to the example design, and 
	//so only the WVALID/WREADY handshake is shown here

	   always @(posedge M_AXI_ACLK)                                        
	   begin                                                                         
	     if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                                    
	       begin                                                                     
	         axi_wvalid <= 1'b0;                                                     
	       end                                                                       
	     //Signal a new address/data command is available by user logic              
	     else if (start_single_write)                                                
	       begin                                                                     
	         axi_wvalid <= 1'b1;                                                     
	       end                                                                       
	     //Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)      
	     else if (M_AXI_WREADY && axi_wvalid)                                        
	       begin                                                                     
	        axi_wvalid <= 1'b0;                                                      
	       end                                                                       
	   end                                                                           


	//----------------------------
	//Write Response (B) Channel
	//----------------------------

	//The write response channel provides feedback that the write has committed
	//to memory. BREADY will occur after both the data and the write address
	//has arrived and been accepted by the slave, and can guarantee that no
	//other accesses launched afterwards will be able to be reordered before it.

	//The BRESP bit [1] is used indicate any errors from the interconnect or
	//slave for the entire write burst. This example will capture the error.

	//While not necessary per spec, it is advisable to reset READY signals in
	//case of differing reset latencies between master/slave.

	  always @(posedge M_AXI_ACLK)                                    
	  begin                                                                
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                           
	      begin                                                            
	        axi_bready <= 1'b0;                                            
	      end                                                              
	    // accept/acknowledge bresp with axi_bready by the master          
	    // when M_AXI_BVALID is asserted by slave                          
	    else if (M_AXI_BVALID && ~axi_bready)                              
	      begin                                                            
	        axi_bready <= 1'b1;                                            
	      end                                                              
	    // deassert after one clock cycle                                  
	    else if (axi_bready)                                               
	      begin                                                            
	        axi_bready <= 1'b0;                                            
	      end                                                              
	    // retain the previous value                                       
	    else                                                               
	      axi_bready <= axi_bready;                                        
	  end                                                                  
	                                                                       
	//Flag write errors                                                    
	assign write_resp_error = (axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]);


	//----------------------------
	//Read Address Channel
	//----------------------------

	//start_single_read triggers a new read transaction. read_index is a counter to
	//keep track with number of read transaction issued/initiated

	  always @(posedge M_AXI_ACLK)                                                     
	  begin                                                                            
	    if (M_AXI_ARESETN == 0 || init_read == 1'b1)                                                       
	      begin                                                                        
	        read_index <= 0;                                                           
	      end                                                                          
	    // Signals a new read address is                                               
	    // available by user logic                                                     
	    else if (start_single_read)                                                    
	      begin                                                                        
	        read_index <= read_index + 1;                                              
	      end                                                                          
	  end                                                                              
	                                                                                   
	  // A new axi_arvalid is asserted when there is a valid read address              
	  // available by the master. start_single_read triggers a new read                
	  // transaction                                                                   
	  always @(posedge M_AXI_ACLK)                                                     
	  begin                                                                            
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                       
	      begin                                                                        
	        axi_arvalid <= 1'b0;                                                       
	      end                                                                          
	    //Signal a new read address command is available by user logic                 
	    else if (start_single_read)                                                    
	      begin                                                                        
	        axi_arvalid <= 1'b1;                                                       
	      end                                                                          
	    //RAddress accepted by interconnect/slave (issue of M_AXI_ARREADY by slave)    
	    else if (M_AXI_ARREADY && axi_arvalid)                                         
	      begin                                                                        
	        axi_arvalid <= 1'b0;                                                       
	      end                                                                          
	    // retain the previous value                                                   
	  end                                                                              


	//--------------------------------
	//Read Data (and Response) Channel
	//--------------------------------

	//The Read Data channel returns the results of the read request 
	//The master will accept the read data by asserting axi_rready
	//when there is a valid read data available.
	//While not necessary per spec, it is advisable to reset READY signals in
	//case of differing reset latencies between master/slave.

	  always @(posedge M_AXI_ACLK)                                    
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                            
	      begin                                                             
	        axi_rready <= 1'b0;                                             
	      end                                                               
	    // accept/acknowledge rdata/rresp with axi_rready by the master     
	    // when M_AXI_RVALID is asserted by slave                           
	    else if (M_AXI_RVALID && ~axi_rready)                               
	      begin                                                             
	        axi_rready <= 1'b1;                                             
	      end                                                               
	    // deassert after one clock cycle                                   
	    else if (axi_rready)                                                
	      begin                                                             
	        axi_rready <= 1'b0;                                             
	      end                                                               
	    // retain the previous value                                        
	  end                                                                   
	                                                                        
	//Flag write errors                                                     
	assign read_resp_error = (axi_rready & M_AXI_RVALID & M_AXI_RRESP[1]);  


	//--------------------------------
	//User Logic
	//--------------------------------

	//Address/Data Stimulus

	//Address/data pairs for this example. The read and write values should
	//match.
	//Modify these as desired for different address patterns.

	  //Write Addresses                                        
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	        if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                
	          begin                                                 
	            axi_awaddr <= 0;                                    
	          end                                                   
	          // Signals a new write address/ write data is         
	          // available by user logic                            
	        else if (M_AXI_AWREADY && axi_awvalid)                  
	          begin                                                 
	            axi_awaddr <= axi_awaddr + 32'h00000004;            
	                                                                
	          end                                                   
	      end                                                       
	                                                                
	  // Write data generation                                      
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                
	          begin                                                 
	            axi_wdata <= C_M_START_DATA_VALUE;                  
	          end                                                   
	        // Signals a new write address/ write data is           
	        // available by user logic                              
	        else if (M_AXI_WREADY && axi_wvalid)                    
	          begin                                                 
	            axi_wdata <= C_M_START_DATA_VALUE + write_index;    
	          end                                                   
	        end          	                                       
	                                                                
	  //Read Addresses                                              
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	        if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                
	          begin                                                 
	            axi_araddr <= 0;                                    
	          end                                                   
	          // Signals a new write address/ write data is         
	          // available by user logic                            
	        else if (M_AXI_ARREADY && axi_arvalid)                  
	          begin                                                 
	            axi_araddr <= axi_araddr + 32'h00000004;            
	          end                                                   
	      end                                                       
	                                                                
	                                                                
	                                                                
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	        if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                
	          begin                                                 
	            expected_rdata <= C_M_START_DATA_VALUE;             
	          end                                                   
	          // Signals a new write address/ write data is         
	          // available by user logic                            
	        else if (M_AXI_RVALID && axi_rready)                    
	          begin                                                 
	            expected_rdata <= C_M_START_DATA_VALUE + read_index;
	          end                                                   
	      end                                                       
	  //implement master command interface state machine                         
	  always @ ( posedge M_AXI_ACLK)                                                    
	  begin                                                                             
	    if (M_AXI_ARESETN == 1'b0)                                                     
	      begin                                                                         
	      // reset condition                                                            
	      // All the signals are assigned default values under reset condition          
	        mst_exec_state  <= IDLE;                                            
	        start_single_write <= 1'b0;                                                 
	        write_issued  <= 1'b0;                                                      
	        start_single_read  <= 1'b0;                                                 
	        read_issued   <= 1'b0;                                                      
	        compare_done  <= 1'b0;                                                      
	        ERROR <= 1'b0;
	      end                                                                           
	    else                                                                            
	      begin                                                                         
	       // state transition                                                          
	        case (mst_exec_state)                                                       
	                                                                                    
	          IDLE:                                                             
	          // This state is responsible to initiate 
	          // AXI transaction when init_txn_pulse is asserted 
	            if ( init_txn_pulse == 1'b1 )                                     
	              begin                                                                 
	                mst_exec_state  <= INIT_WRITE;                                      
	                ERROR <= 1'b0;
	                compare_done <= 1'b0;
	              end
	            else if (init_read ==1'b1)
                    begin
                        mst_exec_state  <= INIT_READ; 
                    end                                                                   
	            else                                                                    
	              begin                                                                 
	                mst_exec_state  <= IDLE;                                    
	              end                                                                   
	                                                                                    
	          INIT_WRITE:                                                               
	            // This state is responsible to issue start_single_write pulse to       
	            // initiate a write transaction. Write transactions will be             
	            // issued until last_write signal is asserted.                          
	            // write controller                                                     
	            if (writes_done)                                                        
	              begin                                                                 
	                mst_exec_state <= IDLE;//                                      
	              end                                                                   
	            else                                                                    
	              begin                                                                 
	                mst_exec_state  <= INIT_WRITE;                                      
	                                                                                    
	                  if (~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID && ~last_write && ~start_single_write && ~write_issued)
	                    begin                                                           
	                      start_single_write <= 1'b1;                                   
	                      write_issued  <= 1'b1;                                        
	                    end                                                             
	                  else if (axi_bready)                                              
	                    begin                                                           
	                      write_issued  <= 1'b0;                                        
	                    end                                                             
	                  else                                                              
	                    begin                                                           
	                      start_single_write <= 1'b0; //Negate to generate a pulse      
	                    end                                                             
	              end                                                                   
	          INIT_READ:
	               mst_exec_state <= INIT_READ_2;                                                   
	          INIT_READ_2:                                                                
	            // This state is responsible to issue start_single_read pulse to        
	            // initiate a read transaction. Read transactions will be               
	            // issued until last_read signal is asserted.                           
	             // read controller                                                     
	             if (reads_done)                                                        
	               begin                                                                
	                 mst_exec_state <= IDLE;                                    
	               end                                                                  
	             else                                                                   
	               begin                                                                
	                 mst_exec_state  <= INIT_READ_2;                                      
	                                                                                    
	                 if (~axi_arvalid && ~M_AXI_RVALID && ~last_read && ~start_single_read && ~read_issued)
	                   begin                                                            
	                     start_single_read <= 1'b1;                                     
	                     read_issued  <= 1'b1;                                          
	                   end                                                              
	                 else if (axi_rready)                                               
	                   begin                                                            
	                     read_issued  <= 1'b0;                                          
	                   end                                                              
	                 else                                                               
	                   begin                                                            
	                     start_single_read <= 1'b0; //Negate to generate a pulse        
	                   end                                                              
	               end                                                                  
	                                                                                    
	           INIT_COMPARE:                                                            
	             begin
	                 // This state is responsible to issue the state of comparison          
	                 // of written data with the read data. If no error flags are set,      
	                 // compare_done signal will be asseted to indicate success.            
	                 ERROR <= error_reg; 
	                 mst_exec_state <= IDLE;                                    
	                 compare_done <= 1'b1;                                              
	             end                                                                  
	           default :                                                                
	             begin                                                                  
	               mst_exec_state  <= IDLE;                                     
	             end                                                                    
	        endcase                                                                     
	    end                                                                             
	  end //MASTER_EXECUTION_PROC                                                       
	                                                                                    
	  //Terminal write count                                                            
	                                                                                    
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
	      last_write <= 1'b0;                                                           
	                                                                                    
	    //The last write should be associated with a write address ready response       
	    else if ((write_index == C_M_TRANSACTIONS_NUM) && M_AXI_AWREADY)                
	      last_write <= 1'b1;                                                           
	    else                                                                            
	      last_write <= last_write;                                                     
	  end                                                                               
	                                                                                    
	  //Check for last write completion.                                                
	                                                                                    
	  //This logic is to qualify the last write count with the final write              
	  //response. This demonstrates how to confirm that a write has been                
	  //committed.                                                                      
	                                                                                    
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
	      writes_done <= 1'b0;                                                          
	                                                                                    
	      //The writes_done should be associated with a bready response                 
	    else if (last_write && M_AXI_BVALID && axi_bready)                              
	      writes_done <= 1'b1;                                                          
	    else                                                                            
	      writes_done <= writes_done;                                                   
	  end                                                                               
	                                                                                    
	//------------------                                                                
	//Read example                                                                      
	//------------------                                                                
	                                                                                    
	//Terminal Read Count                                                               
	                                                                                    
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
	      last_read <= 1'b0;                                                            
	                                                                                    
	    //The last read should be associated with a read address ready response         
	    else if ((read_index == C_M_TRANSACTIONS_NUM) && (M_AXI_ARREADY) )              
	      last_read <= 1'b1;
	    else if (mst_exec_state == IDLE) 
	      last_read <=1'b0;                                                            
	    else                                                                            
	      last_read <= last_read;                                                       
	  end                                                                               
	                                                                                    
	/*                                                                                  
	 Check for last read completion.                                                    
	                                                                                    
	 This logic is to qualify the last read count with the final read                   
	 response/data.                                                                     
	 */                                                                                 
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
	      reads_done <= 1'b0;                                                           
	                                                                                    
	    //The reads_done should be associated with a read ready response                
	    else if (last_read && M_AXI_RVALID && axi_rready)                               
	      reads_done <= 1'b1;
	    else if (mst_exec_state == IDLE) 
          reads_done<=1'b0;                                                                  
	    else                                                                            
	      reads_done <= reads_done;                                                     
	    end                                                                             
	                                                                                    
	//-----------------------------                                                     
	//Example design error register                                                     
	//-----------------------------                                                     
	                                                                                    
	//Data Comparison                                                                   
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                                         
	    read_mismatch <= 1'b0;                                                          
	                                                                                    
	    //The read data when available (on axi_rready) is compared with the expected data
	    else if ((M_AXI_RVALID && axi_rready) && (M_AXI_RDATA != expected_rdata))         
	      read_mismatch <= 1'b1;                                                        
	    else                                                                            
	      read_mismatch <= read_mismatch;                                               
	  end                                                                               
	                                                                                    
	// Register and hold any data mismatches, or read/write interface errors            
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                                         
	      error_reg <= 1'b0;                                                            
	                                                                                    
	    //Capture any error types                                                       
	    else if (read_mismatch || write_resp_error || read_resp_error)                  
	      error_reg <= 1'b1;                                                            
	    else                                                                            
	      error_reg <= error_reg;                                                       
	  end                                                                               
	// Add user logic here
	
    reg [31:0] img_address;
    reg [5:0] y_loc;
    reg [4:0] x_loc;
    
    reg [31:0] memory_counter;
    reg [31:0] position_in_frame_buffer;
    reg increament_scan_line;
    reg reset_line_to_line_cunter;
    reg [31:0] line_to_line_counter;
    reg increament_line_to_line_counter;
    always@(posedge M_AXI_ACLK) 
    begin
        if(M_AXI_ARESETN == 0 )
        begin
            memory_counter<=32'b0;
        end
        else if(start)
        begin
            memory_counter<=img_addr;
        end
        else if(increament_scan_line)begin
            memory_counter<=memory_counter+32'd360; //go to next scan line and let CMDA to the move
        end
    end
    
    always@(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 1'b0|reset_line_to_line_cunter==1'b1)
        begin
            line_to_line_counter<=0;
        end
        else if(increament_line_to_line_counter==1'b1)
        begin
            line_to_line_counter<=line_to_line_counter+32'b1;
        end
        else
        begin
            line_to_line_counter<=line_to_line_counter;
        end
    end//end ff
    
    
    always@(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 1'b0)
        begin
            position_in_frame_buffer<=32'b0;
        end
        else if(start)
        begin
            position_in_frame_buffer<= y_location*32'd5760 + x_location*32'd3 +frame_buffer_location;
        end
        else if(increament_scan_line)
        begin
            position_in_frame_buffer<=position_in_frame_buffer + 32'd5760 ;//5760 =1920 x 3
        end
        else
        begin
            position_in_frame_buffer<=position_in_frame_buffer;
        end
    end
    parameter [4:0] RESET = 5'b00000, 
    PROGRAM_4 = 5'b00001, // This state initializes write transaction,
    PROGRAM_4_WAIT_INIT_DONE= 5'b00010,
    PROGRAM_4_WAIT=5'b00011,
    PROGRAM_18 = 5'b00100, // This state initializes read transaction
    PROGRAM_18_WAIT_INIT_DONE = 5'b00101,
    PROGRAM_18_WAIT=5'b00110,
    PROGRAM_20 = 5'b00111,
    PROGRAM_20_WAIT_INIT_DONE=5'b01000,
    PROGRAM_20_WAIT=5'b01001,
    PROGRAM_28 =5'b01010,
    PROGRAM_28_WAIT_INIT_DONE=5'b01011,
    PROGRAM_28_WAIT =5'b01100,
    SEND_REQUEST= 5'b01101,
    SEND_REQUEST_WAIT=5'b01110,
    CHECK_STATUS = 5'b01111,
    DONE= 5'b10000,
    RESET_WAIT_IDEL=5'b10001,
    RESET_WRITE=5'b10010,
    RESET_WRITE_REQUEST_WAIT_INIT_DONE=5'b10011,
    RESET_WRITE_REQUEST_WAIT=5'b10100,
    RESET_SEND_REQUEST=5'b10101,
    RESET_SEND_REQUEST_WAIT_INIT_DONE=5'b10110,
    RESET_CHECK_STATUS=5'b10111,
    FINISH_RESET=5'b11000,
    FINISH_RESET_WAIT_IDLE=5'b11001,
    DELAY_PER_LINE=5'b11010;
    
    reg increament_row;
    reg [4:0] current_state;
    reg [4:0] next_state;
    reg [31:0] num_of_row;
    reg [31:0] rdata;
    reg [31:0] internal_counter;
    reg  reset_counter;
    reg reset_done;
    
    always@(posedge M_AXI_ACLK)
    begin
    if (M_AXI_ARESETN == 1'b0 | reset_counter==1'b1)                                                     
          begin                                                                         
            internal_counter<=0;
          end    
          else
            internal_counter<= internal_counter+1'b1;
    end
    //state transition

   always @ ( posedge M_AXI_ACLK)                                                    
    begin                                                                             
      if (M_AXI_ARESETN == 1'b0)                                                     
        begin                                                                         
        current_state<=RESET;
        end                                                                           
      else                                                                            
        begin
            current_state<=next_state;                                                                         
        end // end else
    end //end always
    reg internal_done;
    always@(posedge M_AXI_ACLK)
    begin
        if(M_AXI_ARESETN == 1'b0|| reset_done==1'b1)
            internal_done<=1'b0;
        if(num_of_row==32'b00000000000000000000000001111000)begin
             internal_done<=1'b1;
        end
    end
    reg internal_assert_done;
    reg assert_done;
    always@(posedge M_AXI_ACLK)
    begin
        if(M_AXI_ARESETN == 1'b0)
            assert_done<=1'b0;
        else if(internal_assert_done==1'b1)
            assert_done<=1'b1;
        else
            assert_done<=1'b0;
    end
    always@(*)begin
        if(internal_done&current_state ==RESET|assert_done)begin
            done<=1'b1;
        end
        else
        begin
            done<=1'b0;
        end
    end
    always@(*)
    begin
     // state transition                                                          
             case (current_state)
               RESET:begin
                       if(start)
                           next_state<=PROGRAM_4;
                       else
                           next_state<=RESET;
                       end
               PROGRAM_4:begin
                               next_state<=PROGRAM_4_WAIT_INIT_DONE;
                               end
               PROGRAM_4_WAIT_INIT_DONE:begin
                            next_state<=PROGRAM_4_WAIT;
                        end
               PROGRAM_4_WAIT:begin
                           if(writes_done==1'b1)
                           begin
                               next_state<=PROGRAM_18;
                           end
                           else
                           begin
                               next_state<=PROGRAM_4_WAIT;
                           end
                       end
               PROGRAM_18:begin
                           next_state<= PROGRAM_18_WAIT_INIT_DONE ;
                       end
               PROGRAM_18_WAIT_INIT_DONE:begin
                       if(internal_counter==32'd3)
                            next_state<=PROGRAM_18_WAIT;
                       else
                            next_state<=PROGRAM_18_WAIT_INIT_DONE;
                        end
               PROGRAM_18_WAIT:begin
                               if(writes_done==1'b1)
                               begin
                                   next_state<=PROGRAM_20;
                               end
                               else
                               begin
                                   next_state<=PROGRAM_18_WAIT;
                               end
                         end
                PROGRAM_20:begin
                           next_state<=PROGRAM_20_WAIT_INIT_DONE;
                end
                PROGRAM_20_WAIT_INIT_DONE:begin
                        if(internal_counter==32'd3)
                            next_state<=PROGRAM_20_WAIT;
                        else
                            next_state<=PROGRAM_20_WAIT_INIT_DONE;
                end
                PROGRAM_20_WAIT:begin
                               if(writes_done==1'b1)
                                begin
                                    next_state<=PROGRAM_28;
                                end
                                else
                                begin
                                    next_state<=PROGRAM_20_WAIT;
                                end
                end
                PROGRAM_28:begin
                       next_state <= PROGRAM_28_WAIT_INIT_DONE;
                end
                PROGRAM_28_WAIT_INIT_DONE:begin
                     if(internal_counter==32'd3)
                        next_state <= PROGRAM_28_WAIT;
                     else
                        next_state<=PROGRAM_28_WAIT_INIT_DONE;
                end
                PROGRAM_28_WAIT: begin
                               if(writes_done==1'b1)
                                 begin
                                     next_state<=SEND_REQUEST_WAIT;
                                 end
                                 else
                                 begin
                                     next_state<=PROGRAM_28_WAIT;
                                 end
                end
               SEND_REQUEST_WAIT:begin
                    if(mst_exec_state ==IDLE)
                       next_state<= SEND_REQUEST;
                    else
                       next_state<=SEND_REQUEST_WAIT;
               end
               SEND_REQUEST:begin
                    next_state<=CHECK_STATUS;
               end

               CHECK_STATUS:begin
                   if(M_AXI_RVALID && axi_rready)
                   begin
                       if(M_AXI_RDATA[6]==1'b1)begin//ERROR has to reset
                           next_state<=RESET_WAIT_IDEL;
                       end
                       else if(M_AXI_RDATA[1]==1'b1)begin//if CDMASR.Idle ==1
                           if(num_of_row==32'b00000000000000000000000001111000)begin//00000000000000000000000001111000
                                    next_state<= RESET;
                                end
                           else
                                begin
                                    next_state<= DELAY_PER_LINE; // num_of_row ++
                                end
                       end

                       else
                       begin//CMDASR.Idle == 0
                            next_state<=SEND_REQUEST_WAIT;
                       end
                   end
                   else
                   begin
                       next_state<= CHECK_STATUS;
                   end
               end
               DELAY_PER_LINE:begin
                    next_state<= DONE;
               end
               DONE:begin
                    if(mst_exec_state ==IDLE && delay_per_line ==line_to_line_counter)
                        next_state<= PROGRAM_4;
                    else
                        next_state<=DONE;
               end

               RESET_WAIT_IDEL:begin
                    if(writes_done==1'b1 && mst_exec_state ==IDLE)
                    begin
                        next_state<=RESET_WRITE;
                    end
                    else
                    begin
                        next_state<=RESET_WAIT_IDEL;
                    end
               end
               RESET_WRITE:begin
                    next_state<=RESET_WRITE_REQUEST_WAIT_INIT_DONE;
               end
               RESET_WRITE_REQUEST_WAIT_INIT_DONE:begin
                   if(internal_counter==32'd3)
                      next_state <= RESET_WRITE_REQUEST_WAIT;
                   else
                      next_state<=RESET_WRITE_REQUEST_WAIT_INIT_DONE;
               end
               RESET_WRITE_REQUEST_WAIT:begin
                      if(writes_done==1'b1)
                      begin
                          next_state<=RESET_SEND_REQUEST_WAIT_INIT_DONE;
                      end
                      else
                      begin
                          next_state<= RESET_WRITE_REQUEST_WAIT;
                      end
               end
               RESET_SEND_REQUEST_WAIT_INIT_DONE:begin
                    if(mst_exec_state ==IDLE)
                          next_state<= RESET_SEND_REQUEST;
                    else
                          next_state<=RESET_SEND_REQUEST_WAIT_INIT_DONE;
               end
               RESET_SEND_REQUEST:begin
                    next_state<=RESET_CHECK_STATUS;
               end
               RESET_CHECK_STATUS:begin
                   if(M_AXI_RVALID && axi_rready)
                   begin
                       if(M_AXI_RDATA[2]==1'b0)begin//if CDMASR.Idle ==1
                            next_state<= FINISH_RESET_WAIT_IDLE; // num_of_row ++
  
                       end
                       else
                       begin//CMDASR.Idle == 0
                            next_state<=RESET_SEND_REQUEST_WAIT_INIT_DONE; //resend request
                       end
                   end
                   else
                   begin
                       next_state<= RESET_CHECK_STATUS;
                   end
               end
               FINISH_RESET_WAIT_IDLE:begin
                    if(mst_exec_state ==IDLE)
                     next_state<= FINISH_RESET;
                    else
                     next_state<=FINISH_RESET_WAIT_IDLE;
               end
               FINISH_RESET:begin
                    next_state<=RESET;
               end
               default: next_state<=RESET;
             endcase
    end//end always
    reg reset_num_of_row;
    //counter with increament signal
   always @ ( posedge M_AXI_ACLK)                                                    
     begin                                                                             
       if (M_AXI_ARESETN == 1'b0| reset_num_of_row==1'b1)                                                     
         begin                                                                         
         num_of_row<=32'b0;
         end
        else if(increament_row==1'b1)begin  
            num_of_row<=num_of_row+32'b00000000000000000000000000000001;
        end
        else begin
            num_of_row<=num_of_row;
        end
    end
    always@(*)begin
        INIT_AXI_TXN<=1'b0;
        init_read<=1'b0;
        M_AXI_WDATA<=32'b0;
        M_AXI_AWADDR<=32'b0;
        reset_counter<=1'b0;
        m_axi_araddr<=32'b0;
        increament_row<=1'b0;
        increament_scan_line<=1'b0;
        reset_done<=1'b0;
        reset_num_of_row<=1'b0;
        internal_assert_done<=1'b0;
        reset_line_to_line_cunter<=1'b0;
        increament_line_to_line_counter<=1'b0;
        
        case(current_state)
            RESET:begin
                reset_num_of_row<=1'b1;
            end
            PROGRAM_4:begin
                reset_done<=1'b1;
                rdata<=32'b0;
                INIT_AXI_TXN<=1'b1;
                M_AXI_WDATA<=32'b0;
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000000100; //'h4
            end
            PROGRAM_4_WAIT_INIT_DONE:begin
                M_AXI_WDATA<=32'b0;
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000000100; //'h4            
            end
            PROGRAM_4_WAIT:begin
                M_AXI_WDATA<=32'b0;
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000000100;//'h4
            end
            PROGRAM_18:begin
                INIT_AXI_TXN<=1'b1;
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000011000;//'h18
                M_AXI_WDATA<=memory_counter;// From address
                reset_counter<=1'b1;
            end
            PROGRAM_18_WAIT_INIT_DONE:begin
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+'b00000000000000000000000000011000;//'h18
                M_AXI_WDATA<=memory_counter;// From address           
            end
            PROGRAM_18_WAIT:begin
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+'b00000000000000000000000000011000;//'h18
                M_AXI_WDATA<=memory_counter;// From address
            end
            PROGRAM_20:begin
                reset_counter<=1'b1;
                INIT_AXI_TXN<=1'b1;
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000100000;//'h20
                M_AXI_WDATA<=position_in_frame_buffer;// To address, Frame Buffer
            end
            PROGRAM_20_WAIT_INIT_DONE:begin
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000100000;//'h20
                M_AXI_WDATA<=position_in_frame_buffer;// To address, Frame Buffer         
            end
            PROGRAM_20_WAIT:begin
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000100000;//'h20
                M_AXI_WDATA<=position_in_frame_buffer;// To address, Frame Buffer
            end
            PROGRAM_28:begin
                reset_counter<=1'b1;
                INIT_AXI_TXN<=1'b1;
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000101000;//'h28
                M_AXI_WDATA<=32'd360;//move 360 bytes
                increament_row<=1'b1;
                increament_scan_line<=1'b1;
            end
            PROGRAM_28_WAIT_INIT_DONE:begin
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000101000;//'h28
                M_AXI_WDATA<=32'd360;//move 360 bytes    
            end
            PROGRAM_28_WAIT:begin
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000101000;//'h28
                M_AXI_WDATA<=32'd360;//move 360 bytes    
            end
            SEND_REQUEST:begin
                init_read<=1'b1;
                m_axi_araddr<= C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000000100;//'h4
                
            end
            CHECK_STATUS:begin//sample M_AXI_RDATA in this stage
                m_axi_araddr<= C_M_TARGET_SLAVE_BASE_ADDR+32'b00000000000000000000000000000100;//'h4
            end
            DELAY_PER_LINE:begin
                reset_line_to_line_cunter<=1'b1;
            end
            DONE:begin
                increament_line_to_line_counter<=1'b1;
            end
            
            RESET_WAIT_IDEL:begin
            end
            RESET_WRITE:begin
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR;//'h0
                M_AXI_WDATA<=32'b000000100;//reset  
                INIT_AXI_TXN<=1'b1;
                reset_counter<=1'b1;
            end
            RESET_WRITE_REQUEST_WAIT_INIT_DONE:begin
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR;//'h0
                M_AXI_WDATA<=32'b000000100;//reset  
            end
            RESET_WRITE_REQUEST_WAIT:begin
                M_AXI_AWADDR<=C_M_TARGET_SLAVE_BASE_ADDR;//'h0
                M_AXI_WDATA<=32'b000000100;//reset  
            end
            RESET_SEND_REQUEST_WAIT_INIT_DONE:begin
            end
            RESET_SEND_REQUEST:begin
                init_read<=1'b1;
                m_axi_araddr<=C_M_TARGET_SLAVE_BASE_ADDR;//'h0
            end

            RESET_CHECK_STATUS:begin
                 m_axi_araddr<=C_M_TARGET_SLAVE_BASE_ADDR;//'h0
            end
            FINISH_RESET:begin
                internal_assert_done<=1'b1;
            end
         endcase
    end
    //INIT_AXI_TXN;
    //writes_done
    //mst_exec_state<=INIT_READ
    always@(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0)
        begin
            img_address<=31'b0;
            y_loc<=6'b0;
            x_loc<=5'b0;
        end  //end if
        else if(start)
        begin
            img_address<=img_addr;
            y_loc<=y_location;
            x_loc <=x_location;
        end
    end//end always


	// User logic ends
	endmodule
