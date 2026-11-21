// LEVEL: LANGUAGE

class KindA implements Exception {}

class KindB implements Exception {}

void step(bool a) {
  try {
    throw a ? KindA() : KindB();
  } on KindA {
    print('caught A');
  }
}

void main() {
  step(true);
  try {
    step(false);
  } on KindB {
    print('passed B');
  }
}
