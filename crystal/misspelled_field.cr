class Config
  property color = "blue"
end

cfg = Config.new
cfg.colour = "red" # BREAK!
puts cfg.color
