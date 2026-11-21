// LEVEL: STD

void main(List<String> args) {
  print(int.tryParse(args[0]) == null ? 'invalid' : 'valid');
}
