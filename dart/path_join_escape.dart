void main(List<String> args) {
  final joined = "/srv/app/uploads/${args[0]}";
  print(joined.startsWith("/srv/app/uploads/") ? "inside" : "escaped");
}
