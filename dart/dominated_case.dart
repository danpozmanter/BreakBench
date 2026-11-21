enum Shape { circle, square }

String describe(Shape s) => switch (s) {
      _ => 'other',
      Shape.circle => 'circle',
    };

void main() {
  print(describe(Shape.circle));
}
