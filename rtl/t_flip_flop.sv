module t_flip_flop (
    input  logic clk,
    input  logic t,
    output logic q
);

    always_ff @(posedge clk) begin
        if (t)
            q <= ~q;
        else
            q <= q;
    end

endmodule