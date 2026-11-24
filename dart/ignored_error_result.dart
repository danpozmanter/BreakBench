import 'dart:io';

void save(String path) {
  File(path).writeAsStringSync("data");
}

void main() {
  save("/dev/null/out.txt"); // CONTROL! try { save("/dev/null/out.txt"); print("saved"); } on FileSystemException { print("failed"); }
  print("saved"); // BREAK!
}
