int? cachedCount(String name) => name == "ada" ? 4 : null;

void main(List<String> args) {
  final cached = cachedCount(args[0]);
  final count = cached ?? 0 + 1; // CONTROL! final count = (cached ?? 0) + 1;
  print(count);
}
