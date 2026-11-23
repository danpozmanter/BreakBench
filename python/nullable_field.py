from dataclasses import dataclass

@dataclass
class User:
    name: str | None

decoded = User(None)
print(len(decoded.name))
