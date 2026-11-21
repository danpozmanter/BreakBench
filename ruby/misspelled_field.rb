class Config
  attr_accessor :color

  def initialize
    @color = "blue"
  end
end

cfg = Config.new
cfg.colour = "red"
puts cfg.color
