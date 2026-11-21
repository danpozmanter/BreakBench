# LEVEL: STD

result = Channel(Exception?).new
spawn do
  begin
    raise "bad input"
  rescue e
    result.send(e)
  end
end
if e = result.receive
  puts "worker failed: #{e.message}"
end
