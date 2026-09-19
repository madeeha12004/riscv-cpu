module not_gate_tb;

    logic a;
    logic y;

    not_gate dut (
        .a(a),
        .y(y)
    );

    initial begin
        $dumpfile("sim/not_gate.vcd");
        $dumpvars(0, not_gate_tb);

        a = 0;
        #10;
        if (y !== 1)
            $display("ERROR: a=%b y=%b", a, y);
        else
            $display("PASS: a=%b y=%b", a, y);

        a = 1;
        #10;
        if (y !== 0)
            $display("ERROR: a=%b y=%b", a, y);
        else
            $display("PASS: a=%b y=%b", a, y);

        $finish;
    end

endmodule