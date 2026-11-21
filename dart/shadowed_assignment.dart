import "dart:io";

void main(List<String> args) {
  var status = "pending";
  if (args[0] == "ok") {
    var status = "done"; // CONTROL! status = "done";
    stderr.writeln("status: $status");
  }
  print(status);
}
