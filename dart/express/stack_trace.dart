// LEVEL: STD

String inner() => StackTrace.current.toString();

void main() {
  print(inner().contains('inner') ? 'inner' : 'missing');
}
