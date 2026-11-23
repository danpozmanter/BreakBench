@fieldwise_init
struct User(Copyable, Movable):
    var name: Optional[String]


def main():
    var decoded = User(None)
    print(decoded.name.byte_length()) # BREAK!
    # CONTROL! print(decoded.name.value().byte_length())
