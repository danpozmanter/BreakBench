def main
  text = begin
    File.read("/nonexistent/bb.conf")
  rescue SystemCallError => e
    warn "config missing: #{e.message}"
    return # BREAK!
    # CONTROL! raise
  end
  puts text.size
end

main
