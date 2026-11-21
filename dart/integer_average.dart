void main() {
  final values = [3, 4];
  final sum = values[0] + values[1];
  final count = values.length;
  final double avg = sum / count;
  print(avg.toStringAsFixed(1));
}
