int parseOrder(String line) {
  final parts = line.split(',');
  return int.parse(parts[2]); // BREAK!
  // CONTROL! return int.parse(parts[1]);
}

void main() {
  try {
    print(parseOrder('widget,5'));
  } catch (e) {
    print('invalid order');
  }
}
