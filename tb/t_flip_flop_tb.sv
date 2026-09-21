module t_flip_flop_tb;

    logic clk;
    logic t;
    logic q;

    t_flip_flop dut (
        .clk(clk),
        .t(t),
        .q(q)
    );

    initial begin
        $dumpfile("sim/t_flip_flop.vcd");
        $dumpvars(0, t_flip_flop_tb);

        clk = 0;
        t = 0;

        // Hold
        #10;
        t = 0;

        // Toggle
        #10;
        t = 1;

        // Toggle again
        #10;
        t = 1;

        // Toggle again
        #10;
        t = 1;

        // Hold
        #10;
        t = 0;

        #10;
        $finish;
    end

    always #5 clk = ~clk;

endmodule