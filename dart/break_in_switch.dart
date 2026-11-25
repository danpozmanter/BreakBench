int totalUntilStop(List<String> codes) {
  var total = 0;
  for (final c in codes) {
    final code = int.parse(c);
    switch (code) {
      case 0:
        break; // CONTROL! return total;
      default:
        total += code;
    }
  }
  return total;
}

void main(List<String> args) {
  print(totalUntilStop(args));
}
