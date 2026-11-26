void main(List<String> args) {
  print(RegExp(r"^[a-z]+$").hasMatch(args[0]) ? "accepted" : "rejected");
}
