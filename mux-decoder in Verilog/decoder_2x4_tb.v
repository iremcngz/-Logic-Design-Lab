
module decoder_2x4_tb;
    reg[1:0]  A;
    wire[3:0] D;
 
    decoder_2x4 uut (.A(A), .D(D));

    initial begin
     $dumpfile("decoder_2x4_tb.vcd");
     $dumpvars;


      A[1]=0;  A[0]=0;
      #20;

      A[1]=0;  A[0]=1;
      #20;
      
      A[1]=1;  A[0]=0;
      #20;
      
      A[1]=1;  A[0]=1;
      #20;
      
      $finish;

    end
endmodule