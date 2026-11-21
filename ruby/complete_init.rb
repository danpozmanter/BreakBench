Config = Data.define(:timeout, :retries)

c = Config.new(timeout: 30) # CONTROL! c = Config.new(timeout: 30, retries: 3)
puts c.retries
