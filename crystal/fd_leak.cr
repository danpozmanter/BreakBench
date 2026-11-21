n = ARGV[0].to_i
File.write("/tmp/bb_fd.txt", "x")
n.times do
  f = File.open("/tmp/bb_fd.txt")
  f.read_byte
end
puts "done"
