// LEVEL: LANGUAGE

void work() {
  try {
    throw StateError('boom');
  } finally {
    print('cleanup');
  }
}

void main() {
  try {
    work();
  } on StateError {
    print('recovered');
  }
}
