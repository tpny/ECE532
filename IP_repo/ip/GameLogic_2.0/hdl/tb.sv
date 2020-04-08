
`timescale 1 ns / 1 ps


module tb();

    logic init;
    logic [10:0] x,y;
    logic [4:0] bt_in;
    logic [10:0] x_out, y_out, shell_x_out, shell_y_out;
    logic tank_update, shell_update;

initial begin
    $write("Start\n");
    #5ns;
    init = 1'b0; 
    bt_in = 5'd0;
    x = 0;
    y = 0;
    tank_update = 0;
    shell_update = 0;
    #50ns;
    x = 132
    y = 132;
    init = 1'b1; 
    #10ns init = 1'b0; 
    #100ns;
    $write("0x%x\n", x);

end

logic aclk;
logic aresetn;


//clock generator (100MHz)
initial
begin
	aclk = 0;
	forever
		#5ns aclk = ~aclk;
end

//start the testbench by resetting the system for 5 cycles
initial
begin
	aresetn = 0;
	repeat(5) @(posedge aclk);
	forever
		@(posedge aclk)aresetn = 1;
end

PlayerTank DUT(
    .axi_aclk(aclk),
    .axi_aresetn(aresetn),
    
    .player_tank_x_next(x_out),
    .player_tank_y_next(y_out),
    .player_tank_update(tank_update),
    .player_tank_hit(),
    
    .player_shell_x_next(shell_x_out),
    .player_shell_y_next(shell_y_out),
    .player_shell_update(shell_update),
    .player_shell_hit(),
    
    .init(init),
    .init_x(x),
    .init_y(y),
    
    .bt_input(bt_in) //{up, down, left, right, fire}
    
    );
    
    
endmodule