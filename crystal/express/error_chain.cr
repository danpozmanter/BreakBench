# LEVEL: STD

begin
  begin
    raise "not found"
  rescue e
    raise Exception.new("loading config: #{e.message}", cause: e)
  end
rescue e
  puts e.message
  puts e.cause.not_nil!.message
end
