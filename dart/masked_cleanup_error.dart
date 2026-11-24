class Report {
  void write(String text) => throw const FileSystemException('disk full');

  void close() => throw const FileSystemException('close failed');
}

class FileSystemException implements Exception {
  const FileSystemException(this.message);

  final String message;
}

void save() {
  final report = Report();
  try {
    report.write('totals');
  } finally { // CONTROL! } catch (_) { try { report.close(); } on FileSystemException { } rethrow; }
    report.close(); // CONTROL! report.close();
  } // BREAK!
}

void main() {
  try {
    save();
  } on FileSystemException catch (error) {
    print(error.message);
  }
}
