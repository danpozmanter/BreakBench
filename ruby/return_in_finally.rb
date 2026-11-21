def write_report
  raise IOError, "disk full"
end

def close_log; end

def save_report
  write_report
ensure
  close_log
  return # BREAK!
end

begin
  save_report
  puts "saved"
rescue IOError
  puts "failed"
end
