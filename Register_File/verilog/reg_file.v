module register_file (
    input  wire        clk,
    input  wire        reg_write,
    input  wire [2:0]  write_reg,
    input  wire [7:0]  write_data,
    input  wire [2:0]  read_reg1,
    input  wire [2:0]  read_reg2,
    output wire [7:0]  read_data1,
    output wire [7:0]  read_data2
);

    // 8 registers, each 8-bit wide
    reg [7:0] registers [0:7];

    integer i;

    // Optional initialization (simulation-friendly)
    initial begin
        for (i = 0; i < 8; i = i + 1)
            registers[i] = 8'b00000000;
    end

    // Write operation (synchronous)
    always @(posedge clk) begin
        if (reg_write) begin
            // Optional: prevent writing to R0 (like MIPS/RISC-V)
            // if (write_reg != 3'b000)
            registers[write_reg] <= write_data;
        end
    end

    // Read operations (asynchronous)
    assign read_data1 = registers[read_reg1];
    assign read_data2 = registers[read_reg2];

endmodule
