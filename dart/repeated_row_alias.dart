void main() {
  final grid = List.filled(3, List.filled(3, 0)); // CONTROL! final grid = List.generate(3, (_) => List.filled(3, 0));
  grid[0][0] = 1;
  print(grid.expand((row) => row).where((cell) => cell == 1).length);
}
