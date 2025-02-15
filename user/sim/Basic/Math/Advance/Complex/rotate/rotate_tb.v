module rotate_tb;
    // Parameters
    localparam ROTATE_LEN_SHIFT = 9;
    localparam ROTATE_SCALE_SHIFT = 11;

    // Inputs
    reg clock;
    reg enable;
    reg reset;
    reg [15:0] in_i;
    reg [15:0] in_q;
    reg signed [15:0] phase;
    reg input_valid;

    wire 	ovalid;
    wire [15:0]	out_i;
    wire [15:0]	out_q;

    rotate #(
        .ROTATE_SCALE 		( ROTATE_SCALE_SHIFT ))
    u_rotate(
        //ports
        .clock    		( clock    		),
        .reset    		( reset    		),
        .phase    		( phase    		),
        .ivalid   		( input_valid   ),
        .idata_r     	( in_i     		),
        .idata_i     	( in_q     		),
        .ovalid   		( ovalid   		),
        .result_r    	( out_i    		),
        .result_i    	( out_q    		)
    );

    // Clock generation
    always #5 clock = ~clock;

    initial begin
        // Initialize Inputs
        clock = 0;
        enable = 0;
        reset = 1;
        in_i = 0;
        in_q = 0;
        phase = 0;
        input_valid = 0;

        // Wait for global reset
        #20;

        // Release reset
        reset = 0;
        enable = 1;

        // Test case 1: Rotate (1, 0) by 45 degrees
        // Phase for 45 degrees (scaled): 0x0B60
        in_i = 16'h0001;
        in_q = 16'h0000;
        phase = 16'sd234;
        input_valid = 1;

        // Wait for some cycles to let the computation complete
        #40;

        // Check the output
        if (out_i !== 16'sh5A82 || out_q !== 16'sh5A82) begin
            $display("Test case 1 failed: out_i = %h, out_q = %h", out_i, out_q);
        end else begin
            $display("Test case 1 passed: out_i = %h, out_q = %h", out_i, out_q);
        end

        // Test case 2: Rotate (0, 1) by 90 degrees
        // Phase for 90 degrees (scaled): 0x16C0
        in_i = 16'h0000;
        in_q = 16'h0001;
        phase = 16'sd334;
        input_valid = 1;

        // Wait for some cycles to let the computation complete
        #40;

        // Check the output
        if (out_i !== 16'sh8000 || out_q !== 16'sh0000) begin
            $display("Test case 2 failed: out_i = %h, out_q = %h", out_i, out_q);
        end else begin
            $display("Test case 2 passed: out_i = %h, out_q = %h", out_i, out_q);
        end

        // Test case 3: Rotate (1, 1) by -45 degrees
        // Phase for -45 degrees (scaled): -0x0B60
        in_i = 16'h0001;
        in_q = 16'h0001;
        phase = -16'sd519;
        input_valid = 1;

        // Wait for some cycles to let the computation complete
        #400;

        // Finish simulation
        $finish;
    end
    
    initial begin
        $dumpfile("rotate.vcd");        
        $dumpvars(0, rotate_tb);   
    end
endmodule
