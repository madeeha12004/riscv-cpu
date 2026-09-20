module logic_combiner (
    input logic a,
    input logic b,
    input logic c,
    output logic y
);
logic and_result;
assign and_result = a & b;
assign y = and_result | c;

endmodule
