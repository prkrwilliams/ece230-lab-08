module four_mux (
    input [3:0] CEO, [3:0] You, [3:0] Fred, [3:0] Jill, 
    input Enable,
    input [1:0] Sel,
    output [3:0] Y
);
    
    assign Y = Sel == 2'b00 && Enable == 1? CEO :
                Sel == 2'b01 && Enable == 1? You :
                Sel == 2'b10 && Enable == 1? Fred :
                Sel == 2'b11 && Enable == 1 ? Jill :
                'b0000;
        

endmodule
