void main(List<String> args) {
  final ready = args[0] == "yes";
  final approved = args[1] == "yes";
  final ok = ready && approved;
  print(ok ? "go" : "wait");
}
