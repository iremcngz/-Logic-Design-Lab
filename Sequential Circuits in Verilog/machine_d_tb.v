module machine_d_tb();
//inputs
    reg x;
    reg clk;
    reg rst;
//output
    wire F;
    integer i;
    //instantiate the uut
    machine_d uut (.x(x), .rst(rst), .clk(clk), .F(F));
 
  //to give input to fsm I will use shifting
    integer shift_amount;
    reg [22:0] input_data;
    
    initial begin      
        clk=1;
        forever begin
           #5; clk=~clk;
        end
    end
    
    initial
       #300
       $finish;
    
    initial begin
       $dumpfile("machine_d.vcd");
       $dumpvars;
        input_data=23'b11110111110000101010001;
        shift_amount=0;
        rst=1; #15;  
        rst=0; #97;  
        rst=1; #3;
        rst=0; #100;
        rst=1; #4;
        rst=0; #50;
    end
    
   //input sequence not completely synced with the clock
    always@ (posedge clk ) begin
        #1;
        x=input_data >> shift_amount;
        shift_amount=shift_amount+1;  
    end    
    

endmodule    