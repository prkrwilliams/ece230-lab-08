module four_mux (
    input [3:0] CEO, [3:0] You, [3:0] Fred, [3:0] Jill, 
    input Enable,
    input [1:0] Sel,
    output [3:0] Y
);
//    assign Y = (CEO & ~Sel[0] & ~Sel[1] |
//                You &  Sel[0] & ~Sel[1] |
//                Fred & ~Sel[0] &  Sel[1] |
//                Jill &  Sel[0] &  Sel[1] |) & Enable;
                
//    equivalence_check equivalence_inst (
//        .select[0](Sel[0]),
//        .select[1](Sel[1]),
//        .
//    );
    
    assign Y = Sel == 2'b00 && Enable == 1? CEO :
                Sel == 2'b01 && Enable == 1? You :
                Sel == 2'b10 && Enable == 1? Fred :
                Sel == 2'b11 && Enable == 1 ? Jill :
                'b0000;
        

endmodule

//Old solution
//module 4_mux(
//    input CEO, You, Fred, Jill, Enable,
//    input Sel[1:0],
//    output Y
//);

//    assign Y = (A & ~Sel[0] & ~Sel[1] |
//                B &  Sel[0] & ~Sel[1] |
//                C & ~Sel[0] &  Sel[1] |
//                D &  Sel[0] &  Sel[1] |) & Enable;

//endmodule

//endmodule

