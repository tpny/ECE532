`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2020 04:19:12 PM
// Design Name: 
// Module Name: enemyTank
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


module EnemyTank(
    
    input logic  axi_aclk,
    input logic  axi_aresetn,
    
    output logic [10:0] enemy_tank_x_next,
    output logic [10:0] enemy_tank_y_next,
    input logic enemy_tank_update,
    input logic enemy_tank_hit,
    
    output logic [10:0] enemy_shell_x_next,
    output logic [10:0] enemy_shell_y_next,
    input logic enemy_shell_update,
    input logic enemy_shell_hit,
    
    input logic init,
    input logic [10:0] init_x,
    input logic [10:0] init_y,
    
    input logic [4:0] enemy_input, //{up, down, left, right, fire}
    output logic [3:0] last_move_dir
    );
    
    
    logic [10:0] p_init_x;
    logic [10:0] p_init_y;
    
    assign p_init_x = init ? init_x : p_init_x;
    assign p_init_y = init ? init_y : p_init_y;
    
    logic [4:0] delay_bt_input, bt_one_pulse;
    // pos edge detect for bt_in
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0) begin
            delay_bt_input <= 5'h00;
        end else begin
            delay_bt_input <= enemy_input;
        end
    end
    
    assign bt_one_pulse = (~delay_bt_input) & enemy_input;
    
    logic [10:0] enemy_tank_x;   
    logic [10:0] enemy_tank_y; 
    // tank
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0) begin
            enemy_tank_x <= 11'h7FF;
            enemy_tank_y <= 11'h7FF;
        end else if(init) begin
            enemy_tank_x <= init_x;
            enemy_tank_y <= init_y;
        end else if(enemy_tank_hit) begin
            enemy_tank_x <= p_init_x;
            enemy_tank_y <= p_init_y;
        end else if (enemy_tank_update) begin
            enemy_tank_x <= enemy_tank_x_next;
            enemy_tank_y <= enemy_tank_y_next;
        end
    end
    
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0) begin
            enemy_tank_x_next <= 11'h7FF;
            enemy_tank_y_next <= 11'h7FF;
            last_move_dir = 4'b0000;
        end else if(init) begin
            enemy_tank_x_next <= init_x;
            enemy_tank_y_next <= init_y;
            last_move_dir = 4'b0100;
        end else if(enemy_tank_hit) begin
            enemy_tank_x_next <= p_init_x;
            enemy_tank_y_next <= p_init_y;
            last_move_dir = 4'b1000;
        end else if(|bt_one_pulse[4:1]) begin
            case(enemy_input[4:1])
                4'b1000: begin
                    enemy_tank_x_next <= enemy_tank_x;
                    enemy_tank_y_next <= enemy_tank_y - 11'd6;
                    last_move_dir = 4'b1000;
                end
                4'b0100: begin
                    enemy_tank_x_next <= enemy_tank_x;
                    enemy_tank_y_next <= enemy_tank_y + 11'd6;
                    last_move_dir = 4'b0100;
                end
                4'b0010: begin
                    enemy_tank_x_next <= enemy_tank_x - 11'd6;
                    enemy_tank_y_next <= enemy_tank_y;
                    last_move_dir = 4'b0010;
                end
                4'b0001: begin
                    enemy_tank_x_next <= enemy_tank_x + 11'd6;
                    enemy_tank_y_next <= enemy_tank_y;
                    last_move_dir = 4'b0001;
                end
                default: begin
                    enemy_tank_x_next <= enemy_tank_x;
                    enemy_tank_y_next <= enemy_tank_y;
                end
            endcase
        end
    end
    
    
    logic [3:0] fired_direction;
    logic [10:0] enemy_shell_x;   
    logic [10:0] enemy_shell_y;
    
    
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0 | enemy_shell_hit) begin
            fired_direction <= 4'h0;
        end else if (bt_one_pulse[0] && (enemy_shell_x == 'h7FF))begin
            fired_direction <= last_move_dir;
        end
    end
     
    always_ff @ (posedge axi_aclk) begin
        if(axi_aresetn == 0 | enemy_shell_hit) begin
            enemy_shell_x <= 11'h7FF;
            enemy_shell_y <= 11'h7FF;
        end else if(bt_one_pulse[0] && (enemy_shell_x == 'h7FF)) begin
            case(last_move_dir)
                4'b1000: begin
                    enemy_shell_x <=  enemy_tank_x;
                    enemy_shell_y <=  enemy_tank_y - 11'd120;
                end
                4'b0100: begin
                    enemy_shell_x <=  enemy_tank_x;
                    enemy_shell_y <=  enemy_tank_y + 11'd120;
                end
                4'b0010: begin
                    enemy_shell_x <=  enemy_tank_x - 11'd120;
                    enemy_shell_y <=  enemy_tank_y;
                end
                4'b0001: begin
                    enemy_shell_x <=  enemy_tank_x + 11'd120;
                    enemy_shell_y <=  enemy_tank_y;
                end
                default: begin
                    enemy_shell_x <= enemy_tank_x;
                    enemy_shell_y <= enemy_tank_y;
                end
            endcase 
        end else if (enemy_shell_update) begin
            enemy_shell_x <= enemy_shell_x_next;
            enemy_shell_y <= enemy_shell_y_next;
        end
    end
     
     always_comb begin
        case(fired_direction)
            4'b1000: begin
                enemy_shell_x_next <= enemy_shell_x;
                enemy_shell_y_next <= enemy_shell_y - 11'd12;
            end
            4'b0100: begin
                enemy_shell_x_next <= enemy_shell_x;
                enemy_shell_y_next <= enemy_shell_y + 11'd12;
            end
            4'b0010: begin
                enemy_shell_x_next <= enemy_shell_x - 11'd12;
                enemy_shell_y_next <= enemy_shell_y;
            end
            4'b0001: begin
                enemy_shell_x_next <= enemy_shell_x + 11'd12;
                enemy_shell_y_next <= enemy_shell_y;
            end
            default: begin
                enemy_shell_x_next <= enemy_shell_x;
                enemy_shell_y_next <= enemy_shell_y;
            end
        endcase 
    end
endmodule
