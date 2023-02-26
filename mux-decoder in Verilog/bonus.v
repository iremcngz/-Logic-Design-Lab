module bonus(
    input a,
    input b,
    input c,
    input d,
    output F
);
    
  
    //to implement given function I will create 8 input
    //a is selector2 
    //b is selector1
    //c is selector0
    //d will be boolean equation for input cases
    wire [7:0]i; //declare i for input cases
   
    //obtained equation from truth table
    //these inputs are always zero 
    assign i[1]=0;     assign i[3]=0;
    assign i[4]=0;     assign i[6]=0;
    
    //if a,b,c are 0 output will be ~d 
    assign i[0]=~a&~b&~c&~d;
    
    //if a,c are 0 and b is 1 output will be d
    assign i[2]=~a & b & ~c & d;
    //if a,c are 1 b is 0 output will be ~d
    assign i[5]= a & ~b & c & ~d;
    //if a,b,c are 1 output will be d
    assign i[7]= a & b & c & d;

    //the following calculation can be used to find the correct input 
    assign F =i[4*a + 2*b +c];

endmodule
