# LEVEL: LANGUAGE

Config = Data.define(:port)

c = Config.new(port: 8080)
begin
  c.port = 1
rescue NoMethodError
  nil
end
puts c.port
