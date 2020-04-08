`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2020 04:19:12 PM
// Design Name: 
// Module Name: PlayerTank
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


module PlayerTank(
    
    input logic  axi_aclk,
    input logic  axi_aresetn,
    
    output logic [10:0] player_tank_x_next,
    output logic [10:0] player_tank_y_next,
    input logic player_tank_update,
    input logic player_tank_hit,
    
    output logic [10:0] player_shell_x_next,
    output logic [10:0] player_shell_y_next,
    input logic player_shell_update,
    input logic player_shell_hit,
    
    input logic init,
    input logic [10:0] init_x,
    input logic [10:0] init_y,
    
    input logic [4:0] bt_input, //{up, down, left, right, fire}
    output logic [3:0] last_move_dir
    );
    
    logic [4:0] delay_bt_input, bt_one_pulse;
    // pos edge detect for bt_in
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0) begin
            delay_bt_input <= 5'h00;
        end else begin
            delay_bt_input <= bt_input;
        end
    end
    
    assign bt_one_pulse = (~delay_bt_input) & bt_input;
    
    logic [10:0] player_tank_x;   
    logic [10:0] player_tank_y; 
    // tank
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0) begin
            player_tank_x <= 11'h7FF;
            player_tank_y <= 11'h7FF;
        end else if(init) begin
            player_tank_x <= init_x;
            player_tank_y <= init_y;
        end else if (player_tank_update) begin
            player_tank_x <= player_tank_x_next;
            player_tank_y <= player_tank_y_next;
        end
    end
    
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0) begin
            player_tank_x_next <= 11'h7FF;
            player_tank_y_next <= 11'h7FF;
            last_move_dir = 4'b0000;
        end else if(init) begin
            player_tank_x_next <= init_x;
            player_tank_y_next <= init_y;
            last_move_dir = 4'b0100;
        end else if(|bt_one_pulse[4:1]) begin
            case(bt_input[4:1])
                4'b1000: begin
                    player_tank_x_next <= player_tank_x;
                    player_tank_y_next <= player_tank_y - 11'd6;
                    last_move_dir = 4'b1000;
                end
                4'b0100: begin
                    player_tank_x_next <= player_tank_x;
                    player_tank_y_next <= player_tank_y + 11'd6;
                    last_move_dir = 4'b0100;
                end
                4'b0010: begin
                    player_tank_x_next <= player_tank_x - 11'd6;
                    player_tank_y_next <= player_tank_y;
                    last_move_dir = 4'b0010;
                end
                4'b0001: begin
                    player_tank_x_next <= player_tank_x + 11'd6;
                    player_tank_y_next <= player_tank_y;
                    last_move_dir = 4'b0001;
                end
                default: begin
                    player_tank_x_next <= player_tank_x;
                    player_tank_y_next <= player_tank_y;
                end
            endcase
        end
    end
    
    
    logic [3:0] fired_direction;
    logic [10:0] player_shell_x;   
    logic [10:0] player_shell_y;
    
    
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0 | player_shell_hit) begin
            fired_direction <= 4'h0;
        end else if (bt_one_pulse[0] && (player_shell_x == 'h7FF))begin
            fired_direction <= last_move_dir;
        end
    end
     
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0 | player_shell_hit) begin
            player_shell_x <= 11'h7FF;
            player_shell_y <= 11'h7FF;
        end else if(bt_one_pulse[0] && (player_shell_x == 'h7FF)) begin
            case(last_move_dir)
                4'b1000: begin
                    player_shell_x <= player_tank_x;
                    player_shell_y <= player_tank_y - 11'd120;
                end
                4'b0100: begin
                    player_shell_x <= player_tank_x;
                    player_shell_y <= player_tank_y + 11'd120;
                end
                4'b0010: begin
                    player_shell_x <= player_tank_x - 11'd120;
                    player_shell_y <= player_tank_y;
                end
                4'b0001: begin
                    player_shell_x <= player_tank_x + 11'd120;
                    player_shell_y <= player_tank_y;
                end
                default: begin
                   player_shell_x <= player_tank_x;
                   player_shell_y <= player_tank_y;
                end
            endcase 
        end else if (player_shell_update) begin
            player_shell_x <= player_shell_x_next;
            player_shell_y <= player_shell_y_next;
        end
    end
     
     always_comb begin
        case(fired_direction)
            4'b1000: begin
                player_shell_x_next <= player_shell_x;
                player_shell_y_next <= player_shell_y - 11'd12;
            end
            4'b0100: begin
                player_shell_x_next <= player_shell_x;
                player_shell_y_next <= player_shell_y + 11'd12;
            end
            4'b0010: begin
                player_shell_x_next <= player_shell_x - 11'd12;
                player_shell_y_next <= player_shell_y;
            end
            4'b0001: begin
                player_shell_x_next <= player_shell_x + 11'd12;
                player_shell_y_next <= player_shell_y;
            end
            default: begin
                player_shell_x_next <= player_shell_x;
                player_shell_y_next <= player_shell_y;
            end
        endcase 
    end
endmodule
