void main(List<String> args) {
  final a = int.parse(args[0]) != 0;
  final b = true;
  var r = "unset";
  if (a) // CONTROL! if (a) {
    if (b) r = "both";
  else // CONTROL! } else
    r = "not a";
  print(r);
}
