`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2020 12:41:57 PM
// Design Name: 
// Module Name: GameLogic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module GameLogic #(
    parameter C_ADDR_WIDTH = 8,
    parameter C_DATA_WIDTH = 2
    )(
    input logic  axi_aclk,
    input logic  axi_aresetn,
    
    
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
    
    input logic [10:0] player_tank_x_next,
    input logic [10:0] player_tank_y_next,
    output logic player_tank_update,
    output logic player_tank_hit,
    
    input logic [10:0] player_shell_x_next,
    input logic [10:0] player_shell_y_next,
    output logic player_shell_update,
    output logic player_shell_hit,
    
    input logic [10:0] enemy_tank_x_next,
    input logic [10:0] enemy_tank_y_next,
    output logic enemy_tank_update,
    output logic enemy_tank_hit,
    
    input logic [10:0] enemy_shell_x_next,
    input logic [10:0] enemy_shell_y_next,
    output logic enemy_shell_update,
    output logic enemy_shell_hit,
    
    input logic [15:0][31:0] reg_in,
    
    output logic init_tanks,
    output logic [10:0] player_tank_x_init,
    output logic [10:0] player_tank_y_init,
    output logic [10:0] enemy_tank_x_init,
    output logic [10:0] enemy_tank_y_init,
    
    input logic [3:0] player_last_move_dir,
    input logic [3:0] enemy_last_move_dir
    );
    
    logic init, init_done;
    assign init = reg_in[0][0];
    assign init_tanks = reg_in[0][1];
    
    assign player_tank_x_init = reg_in[1][21:11];
    assign player_tank_y_init = reg_in[1][10:0];
    
    assign enemy_tank_x_init = reg_in[2][21:11];
    assign enemy_tank_y_init = reg_in[2][10:0];
    
    genvar i, j;
    (* ram_style = "registers" *) logic [1:0] map [16][9];
    generate
        for(i = 0; i < 16; i = i + 1) begin
            for(j = 0; j < 9; j = j + 1) begin
                always_ff @(posedge axi_aclk) begin
                    if(axi_aresetn == 0)begin
                        map = '{default:0};
                    end else if (init) begin
                        map[i][j] <= reg_in[(((9 * i + j) * 2)  / 32) + 1][(((9 * i + j) * 2)  % 32) + 1: (((9 * i + j) * 2)  % 32)]; // 'b00 = empty, 'b01 = wall_1, 'b11 = wall_2
                    end
                end
            end
        end
    endgenerate
    
    logic [31:0] P_up, P_down, P_left, P_right;
    logic [31:0] E_up, E_down, E_left, E_right;
    logic [31:0] W_wall_1, W_wall_2, W_empty;
    logic [31:0] PE_shell;
    
    
    always_ff @ (posedge axi_aclk) begin
        if(init_tanks) begin
            E_up = 32'd0;
            E_down = 32'd0;
            E_left = 32'd0;
            E_right = 32'd0;
            P_up = 32'd0;
            P_down = 32'd0;
            P_left = 32'd0;
            P_right = 32'd0;
            W_wall_1 = 32'd0;
            W_wall_2 = 32'd0;
            W_empty = 32'd0;
            PE_shell = 32'd0;
        end else if(init_tanks) begin
            E_up = reg_in[3];
            E_down = reg_in[4];
            E_left = reg_in[5];
            E_right = reg_in[6];
            P_up = reg_in[7];
            P_down = reg_in[8];
            P_left = reg_in[9];
            P_right = reg_in[10];
            W_wall_1 = reg_in[11];
            W_wall_2 = reg_in[12];
            W_empty = reg_in[13];
            PE_shell = reg_in[14];
        end
    end
    
    
    always_comb begin
        case(player_last_move_dir)
            4'b1000: player_tank_frame_addr <= P_up;
            4'b0100: player_tank_frame_addr <= P_down;
            4'b0010: player_tank_frame_addr <= P_left;
            4'b0001: player_tank_frame_addr <= P_right;
            default: player_tank_frame_addr <= 32'h00000000;
        endcase
        
        case(enemy_last_move_dir)
            4'b1000: enemy_tank_frame_addr <= E_up;
            4'b0100: enemy_tank_frame_addr <= E_down;
            4'b0010: enemy_tank_frame_addr <= E_left;
            4'b0001: enemy_tank_frame_addr <= E_right;
            default: enemy_tank_frame_addr <= 32'h00000000;
        endcase
    end
    
    assign player_shell_frame_addr = PE_shell;
    assign enemy_shell_frame_addr = PE_shell;
    
    logic player_collide_wall, player_collide_shell;
    assign player_collide_wall = |map[(player_tank_x_next) / 120][(player_tank_y_next) / 120] | |map[(player_tank_x_next + 119) / 120][(player_tank_y_next) / 120] | |map[(player_tank_x_next) / 120][(player_tank_y_next + 119) / 120] | |map[(player_tank_x_next + 119) / 120][(player_tank_y_next + 119) / 120];
    assign player_collide_shell = (player_tank_x_next > (enemy_shell_x_next - 119)) && (player_tank_x_next < (enemy_shell_x_next + 119)) && (player_tank_y_next > (enemy_shell_y_next - 119)) && (player_tank_y_next < (enemy_shell_y_next + 119));

    
    logic enemy_collide_wall, enemy_collide_shell;    
    assign enemy_collide_wall = |map[(enemy_tank_x_next) / 120][(enemy_tank_y_next) / 120] | |map[(enemy_tank_x_next + 119) / 120][(enemy_tank_y_next) / 120] | |map[(enemy_tank_x_next) / 120][(enemy_tank_y_next + 119) / 120] | |map[(enemy_tank_x_next + 119) / 120][(enemy_tank_y_next + 119) / 120];
    assign enemy_collide_shell = (enemy_tank_x_next > (player_shell_x_next - 119)) && (enemy_tank_x_next < (player_shell_x_next + 119)) && (enemy_tank_y_next > (player_shell_y_next - 119)) && (enemy_tank_y_next < (player_shell_y_next + 119));

    logic player_shell_collide_wall, enemy_shell_collide_wall;
    assign player_shell_collide_wall = (player_shell_x_next == 'h7ff)? 1'b0 : (|map[(player_shell_x_next) / 120][(player_shell_y_next) / 120] | |map[(player_shell_x_next + 119) / 120][(player_shell_y_next) / 120] | |map[(player_shell_x_next) / 120][(player_shell_y_next + 119) / 120] | |map[(player_shell_x_next + 119) / 120][(player_shell_y_next + 119) / 120]);
    assign enemy_shell_collide_wall = (enemy_shell_x_next == 'h7ff)? 1'b0 : (|map[(enemy_shell_x_next) / 120][(enemy_shell_y_next) / 120] | |map[(enemy_shell_x_next + 119) / 120][(enemy_shell_y_next) / 120] | |map[(enemy_shell_x_next) / 120][(enemy_shell_y_next + 119) / 120] | |map[(enemy_shell_x_next + 119) / 120][(enemy_shell_y_next + 119) / 120]);
    
    logic [1:0] pre_tank_move, pre_shell_hit, pre_tank_hit;
    
    logic [3:0] curr_state, next_state;
    enum {
        S_init,
        S_start_round,
        S_check_collide_wall,
        S_check_collide_shell,
        S_wait_for_tank_grant,
        S_wait_for_shell_grant,
        S_send_req_update
    } states;
    
    
    always_ff @ (posedge axi_aclk) begin
        if((axi_aresetn == 0) || (init == 1)) begin
            curr_state <= S_init;
        end else begin
            curr_state <= next_state;
        end
    end
    
    always_comb begin
        if(axi_aresetn == 0) begin
            next_state <= S_init;
        end else begin
            case(curr_state)
                S_init: next_state <= init_done ? S_start_round : S_init;
                S_start_round: next_state <= S_check_collide_wall;
                S_check_collide_wall: next_state <= S_check_collide_shell;
                S_check_collide_shell: next_state <= S_wait_for_tank_grant;
                S_wait_for_tank_grant: next_state <= (player_tank_req | enemy_tank_req) ? S_wait_for_tank_grant : S_wait_for_shell_grant;
                S_wait_for_shell_grant: next_state <= (player_shell_req | enemy_shell_req) ? S_wait_for_shell_grant : S_send_req_update;
                S_send_req_update: next_state <= S_start_round;
            endcase
        end
    end
    
    
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0)begin
            pre_tank_move <= 'b00;
            pre_shell_hit <= 'b00;
            pre_tank_hit <= 'b00;
            player_tank_x <= 'h7ff;
            player_tank_y <= 'h7ff;
            enemy_tank_x <= 'h7ff;
            enemy_tank_y <= 'h7ff;
            player_shell_x <= 'h7ff;
            player_shell_y <= 'h7ff;
            enemy_shell_x <= 'h7ff;
            enemy_shell_y <= 'h7ff;
        end else begin
            case(curr_state)
                S_start_round: begin
                    pre_tank_move <= 'b00;
                    pre_shell_hit <= 'b00;
                    pre_tank_hit <= 'b00;
                end
                S_check_collide_wall: begin
                    if(~player_collide_wall) begin
                        player_tank_x = player_tank_x_next;
                        player_tank_y = player_tank_y_next;
                        pre_tank_move[0] <= 1'b1;
                    end
                    if(~ (enemy_collide_wall | enemy_collide_shell)) begin
                        enemy_tank_x = enemy_tank_x_next;
                        enemy_tank_y = enemy_tank_y_next;
                        pre_tank_move[1] <= 1'b1;
                    end
                end
                S_check_collide_shell: begin
                    if(player_collide_shell) begin
                        pre_tank_hit[0] <= 1'b1;
                    end else if (player_shell_collide_wall) begin 
                        pre_shell_hit[0] <= 1'b1;
                    end else begin
                        enemy_shell_x <= enemy_shell_x_next;
                        enemy_shell_x <= enemy_shell_y_next;
                    end
                    
                    if(enemy_collide_shell) begin
                        pre_tank_hit[1] <= 1'b1;
                    end else if (enemy_shell_collide_wall) begin 
                        pre_shell_hit[1] <= 1'b1;
                    end else begin
                        player_shell_x <= player_shell_x_next;
                        player_shell_y <= player_shell_y_next;
                    end
                    
                end
            endcase
        end
    end
    
    always_comb begin
        if(curr_state == S_send_req_update) begin
            player_tank_update = pre_tank_move[0];
            enemy_tank_update = pre_tank_move[1];
            player_tank_hit = pre_tank_hit[0];
            enemy_tank_hit = pre_tank_hit[1];
            player_shell_update = ~pre_shell_hit[0];
            enemy_shell_update = ~pre_shell_hit[1];
            player_shell_hit = pre_shell_hit[0];
            enemy_shell_hit = pre_shell_hit[1];
        end else begin
            player_tank_update = 1'b0;
            enemy_tank_update = 1'b0;
            player_tank_hit = 1'b0;
            enemy_tank_hit = 1'b0;
            player_shell_update = 1'b0;
            enemy_shell_update = 1'b0;
            player_shell_hit = 1'b0;
            enemy_shell_hit = 1'b0;
        end
    end
    
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0)begin
            player_tank_req <= 1'b0;
            enemy_tank_req <= 1'b0;
            player_shell_req <= 1'b0;
            enemy_shell_req <= 1'b0;
        end else if(curr_state == S_send_req_update) begin
            player_tank_req <= pre_tank_move[0];
            enemy_tank_req <= pre_tank_move[1];
            player_shell_req <= ~pre_shell_hit[0];
            enemy_shell_req <= ~pre_shell_hit[1];
        end else begin
            player_tank_req = player_tank_grant ? 1'b0 : player_tank_req;
            enemy_tank_req = enemy_tank_grant ? 1'b0 : enemy_tank_req;
            player_shell_req = player_shell_grant ? 1'b0 :  player_shell_req;
            enemy_shell_req = enemy_shell_grant ? 1'b0 : enemy_shell_req;
        end
    end
    
    logic [3:0] curr_state_init, next_state_init;
    logic [10:0] wall_x_out, wall_y_out;
    logic [3:0] x, y;
    
    enum {
        S_init_idle,
        S_get_type,
        S_wall_1,
        S_wall_2,
        S_empty_wall,
        S_wait_init_grant,
        S_send_init_req,
        S_next_xy,
        S_check_done,
        S_init_done
    } states_init;
    
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0)
            curr_state_init <= S_init_idle;
        else begin
            curr_state_init <= next_state_init;
        end
    end
    
    logic init_delay, init_delay_2, init_edge;
    
    always_ff @ (posedge axi_aclk) begin
        init_delay <= init;
        init_delay_2 <= init_delay;
    end
    
    assign init_edge = (~init_delay_2) & init_delay;
    
    always_comb begin
        if(axi_aresetn == 0) begin
            next_state_init <= S_init_idle;
        end else begin
            case(curr_state_init)
                S_init_idle: next_state_init <= init_edge ? S_get_type : S_init_idle;
                S_get_type: begin
                    case(map[x][y])
                        2'b00: next_state_init <= S_empty_wall;
                        2'b01: next_state_init <= S_wall_1;
                        2'b11: next_state_init <= S_wall_2;
                        default: next_state_init <= S_wait_init_grant;
                    endcase
                end
                S_empty_wall: next_state_init <= S_wait_init_grant;
                S_wall_1: next_state_init <= S_wait_init_grant;
                S_wall_2: next_state_init <= S_wait_init_grant;
                S_wait_init_grant: next_state_init <= wall_req ? S_wait_init_grant : S_send_init_req;
                S_send_init_req: next_state_init <= S_next_xy;
                S_next_xy: next_state_init <= S_check_done;
                S_check_done: next_state_init <= (y == 4'd9) ? S_init_done : S_get_type;
                S_init_done: next_state_init <= init_edge ? S_get_type : S_init_done;
                default: next_state_init <= S_init_idle;
            endcase
        end
    end
    
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0) begin
            init_done <= 1'b0;
            x <= 4'd0;
            y <= 4'd0;
        end else begin
            init_done <= 1'b0;
            case(curr_state_init)
                S_init_idle: begin
                    x <= 4'd0;
                    y <= 4'd0;
                end
                S_get_type: begin
                    wall_x <= x * 120;
                    wall_y <= y * 120;
                end
                S_empty_wall: begin
                    wall_frame_addr <= W_empty;
                end
                S_wall_1: begin
                    wall_frame_addr <= W_wall_1;
                end
                S_wall_2: begin
                    wall_frame_addr <= W_wall_2;
                end
                S_next_xy: begin
                    if(x == 4'd15) begin
                        x = 4'd0;
                        y = y + 4'd1;
                    end else begin
                        x = x + 4'd1;
                    end
                end
                S_init_done:  init_done <= 1'b1;
            endcase
        end
    end
    
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0)begin
            wall_req <= 1'b0;
        end else if(curr_state_init == S_send_init_req) begin
            wall_req <= 1'b1;
        end else begin
            wall_req = wall_grant ? 1'b0 : wall_req;
        end
    end
    
endmodule
