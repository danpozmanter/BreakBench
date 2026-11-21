import 'dart:io';

void writeReport() {
  throw FileSystemException("disk full");
}

void closeLog() {}

void saveReport() {
  try {
    writeReport();
  } finally {
    closeLog();
    return; // BREAK!
  }
}

void main() {
  try {
    saveReport();
    print("saved");
  } on FileSystemException {
    print("failed");
  }
}
