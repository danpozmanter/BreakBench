// LEVEL: LANGUAGE

String grade(int score) => score > 50 ? 'pass' : 'fail';

String bad(int score) { // REJECT!
  if (score > 50) return 'pass'; // REJECT!
} // REJECT!

void main() {
  print(grade(60));
}
