status = "pending"
if ARGV[0] == "ok"
  status = "done"
  STDERR.puts "status: #{status}"
end
puts status
