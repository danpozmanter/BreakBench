from std.sys import argv


@fieldwise_init
struct User(Copyable, Movable):
    var name: String


def find_user(id: Int) -> Optional[User]:
    if id == 1:
        return User("alice")
    return None


def main() raises:
    var u = find_user(atol(argv()[1]))
    print(len(u.name))  # BREAK!
    print(Bool(u))
