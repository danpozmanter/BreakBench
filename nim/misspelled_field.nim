type Config = object
  color: string

var cfg = Config(color: "blue")
cfg.colour = "red" # BREAK!
echo cfg.color
