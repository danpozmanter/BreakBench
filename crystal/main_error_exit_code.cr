def main
  text = begin
    File.read("/nonexistent/bb.conf")
  rescue ex : File::Error
    STDERR.puts "config missing: #{ex.message}"
    return # BREAK!
    # CONTROL! exit 1
  end
  puts text.size
end

main
