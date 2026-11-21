Config = Data.define(:port)

c = Config.new(port: 8080)
c.port = 1
puts c.port
