enum Shape { circle, square }

String describe(Shape s) => switch (s) {
      _ => 'other', // CONTROL! Shape.circle => 'circle',
      Shape.circle => 'circle', // CONTROL! _ => 'other',
    };

void main() {
  print(describe(Shape.circle));
}
