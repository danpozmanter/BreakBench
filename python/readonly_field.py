from dataclasses import dataclass


@dataclass(frozen=True)
class Config:
    port: int


c = Config(8080)
c.port = 1  # BREAK!
print(c.port)
