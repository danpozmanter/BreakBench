void main() {
  final jobs = [1, 2, 3];
  assert(jobs.removeLast() == 3); // CONTROL! final last = jobs.removeLast(); assert(last == 3);
  print(jobs.length);
}
