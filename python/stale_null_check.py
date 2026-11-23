from dataclasses import dataclass


@dataclass
class User:
    name: str


@dataclass
class Session:
    user: User | None


def logout(session: Session) -> None:
    session.user = None


session = Session(User("alice"))
if session.user is not None:
    logout(session)
    print(len(session.user.name))
