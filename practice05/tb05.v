module  tb_bnb;
  
parameter tCK = 1000/50 ; 

wire    q1    ;
wire    q2    ;

reg     d     ;
reg     clk   ;

initial         clk = 1'b0; 
always #(tCK/2) clk = ~clk;

                
block     dut0( .q  ( q1  ),
                .d  ( d   ), 
                .clk( clk ));
               
nonblock  dut1( .q  ( q2  ),
                .d  ( d   ), 
                .clk( clk ));
                
initial begin
$display("==============================");
$display("    d  q1  q2");
$display("==============================");
#(50) {d} = 1'b0; $display("  %b\t%b\t%b", d, q1, q2);
#(50) {d} = 1'b1; $display("  %b\t%b\t%b", d, q1, q2);
#(50) {d} = 1'b0; $display("  %b\t%b\t%b", d, q1, q2);
#(50) {d} = 1'b1; $display("  %b\t%b\t%b", d, q1, q2);
#(50) {d} = 1'b1; $display("  %b\t%b\t%b", d, q1, q2);
#(50) {d} = 1'b1; $display("  %b\t%b\t%b", d, q1, q2);
$finish;
end
                  
endmodule


                
