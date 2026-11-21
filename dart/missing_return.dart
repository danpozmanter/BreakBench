String grade(int score) {
  if (score > 50) return "pass";
  if (score < 50) return "fail";
  // CONTROL! return "borderline";
}

void main(List<String> args) {
  print(grade(int.parse(args[0])));
}
