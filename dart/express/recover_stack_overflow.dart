// LEVEL: LANGUAGE

int walk(int n) => walk(n + 1) + 1;

void main() {
  try {
    walk(0);
  } on StackOverflowError {
    print('stack overflow');
  }
}
