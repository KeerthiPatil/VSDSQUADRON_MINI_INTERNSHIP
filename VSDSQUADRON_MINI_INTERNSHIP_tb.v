module VSDSQUADRON_MINI_INTERNSHIP_tb;

reg clk,RN;
wire [31:0]WB_OUT,NPC;

VSDSQUADRON_MINI_INTERNSHIP VSDSQUADRON_MINI_INTERNSHIP(clk,RN,NPC,WB_OUT);


always #3 clk=!clk;

initial begin 
RN  = 1'b1;
clk = 1'b1;

$dumpfile ("VSDSQUADRON_MINI_INTERNSHIP.vcd"); //by default vcd
$dumpvars (0, VSDSQUADRON_MINI_INTERNSHIP_tb);
  
  #5 RN = 1'b0;
  
  #300 $finish;

end
endmodule
