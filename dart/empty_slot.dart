class User {
  final String name;
  User(this.name);
}

void main() {
  final users = List<User?>.filled(3, null);
  users[1] = User('bob');
  users[2] = User('carol');
  print(users[0].name.length); // BREAK!
  // CONTROL! print(users[0]?.name.length);
}
