void main() {
  final xs = <double>[5, double.nan, 3, 1, double.nan, 4, 2];
  xs.sort();
  final finite = xs.where((x) => !x.isNaN).toList();
  var ordered = true;
  for (var i = 1; i < finite.length; i++) {
    if (finite[i - 1] > finite[i]) ordered = false;
  }
  print(ordered ? "ordered" : "unordered");
}
