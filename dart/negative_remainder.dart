bool isOdd(int n) => n % 2 == 1;

void main(List<String> args) {
  print(isOdd(int.parse(args[0])) ? "odd" : "even");
}
