import 'dart:io';

void save(String path) {
  File(path).writeAsStringSync("data");
}

void main() {
  save("/nonexistent/dir/out.txt");
  print("saved");
}
