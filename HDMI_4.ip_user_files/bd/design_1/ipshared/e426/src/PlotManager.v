module plot_manage
#(
	parameter NUM_CLIENTS = 2,
	parameter FSM_WIDTH = 3
)
(	
	input clk,
	input resetn,
	
	input tank_req_0,
	input [10:0] tank_x_0,
	input [10:0] tank_y_0,
	output reg tank_grant_0,
	
	input [31:0] tank_frame_addr_0,

	input tank_req_1,
	input [10:0] tank_x_1,
	input [10:0] tank_y_1,
	output reg tank_grant_1,

	input [31:0] tank_frame_addr_1,

	input shell_req_0,
	input [10:0] shell_x_0,
	input [10:0] shell_y_0,
	output reg shell_grant_0,

	input [31:0] shell_frame_addr_0,

	input shell_req_1,
	input [10:0] shell_x_1,
	input [10:0] shell_y_1,
	output reg shell_grant_1,

	input [31:0] shell_frame_addr_1,

	input wall_req,
	input [10:0] wall_x,
	input [10:0] wall_y,
	input [31:0] wall_frame_addr,
	output reg wall_grant,
	
	output reg [31:0] frame_addr,
	output reg [0:0] frame_buffer,
	output reg [10:0] x,
	output reg [10:0] y,
	output reg plot_start,
	input plot_done
);
	
	reg [NUM_CLIENTS - 1: 0] cur_tank_grant;
	reg [NUM_CLIENTS - 1: 0] nxt_tank_grant;
	reg [NUM_CLIENTS - 1: 0] cur_shell_grant;
	reg [NUM_CLIENTS - 1: 0] nxt_shell_grant;
	
	//reg [10:0] tank_x_next;
	//reg [10:0] tank_y_next;
	//reg [2:0] tank_frame_addr_next;
	//reg [10:0] shell_x_next;
	//reg [10:0] shell_y_next;
	//reg shell_frame_addr_next;
	
	localparam	S_IDLE			= 'd0,
				S_PLOT_TANK		= 'd1,
				S_WAIT_TANK		= 'd2,
				S_PLOT_SHELL	= 'd3,
				S_WAIT_SHELL	= 'd4,
				S_PLOT_WALL		= 'd5,
				S_WAIT_WALL		= 'd6;

	reg [FSM_WIDTH - 1: 0] cur_state, nxt_state;

	initial begin
		cur_state <= S_IDLE;
		nxt_state <= S_IDLE;
	end	

	always @(*) begin
		case (cur_state)
			S_IDLE: begin
				nxt_state = (tank_req_0  || tank_req_1) ? S_PLOT_TANK : 
							(shell_req_0 || shell_req_1) ? S_PLOT_SHELL :
							(wall_req) ? S_PLOT_WALL : S_IDLE;
			end

			S_PLOT_TANK: begin
				nxt_state = S_WAIT_TANK;
			end

			S_WAIT_TANK: begin
				if (plot_done) begin
					if (shell_req_0 || shell_req_1) begin
						nxt_state = S_PLOT_SHELL;
					end
					else if (wall_req) begin
						nxt_state = S_PLOT_WALL;
					end
					else begin
						nxt_state = S_IDLE;
					end
				end
				else begin
					nxt_state = S_WAIT_TANK;
				end
			end

			S_PLOT_SHELL: begin
				nxt_state = S_WAIT_SHELL;
			end

			S_WAIT_SHELL: begin
				if (plot_done) begin
					if (wall_req) begin
						nxt_state = S_PLOT_WALL;
					end
					else begin
						nxt_state = S_IDLE;
					end
				end
				else begin
					nxt_state = S_WAIT_SHELL;
				end
			end

			S_PLOT_WALL: begin
				nxt_state = S_WAIT_WALL;
			end

			S_WAIT_WALL: begin
				if (plot_done) begin
					nxt_state = S_IDLE;
				end
				else begin
					nxt_state = S_WAIT_WALL;
				end
			end
		endcase
	end

	//TANK REQ AND GRANT CONTROL
	always @(*) begin
		plot_start = 0;
		x = 'd0;
		y = 'd0;
		frame_addr = 'h0;

		case (cur_state)
			S_PLOT_TANK: begin
				plot_start = 1;
				case (nxt_tank_grant)
					2'b01: begin
						x = tank_x_0;
						y = tank_y_0;
						frame_addr = tank_frame_addr_0;
					end

					2'b10: begin
						x = tank_x_1;
						y = tank_y_1;
						frame_addr = tank_frame_addr_1;
					end

				endcase
			end
			
			S_PLOT_SHELL: begin
				plot_start = 1;
				case (nxt_shell_grant)
					2'b01: begin
						x = shell_x_0;
						y = shell_y_0;
						frame_addr = shell_frame_addr_0;
					end

					2'b10: begin
						x = shell_x_1;
						y = shell_y_1;
						frame_addr = shell_frame_addr_1;
					end

				endcase
			end

			S_PLOT_WALL: begin
				plot_start = 1;
				x = wall_x;
				y = wall_y;
				frame_addr = wall_frame_addr;
			end	
		endcase
	end				

	always @(posedge clk) begin
		if (~resetn) begin
			cur_state <= S_IDLE;
		end
		else begin
			cur_state <= nxt_state;
		end
	end

	always @ (*) begin
		case (cur_state)
			S_PLOT_TANK: begin
				case (cur_tank_grant)
					2'b01: nxt_tank_grant = tank_req_0 ? 2'b01 : tank_req_1 ? 2'b10 : 2'b00;
					2'b10: nxt_tank_grant = tank_req_0 ? 2'b01 : 2'b10;
					2'b00: nxt_tank_grant = tank_req_0 ? 2'b01 : tank_req_1 ? 2'b10 : 2'b00;
					default nxt_tank_grant = 2'b01;
				endcase
			end

			S_PLOT_SHELL: begin
				case (cur_shell_grant)
					2'b01: nxt_shell_grant = shell_req_0 ? 2'b01 : shell_req_1 ? 2'b10 : 2'b00;
					2'b10: nxt_shell_grant = shell_req_0 ? 2'b01 : 2'b10;
					2'b00: nxt_shell_grant = shell_req_0 ? 2'b01 : shell_req_1 ? 2'b10 : 2'b00;
					default nxt_shell_grant = 2'b01;
				endcase
			end

			default: begin
				nxt_tank_grant = cur_tank_grant;
				nxt_shell_grant = cur_shell_grant;
			end

		endcase
	end
		
	always @(posedge clk) begin
		case (cur_state)
			S_WAIT_TANK: begin
				if (plot_done) begin
					tank_grant_0 <= cur_tank_grant[0];
					tank_grant_1 <= cur_tank_grant[1];
				end
				shell_grant_0 <= 0;
				shell_grant_1 <= 0;
				wall_grant <= 0;
			end

			S_WAIT_SHELL: begin
				if (plot_done) begin
					shell_grant_0 <= cur_shell_grant[0];
					shell_grant_1 <= cur_shell_grant[1];
				end
				tank_grant_0 <= 0;
				tank_grant_1 <= 0;
				wall_grant <= 0;
			end

			S_WAIT_WALL: begin
				if (plot_done) begin
					wall_grant <= 1'b1;
				end
				tank_grant_0 <= 0;
				tank_grant_1 <= 0;
				shell_grant_0 <= 0;
				shell_grant_1 <= 0;
			end

			default: begin
				tank_grant_0 <= 0;
				tank_grant_1 <= 0;
				shell_grant_0 <= 0;
				shell_grant_1 <= 0;
				wall_grant <= 0;
			end
		endcase
	end	

	always @(posedge clk) begin
		if (~resetn) begin
			cur_tank_grant = 2'b00;
			cur_shell_grant = 2'b00;
		end
		else begin
			cur_tank_grant <= nxt_tank_grant;
			cur_shell_grant <= nxt_shell_grant;
		end
	end
	
endmodule	
