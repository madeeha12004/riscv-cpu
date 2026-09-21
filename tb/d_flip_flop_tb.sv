module d_flip_flop_tb;

    logic clk;
    logic d;
    logic q;

    d_flip_flop dut (
        .clk(clk),
        .d(d),
        .q(q)
    );

    initial begin
        $dumpfile("sim/d_flip_flop.vcd");
        $dumpvars(0, d_flip_flop_tb);

        clk = 0;
        d = 0;

        #10;
        d = 1;

        #10;
        d = 0;

        #10;
        d = 1;

        #10;

        $finish;
    end

    always #5 clk = ~clk;

endmodule
