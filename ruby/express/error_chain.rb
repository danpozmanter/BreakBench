# LEVEL: LANGUAGE

begin
  begin
    raise "not found"
  rescue => cause
    raise "loading config: #{cause.message}"
  end
rescue => e
  puts e.message
  puts e.cause.message
end
