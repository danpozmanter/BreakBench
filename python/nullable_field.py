from dataclasses import dataclass


@dataclass
class User:
    name: str | None


decoded = User(None)
print(len(decoded.name)) # CONTROL! print("no name" if decoded.name is None else len(decoded.name))
