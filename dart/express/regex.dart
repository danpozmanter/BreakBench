// LEVEL: STD

void main() {
  final re = RegExp(r'^[a-z]+[0-9]{2}$');
  print('${re.hasMatch('abc12')} ${re.hasMatch('abc1')}');
}
