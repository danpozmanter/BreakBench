class User {
  final String name;
  User(this.name);
}

User? findUser(int id) => id == 1 ? User("alice") : null;

void main(List<String> args) {
  final u = findUser(int.parse(args[0]));
  print(u.name.length); // BREAK!
  print(u);
}
