class User {
  final String name;
  User(this.name);
}

class Session {
  User? user;
  Session(this.user);
}

void logout(Session session) {
  session.user = null;
}

void main() {
  final session = Session(User('alice'));
  if (session.user != null) {
    logout(session);
    print(session.user.name.length); // BREAK!
    // CONTROL! print(session.user?.name.length);
  }
}
