import sys
from dataclasses import dataclass


@dataclass
class User:
    name: str


def find_user(user_id):
    return User("alice") if user_id == 1 else None


u = find_user(int(sys.argv[1]))
print(len(u.name))
