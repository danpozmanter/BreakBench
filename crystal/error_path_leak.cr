def process(request : String, id : Int32)
  buf = Bytes.new(4096)
  "#{request}##{id}".to_slice.copy_to(buf)
  raise ArgumentError.new("invalid request") if buf[0] != '{'.ord
end

n = ARGV[0].to_i
failures = 0
n.times do |i|
  process("not json", i)
rescue ArgumentError
  failures += 1
end
puts(failures == n ? "done" : "unexpected")
