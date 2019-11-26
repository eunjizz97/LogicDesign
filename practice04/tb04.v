module  tb04  ;
  
reg   [2:0] in  ;
reg         en  ;

wire  [7:0] out1;

wire  [7:0] out2;

dec3to8_shift dut0( .out(out1 ), 
                    .in (in   ), 
                    .en (en   ));
                
dec3to8_case  dut1( .out(out2 ), 
                    .in (in   ), 
                    .en (en   ));
                    
                    
initial begin
  $display("shift level :  out1");
  $display("'case' level:  out1");
  $display("===================================");
  $display("  in  en  out1  out2");
  $display("===================================");
  #(50) {in, en} = 4'b0000; #(50) $display("  %b\t%b\t%b\t%b", in, en, out1, out2);
  #(50) {in, en} = 4'b0001; #(50) $display("  %b\t%b\t%b\t%b", in, en, out1, out2);
  #(50) {in, en} = 4'b0010; #(50) $display("  %b\t%b\t%b\t%b", in, en, out1, out2);
  #(50) {in, en} = 4'b0011; #(50) $display("  %b\t%b\t%b\t%b", in, en, out1, out2);
  #(50) {in, en} = 4'b0100; #(50) $display("  %b\t%b\t%b\t%b", in, en, out1, out2);
  #(50) {in, en} = 4'b0101; #(50) $display("  %b\t%b\t%b\t%b", in, en, out1, out2);
  #(50) {in, en} = 4'b0111; #(50) $display("  %b\t%b\t%b\t%b", in, en, out1, out2);
  #(50) {in, en} = 4'b1000; #(50) $display("  %b\t%b\t%b\t%b", in, en, out1, out2);
  #(50) {in, en} = 4'b1100; #(50) $display("  %b\t%b\t%b\t%b", in, en, out1, out2);
  #(50) $finish         ;
end

endmodule


