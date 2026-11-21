void main(List<String> args) {
  print(RegExp(r"^(a+)+$").hasMatch(args[0]) ? "match" : "no match");
}
