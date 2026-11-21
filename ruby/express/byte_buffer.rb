# LEVEL: LANGUAGE

buf = String.new(encoding: Encoding::BINARY)
100_000.times { |i| buf << (i & 0xFF) }
puts buf.bytesize
