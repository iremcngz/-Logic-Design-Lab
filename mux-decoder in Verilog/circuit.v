module circuit(
    input a,
    input b,
    input c,
    input d,
    output F
);

    wire [1:0] selector;         //selector of mux
    wire [1:0] decoder_input;    
    wire [3:0] decoder_output;   //this will be input of mux

    assign selector={c,d};       //we need 2 bit selector
    assign decoder_input={a,b};  // 2 bit input 
     
    //instantiating decoder and mux (structural description and explicit association) 
    decoder_2x4 decoder(.A(decoder_input[1:0]), .D(decoder_output[3:0]));
    mux_4x1 mux(.i(decoder_output[3:0]), .s(selector[1:0]), .F(F));


endmodule