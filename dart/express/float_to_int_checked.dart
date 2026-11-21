// LEVEL: STD

void main() {
  try {
    double.nan.toInt();
    print('fits');
  } on UnsupportedError {
    print('does not fit');
  }
}
