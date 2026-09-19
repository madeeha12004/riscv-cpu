module and_gate_tb;

    logic a;
    logic b;
    logic y;

    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("sim/and_gate.vcd");
        $dumpvars(0, and_gate_tb);
        a = 0;
        b = 0;
        #10;
        if (y !== 0)
            $display("ERROR: a=%b b=%b y=%b", a, b, y);
        else
            $display("PASS: a=%b b=%b y=%b", a, b, y);

        a = 0;
        b = 1;
        #10;
        if (y !== 0)
            $display("ERROR: a=%b b=%b y=%b", a, b, y);
        else
            $display("PASS: a=%b b=%b y=%b", a, b, y);

        a = 1;
        b = 0;
        #10;
        if (y !== 0)
            $display("ERROR: a=%b b=%b y=%b", a, b, y);
        else
            $display("PASS: a=%b b=%b y=%b", a, b, y);

        a = 1;
        b = 1;
        #10;
        if (y !== 1)
            $display("ERROR: a=%b b=%b y=%b", a, b, y);
        else
            $display("PASS: a=%b b=%b y=%b", a, b, y);

        $finish;
    end

endmodule