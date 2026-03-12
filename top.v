module top (
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

    wire [3:0] w;

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

endmodule
