module top (
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

    wire [3:0] w;
    //wire [1:0] brute;
    //assign brute[0] = btnU;
    //assign brute[1] = btnD;

    four_mux four_mux_inst (
        .CEO(sw[3:0]),
        .You(sw[7:4]),
        .Fred(sw[11:8]),
        .Jill(sw[15:12]),
        .Sel({btnU, btnL}),
        .Enable(btnC),
        .Y(w)
    );
    
    four_demux four_demux_inst (
        .In(w),
        .local_lib(led[3:0]),
        .fire_department(led[7:4]),
        .school(led[11:8]),
        .rib_shack(led[15:12]),
        .Sel({btnR, btnD}),
        .Enable(btnC)
    );
    
//    4_mux 4_mux_bit1 (
//        .CEO(sw[0]),
//        .You(sw[1]),
//        .Fred(sw[2]),
//        .Jill(sw[3]),
//        .Enable(1'b1),
//        .Sel[0](1'b0)
//    );
    
//    4_mux 4_mux_bit2 (
//        .CEO(sw[0]),
//        .You(sw[1]),
//        .Fred(sw[2]),
//        .Jill(sw[3]),
//        .Enable(1'b1),
//        .Sel[0](1'b0)
//    );
    
//    4_mux 4_mux_bit3 (
//        .CEO(sw[0]),
//        .You(sw[1]),
//        .Fred(sw[2]),
//        .Jill(sw[3]),
//        .Enable(1'b1),
//        .Sel[0](1'b0)
//    );

endmodule


/* twos complement file for reference
module twos_compliment (
    input [7:0] A,
    output [7:0] Y
);

    wire [7:0] carry;
    
    full_adder lsb(
        .A(~A[0]),
        .B(1'b1),
        .Y(Y[0]),
        .cin(1'b0),
        .cout(carry[0])
    );
    
    full_adder full_adder_inst1(
        .A(~A[1]),
        .B(1'b0),
        .Y(Y[1]),
        .cin(carry[0]),
        .cout(carry[1])
    );
    
    full_adder full_adder_inst2(
        .A(~A[2]),
        .B(1'b0),
        .Y(Y[2]),
        .cin(carry[1]),
        .cout(carry[2])
    );
    
    full_adder full_adder_inst3(
        .A(~A[3]),
        .B(1'b0),
        .Y(Y[3]),
        .cin(carry[2]),
        .cout(carry[3])
    );

    full_adder full_adder_inst4(
        .A(~A[4]),
        .B(1'b0),
        .Y(Y[4]),
        .cin(carry[3]),
        .cout(carry[4])
    );
    
    full_adder full_adder_inst5(
        .A(~A[5]),
        .B(1'b0),
        .Y(Y[5]),
        .cin(carry[4]),
        .cout(carry[5])
    );
    
    full_adder full_adder_inst6(
        .A(~A[6]),
        .B(1'b0),
        .Y(Y[6]),
        .cin(carry[5]),
        .cout(carry[6])
    );

    full_adder full_adder_inst7(
        .A(~A[7]),
        .B(1'b0),
        .Y(Y[7]),
        .cin(carry[6]),
        .cout(carry[7])
    );

endmodule
*/