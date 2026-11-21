from dataclasses import dataclass


@dataclass
class Config:
    timeout: int
    retries: int


c = Config(timeout=30)  # CONTROL! c = Config(timeout=30, retries=3)
print(c.retries)
