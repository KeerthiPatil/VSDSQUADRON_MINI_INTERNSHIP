module INS_RV32EC_tb;

reg clk,RN;
wire [31:0]WB_OUT,NPC;

INS_RV32EC_tb(clk,RN,NPC,WB_OUT);


always #3 clk=!clk;

initial begin 
RN  = 1'b1;
clk = 1'b1;

$dumpfile ("INS_RV32EC.vcd"); //by default vcd
$dumpvars (0, INS_RV32EC_tb);
  
  #5 RN = 1'b0;
  
  #300 $finish;

end
endmodule
