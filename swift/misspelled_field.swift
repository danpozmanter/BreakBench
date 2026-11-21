struct Config { var color = "blue" }

var cfg = Config()
cfg.colour = "red" // BREAK!
cfg.color += ""
print(cfg.color)
