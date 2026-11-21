// LEVEL: LANGUAGE

void use(bool fail) {
  try {
    if (fail) throw StateError('bad');
  } finally {
    print('released');
  }
}

void main() {
  use(false);
  try {
    use(true);
  } on StateError {
    // the failure is expected
  }
}
