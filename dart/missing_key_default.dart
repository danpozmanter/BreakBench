void main(List<String> args) {
  final stock = {"apple": 3, "plum": 4};
  final name = args[0];
  print(stock[name] + 5); // CONTROL! print(stock[name] == null ? "unknown" : stock[name]! + 5);
}
