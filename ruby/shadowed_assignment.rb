status = "pending"
if ARGV[0] == "ok"
  status = "done"
  warn "status: #{status}"
end
puts status
