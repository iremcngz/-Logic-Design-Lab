module mux_4x1_tb();
 reg[3:0] i;
 reg[1:0] s;

 wire F;

 mux_4x1 uut(.i(i), .s(s), .F(F));
 
 //////    this part shows all 64 inputs and outputs
 //initial begin
 //    $dumpfile("mux_4x1.vcd");
 //    $dumpvars;

 //     i[3] = 1'b0;  i[2] = 1'b0;  i[1] = 1'b0;  i[0] = 1'b0;
 //     s[1]=1'b0;  s[0]=1'b0;
 //     #500
 //    $finish;
 //end
 //   always #40 i[3]=~i[3];
 //   always #20 i[2]=~i[2]; 
 //   always #10 i[1]=~i[1]; 
 //   always #5 i[0]=~i[0]; 
 //   always #80 s[0]=~s[0]; 
 //   always #160 s[1]=~s[1]; 
/////

  initial begin
    $dumpfile("mux_4x1.vcd");
    $dumpvars;
  
   
    
    i=4'b0001;  s=2'b00; #5; 
    i=4'b1110;  s=2'b00; #5;
    i=4'b0010;  s=2'b01; #5;
    i=4'b1101;  s=2'b01; #5;
    i=4'b0100;  s=2'b10; #5;
    i=4'b1011;  s=2'b10; #5;
    i=4'b1000;  s=2'b11; #5;
    i=4'b0111;  s=2'b11; #5;
    $finish;
  
    end


endmodule 
