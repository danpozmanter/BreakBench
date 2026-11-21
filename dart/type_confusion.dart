int add(int a, int b) => a + b;

void main(List<String> args) {
  final raw = args[0];
  print(add(raw, 3)); // BREAK!
  print("$raw ${add(1, 2)}");
}
