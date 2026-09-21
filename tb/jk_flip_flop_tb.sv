module jk_flip_flop_tb;

    logic clk;
    logic j;
    logic k;
    logic q;

    jk_flip_flop dut (
        .clk(clk),
        .j(j),
        .k(k),
        .q(q)
    );

    initial begin
        $dumpfile("sim/jk_flip_flop.vcd");
        $dumpvars(0, jk_flip_flop_tb);

        clk = 0;
        j = 0;
        k = 0;

        // Hold
        #10;
        j = 0;
        k = 0;

        // Set
        #10;
        j = 1;
        k = 0;

        // Reset
        #10;
        j = 0;
        k = 1;

        // Toggle
        #10;
        j = 1;
        k = 1;

        // Toggle again
        #10;
        j = 1;
        k = 1;

        #10;
        $finish;
    end

    always #5 clk = ~clk;

endmodule