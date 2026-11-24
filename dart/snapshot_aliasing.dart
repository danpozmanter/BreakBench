void applyUpdate(List<int> weights) {
  weights[1] = 5;
  weights[3] = 0;
}

void main() {
  final weights = [3, 3, 3, 3];
  final before = weights; // CONTROL! final before = [...weights];
  applyUpdate(weights);
  var changes = 0;
  for (var i = 0; i < weights.length; i++) {
    if (before[i] != weights[i]) changes++;
  }
  print(changes);
}
