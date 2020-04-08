
`timescale 1 ns / 1 ps

	module GameLogic_v2_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here

            
        output logic player_tank_req,
        output logic [10:0] player_tank_x,
        output logic [10:0] player_tank_y,
        output logic [31:0] player_tank_frame_addr,
        input logic player_tank_grant,
        
        output logic enemy_tank_req,
        output logic [10:0] enemy_tank_x,
        output logic [10:0] enemy_tank_y,
        output logic [31:0] enemy_tank_frame_addr,
        input logic enemy_tank_grant,
        
        output logic player_shell_req,
        output logic [10:0] player_shell_x,
        output logic [10:0] player_shell_y,
        output logic [31:0] player_shell_frame_addr,
        input logic player_shell_grant,
        
        output logic enemy_shell_req,
        output logic [10:0] enemy_shell_x,
        output logic [10:0] enemy_shell_y,
        output logic [31:0] enemy_shell_frame_addr,
        input logic enemy_shell_grant,
        
        output logic wall_req,
        output logic [10:0] wall_x,
        output logic [10:0] wall_y,
        output logic [31:0] wall_frame_addr,
        input logic wall_grant,
        
        input logic [4:0] BT_input, 
        input logic [4:0] enemy_input,
        
        
        output logic [7:0] player_health,
        
        //debug
        output logic [10:0] player_tank_x_next, player_tank_y_next,
        output logic [3:0] main_state,
        output logic init_done,
        output logic player_collide_wall, player_collide_shell,
        output logic enemy_collide_wall, enemy_collide_shell,
        output logic player_shell_collide_wall, enemy_shell_collide_wall,
        output logic tank_init,
        output logic [10:0] player_tank_init_x, player_tank_init_y,
        output logic [1:0] mad [16][9],
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
	
    logic player_tank_update, player_tank_hit;           
	
    logic [10:0] player_shell_x_next, player_shell_y_next;
    logic player_shell_update, player_shell_hit;
    
	logic [15:0][31:0]regs;
	
// Instantiation of Axi Bus Interface S00_AXI
	GameLogic_v2_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) GameLogic_v2_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.reg_out(regs)      
	);

	// Add user logic here
    
    logic [3:0] player_last_dir, ai_last_dir;
    logic [10:0] ai_tank_x_next, ai_tank_y_next;
    logic [10:0] ai_shell_x_next, ai_shell_y_next;
    logic [10:0] ai_tank_init_x, ai_tank_init_y;
    logic ai_tank_update, ai_tank_hit, ai_shell_update, ai_shell_hit;
    
    
    GameLogic GameLogic_inst(
        .axi_aclk(s00_axi_aclk),
        .axi_aresetn(s00_axi_aresetn),
        
        .player_tank_req(player_tank_req),
        .player_tank_x(player_tank_x),
        .player_tank_y(player_tank_y),
        .player_tank_frame_addr(player_tank_frame_addr),
        .player_tank_grant(player_tank_grant),
        
        .enemy_tank_req(enemy_tank_req),
        .enemy_tank_x(enemy_tank_x),
        .enemy_tank_y(enemy_tank_y),
        .enemy_tank_frame_addr(enemy_tank_frame_addr),
        .enemy_tank_grant(enemy_tank_grant),
        
        .player_shell_req(player_shell_req),
        .player_shell_x(player_shell_x),
        .player_shell_y(player_shell_y),
        .player_shell_frame_addr(player_shell_frame_addr),
        .player_shell_grant(player_shell_grant),
        
        .enemy_shell_req(enemy_shell_req),
        .enemy_shell_x(enemy_shell_x),
        .enemy_shell_y(enemy_shell_y),
        .enemy_shell_frame_addr(enemy_shell_frame_addr),
        .enemy_shell_grant(enemy_shell_grant),
        
        .wall_req(wall_req),
        .wall_x(wall_x),
        .wall_y(wall_y),
        .wall_frame_addr(wall_frame_addr),
        .wall_grant(wall_grant),
        
        .player_tank_x_next(player_tank_x_next),
        .player_tank_y_next(player_tank_y_next),
        .player_tank_update(player_tank_update),
        .player_tank_hit(player_tank_hit),
        
        .player_shell_x_next(player_shell_x_next),
        .player_shell_y_next(player_shell_y_next),
        .player_shell_update(player_shell_update),
        .player_shell_hit(player_shell_hit),
        
        .enemy_tank_x_next(ai_tank_x_next),
        .enemy_tank_y_next(ai_tank_y_next),
        .enemy_tank_update(ai_tank_update),
        .enemy_tank_hit(ai_tank_hit),
        
        .enemy_shell_x_next(ai_shell_x_next),
        .enemy_shell_y_next(ai_shell_y_next),
        .enemy_shell_update(ai_shell_update),
        .enemy_shell_hit(ai_shell_hit),
        
        .reg_in(regs),
        
        .init_tanks(tank_init),
        .player_tank_x_init(player_tank_init_x),
        .player_tank_y_init(player_tank_init_y),
        .enemy_tank_x_init(ai_tank_init_x),
        .enemy_tank_y_init(ai_tank_init_y),
        
        
        .player_last_move_dir(player_last_dir),
        .enemy_last_move_dir(ai_last_dir),
        
        .player_health(player_health),
        
        //debug
        .main_state(main_state),   
        .init_done(init_done),
        .player_collide_wall(player_collide_wall), 
        .player_collide_shell(player_collide_shell),
        .enemy_collide_wall(enemy_collide_wall), 
        .enemy_collide_shell(enemy_collide_shell),
        .player_shell_collide_wall(player_shell_collide_wall), 
        .enemy_shell_collide_wall(enemy_shell_collide_wall),
        .mad(mad)
        
    );

    PlayerTank PlayerTank_inst(
        .axi_aclk(s00_axi_aclk),
        .axi_aresetn(s00_axi_aresetn),
        
        .player_tank_x_next(player_tank_x_next),
        .player_tank_y_next(player_tank_y_next),
        .player_tank_update(player_tank_update),
        .player_tank_hit(player_tank_hit),
        
        .player_shell_x_next(player_shell_x_next),
        .player_shell_y_next(player_shell_y_next),
        .player_shell_update(player_shell_update),
        .player_shell_hit(player_shell_hit),
        
        .init(tank_init),
        .init_x(player_tank_init_x),
        .init_y(player_tank_init_y),
        
        .bt_input(BT_input), //{up, down, left, right, fire}
        .last_move_dir(player_last_dir)
    );
    

    
    EnemyTank EnemyTank_inst(
        .axi_aclk(s00_axi_aclk),
        .axi_aresetn(s00_axi_aresetn),
        
        .enemy_tank_x_next(ai_tank_x_next),
        .enemy_tank_y_next(ai_tank_y_next),
        .enemy_tank_update(ai_tank_update),
        .enemy_tank_hit(ai_tank_hit),
        .enemy_shell_x_next(ai_shell_x_next),
        .enemy_shell_y_next(ai_shell_y_next),
        .enemy_shell_update(ai_shell_update),
        .enemy_shell_hit(ai_shell_hit),
        .init(tank_init),
        .init_x(ai_tank_init_x),
        .init_y(ai_tank_init_y),
        .enemy_input(enemy_input), //{up, down, left, right, fire}
        .last_move_dir(ai_last_dir)
    );
	// User logic ends

	endmodule
