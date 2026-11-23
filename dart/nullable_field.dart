class User {
  final String? name;
  User(this.name);
}

void main() {
  final decoded = User(null);
  print(decoded.name.length); // BREAK!
  print(decoded.name?.length ?? 0); // CONTROL! print(decoded.name?.length ?? 0);
}
