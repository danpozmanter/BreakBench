# LEVEL: LANGUAGE

from dataclasses import FrozenInstanceError, dataclass


@dataclass(frozen=True)
class Config:
    port: int


c = Config(8080)
try:
    c.port = 1
except FrozenInstanceError:
    pass
print(c.port)
