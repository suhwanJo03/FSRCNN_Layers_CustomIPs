`timescale 1ns / 1ps

module tb_Shrinking_Layer_Test_wrapper;

  // Clock and reset
  reg axi_clk;
  reg axi_reset_n;

  // AXI4-Stream slave I/F (input)
  reg         S_AXIS_tvalid;
  reg [127:0] S_AXIS_tdata;
  reg  [3:0]  S_AXIS_tuser;
  wire        S_AXIS_tready;

  // AXI4-Stream master I/F (output)
  wire        m_axis_tvalid;
  wire [95:0] m_axis_tdata;
  reg         m_axis_tready;
  wire        EOL;
  wire        EOF;

  // Instantiate DUT
  Shrinking_Layer_Test_wrapper uut (
    .EOF(EOF),
    .EOL(EOL),
    .axi_clk(axi_clk),
    .axi_reset_n(axi_reset_n),
    .S_AXIS_tvalid(S_AXIS_tvalid),
    .S_AXIS_tdata(S_AXIS_tdata),
    .S_AXIS_tuser(S_AXIS_tuser),
    .S_AXIS_tready(S_AXIS_tready),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tready(m_axis_tready)
  );

  // Clock generation
  initial axi_clk = 0;
  always #5 axi_clk = ~axi_clk;

  // Toggle m_axis_tready to simulate backpressure
  always @(posedge axi_clk) begin
    if (($time > 200 && $time < 10200)||
    ($time > 10400 && $time < 20400)||
    ($time > 20600 && $time < 30600)) begin
      m_axis_tready <= 0;
    end else begin
      m_axis_tready <= 1;
    end
  end

  // Monitor output
  integer rx_count = 0;
  always @(posedge axi_clk) begin
    if (m_axis_tvalid && m_axis_tready) begin
      rx_count = rx_count + 1;
      $display("[RX %0d] Output = %024h", rx_count, m_axis_tdata);
    end
  end

  // Task to send one frame from file
  task send_input_from_file(input integer frame_index);
    integer fd, r, line_count;
    reg [127:0] current_data, next_data;
    reg [1023:0] line;
    reg has_next_data;
    begin
      line_count = 0;
      S_AXIS_tvalid <= 0;
      S_AXIS_tuser  <= 0;

      // Open file
      fd = $fopen("D:/FSRCNN/input_data/input_verilog/layer1_first_output_hex_rearranged.txt", "r");
      if (fd == 0) begin
        $fatal("Cannot open input file.");
      end

      // Prime first line
      r = $fgets(line, fd);
      has_next_data = (r != 0 && $sscanf(line, "%h", next_data) == 1);

      while (has_next_data) begin
        current_data = next_data;
        S_AXIS_tdata  <= current_data;
        S_AXIS_tvalid <= 1;
        S_AXIS_tuser  <= 0;

        // Read next line in advance
        r = $fgets(line, fd);
        has_next_data = (r != 0 && $sscanf(line, "%h", next_data) == 1);

        // Wait for handshake
        @(posedge axi_clk);
        while (!S_AXIS_tready) @(posedge axi_clk);

        line_count = line_count + 1;
        $display("[TX f%0d #%0d] Data = %032h", frame_index, line_count, current_data);

        // If no more data, drop valid immediately
        if (!has_next_data) begin
          S_AXIS_tvalid <= 0;
        end
      end

      $fclose(fd);
      $display("[Frame %0d] Transmission complete. Total %0d lines sent.", frame_index, line_count);
    end
  endtask

  // Simulation main
  initial begin: simulation_main
    integer i;
    
    // Reset
    axi_reset_n   = 0;
    S_AXIS_tvalid = 0;
    S_AXIS_tdata  = 0;
    S_AXIS_tuser  = 0;
    m_axis_tready = 1;
    #50;
    axi_reset_n = 1;

    // Send 2 frames
    for (i = 0; i < 2; i = i + 1) begin
      send_input_from_file(i);
      repeat (200) @(posedge axi_clk);  // Inter-frame delay
    end

    $display("Simulation done. Total received = %0d.", rx_count);
    #200;
    $finish;
  end

endmodule
