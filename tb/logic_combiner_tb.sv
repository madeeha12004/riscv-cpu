module logic_combiner_tb;

    logic a;
    logic b;
    logic c;
    logic y;
logic_combiner dut (
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);

initial begin
        $dumpfile("sim/logic_combiner.vcd");
        $dumpvars(0, logic_combiner_tb);

        a = 0;
        b = 0;
        c = 0;
        #10;
        if (y !== 0)
            $display("ERROR: a=%b b=%b c=%b y=%b", a, b, c, y);
        else
            $display("PASS: a=%b b=%b c=%b y=%b", a, b, c, y);

        a = 0;
        b = 0;
        c = 1;
        #10;
        if (y !== 1)
            $display("ERROR: a=%b b=%b c=%b y=%b", a, b, c, y);
        else
            $display("PASS: a=%b b=%b c=%b y=%b", a, b, c, y);

        a = 0;
        b = 1;
        c = 0;
        #10;
        if (y !== 0)
            $display("ERROR: a=%b b=%b c=%b y=%b", a, b, c, y);
        else
            $display("PASS: a=%b b=%b c=%b y=%b", a, b, c, y);

        a = 0;
        b = 1;
        c = 1;
        #10;
        if (y !== 1)
            $display("ERROR: a=%b b=%b c=%b y=%b", a, b, c, y);
        else
            $display("PASS: a=%b b=%b c=%b y=%b", a, b, c, y);

        a = 1;
        b = 0;
        c = 0;
        #10;
        if (y !== 0)
            $display("ERROR: a=%b b=%b c=%b y=%b", a, b, c, y);
        else
            $display("PASS: a=%b b=%b c=%b y=%b", a, b, c, y);

        a = 1;
        b = 0;
        c = 1;
        #10;
        if (y !== 1)
            $display("ERROR: a=%b b=%b c=%b y=%b", a, b, c, y);
        else
            $display("PASS: a=%b b=%b c=%b y=%b", a, b, c, y);

        a = 1;
        b = 1;
        c = 0;
        #10;
        if (y !== 1)
            $display("ERROR: a=%b b=%b c=%b y=%b", a, b, c, y);
        else
            $display("PASS: a=%b b=%b c=%b y=%b", a, b, c, y);

        a = 1;
        b = 1;
        c = 1;
        #10;
        if (y !== 1)
            $display("ERROR: a=%b b=%b c=%b y=%b", a, b, c, y);
        else
            $display("PASS: a=%b b=%b c=%b y=%b", a, b, c, y);

        $finish;
    end

endmodule
