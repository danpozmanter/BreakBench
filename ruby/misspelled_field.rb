class Config
  attr_accessor :color

  def initialize
    @color = "blue"
  end
end

cfg = Config.new
cfg.colour = "red" # CONTROL! cfg.color = "red"
puts cfg.color
