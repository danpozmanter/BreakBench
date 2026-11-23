@fieldwise_init
struct User(Copyable, Movable):
    var name: String


def main():
    var users = List[Optional[User]](length=3, fill=None)
    users[1] = User("bob")
    users[2] = User("carol")
    print(users[0].name.byte_length()) # BREAK!
    # CONTROL! print(users[0].value().name.byte_length())
