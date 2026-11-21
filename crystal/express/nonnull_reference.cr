# LEVEL: LANGUAGE

class Config
  getter name : String

  def initialize(@name : String)
  end
end

c = Config.new("app")
missing : Config = nil # REJECT!
puts c.name
