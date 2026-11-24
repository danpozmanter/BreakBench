from dataclasses import dataclass


@dataclass
class User:
    name: str


users: list[User | None] = [None] * 3
users[1] = User("bob")
users[2] = User("carol")
print(len(users[0].name)) # CONTROL! print("missing" if users[0] is None else len(users[0].name))
