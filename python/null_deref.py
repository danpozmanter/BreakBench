import sys
from dataclasses import dataclass


@dataclass
class User:
    name: str


def find_user(user_id: int) -> User | None:
    return User("alice") if user_id == 1 else None


u = find_user(int(sys.argv[1]))
print(len(u.name)) # CONTROL! print("missing" if u is None else len(u.name))
print(u) # BREAK!
