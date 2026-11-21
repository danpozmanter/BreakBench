void main(List<String> args) {
  final int? qty = int.tryParse(args[0]);
  var present = false;
  if (qty) present = true; // BREAK!
  // CONTROL! if (qty != null) present = true;
  print(present ? "have $qty" : "missing");
}
