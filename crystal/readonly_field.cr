class Config
  getter port : Int32

  def initialize(@port)
  end
end

c = Config.new(8080)
c.port = 1 # BREAK!
puts c.port
