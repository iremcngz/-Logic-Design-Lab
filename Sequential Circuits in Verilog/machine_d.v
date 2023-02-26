module machine_d(
    input x,
    input rst,  
    input clk,
    output F
    );
    reg[2:0] present_state;    //ABC
    wire[2:0] next_state;      //D(A)D(B)D(C)
   
    //instantiating D flip flops (structural description and explicit association)
    //Functions of D(A),D(B),D(C),Y are used here
    dff D2(  //for A
        .d(present_state[2] | (present_state[1]&x)),
        .rst(rst),
        .clk(clk),
        .q(next_state[2])    
    );
    dff D1(  //for B
        .d((present_state[1]&~x) | (~present_state[2]&(~present_state[1])&x)),
         .rst(rst),
        .clk(clk),
        .q(next_state[1])   
    );
    dff D0(  //for  C
        .d((~present_state[0]&~x) | (present_state[0]&x)),
        .rst(rst),
        .clk(clk),
        .q(next_state[0])      
    );

    always@ (rst or next_state) begin
        if (rst) begin present_state <= 3'b000; end
        else begin present_state <= next_state; end
    end

    assign F=(present_state[2] & present_state[0] )  ;        
endmodule
