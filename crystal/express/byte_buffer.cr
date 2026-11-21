# LEVEL: STD

buf = IO::Memory.new
100_000.times { |i| buf.write_byte((i & 0xFF).to_u8) }
puts buf.size
