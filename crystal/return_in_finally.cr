def write_report
  raise IO::Error.new("disk full")
end

def close_log
end

def save_report
  write_report
ensure
  close_log
  return # BREAK!
end

begin
  save_report
  puts "saved"
rescue IO::Error
  puts "failed"
end
