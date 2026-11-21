def process(request, id)
  buf = "\0".b * 4096
  text = "#{request}##{id}"
  buf[0, text.bytesize] = text
  raise ArgumentError, "invalid request" if buf[0] != "{"
end

n = ARGV[0].to_i
failures = 0
n.times do |i|
  process("not json", i)
rescue ArgumentError
  failures += 1
end
puts(failures == n ? "done" : "unexpected")
