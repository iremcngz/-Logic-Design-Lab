module bonus_tb ();
  reg a,b,c,d;  //declaring inputs as regs 
  wire F;       //declaring output as net

  //instantiate unıt under test and explicit assotation
  bonus uut (.a(a) , .b(b) , .c(c) , .d(d) , .F(F));


  initial begin
  //initialize inputs
    $dumpfile("bonus_tb.vcd");
    $dumpvars;
   a=0; b=0; c=0; d=0; #5;    a=0; b=0; c=0; d=1; #5;
   a=0; b=0; c=1; d=0; #5;    a=0; b=0; c=1; d=1; #5;
   a=0; b=1; c=0; d=0; #5;    a=0; b=1; c=0; d=1; #5;
   a=0; b=1; c=1; d=0; #5;    a=0; b=1; c=1; d=1; #5;
   a=1; b=0; c=0; d=0; #5;    a=1; b=0; c=0; d=1; #5;
   a=1; b=0; c=1; d=0; #5;    a=1; b=0; c=1; d=1; #5;
   a=1; b=1; c=0; d=0; #5;    a=1; b=1; c=0; d=1; #5;
   a=1; b=1; c=1; d=0; #5;    a=1; b=1; c=1; d=1; #5;
   $finish;
  end
endmodule
     