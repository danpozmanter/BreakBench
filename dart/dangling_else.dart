void main(List<String> args) {
  final a = int.parse(args[0]) != 0;
  final b = true;
  var r = "unset";
  if (a)
    if (b) r = "both";
  else
    r = "not a";
  print(r);
}
