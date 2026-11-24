@fieldwise_init
struct User(Copyable, Movable):
    var name: String


@fieldwise_init
struct Session(Copyable, Movable):
    var user: Optional[User]


def logout(mut session: Session):
    session.user = None


def main():
    var session = Session(User("alice"))
    if session.user:
        logout(session) # CONTROL! print(session.user.value().name.byte_length())
        print(session.user.value().name.byte_length()) # CONTROL! logout(session)
