class Config:
    def __init__(self) -> None:
        self.color = "blue"


cfg = Config()
cfg.colour = "red"  # CONTROL! cfg.color = "red"
print(cfg.color)
