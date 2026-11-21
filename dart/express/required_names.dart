// LEVEL: LANGUAGE

void move({required int dx, required int dy}) => print('$dx $dy');

void main() {
  move(dx: 3, dy: 4);
  move(3, 4); // REJECT!
}
